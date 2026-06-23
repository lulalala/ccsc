<?php
/**
 * Plugin Name: CCSC Custom Post Types
 * Description: Registers Notice, Periodical, and PeriodicalEntry CPTs with Group and PeriodicalType taxonomies.
 * Version: 1.0
 */

add_action('init', 'ccsc_register_post_types');
add_action('init', 'ccsc_register_taxonomies');
add_filter('post_type_link', 'ccsc_plain_permalink', 10, 2);
add_action('pre_get_posts', 'ccsc_resolve_p_for_cpts');
add_filter('the_content', 'ccsc_periodical_entry_list');
add_filter('the_content', 'ccsc_periodical_entry_meta');
add_filter('astra_the_title_enabled', 'ccsc_hide_front_page_title');
add_action('wp_head', 'ccsc_header_styles');

function ccsc_plain_permalink($url, $post) {
    $ccsc_types = ['notice', 'periodical', 'periodical_entry'];
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
}

function ccsc_register_taxonomies() {
    register_taxonomy('group', ['notice'], [
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
        'hierarchical'      => false,
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
        'hierarchical'      => false,
        'rewrite'           => false,
    ]);
}
