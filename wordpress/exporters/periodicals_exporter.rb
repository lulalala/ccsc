require_relative 'base'

# Exports Periodicals (Fountain + Seed) as WordPress posts (post_type: 'periodical').
# - issue and catalogue stored as wp_postmeta
# - Cover image → wp_posts attachment stub + _thumbnail_id postmeta
# - STI type → wp_term_relationships to 'periodical_type' taxonomy
#
# Output: sql/03_periodicals.sql
# Tables written: wp_posts, wp_postmeta, wp_term_relationships

MIME_TYPES = {
  'jpg' => 'image/jpeg', 'jpeg' => 'image/jpeg',
  'png' => 'image/png', 'gif' => 'image/gif',
  'webp' => 'image/webp'
}.freeze

def mime_type_for(filename)
  ext = File.extname(filename.to_s).delete('.').downcase
  MIME_TYPES.fetch(ext, 'image/jpeg')
end

def periodical_type_term_id(type)
  type == 'Fountain' ? TERM_TYPE_FOUNTAIN : TERM_TYPE_SEED
end

def export_periodicals
  periodicals = db.exec(<<~SQL)
    SELECT id, type, issue, title, catalogue, image, public, created_at, updated_at
    FROM periodicals
    ORDER BY id
  SQL

  sql_output('03_periodicals.sql') do |f|
    f.puts "-- Periodicals → wp_posts (post_type='periodical') + wp_postmeta + attachments"
    f.puts ""

    periodicals.each do |p|
      wp_id         = PERIODICAL_OFFSET + p['id'].to_i
      attach_id     = ATTACHMENT_OFFSET + p['id'].to_i
      title         = escape_string(p['title'])
      post_date     = format_date(p['created_at'])
      post_modified = format_date(p['updated_at'])
      post_status   = p['public'] == 't' ? 'publish' : 'draft'
      post_name     = escape_string("periodical-#{p['id']}")
      term_tax_id   = periodical_type_term_id(p['type'])

      f.puts <<~SQL.chomp
        INSERT INTO wp_posts
          (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
           post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
           post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
        VALUES
          (#{wp_id}, 1, #{post_date}, #{post_date}, '', #{title}, '',
           '#{post_status}', 'closed', 'closed', #{post_name}, #{post_modified}, #{post_modified},
           '', '', '', 0, 0, 'periodical', 0);
      SQL

      # Custom fields: issue + catalogue
      f.puts "INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (#{wp_id}, 'issue', #{p['issue'].to_i});"

      unless p['catalogue'].nil? || p['catalogue'].strip.empty?
        f.puts "INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (#{wp_id}, 'catalogue', #{escape_string(p['catalogue'])});"
      end

      # Term relationship (fountain or seed)
      f.puts "INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (#{wp_id}, #{term_tax_id}, 0);"

      # Cover image attachment
      unless p['image'].nil? || p['image'].strip.empty?
        filename    = p['image'].strip
        image_path  = "uploads/fountain/image/#{p['id']}/#{filename}"
        image_url   = "#{PRODUCTION_DOMAIN}/#{image_path}"
        mime        = mime_type_for(filename)
        attach_name = escape_string("periodical-image-#{p['id']}")
        attach_guid = escape_string(image_url)

        f.puts <<~SQL.chomp
          INSERT INTO wp_posts
            (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
             post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
             post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
          VALUES
            (#{attach_id}, 1, #{post_date}, #{post_date}, '', #{title}, '',
             'inherit', 'closed', 'closed', #{attach_name}, #{post_modified}, #{post_modified},
             '', '', '', #{wp_id}, 0, 'attachment', '#{mime}', #{attach_guid}, 0);
        SQL

        f.puts "INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (#{attach_id}, '_wp_attached_file', #{escape_string(image_path)});"
        f.puts "INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (#{wp_id}, '_thumbnail_id', #{attach_id});"
      end

      f.puts ""
    end

    # Update periodical_type term counts
    f.puts "-- Recalculate periodical_type term counts"
    f.puts "UPDATE wp_term_taxonomy tt SET count = (SELECT COUNT(*) FROM wp_term_relationships tr WHERE tr.term_taxonomy_id = tt.term_taxonomy_id) WHERE tt.taxonomy = 'periodical_type';"
  end
end

export_periodicals if __FILE__ == $PROGRAM_NAME
