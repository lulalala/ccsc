<?php
/**
 * Plugin Name: CCSC Custom Post Types
 * Description: Registers Notice, Periodical, PeriodicalEntry, Schedule, and CultureEntry CPTs with Group, PeriodicalType, and CultureCategory taxonomies.
 * Version: 1.1
 */

add_action('init', 'ccsc_register_post_types');
add_action('init', 'ccsc_register_taxonomies');
add_filter('post_type_link', 'ccsc_plain_permalink', 10, 2);
add_action('pre_get_posts', 'ccsc_resolve_p_for_cpts');
add_action('pre_get_posts', 'ccsc_tag_archive_include_culture');
add_filter('the_content', 'ccsc_periodical_entry_list');
add_filter('the_content', 'ccsc_periodical_entry_meta');
add_filter('the_content', 'ccsc_culture_entry_meta');
add_filter('astra_the_title_enabled', 'ccsc_hide_front_page_title');
add_action('wp_head', 'ccsc_header_styles');
add_action('add_meta_boxes', 'ccsc_add_periodical_parent_metabox');
add_action('add_meta_boxes', 'ccsc_add_periodical_entries_metabox');
add_action('save_post_periodical_entry', 'ccsc_save_periodical_parent', 10, 2);
add_shortcode('ccsc_schedules', 'ccsc_schedules_shortcode');

function ccsc_plain_permalink($url, $post) {
    $ccsc_types = ['notice', 'periodical', 'periodical_entry', 'culture_entry'];
    if (in_array($post->post_type, $ccsc_types, true)) {
        return home_url('/?p=' . $post->ID);
    }
    return $url;
}

// ?p=ID only resolves post_type=post by default; expand it to all public types.
function ccsc_resolve_p_for_cpts($query) {
    if (!is_admin() && $query->is_main_query() && $query->get('p')) {
        $query->set('post_type', 'any');
    }
}

// Tag archives (/?tag=slug) query post_type=post only by default;
// include culture entries so their tag links resolve.
function ccsc_tag_archive_include_culture($query) {
    if (!is_admin() && $query->is_main_query() && $query->is_tag()) {
        $query->set('post_type', ['post', 'culture_entry']);
    }
}

// Append a table of periodical entries to a periodical's single post view.
function ccsc_periodical_entry_list($content) {
    if (!is_singular('periodical') || !in_the_loop()) {
        return $content;
    }

    $entries = get_posts([
        'post_type'   => 'periodical_entry',
        'post_parent' => get_the_ID(),
        'numberposts' => -1,
        'orderby'     => 'menu_order',
        'order'       => 'ASC',
        'post_status' => 'any',
    ]);

    if (empty($entries)) {
        return $content;
    }

    $rows = '';
    foreach ($entries as $entry) {
        $author = get_post_meta($entry->ID, 'author', true);
        $url    = get_permalink($entry);
        $rows  .= '<tr>';
        $rows  .= '<td><a href="' . esc_url($url) . '">' . esc_html($entry->post_title) . '</a></td>';
        $rows  .= '<td>' . esc_html($author) . '</td>';
        $rows  .= '</tr>';
    }

    $table  = '<table class="ccsc-periodical-entries"><tbody>' . $rows . '</tbody></table>';
    return $content . $table;
}

function ccsc_hide_front_page_title($enabled) {
    return is_front_page() ? false : $enabled;
}

function ccsc_header_styles() { ?>
<style>
/* ── Site title ── */
.ast-site-identity .site-title,
.ast-site-identity .site-title a {
    color: #3d2110 !important;
    font-size: 1.4rem;
    letter-spacing: 0.1em;
    font-weight: 700;
}

/* ── Golden separator between header and content ── */
#masthead {
    border-bottom: 3px solid #b07330;
}

/* ── Top-level nav items ── */
.main-header-menu > .menu-item > .menu-link {
    color: #3d2110 !important;
    letter-spacing: 0.04em;
    font-weight: 500;
}
.main-header-menu > .menu-item:hover > .menu-link,
.main-header-menu > .menu-item.focus > .menu-link,
.main-header-menu > .menu-item.current-menu-item > .menu-link,
.main-header-menu > .menu-item.current-menu-ancestor > .menu-link {
    color: #b07330 !important;
}

/* ── Dropdown submenus ── */
.main-header-menu .sub-menu {
    background-color: #3d2110;
    border-top: 2px solid #b07330;
}
.main-header-menu .sub-menu .menu-link {
    color: #fef5e7 !important;
    letter-spacing: 0.03em;
}
.main-header-menu .sub-menu .menu-item:hover > .menu-link,
.main-header-menu .sub-menu .menu-item.focus > .menu-link {
    color: #d4a96a !important;
    background-color: #4a2810;
}

/* ── Periodical archive: uniform cover height, no distortion ── */
.tax-periodical_type .post-thumb-img-content,
.post-type-archive-periodical .post-thumb-img-content {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 280px;
    background: #f5efe6;
    overflow: hidden;
}
.tax-periodical_type .post-thumb-img-content .wp-post-image,
.post-type-archive-periodical .post-thumb-img-content .wp-post-image {
    width: auto;
    height: 100%;
    max-width: 100%;
    object-fit: contain;
}

/* ── Schedules page (行事曆) ── */
.ccsc-schedule-group {
    margin-bottom: 2.5em;
    padding-bottom: 1.5em;
    border-bottom: 1px solid #e5d9c6;
}
.ccsc-schedule-group > h2 {
    color: #3d2110;
    border-left: 4px solid #b07330;
    padding-left: 0.5em;
}
.ccsc-schedule-body {
    overflow-x: auto;
}
.ccsc-schedule-date {
    color: #888;
    font-size: 0.85em;
}
.ccsc-schedule-empty {
    color: #888;
}

/* ── Mobile menu ── */
#ast-mobile-site-navigation {
    background-color: #3d2110;
}
#ast-mobile-site-navigation .menu-link {
    color: #fef5e7 !important;
}
</style>
<?php }

// Prepend breadcrumb + author + category to a periodical entry's single post view.
function ccsc_periodical_entry_meta($content) {
    if (!is_singular('periodical_entry') || !in_the_loop()) {
        return $content;
    }

    $post      = get_post();
    $parent_id = $post->post_parent;
    $meta      = '';

    // Breadcrumb → parent periodical
    if ($parent_id) {
        $issue      = get_post_meta($parent_id, 'issue', true);
        $type_terms = get_the_terms($parent_id, 'periodical_type');
        $type_label = (!empty($type_terms) && !is_wp_error($type_terms)) ? $type_terms[0]->name : '';
        $crumb      = trim($type_label . ($issue ? ' 第' . $issue . '期' : ''));
        $meta      .= '<p class="ccsc-entry-breadcrumb"><a href="' . esc_url(get_permalink($parent_id)) . '">← ' . esc_html($crumb) . '</a></p>';
    }

    // Author and category inline
    $author   = trim(get_post_meta($post->ID, 'author', true));
    $category = trim(get_post_meta($post->ID, 'periodical_category', true));
    if ($author || $category) {
        $parts = array_filter([$category, $author]);
        $meta .= '<p class="ccsc-entry-byline">' . esc_html(implode('　', $parts)) . '</p>';
    }

    return $meta . $content;
}

// Prepend author byline and append tag list to a culture entry's single post view,
// mirroring the Rails culture_entries/show view (.author div + 關鍵字 tag list).
function ccsc_culture_entry_meta($content) {
    if (!is_singular('culture_entry') || !in_the_loop()) {
        return $content;
    }

    $post = get_post();
    $meta = '';

    $author = trim(get_post_meta($post->ID, 'author', true));
    if ($author) {
        $meta .= '<p class="ccsc-entry-byline">' . esc_html($author) . '</p>';
    }

    $tags = get_the_term_list($post->ID, 'post_tag', '<p class="ccsc-entry-tags">關鍵字：', '、', '</p>');
    if ($tags && !is_wp_error($tags)) {
        $content .= $tags;
    }

    return $meta . $content;
}

// [ccsc_schedules] — one section per group showing its latest schedule,
// mirroring the Rails /schedules page (行事曆).
function ccsc_schedules_shortcode() {
    $terms = get_terms([
        'taxonomy'   => 'group',
        'hide_empty' => false,
        'orderby'    => 'id',
        'order'      => 'ASC',
    ]);

    if (empty($terms) || is_wp_error($terms)) {
        return '';
    }

    $out = '<div class="ccsc-schedules">';
    foreach ($terms as $term) {
        $latest = get_posts([
            'post_type'   => 'schedule',
            'numberposts' => 1,
            'orderby'     => 'date',
            'order'       => 'DESC',
            'tax_query'   => [[
                'taxonomy' => 'group',
                'field'    => 'term_id',
                'terms'    => $term->term_id,
            ]],
        ]);

        $out .= '<section class="ccsc-schedule-group">';
        $out .= '<h2>' . esc_html($term->name) . '</h2>';
        if ($latest) {
            $out .= '<div class="ccsc-schedule-body">' . $latest[0]->post_content . '</div>';
            $out .= '<p class="ccsc-schedule-date">更新時間 ' . esc_html(get_the_date('Y/m/d-H:i', $latest[0])) . '</p>';
        } else {
            $out .= '<p class="ccsc-schedule-empty">目前暫無活動</p>';
        }
        $out .= '</section>';
    }
    $out .= '</div>';

    return $out;
}

function ccsc_add_periodical_parent_metabox() {
    add_meta_box(
        'ccsc_periodical_parent',
        '所屬期刊',
        'ccsc_periodical_parent_metabox_html',
        'periodical_entry',
        'side',
        'high'
    );
}

function ccsc_add_periodical_entries_metabox() {
    add_meta_box(
        'ccsc_periodical_entries',
        '期刊文章',
        'ccsc_periodical_entries_metabox_html',
        'periodical',
        'side',
        'high'
    );
}

function ccsc_periodical_parent_metabox_html($post) {
    // Pre-fill from URL when creating a new entry via the periodical screen.
    $current_parent = $post->post_parent
        ? $post->post_parent
        : intval($_GET['ccsc_parent'] ?? 0);

    if ($current_parent) {
        $parent = get_post($current_parent);
        $issue  = get_post_meta($current_parent, 'issue', true);
        $label  = $parent ? $parent->post_title . ($issue ? ' 第' . $issue . '期' : '') : '';
        wp_nonce_field('ccsc_set_periodical_parent', 'ccsc_periodical_parent_nonce');
        echo '<input type="hidden" name="ccsc_periodical_parent_id" value="' . esc_attr($current_parent) . '">';
        echo '<p>' . esc_html($label) . '</p>';
        $edit_url = admin_url('post.php?post=' . $current_parent . '&action=edit');
        echo '<a href="' . esc_url($edit_url) . '">← 返回期刊</a>';
    } else {
        $periodicals = get_posts([
            'post_type'   => 'periodical',
            'numberposts' => -1,
            'orderby'     => 'title',
            'order'       => 'ASC',
            'post_status' => 'any',
        ]);
        wp_nonce_field('ccsc_set_periodical_parent', 'ccsc_periodical_parent_nonce');
        echo '<select name="ccsc_periodical_parent_id" style="width:100%">';
        echo '<option value="0">— 未指定 —</option>';
        foreach ($periodicals as $p) {
            $issue = get_post_meta($p->ID, 'issue', true);
            $label = $p->post_title . ($issue ? ' 第' . $issue . '期' : '');
            echo '<option value="' . esc_attr($p->ID) . '">' . esc_html($label) . '</option>';
        }
        echo '</select>';
    }
}

function ccsc_periodical_entries_metabox_html($post) {
    $entries = get_posts([
        'post_type'   => 'periodical_entry',
        'post_parent' => $post->ID,
        'numberposts' => -1,
        'orderby'     => 'menu_order',
        'order'       => 'ASC',
        'post_status' => 'any',
    ]);

    if ($entries) {
        echo '<ul style="margin:0 0 10px;padding-left:1.2em">';
        foreach ($entries as $e) {
            $edit_url = admin_url('post.php?post=' . $e->ID . '&action=edit');
            echo '<li><a href="' . esc_url($edit_url) . '">' . esc_html($e->post_title) . '</a></li>';
        }
        echo '</ul>';
    } else {
        echo '<p style="color:#888;margin:0 0 10px">尚無文章</p>';
    }

    $new_url = admin_url('post-new.php?post_type=periodical_entry&ccsc_parent=' . $post->ID);
    echo '<a href="' . esc_url($new_url) . '" class="button button-primary">新增期刊文章</a>';
}

function ccsc_save_periodical_parent($post_id, $post) {
    if (!isset($_POST['ccsc_periodical_parent_nonce'])) return;
    if (!wp_verify_nonce($_POST['ccsc_periodical_parent_nonce'], 'ccsc_set_periodical_parent')) return;
    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) return;
    if (!current_user_can('edit_post', $post_id)) return;

    $parent_id = isset($_POST['ccsc_periodical_parent_id']) ? intval($_POST['ccsc_periodical_parent_id']) : 0;

    wp_update_post([
        'ID'          => $post_id,
        'post_parent' => $parent_id,
    ]);
}

function ccsc_register_post_types() {
    register_post_type('notice', [
        'labels' => [
            'name'          => '公告',
            'singular_name' => '公告',
            'add_new_item'  => '新增公告',
            'edit_item'     => '編輯公告',
            'view_item'     => '查看公告',
            'search_items'  => '搜尋公告',
        ],
        'public'            => true,
        'publicly_queryable'=> true,
        'show_ui'           => true,
        'show_in_menu'      => true,
        'has_archive'       => true,
        'supports'          => ['title', 'editor'],
        'taxonomies'        => ['group'],
        'rewrite'           => false,
    ]);

    // Registered right after notice so 行事曆 sits next to 公告 in the admin menu
    // (CPTs without menu_position are placed in registration order).
    // Schedules have no public single/archive view in the Rails app — only the
    // aggregated 行事曆 page rendered by the [ccsc_schedules] shortcode.
    register_post_type('schedule', [
        'labels' => [
            'name'          => '行事曆',
            'singular_name' => '行事曆',
            'add_new_item'  => '新增行事曆',
            'edit_item'     => '編輯行事曆',
            'view_item'     => '查看行事曆',
            'search_items'  => '搜尋行事曆',
        ],
        'public'             => false,
        'publicly_queryable' => false,
        'exclude_from_search'=> true,
        'show_ui'            => true,
        'show_in_menu'       => true,
        'has_archive'        => false,
        'supports'           => ['title', 'editor'],
        'taxonomies'         => ['group'],
        'rewrite'            => false,
    ]);

    register_post_type('periodical', [
        'labels' => [
            'name'          => '期刊',
            'singular_name' => '期刊',
            'add_new_item'  => '新增期刊',
            'edit_item'     => '編輯期刊',
            'view_item'     => '查看期刊',
            'search_items'  => '搜尋期刊',
        ],
        'public'            => true,
        'publicly_queryable'=> true,
        'show_ui'           => true,
        'show_in_menu'      => true,
        'has_archive'       => true,
        'supports'          => ['title', 'thumbnail', 'custom-fields', 'page-attributes'],
        'taxonomies'        => ['periodical_type'],
        'rewrite'           => false,
    ]);

    register_post_type('periodical_entry', [
        'labels' => [
            'name'          => '期刊文章',
            'singular_name' => '期刊文章',
            'add_new_item'  => '新增期刊文章',
            'edit_item'     => '編輯期刊文章',
            'view_item'     => '查看期刊文章',
            'search_items'  => '搜尋期刊文章',
        ],
        'public'            => true,
        'publicly_queryable'=> true,
        'show_ui'           => true,
        'show_in_menu'      => true,
        'has_archive'       => false,
        'hierarchical'      => false,
        'supports'          => ['title', 'editor', 'page-attributes', 'custom-fields'],
        'rewrite'           => false,
    ]);

    register_post_type('culture_entry', [
        'labels' => [
            'name'          => '文化福傳',
            'singular_name' => '文化福傳',
            'add_new_item'  => '新增文章',
            'edit_item'     => '編輯文章',
            'view_item'     => '查看文章',
            'search_items'  => '搜尋文章',
        ],
        'public'            => true,
        'publicly_queryable'=> true,
        'show_ui'           => true,
        'show_in_menu'      => true,
        'has_archive'       => true,
        'supports'          => ['title', 'editor', 'custom-fields', 'comments'],
        'taxonomies'        => ['culture_category', 'post_tag'],
        'rewrite'           => false,
    ]);
}

function ccsc_register_taxonomies() {
    register_taxonomy('group', ['notice', 'schedule'], [
        'labels' => [
            'name'          => '團體',
            'singular_name' => '團體',
            'search_items'  => '搜尋團體',
            'all_items'     => '所有團體',
            'edit_item'     => '編輯團體',
            'add_new_item'  => '新增團體',
        ],
        'public'            => true,
        'show_ui'           => true,
        'show_in_menu'      => true,
        'hierarchical'      => true,
        'rewrite'           => false,
    ]);

    register_taxonomy('periodical_type', ['periodical'], [
        'labels' => [
            'name'          => '期刊類型',
            'singular_name' => '期刊類型',
            'search_items'  => '搜尋類型',
            'all_items'     => '所有類型',
            'edit_item'     => '編輯類型',
            'add_new_item'  => '新增類型',
        ],
        'public'            => true,
        'show_ui'           => true,
        'show_in_menu'      => true,
        'hierarchical'      => true,
        'rewrite'           => false,
    ]);

    register_taxonomy('culture_category', ['culture_entry'], [
        'labels' => [
            'name'          => '文化類別',
            'singular_name' => '文化類別',
            'search_items'  => '搜尋類別',
            'all_items'     => '所有類別',
            'edit_item'     => '編輯類別',
            'add_new_item'  => '新增類別',
        ],
        'public'            => true,
        'show_ui'           => true,
        'show_in_menu'      => true,
        'hierarchical'      => true,
        'rewrite'           => false,
    ]);
}
