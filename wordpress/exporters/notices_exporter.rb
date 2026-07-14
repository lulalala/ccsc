require_relative 'base'

# Exports Notices as WordPress posts (post_type: 'notice') and assigns them
# to their Group taxonomy term via wp_term_relationships.
#
# Output: sql/02_notices.sql
# Tables written: wp_posts, wp_term_relationships

def export_notices
  notices = db.exec(<<~SQL)
    SELECT n.id, n.group_id, n.title, n.body, n.created_at, n.updated_at
    FROM notices n
    ORDER BY n.id
  SQL

  sql_output('02_notices.sql') do |f|
    f.puts "-- Notices → wp_posts (post_type='notice') + wp_term_relationships"
    f.puts ""

    notices.each do |n|
      wp_id        = NOTICE_OFFSET + n['id'].to_i
      term_tax_id  = TERM_GROUP_OFFSET + n['group_id'].to_i
      title        = escape_string(n['title'])
      content      = escape_string(rewrite_ckeditor_paths(n['body']))
      post_date    = format_date(n['created_at'])
      post_modified = format_date(n['updated_at'])
      post_name    = escape_string("notice-#{n['id']}")

      f.puts <<~SQL.chomp
        INSERT INTO wp_posts
          (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
           post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
           post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
        VALUES
          (#{wp_id}, 1, #{post_date}, #{post_date}, #{content}, #{title}, '',
           'publish', 'closed', 'closed', #{post_name}, #{post_modified}, #{post_modified},
           '', '', '', 0, 0, 'notice', 0);
      SQL

      f.puts "INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (#{wp_id}, #{term_tax_id}, 0);"
      f.puts ""
    end

    # Update term counts to reflect actual notice counts per group
    f.puts "-- Recalculate group term counts"
    f.puts "UPDATE wp_term_taxonomy tt SET count = (SELECT COUNT(*) FROM wp_term_relationships tr WHERE tr.term_taxonomy_id = tt.term_taxonomy_id) WHERE tt.taxonomy = 'group';"
  end
end

export_notices if __FILE__ == $PROGRAM_NAME
