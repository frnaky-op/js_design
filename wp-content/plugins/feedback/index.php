<?php

/**
 * plugin name: Feedback
 */

class Feedback
{
    public function __construct()
    {
        register_activation_hook(__FILE__, [
            $this,
            'active',
        ]);

        register_deactivation_hook(__FILE__, [
            $this,
            'deactive',
        ]);

        add_action('wpcf7_before_send_mail', [
            $this,
            'create',
        ]);

        add_action('init', [
            $this,
            'enqueue',
        ]);

        add_action('admin_menu', [
            $this,
            'register',
        ]);
    }

    public function active()
    {
        global $wpdb;
        $table = $wpdb->prefix . 'feedback';
        $charset_collate = $wpdb->get_charset_collate();

        $sql = "
        create table $table (
        `id` int not null auto_increment,
        `cf7_id` int not null,
        `content` text null,
        `reply` text null,
        primary key (`id`)
        ) $charset_collate
        ";

        $wpdb->query($sql);
    }

    public function deactive()
    {
        global $wpdb;
        $table = $wpdb->prefix . 'feedback';

        $sql = "drop table is exists $table";
        $wpdb->query($sql);
    }

    public function enqueue()
    {
        wp_enqueue_style('bootstrap', get_stylesheet_directory_uri() . '/css/bootstrap.css');

        wp_enqueue_script('jquery');
        wp_enqueue_script('bootstrap', get_stylesheet_directory_uri() . '/js/bootstrap.js');
    }

    public function register()
    {
        add_menu_page('Feedback', 'Feedback', 0, 'feedback', [
            $this,
            'callback',
        ]);
    }

    public function callback()
    {
        global $wpdb;
        $table = $wpdb->prefix . 'feedback';

        if ($_GET['id']) {
            if ($_GET['method']) {
                if ($_POST['reply']) {
                    $wpdb->query($wpdb->prepare("update $table set reply='%s' where id=%d", $_POST['reply'], $_GET['id']));
                }
                require_once plugin_dir_path(__FILE__) . '/setting.php';
                exit();
            }
            $feedback = $wpdb->get_row("select * from $table where id=" . $_GET['id']);
            $data = json_decode($feedback->content, true);
            require_once plugin_dir_path(__FILE__) . '/reply.php';
        } else {
            require_once plugin_dir_path(__FILE__) . '/setting.php';
        }
    }

    public function create($wpcf7)
    {
        global $wpdb;
        $table = $wpdb->prefix . 'feedback';

        $wpdb->query($wpdb->prepare("insert into $table (cf7_id, content) values (%d, %s)", $wpcf7->id(), json_encode(WPCF7_Submission::get_instance()->get_posted_data())));
    }
}

new Feedback;
