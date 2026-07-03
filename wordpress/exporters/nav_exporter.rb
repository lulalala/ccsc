require_relative 'base'

# Builds the WordPress navigation block markup from the Rails menu structure
# and emits a SQL UPDATE on the existing wp_navigation post (ID 4).
#
# Menu mirrors _navigation_links.html.erb:
#   首頁 | 關於我們 ▾ | 活動訊息 ▾ | 服務與生活 ▾ | 行事曆 | 小會刊物 ▾
#
# Output: sql/06_navigation.sql
# Tables written: wp_posts (UPDATE only)

INFO_OFFSET = 50_000 unless defined?(INFO_OFFSET)

WP_NAV_POST_ID = 4

INFO_PAGES = [
  { seo_name: 'intro',    id: 1, title: '小會是什麼？' },
  { seo_name: 'purpose',  id: 2, title: '宗旨精神' },
  { seo_name: 'history',  id: 3, title: '歷史沿革' },
  { seo_name: 'timeline', id: 4, title: '大事年表' },
].freeze

def nav_link(label, url)
  label_esc = label.gsub('"', '\\"')
  url_esc   = url.gsub('"', '\\"')
  %(<!-- wp:navigation-link {"label":"#{label_esc}","url":"#{url_esc}","kind":"custom","isTopLevelLink":false} /-->)
end

def nav_submenu(label, &block)
  label_esc = label.gsub('"', '\\"')
  inner = block_given? ? Array(block.call).flatten : []
  [
    %(<!-- wp:navigation-submenu {"label":"#{label_esc}","url":"#","kind":"custom","isTopLevelLink":false} -->),
    *inner,
    "<!-- /wp:navigation-submenu -->",
  ]
end

def build_nav_content(groups)
  lines = []

  lines << nav_link('首頁', '/')

  lines += nav_submenu('關於我們') do
    INFO_PAGES.map { |p| nav_link(p[:title], "/?page_id=#{INFO_OFFSET + p[:id]}") }
  end

  lines += nav_submenu('活動訊息') do
    groups.map { |g| nav_link(g[:name], "/?group=#{g[:slug]}") } +
      [nav_link('影音紀錄', '#')]
  end

  lines += nav_submenu('服務與生活') do
    [nav_link('文化福傳', '#')]
  end

  lines << nav_link('行事曆', "/?page_id=#{SCHEDULE_PAGE_ID}")

  lines += nav_submenu('小會刊物') do
    [
      nav_link('心泉', '/?periodical_type=fountain'),
      nav_link('芥子', '/?periodical_type=seed'),
    ]
  end

  lines.join("\n")
end

def export_nav
  # Derive group slugs using the same logic as groups_exporter (wp_sanitize_title)
  rows = db.exec("SELECT id, name FROM groups ORDER BY id")
  seen = {}
  groups = rows.map do |g|
    base_slug = wp_sanitize_title(g['name'])
    slug = seen[base_slug] ? "#{base_slug}-#{g['id']}" : base_slug
    seen[base_slug] = true
    { name: g['name'], slug: slug }
  end

  content = build_nav_content(groups)

  sql_output('06_navigation.sql') do |f|
    f.puts "-- Update wp_navigation post (ID=#{WP_NAV_POST_ID}) with full menu block markup"
    f.puts ""
    f.puts "UPDATE wp_posts"
    f.puts "  SET post_title = 'Main Navigation',"
    f.puts "      post_content = #{escape_string(content)},"
    f.puts "      post_status = 'publish',"
    f.puts "      post_modified = NOW(),"
    f.puts "      post_modified_gmt = UTC_TIMESTAMP()"
    f.puts "  WHERE ID = #{WP_NAV_POST_ID};"
  end
end

export_nav if __FILE__ == $PROGRAM_NAME
