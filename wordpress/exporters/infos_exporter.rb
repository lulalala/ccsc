require_relative 'base'

# Exports the four Info records used in navigation as WordPress Pages.
# Only exports nav-relevant pages: intro, purpose, history, timeline.
#
# Output: sql/05_info_pages.sql
# Tables written: wp_posts

INFO_OFFSET = 50_000
NAV_SEO_NAMES = %w[intro purpose history timeline].freeze

def export_infos
  infos = db.exec(<<~SQL)
    SELECT id, seo_name, title, body, created_at, updated_at
    FROM infos
    WHERE seo_name = ANY('{#{NAV_SEO_NAMES.join(",")}}')
    ORDER BY id
  SQL

  sql_output('05_info_pages.sql') do |f|
    f.puts "-- Info pages → wp_posts (post_type='page')"
    f.puts ""

    infos.each do |info|
      wp_id         = INFO_OFFSET + info['id'].to_i
      title         = escape_string(info['title'])
      content       = escape_string(info['body'])
      post_date     = format_date(info['created_at'])
      post_modified = format_date(info['updated_at'])
      post_name     = escape_string(info['seo_name'])

      f.puts <<~SQL.chomp
        INSERT INTO wp_posts
          (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
           post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
           post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
        VALUES
          (#{wp_id}, 1, #{post_date}, #{post_date}, #{content}, #{title}, '',
           'publish', 'closed', 'closed', #{post_name}, #{post_modified}, #{post_modified},
           '', '', '', 0, 0, 'page', 0);
      SQL
      f.puts ""
    end
  end
end

export_infos if __FILE__ == $PROGRAM_NAME
