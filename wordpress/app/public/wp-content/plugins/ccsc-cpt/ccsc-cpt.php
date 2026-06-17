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
