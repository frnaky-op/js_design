<?php

/**
 * plugin name: Image Slider
 */

class Image_Slider
{
    public function __construct()
    {
        add_action('init', [
            $this,
            'register',
        ]);

        add_action('wp_enqueue_scripts', [
            $this,
            'enqueue',
        ]);

        add_shortcode('image-slider', [
            $this,
            'view',
        ]);
    }

    public function register()
    {
        register_post_type('image-slider', [
            'label' => 'Image Slider',
            'public' => true,
        ]);
    }

    public function enqueue()
    {
        wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . '/css/bootstrap.css');

        wp_enqueue_script('jquery');
        wp_enqueue_script('bootstrap', plugin_dir_url(__FILE__) . '/js/bootstrap.js');
    }

    public function view()
    {
        $image_sliders = get_posts([
            'post_type' => 'image-slider',
        ]);

        require_once plugin_dir_path(__FILE__) . '/view.php';
    }
}

new Image_Slider;
