<?php

/**
 * plugin name: Event
 */

class Event
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
        register_post_type('event', [
            'label' => 'Event',
            'public' => true,
        ]);
    }
}

new Event;
