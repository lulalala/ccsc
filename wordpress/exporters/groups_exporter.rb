require_relative 'base'

# Exports Groups as WordPress taxonomy terms under the 'group' taxonomy.
# Also inserts the two Periodical type terms (fountain, seed) for 'periodical_type' taxonomy.
#
# Output: sql/01_terms.sql
# Tables written: wp_terms, wp_term_taxonomy

def export_groups
  groups = db.exec("SELECT id, name, (SELECT COUNT(*) FROM notices WHERE group_id = groups.id) AS notice_count FROM groups ORDER BY id")

  sql_output('01_terms.sql') do |f|
    f.puts "-- Groups → wp_terms + wp_term_taxonomy (taxonomy: 'group')"
    f.puts "-- Periodical types → wp_terms + wp_term_taxonomy (taxonomy: 'periodical_type')"
    f.puts ""

    f.puts "-- wp_terms"
    # Slugs must use sanitize_title encoding (URL-percent-encoded lowercase)
    # so WordPress's get_term_by('slug', ...) can resolve them correctly.
    # Chinese characters are percent-encoded; ASCII characters are kept as-is.
    seen_slugs = {}
    groups.each do |g|
      term_id   = TERM_GROUP_OFFSET + g['id'].to_i
      base_slug = wp_sanitize_title(g['name'])
      slug      = seen_slugs[base_slug] ? "#{base_slug}-#{g['id']}" : base_slug
      seen_slugs[base_slug] = true
      name = escape_string(g['name'])
      f.puts "INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (#{term_id}, #{name}, #{escape_string(slug)}, 0);"
    end

    # Fountain and Seed type terms
    f.puts "INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (#{TERM_TYPE_FOUNTAIN}, '心泉', 'fountain', 0);"
    f.puts "INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (#{TERM_TYPE_SEED}, '芥子', 'seed', 0);"
    f.puts ""

    f.puts "-- wp_term_taxonomy"
    groups.each do |g|
      term_id = TERM_GROUP_OFFSET + g['id'].to_i
      count   = g['notice_count'].to_i
      f.puts "INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (#{term_id}, #{term_id}, 'group', '', 0, #{count});"
    end

    f.puts "INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (#{TERM_TYPE_FOUNTAIN}, #{TERM_TYPE_FOUNTAIN}, 'periodical_type', '', 0, 0);"
    f.puts "INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (#{TERM_TYPE_SEED}, #{TERM_TYPE_SEED}, 'periodical_type', '', 0, 0);"
  end
end

export_groups if __FILE__ == $PROGRAM_NAME
