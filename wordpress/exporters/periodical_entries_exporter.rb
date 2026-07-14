require_relative 'base'

# Exports PeriodicalEntries as WordPress posts (post_type: 'periodical_entry').
# Content (title, body, author) comes from the joined posts table.
# post_parent is set to the WP ID of the parent Periodical.
# post_status inherits from the parent Periodical's public flag.
#
# Output: sql/04_periodical_entries.sql
# Tables written: wp_posts, wp_postmeta

def export_periodical_entries
  entries = db.exec(<<~SQL)
    SELECT
      pe.id,
      pe.periodical_id,
      pe."order",
      pe.category,
      pe.created_at,
      pe.updated_at,
      po.title   AS post_title,
      po.body    AS post_body,
      po.author  AS post_author,
      p.public   AS periodical_public
    FROM periodical_entries pe
    LEFT JOIN posts po ON po.owner_id = pe.id AND po.owner_type = 'PeriodicalEntry'
    LEFT JOIN periodicals p ON p.id = pe.periodical_id
    ORDER BY pe.periodical_id, pe."order" NULLS LAST, pe.id
  SQL

  sql_output('04_periodical_entries.sql') do |f|
    f.puts "-- PeriodicalEntries → wp_posts (post_type='periodical_entry') + wp_postmeta"
    f.puts ""

    entries.each do |e|
      wp_id         = ENTRY_OFFSET + e['id'].to_i
      parent_wp_id  = PERIODICAL_OFFSET + e['periodical_id'].to_i
      post_status   = e['periodical_public'] == 't' ? 'publish' : 'draft'
      title         = escape_string(e['post_title'])
      content       = escape_string(rewrite_ckeditor_paths(e['post_body']))
      post_date     = format_date(e['created_at'])
      post_modified = format_date(e['updated_at'])
      menu_order    = e['order'].nil? ? 0 : e['order'].to_i
      post_name     = escape_string("periodical-entry-#{e['id']}")

      f.puts <<~SQL.chomp
        INSERT INTO wp_posts
          (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
           post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
           post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
        VALUES
          (#{wp_id}, 1, #{post_date}, #{post_date}, #{content}, #{title}, '',
           '#{post_status}', 'closed', 'closed', #{post_name}, #{post_modified}, #{post_modified},
           '', '', '', #{parent_wp_id}, #{menu_order}, 'periodical_entry', 0);
      SQL

      unless e['post_author'].nil? || e['post_author'].strip.empty?
        f.puts "INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (#{wp_id}, 'author', #{escape_string(e['post_author'])});"
      end

      unless e['category'].nil? || e['category'].strip.empty?
        f.puts "INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (#{wp_id}, 'periodical_category', #{escape_string(e['category'])});"
      end

      f.puts "INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (#{wp_id}, 'periodical_ref_id', #{e['periodical_id'].to_i});"
      f.puts ""
    end
  end
end

export_periodical_entries if __FILE__ == $PROGRAM_NAME
