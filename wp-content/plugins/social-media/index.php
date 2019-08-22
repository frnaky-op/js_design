<?php

/**
 * plugin name: Social Media
 */

function social_media_enqueue_scripts()
{
    wp_enqueue_style('dashicons');
}
add_action('wp_enqueue_scripts', 'social_media_enqueue_scripts');

function social_media()
{
    ?>
    <style>
        #socialGroup {
            display: flex;
        }

        .social-media {
            width: 24px;
            height: 24px;

            display: flex;
            align-items: center;
            justify-content: center;
        }

        .social-media * {
            color: #f2f2f2 !important;
        }
    </style>
    <div id="socialGroup">
        <div class="social-media">
            <a href="https://twitter.com">
                <span class="dashicons dashicons-twitter"></span>
            </a>
        </div>
        <div class="social-media">
            <a href="https://facebook.com">
                <span class="dashicons dashicons-facebook"></span>
            </a>
        </div>
        <div class="social-media">
            <a href="https://instagram.com" style="display: flex; align-items: center;">
                <img src="<?= plugin_dir_url(__FILE__) . '/img/instagram.png'; ?>">
            </a>
        </div>
    </div>
    <?php
}
add_action('wp_footer', 'social_media');
