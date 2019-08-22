<?php

function kazan_museum_tour_enqueue_scripts()
{
    wp_enqueue_style('parent', get_template_directory_uri() . '/style.css');
    wp_enqueue_style('bootstrap', get_stylesheet_directory_uri() . '/css/bootstrap.css');
    wp_enqueue_style('dashicons');
    wp_enqueue_style('child', get_stylesheet_directory_uri() . '/style.css?t=' . time(), [
        'parent',
    ]);

    wp_enqueue_script('jquery');
    wp_enqueue_script('bootstrap', get_stylesheet_directory_uri() . '/js/bootstrap.js');
    wp_enqueue_script('child', get_stylesheet_directory_uri() . '/script.js');
}
add_action('wp_enqueue_scripts', 'kazan_museum_tour_enqueue_scripts');

function kazan_museum_tour_remove_menu_page()
{
    $user = wp_get_current_user();
    if (1 != $user->ID) {
        remove_menu_page('plugins.php');
        remove_menu_page('users.php');
        remove_menu_page('tools.php');
        remove_menu_page('options-general.php');
    }
}
add_action('admin_menu', 'kazan_museum_tour_remove_menu_page');

function kazan_museum_tour_login_image() {
    ?>
    <style>
        body.login:before {
            content: '';
            position: absolute;
            width: 100vw;
            height: 100vh;

            background-image: url(<?= get_stylesheet_directory_uri() . '/img/background.jpg'; ?>);

            object-fit: cover;

            z-index: -1;

            opacity: .2;
        }
    </style>
    <?php
}
add_action('login_enqueue_scripts', 'kazan_museum_tour_login_image');
