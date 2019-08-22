<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=device-width" />
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<div id="wrapper" class="hfeed">
    <nav class="navbar navbar-dark">
        <div class="container">
            <div id="brand">
                <a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_html( get_bloginfo( 'name' ) ); ?>" rel="home"><?php echo esc_html( get_bloginfo( 'name' ) ); ?></a>
            </div>
            <ul class="nav">
                <li class="nav-item">
                    <a class="nav-link" href="#museums">Museums</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#split-view">Split View</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact">Contact</a>
                </li>
            </ul>
        </div>
    </nav>
    <div id="container">