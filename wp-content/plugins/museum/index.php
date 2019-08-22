<?php

/**
 * plugin name: Museum
 */

class Museum
{
    public function __construct()
    {
        add_action('init', [
            $this,
            'register',
        ]);
    }

    public function register()
    {
        register_post_type('museum', [
            'label' => 'Museum',
            'public' => true,
        ]);
    }
}

new Museum;
