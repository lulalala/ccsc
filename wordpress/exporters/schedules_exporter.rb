require_relative 'base'

# Exports Schedules as WordPress posts (post_type: 'schedule') and assigns them
# to their Group taxonomy term via wp_term_relationships.
# Also creates the public 行事曆 page that renders them via the [ccsc_schedules]
# shortcode (registered in the ccsc-cpt plugin).
#
# Output: sql/07_schedules.sql
# Tables written: wp_posts, wp_term_relationships

def export_schedules
  schedules = db.exec(<<~SQL)
    SELECT s.id, s.group_id, s.body, s.created_at, s.updated_at, g.name AS group_name
    FROM schedules s
    JOIN groups g ON g.id = s.group_id
    ORDER BY s.id
  SQL

  sql_output('07_schedules.sql') do |f|
    f.puts "-- Schedules → wp_posts (post_type='schedule') + wp_term_relationships"
    f.puts ""

    schedules.each do |s|
      wp_id         = SCHEDULE_OFFSET + s['id'].to_i
      term_tax_id   = TERM_GROUP_OFFSET + s['group_id'].to_i
      created       = Time.parse(s['created_at'])
      title         = escape_string("#{s['group_name']}行事曆 #{created.strftime('%Y/%m/%d')}")
      content       = escape_string(rewrite_ckeditor_paths(s['body']))
      post_date     = format_date(s['created_at'])
      post_modified = format_date(s['updated_at'])
      post_name     = escape_string("schedule-#{s['id']}")

      f.puts <<~SQL.chomp
        INSERT INTO wp_posts
          (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
           post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
           post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
        VALUES
          (#{wp_id}, 1, #{post_date}, #{post_date}, #{content}, #{title}, '',
           'publish', 'closed', 'closed', #{post_name}, #{post_modified}, #{post_modified},
           '', '', '', 0, 0, 'schedule', 0);
      SQL

      f.puts "INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (#{wp_id}, #{term_tax_id}, 0);"
      f.puts ""
    end

    f.puts "-- 行事曆 page rendering the latest schedule per group"
    f.puts <<~SQL.chomp
      INSERT INTO wp_posts
        (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
         post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
         post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
      VALUES
        (#{SCHEDULE_PAGE_ID}, 1, NOW(), UTC_TIMESTAMP(), '[ccsc_schedules]', '行事曆', '',
         'publish', 'closed', 'closed', 'schedules', NOW(), UTC_TIMESTAMP(),
         '', '', '', 0, 0, 'page', 0);
    SQL
    f.puts ""

    # Update term counts to reflect all group term relationships (notices + schedules)
    f.puts "-- Recalculate group term counts"
    f.puts "UPDATE wp_term_taxonomy tt SET count = (SELECT COUNT(*) FROM wp_term_relationships tr WHERE tr.term_taxonomy_id = tt.term_taxonomy_id) WHERE tt.taxonomy = 'group';"
  end
end

export_schedules if __FILE__ == $PROGRAM_NAME
