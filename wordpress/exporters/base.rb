require 'pg'
require 'time'

PRODUCTION_DOMAIN = 'https://PRODUCTION_DOMAIN_HERE'

TERM_GROUP_OFFSET    = 100  # term_id = 100 + group.id
TERM_TYPE_FOUNTAIN   = 200  # term_id for 'fountain' type term
TERM_TYPE_SEED       = 201  # term_id for 'seed' type term
NOTICE_OFFSET        = 10_000  # wp post ID = notice.id + 10000
PERIODICAL_OFFSET    = 20_000  # wp post ID = periodical.id + 20000
ENTRY_OFFSET         = 30_000  # wp post ID = entry.id + 30000
ATTACHMENT_OFFSET    = 40_000  # wp post ID = periodical.id + 40000

SQL_DIR = File.expand_path('../sql', __dir__)

def db
  @db ||= PG.connect(
    dbname:   ENV.fetch('PGDATABASE', 'ccsc_development'),
    host:     ENV.fetch('PGHOST', 'localhost'),
    user:     ENV.fetch('PGUSER', ''),
    password: ENV.fetch('PGPASSWORD', '')
  )
end

def escape(value)
  return 'NULL' if value.nil?
  "'#{value.to_s.gsub('\\', '\\\\\\\\').gsub("'", "\\\\'")}'"
end

def escape_string(value)
  return "''" if value.nil? || value.empty?
  "'#{value.to_s.gsub('\\', '\\\\\\\\').gsub("'", "\\\\'")}'"
end

def format_date(ts)
  return "'0000-00-00 00:00:00'" if ts.nil?
  t = ts.is_a?(String) ? Time.parse(ts) : ts
  "'#{t.strftime('%Y-%m-%d %H:%M:%S')}'"
end

def slugify(str)
  str.to_s.downcase
     .gsub(/[^一-鿿\w\s-]/, '')
     .gsub(/\s+/, '-')
     .gsub(/-+/, '-')
     .strip
end

# Mirrors WordPress sanitize_title(): percent-encodes non-ASCII chars (lowercase hex),
# lowercases ASCII, strips unsafe chars. Required for slugs so get_term_by() can resolve them.
def wp_sanitize_title(str)
  str.to_s
     .chars
     .map { |c| c.ord > 127 ? c.encode('UTF-8').bytes.map { |b| "%%%02x" % b }.join : c.downcase }
     .join
     .gsub(/[^a-z0-9%\-_]/, '')
     .gsub(/-+/, '-')
     .strip
end

def sql_output(filename)
  path = File.join(SQL_DIR, filename)
  File.open(path, 'w') do |f|
    f.puts "SET NAMES utf8mb4;"
    f.puts "SET foreign_key_checks = 0;"
    f.puts ""
    yield f
    f.puts ""
    f.puts "SET foreign_key_checks = 1;"
  end
  puts "Written: #{path}"
end
