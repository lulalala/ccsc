require_relative 'base'

# Exports CultureEntries as WordPress posts (post_type: 'culture_entry').
# Content (title, body, author) comes from the joined posts table
# (owner_type='CultureEntry'). Categories (scope 文化福傳, two-level
# hierarchy) become 'culture_category' terms; tags (taggings context
# 'culture_entry_tags') become built-in 'post_tag' terms. Comments
# (comment_topics/comment_posts) become wp_comments rows.
#
# In-body CKEditor image refs are rewritten from the Rails path
# (/uploads/ckeditor/...) to the WP uploads dir
# (/wp-content/uploads/ckeditor/...), matching prior migrations.
#
# Output: sql/08_culture_entries.sql (self-contained: terms first)
# Tables written: wp_terms, wp_term_taxonomy, wp_posts, wp_postmeta,
#                 wp_term_relationships, wp_comments

def export_culture_entries
  categories = db.exec(<<~SQL)
    SELECT id, name, parent_id
    FROM categories
    WHERE scope = '文化福傳'
    ORDER BY id
  SQL

  tags = db.exec(<<~SQL)
    SELECT DISTINCT t.id, t.name
    FROM tags t
    JOIN taggings tg ON tg.tag_id = t.id
      AND tg.context = 'culture_entry_tags' AND tg.taggable_type = 'Post'
    JOIN posts po ON po.id = tg.taggable_id AND po.owner_type = 'CultureEntry'
    ORDER BY t.id
  SQL

  taggings = db.exec(<<~SQL)
    SELECT po.owner_id AS entry_id, tg.tag_id
    FROM taggings tg
    JOIN posts po ON po.id = tg.taggable_id AND po.owner_type = 'CultureEntry'
    WHERE tg.context = 'culture_entry_tags' AND tg.taggable_type = 'Post'
    ORDER BY po.owner_id, tg.tag_id
  SQL

  entries = db.exec(<<~SQL)
    SELECT
      ce.id,
      ce.category_id,
      ce.created_at,
      ce.updated_at,
      po.title  AS post_title,
      po.body   AS post_body,
      po.author AS post_author,
      (SELECT COUNT(*)
         FROM comment_posts cp
         JOIN comment_topics ct ON ct.id = cp.topic_id
        WHERE ct.owner_type = 'CultureEntry' AND ct.owner_id = ce.id) AS comment_count
    FROM culture_entries ce
    LEFT JOIN posts po ON po.owner_id = ce.id AND po.owner_type = 'CultureEntry'
    ORDER BY ce.id
  SQL

  comments = db.exec(<<~SQL)
    SELECT cp.id, ct.owner_id, cp.author, cp.content, cp.created_at
    FROM comment_posts cp
    JOIN comment_topics ct ON ct.id = cp.topic_id
    WHERE ct.owner_type = 'CultureEntry'
    ORDER BY cp.id
  SQL

  sql_output('08_culture_entries.sql') do |f|
    f.puts "-- CultureEntries → wp_posts (post_type='culture_entry') + wp_postmeta"
    f.puts "-- Categories (scope 文化福傳) → 'culture_category' terms"
    f.puts "-- Tags (context 'culture_entry_tags') → built-in 'post_tag' terms"
    f.puts "-- Comments → wp_comments"
    f.puts ""

    f.puts "-- wp_terms: culture_category"
    # Category names repeat across hierarchy levels (宗旨/論文 appear as both
    # parent and child); dedupe slugs the same way groups_exporter does.
    seen_slugs = {}
    categories.each do |c|
      term_id   = TERM_CULTURE_OFFSET + c['id'].to_i
      base_slug = wp_sanitize_title(c['name'])
      slug      = seen_slugs[base_slug] ? "#{base_slug}-#{c['id']}" : base_slug
      seen_slugs[base_slug] = true
      f.puts "INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (#{term_id}, #{escape_string(c['name'])}, #{escape_string(slug)}, 0);"
    end
    f.puts ""

    f.puts "-- wp_term_taxonomy: culture_category (counts recalculated below)"
    categories.each do |c|
      term_id = TERM_CULTURE_OFFSET + c['id'].to_i
      parent  = c['parent_id'].nil? ? 0 : TERM_CULTURE_OFFSET + c['parent_id'].to_i
      f.puts "INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (#{term_id}, #{term_id}, 'culture_category', '', #{parent}, 0);"
    end
    f.puts ""

    f.puts "-- wp_terms + wp_term_taxonomy: post_tag"
    tags.each do |t|
      term_id = TERM_TAG_OFFSET + t['id'].to_i
      slug    = wp_sanitize_title(t['name'])
      f.puts "INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (#{term_id}, #{escape_string(t['name'])}, #{escape_string(slug)}, 0);"
      f.puts "INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (#{term_id}, #{term_id}, 'post_tag', '', 0, 0);"
    end
    f.puts ""

    entries.each do |e|
      wp_id         = CULTURE_OFFSET + e['id'].to_i
      title         = escape_string(e['post_title'])
      content       = escape_string(e['post_body']&.gsub('/uploads/ckeditor/', '/wp-content/uploads/ckeditor/'))
      post_date     = format_date(e['created_at'])
      post_modified = format_date(e['updated_at'])
      post_name     = escape_string("culture-entry-#{e['id']}")
      comment_count = e['comment_count'].to_i

      # comment_status stays 'open': the Rails site accepts public comments
      # on culture entries, unlike other migrated models.
      f.puts <<~SQL.chomp
        INSERT INTO wp_posts
          (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
           post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
           post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
        VALUES
          (#{wp_id}, 1, #{post_date}, #{post_date}, #{content}, #{title}, '',
           'publish', 'open', 'closed', #{post_name}, #{post_modified}, #{post_modified},
           '', '', '', 0, 0, 'culture_entry', #{comment_count});
      SQL

      unless e['post_author'].nil? || e['post_author'].strip.empty?
        f.puts "INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (#{wp_id}, 'author', #{escape_string(e['post_author'])});"
      end

      f.puts "INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (#{wp_id}, 'culture_entry_ref_id', #{e['id'].to_i});"

      unless e['category_id'].nil?
        f.puts "INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (#{wp_id}, #{TERM_CULTURE_OFFSET + e['category_id'].to_i}, 0);"
      end

      f.puts ""
    end

    f.puts "-- Tag relationships"
    taggings.each do |tg|
      wp_id = CULTURE_OFFSET + tg['entry_id'].to_i
      f.puts "INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (#{wp_id}, #{TERM_TAG_OFFSET + tg['tag_id'].to_i}, 0);"
    end
    f.puts ""

    f.puts "-- Recalculate culture_category and post_tag term counts"
    f.puts "UPDATE wp_term_taxonomy tt SET count = (SELECT COUNT(*) FROM wp_term_relationships tr WHERE tr.term_taxonomy_id = tt.term_taxonomy_id) WHERE tt.taxonomy = 'culture_category';"
    f.puts "UPDATE wp_term_taxonomy tt SET count = (SELECT COUNT(*) FROM wp_term_relationships tr WHERE tr.term_taxonomy_id = tt.term_taxonomy_id) WHERE tt.taxonomy = 'post_tag';"
    f.puts ""

    # All comments import as approved; visible spam can be bulk-moderated
    # afterwards in WP admin → 留言.
    f.puts "-- Comments → wp_comments"
    comments.each do |c|
      comment_id   = COMMENT_OFFSET + c['id'].to_i
      wp_post_id   = CULTURE_OFFSET + c['owner_id'].to_i
      author       = escape_string(c['author'])
      content      = escape_string(c['content'])
      comment_date = format_date(c['created_at'])

      f.puts <<~SQL.chomp
        INSERT INTO wp_comments
          (comment_ID, comment_post_ID, comment_author, comment_author_email, comment_author_url,
           comment_author_IP, comment_date, comment_date_gmt, comment_content, comment_karma,
           comment_approved, comment_agent, comment_type, comment_parent, user_id)
        VALUES
          (#{comment_id}, #{wp_post_id}, #{author}, '', '',
           '', #{comment_date}, #{comment_date}, #{content}, 0,
           '1', '', 'comment', 0, 0);
      SQL
    end
  end
end

export_culture_entries if __FILE__ == $PROGRAM_NAME
