require_relative 'groups_exporter'
require_relative 'notices_exporter'
require_relative 'periodicals_exporter'
require_relative 'periodical_entries_exporter'
require_relative 'infos_exporter'
require_relative 'nav_exporter'
require_relative 'schedules_exporter'

puts "Starting WordPress SQL export..."
puts ""

export_groups
export_notices
export_periodicals
export_periodical_entries
export_infos
export_nav
export_schedules

puts ""
puts "Done. SQL files written to wordpress/sql/"
puts ""
puts "Import order:"
puts "  cd wordpress"
puts "  wp db query < sql/01_terms.sql"
puts "  wp db query < sql/02_notices.sql"
puts "  wp db query < sql/03_periodicals.sql"
puts "  wp db query < sql/04_periodical_entries.sql"
puts "  wp db query < sql/05_info_pages.sql"
puts "  wp db query < sql/06_navigation.sql"
puts "  wp db query < sql/07_schedules.sql"
