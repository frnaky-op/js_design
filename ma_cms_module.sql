-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2019 at 10:56 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ma_cms_module`
--

-- --------------------------------------------------------

--
-- Table structure for table `kmt_aiowps_events`
--

CREATE TABLE `kmt_aiowps_events` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmt_aiowps_failed_logins`
--

CREATE TABLE `kmt_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmt_aiowps_global_meta`
--

CREATE TABLE `kmt_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmt_aiowps_login_activity`
--

CREATE TABLE `kmt_aiowps_login_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kmt_aiowps_login_activity`
--

INSERT INTO `kmt_aiowps_login_activity` (`id`, `user_id`, `user_login`, `login_date`, `logout_date`, `login_ip`, `login_country`, `browser_type`) VALUES
(1, 2, '4Clients', '2019-06-25 09:55:20', '0000-00-00 00:00:00', '::1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kmt_aiowps_login_lockdown`
--

CREATE TABLE `kmt_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmt_aiowps_permanent_block`
--

CREATE TABLE `kmt_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmt_commentmeta`
--

CREATE TABLE `kmt_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmt_comments`
--

CREATE TABLE `kmt_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kmt_comments`
--

INSERT INTO `kmt_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-25 04:13:57', '2019-06-25 04:13:57', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kmt_feedback`
--

CREATE TABLE `kmt_feedback` (
  `id` int(11) NOT NULL,
  `cf7_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `reply` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kmt_feedback`
--

INSERT INTO `kmt_feedback` (`id`, `cf7_id`, `content`, `reply`) VALUES
(2, 47, '{\"_wpcf7\":\"47\",\"_wpcf7_version\":\"5.1.3\",\"_wpcf7_locale\":\"en_US\",\"_wpcf7_unit_tag\":\"wpcf7-f47-o1\",\"_wpcf7_container_post\":\"0\",\"name\":\"fsad\",\"email\":\"client@mail.com\",\"message\":\"fadsfsdfdsafdsf\"}', ''),
(3, 47, '{\"_wpcf7\":\"47\",\"_wpcf7_version\":\"5.1.3\",\"_wpcf7_locale\":\"en_US\",\"_wpcf7_unit_tag\":\"wpcf7-f47-o1\",\"_wpcf7_container_post\":\"0\",\"name\":\"fsaf\",\"email\":\"apqpetr@gmail.com\",\"message\":\"fdsafdffdfa\"}', 'fsdafsdf'),
(4, 47, '{\"_wpcf7\":\"47\",\"_wpcf7_version\":\"5.1.3\",\"_wpcf7_locale\":\"en_US\",\"_wpcf7_unit_tag\":\"wpcf7-f47-o1\",\"_wpcf7_container_post\":\"0\",\"name\":\"UNO\",\"email\":\"uno@gmail.com\",\"message\":\"Hello\"}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kmt_links`
--

CREATE TABLE `kmt_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmt_options`
--

CREATE TABLE `kmt_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kmt_options`
--

INSERT INTO `kmt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/TW_cms_module', 'yes'),
(2, 'home', 'http://localhost/TW_cms_module', 'yes'),
(3, 'blogname', 'Kazan Museum Tour', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@mail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"museum/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"museum/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"museum/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"museum/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"museum/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"museum/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"museum/([^/]+)/embed/?$\";s:39:\"index.php?museum=$matches[1]&embed=true\";s:27:\"museum/([^/]+)/trackback/?$\";s:33:\"index.php?museum=$matches[1]&tb=1\";s:35:\"museum/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?museum=$matches[1]&paged=$matches[2]\";s:42:\"museum/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?museum=$matches[1]&cpage=$matches[2]\";s:31:\"museum/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?museum=$matches[1]&page=$matches[2]\";s:23:\"museum/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"museum/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"museum/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"museum/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"museum/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"museum/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:15:\"event/index.php\";i:4;s:18:\"feedback/index.php\";i:5;s:22:\"image-slider/index.php\";i:6;s:16:\"museum/index.php\";i:7;s:22:\"social-media/index.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'blankslate', 'yes'),
(41, 'stylesheet', 'Kazan_MuseumTour', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'kmt_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:7:{i:1561626689;a:1:{s:24:\"aiowps_hourly_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1561626839;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1561652039;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1561695270;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561695284;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561705889;a:1:{s:23:\"aiowps_daily_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1561436222;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1561625323;s:15:\"version_checked\";s:6:\"4.9.10\";s:12:\"translations\";a:0:{}}', 'no'),
(126, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"admin@mail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1561436068;}', 'no'),
(127, '_site_transient_timeout_browser_bcf1814caa6afe84eeebef28ff236a7f', '1562040871', 'no'),
(128, '_site_transient_browser_bcf1814caa6afe84eeebef28ff236a7f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(135, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'acf_version', '5.8.0', 'yes'),
(149, 'current_theme', 'kazan MuseumTour', 'yes'),
(150, 'theme_mods_Kazan_MuseumTour', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(162, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1561443037;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(164, 'aiowpsec_db_version', '1.9', 'yes'),
(165, 'aio_wp_security_configs', 'a:91:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:0:\"\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:14:\"admin@mail.com\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"sanp4h5baj5nu7rlh4x0\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:31:\"aiowps_enable_woo_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_woo_register_captcha\";s:0:\"\";s:38:\"aiowps_enable_woo_lostpassword_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"9utzxbkverr3ozjof953\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:35:\"aiowps_enable_registration_honeypot\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:14:\"admin@mail.com\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:0:\"\";s:28:\"aiowps_enable_login_honeypot\";s:0:\"\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:0:\"\";s:33:\"aiowps_spam_ip_min_comments_block\";s:0:\"\";s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";s:1:\"4\";s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:14:\"admin@mail.com\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:0:\"\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:0:\"\";s:25:\"aiowps_ip_retrieve_method\";s:1:\"0\";s:25:\"aiowps_recaptcha_site_key\";s:0:\"\";s:27:\"aiowps_recaptcha_secret_key\";s:0:\"\";s:24:\"aiowps_default_recaptcha\";s:0:\"\";}', 'yes'),
(190, '_site_transient_timeout_theme_roots', '1561627126', 'no'),
(191, '_site_transient_theme_roots', 'a:5:{s:16:\"Kazan_MuseumTour\";s:7:\"/themes\";s:10:\"blankslate\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(192, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1561625329;s:7:\"checked\";a:5:{s:16:\"Kazan_MuseumTour\";s:0:\"\";s:10:\"blankslate\";s:6:\"2019.1\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(193, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1561625330;s:7:\"checked\";a:10:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.0\";s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:7:\"4.3.9.4\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:15:\"event/index.php\";s:0:\"\";s:18:\"feedback/index.php\";s:0:\"\";s:9:\"hello.php\";s:3:\"1.7\";s:22:\"image-slider/index.php\";s:0:\"\";s:16:\"museum/index.php\";s:0:\"\";s:22:\"social-media/index.php\";s:0:\"\";}s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/all-in-one-wp-security-and-firewall\";s:4:\"slug\";s:35:\"all-in-one-wp-security-and-firewall\";s:6:\"plugin\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:11:\"new_version\";s:7:\"4.3.9.4\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-1544x500.png?rev=1914011\";s:2:\"1x\";s:90:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1914013\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `kmt_postmeta`
--

CREATE TABLE `kmt_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kmt_postmeta`
--

INSERT INTO `kmt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1561440348:1'),
(5, 8, '_wp_attached_file', '2019/06/9151312_b.jpg'),
(6, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2019/06/9151312_b.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"9151312_b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"9151312_b-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"9151312_b-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"9151312_b-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:23:\"9151312_b-1800x1200.jpg\";s:5:\"width\";i:1800;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"9151312_b-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 9, '_wp_attached_file', '2019/06/AP-1SPE7X4G51W11_news.jpg'),
(8, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3200;s:6:\"height\";i:2133;s:4:\"file\";s:33:\"2019/06/AP-1SPE7X4G51W11_news.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"AP-1SPE7X4G51W11_news-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"AP-1SPE7X4G51W11_news-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"AP-1SPE7X4G51W11_news-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"AP-1SPE7X4G51W11_news-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:35:\"AP-1SPE7X4G51W11_news-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:33:\"AP-1SPE7X4G51W11_news-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 10, '_wp_attached_file', '2019/06/d26a9ba22e58d3694fa9.jpg'),
(10, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1752;s:6:\"height\";i:1280;s:4:\"file\";s:32:\"2019/06/d26a9ba22e58d3694fa9.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"d26a9ba22e58d3694fa9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"d26a9ba22e58d3694fa9-300x219.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"d26a9ba22e58d3694fa9-768x561.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:561;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"d26a9ba22e58d3694fa9-1024x748.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:748;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:34:\"d26a9ba22e58d3694fa9-1752x1200.jpg\";s:5:\"width\";i:1752;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:32:\"d26a9ba22e58d3694fa9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 11, '_wp_attached_file', '2019/06/Kazan-1.jpg'),
(12, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1080;s:4:\"file\";s:19:\"2019/06/Kazan-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Kazan-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Kazan-1-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Kazan-1-768x405.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"Kazan-1-1024x540.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:21:\"Kazan-1-2000x1080.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:19:\"Kazan-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 12, '_wp_attached_file', '2019/06/Kazan.jpg'),
(14, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:1900;s:4:\"file\";s:17:\"2019/06/Kazan.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Kazan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Kazan-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"Kazan-768x486.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:486;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"Kazan-1024x649.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:649;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:19:\"Kazan-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"Kazan-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 13, '_wp_attached_file', '2019/06/kazan_arena.jpg'),
(16, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2958;s:6:\"height\";i:1901;s:4:\"file\";s:23:\"2019/06/kazan_arena.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"kazan_arena-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"kazan_arena-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"kazan_arena-768x494.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:494;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"kazan_arena-1024x658.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:658;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:25:\"kazan_arena-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"kazan_arena-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 14, '_wp_attached_file', '2019/06/kazan-zilant.jpg'),
(18, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1066;s:4:\"file\";s:24:\"2019/06/kazan-zilant.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"kazan-zilant-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"kazan-zilant-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"kazan-zilant-768x426.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:426;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"kazan-zilant-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:24:\"kazan-zilant-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 60D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1417267766\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"20\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:8:\"0.000625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(19, 15, '_wp_attached_file', '2019/06/maxresdefault_7.jpg'),
(20, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:27:\"2019/06/maxresdefault_7.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"maxresdefault_7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"maxresdefault_7-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"maxresdefault_7-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"maxresdefault_7-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:27:\"maxresdefault_7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 16, '_wp_attached_file', '2019/06/sYA6kYcp485W.jpg'),
(22, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1680;s:6:\"height\";i:1191;s:4:\"file\";s:24:\"2019/06/sYA6kYcp485W.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"sYA6kYcp485W-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"sYA6kYcp485W-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"sYA6kYcp485W-768x544.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:544;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"sYA6kYcp485W-1024x726.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:24:\"sYA6kYcp485W-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 7, '_edit_last', '1'),
(24, 7, '_edit_lock', '1561437760:1'),
(25, 7, 'image', '16'),
(26, 7, '_image', 'field_5d119fb9358f7'),
(27, 18, '_edit_last', '1'),
(28, 18, '_edit_lock', '1561437757:1'),
(29, 21, '_edit_last', '1'),
(30, 21, '_edit_lock', '1561436526:1'),
(31, 21, 'image', '15'),
(32, 21, '_image', 'field_5d11a19cde13f'),
(33, 21, 'link', 'http://www.google.com'),
(34, 21, '_link', 'field_5d11a1c8de140'),
(35, 22, '_edit_last', '1'),
(36, 22, '_edit_lock', '1561436544:1'),
(37, 22, 'image', '13'),
(38, 22, '_image', 'field_5d11a19cde13f'),
(39, 22, 'link', 'http://www.google.com'),
(40, 22, '_link', 'field_5d11a1c8de140'),
(41, 23, '_edit_last', '1'),
(42, 23, '_edit_lock', '1561436632:1'),
(43, 23, 'image', '11'),
(44, 23, '_image', 'field_5d11a19cde13f'),
(45, 23, 'link', 'http://www.google.com'),
(46, 23, '_link', 'field_5d11a1c8de140'),
(47, 24, '_edit_last', '1'),
(48, 24, '_edit_lock', '1561437772:1'),
(49, 24, 'image', '15'),
(50, 24, '_image', 'field_5d119fb9358f7'),
(51, 25, '_edit_last', '1'),
(52, 25, '_edit_lock', '1561437791:1'),
(53, 25, 'image', '9'),
(54, 25, '_image', 'field_5d119fb9358f7'),
(55, 26, '_edit_last', '1'),
(56, 26, '_edit_lock', '1561437797:1'),
(57, 26, 'image', '8'),
(58, 26, '_image', 'field_5d119fb9358f7'),
(59, 27, '_edit_last', '1'),
(60, 27, '_edit_lock', '1561440428:1'),
(61, 28, '_edit_last', '1'),
(62, 28, '_edit_lock', '1561440415:1'),
(63, 27, 'image', '16'),
(64, 27, '_image', 'field_5d11b119e283d'),
(65, 30, '_edit_last', '1'),
(66, 30, '_edit_lock', '1561440441:1'),
(67, 30, 'image', '15'),
(68, 30, '_image', 'field_5d11b119e283d'),
(69, 31, '_edit_last', '1'),
(70, 31, '_edit_lock', '1561440455:1'),
(71, 31, 'image', '14'),
(72, 31, '_image', 'field_5d11b119e283d'),
(73, 32, '_edit_last', '1'),
(74, 32, '_edit_lock', '1561440468:1'),
(75, 32, 'image', '13'),
(76, 32, '_image', 'field_5d11b119e283d'),
(77, 33, '_edit_last', '1'),
(78, 33, '_edit_lock', '1561441064:1'),
(79, 33, 'image', '12'),
(80, 33, '_image', 'field_5d11b119e283d'),
(81, 1, '_wp_trash_meta_status', 'publish'),
(82, 1, '_wp_trash_meta_time', '1561441211'),
(83, 1, '_wp_desired_post_slug', 'hello-world'),
(84, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(85, 35, '_edit_last', '1'),
(86, 35, '_edit_lock', '1561441096:1'),
(87, 35, '_thumbnail_id', '16'),
(90, 38, '_edit_last', '1'),
(91, 38, '_edit_lock', '1561441111:1'),
(92, 38, '_thumbnail_id', '15'),
(95, 40, '_edit_last', '1'),
(96, 40, '_edit_lock', '1561441129:1'),
(97, 40, '_thumbnail_id', '14'),
(100, 42, '_edit_last', '1'),
(101, 42, '_edit_lock', '1561441146:1'),
(102, 42, '_thumbnail_id', '13'),
(105, 44, '_edit_last', '1'),
(106, 44, '_edit_lock', '1561441879:1'),
(107, 44, '_thumbnail_id', '12'),
(110, 46, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(111, 46, '_mail', 'a:8:{s:7:\"subject\";s:34:\"Kazan Museum Tour \"[your-subject]\"\";s:6:\"sender\";s:34:\"Kazan Museum Tour <admin@mail.com>\";s:4:\"body\";s:186:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Kazan Museum Tour (http://localhost/TW_cms_module)\";s:9:\"recipient\";s:14:\"admin@mail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(112, 46, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:34:\"Kazan Museum Tour \"[your-subject]\"\";s:6:\"sender\";s:34:\"Kazan Museum Tour <admin@mail.com>\";s:4:\"body\";s:128:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Kazan Museum Tour (http://localhost/TW_cms_module)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:24:\"Reply-To: admin@mail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(113, 46, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(114, 46, '_additional_settings', NULL),
(115, 46, '_locale', 'en_US'),
(116, 47, '_form', '<div class=\"form-group\">\n	<label> Your Name* </label>[text* name]\n</div>\n\n<div class=\"form-group\">\n	<label> Your Email* </label>[email* email]\n</div>\n\n<div class=\"form-group\">\n	<label> Your Message </label>[textarea message 100x3]\n</div>\n\n<div class=\"form-group\">\n	[submit \"Submit\"]\n</div>'),
(117, 47, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:34:\"Kazan Museum Tour \"[your-subject]\"\";s:6:\"sender\";s:34:\"Kazan Museum Tour <admin@mail.com>\";s:9:\"recipient\";s:14:\"admin@mail.com\";s:4:\"body\";s:186:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Kazan Museum Tour (http://localhost/TW_cms_module)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(118, 47, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:34:\"Kazan Museum Tour \"[your-subject]\"\";s:6:\"sender\";s:34:\"Kazan Museum Tour <admin@mail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Kazan Museum Tour (http://localhost/TW_cms_module)\";s:18:\"additional_headers\";s:24:\"Reply-To: admin@mail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(119, 47, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:68:\"Thank you for your message! We will contact you as soon as possible.\";s:12:\"mail_sent_ng\";s:49:\"Something wrong happened. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(120, 47, '_additional_settings', 'skip_mail: on'),
(121, 47, '_locale', 'en_US'),
(126, 47, '_config_errors', 'a:2:{s:9:\"form.body\";a:1:{i:0;a:2:{s:4:\"code\";i:107;s:4:\"args\";a:3:{s:7:\"message\";s:55:\"Unavailable names (%names%) are used for form controls.\";s:6:\"params\";a:1:{s:5:\"names\";s:6:\"\"name\"\";}s:4:\"link\";s:63:\"https://contactform7.com/configuration-errors/unavailable-names\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(127, 48, '_edit_lock', '1561455653:1'),
(128, 48, '_edit_last', '1'),
(129, 48, 'image', '15'),
(130, 48, '_image', 'field_5d11a19cde13f'),
(131, 48, 'link', 'http://www.google.com'),
(132, 48, '_link', 'field_5d11a1c8de140'),
(133, 50, '_edit_lock', '1561456445:2'),
(134, 50, '_edit_last', '2'),
(135, 51, '_wp_attached_file', '2019/06/sYA6kYcp485W-1.jpg'),
(136, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1680;s:6:\"height\";i:1191;s:4:\"file\";s:26:\"2019/06/sYA6kYcp485W-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"sYA6kYcp485W-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"sYA6kYcp485W-1-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"sYA6kYcp485W-1-1024x726.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 50, 'image', '51'),
(138, 50, '_image', 'field_5d119fb9358f7'),
(139, 26, '_wp_trash_meta_status', 'publish'),
(140, 26, '_wp_trash_meta_time', '1561456592'),
(141, 26, '_wp_desired_post_slug', 'museum-4'),
(142, 52, '_edit_lock', '1561456477:2'),
(143, 52, '_edit_last', '2'),
(144, 52, 'image', '12'),
(145, 52, '_image', 'field_5d11b119e283d'),
(146, 33, '_wp_trash_meta_status', 'publish'),
(147, 33, '_wp_trash_meta_time', '1561456630'),
(148, 33, '_wp_desired_post_slug', 'event-5');

-- --------------------------------------------------------

--
-- Table structure for table `kmt_posts`
--

CREATE TABLE `kmt_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kmt_posts`
--

INSERT INTO `kmt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-25 04:13:57', '2019-06-25 04:13:57', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-06-25 05:40:11', '2019-06-25 05:40:11', '', 0, 'http://localhost/TW_cms_module/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-25 04:13:57', '2019-06-25 04:13:57', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/TW_cms_module/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-06-25 04:13:57', '2019-06-25 04:13:57', '', 0, 'http://localhost/TW_cms_module/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-25 04:13:57', '2019-06-25 04:13:57', '<h2>Who we are</h2><p>Our website address is: http://localhost/TW_cms_module.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-06-25 04:13:57', '2019-06-25 04:13:57', '', 0, 'http://localhost/TW_cms_module/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-06-25 04:14:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-25 04:14:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/TW_cms_module/?p=4', 0, 'post', '', 0),
(5, 1, '2019-06-25 04:15:20', '2019-06-25 04:15:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"museum\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Museum', 'museum', 'publish', 'closed', 'closed', '', 'group_5d119fb53c748', '', '', '2019-06-25 05:06:30', '2019-06-25 05:06:30', '', 0, 'http://localhost/TW_cms_module/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2019-06-25 04:15:21', '2019-06-25 04:15:21', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5d119fb9358f7', '', '', '2019-06-25 05:06:30', '2019-06-25 05:06:30', '', 5, 'http://localhost/TW_cms_module/?post_type=acf-field&#038;p=6', 0, 'acf-field', '', 0),
(7, 1, '2019-06-25 04:16:09', '2019-06-25 04:16:09', '', 'Museum 1', '', 'publish', 'closed', 'closed', '', 'museum-1', '', '', '2019-06-25 04:16:09', '2019-06-25 04:16:09', '', 0, 'http://localhost/TW_cms_module/?post_type=museum&#038;p=7', 0, 'museum', '', 0),
(8, 1, '2019-06-25 04:15:38', '2019-06-25 04:15:38', '', '9151312_b', '', 'inherit', 'open', 'closed', '', '9151312_b', '', '', '2019-06-25 04:15:38', '2019-06-25 04:15:38', '', 7, 'http://localhost/TW_cms_module/wp-content/uploads/2019/06/9151312_b.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2019-06-25 04:15:40', '2019-06-25 04:15:40', '', 'AP-1SPE7X4G51W11_news', '', 'inherit', 'open', 'closed', '', 'ap-1spe7x4g51w11_news', '', '', '2019-06-25 04:15:40', '2019-06-25 04:15:40', '', 7, 'http://localhost/TW_cms_module/wp-content/uploads/2019/06/AP-1SPE7X4G51W11_news.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2019-06-25 04:15:42', '2019-06-25 04:15:42', '', 'd26a9ba22e58d3694fa9', '', 'inherit', 'open', 'closed', '', 'd26a9ba22e58d3694fa9', '', '', '2019-06-25 04:15:42', '2019-06-25 04:15:42', '', 7, 'http://localhost/TW_cms_module/wp-content/uploads/2019/06/d26a9ba22e58d3694fa9.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2019-06-25 04:15:43', '2019-06-25 04:15:43', '', 'Kazan (1)', '', 'inherit', 'open', 'closed', '', 'kazan-1', '', '', '2019-06-25 04:15:43', '2019-06-25 04:15:43', '', 7, 'http://localhost/TW_cms_module/wp-content/uploads/2019/06/Kazan-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2019-06-25 04:15:44', '2019-06-25 04:15:44', '', 'Kazan', '', 'inherit', 'open', 'closed', '', 'kazan', '', '', '2019-06-25 04:15:44', '2019-06-25 04:15:44', '', 7, 'http://localhost/TW_cms_module/wp-content/uploads/2019/06/Kazan.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2019-06-25 04:15:45', '2019-06-25 04:15:45', '', 'kazan_arena', '', 'inherit', 'open', 'closed', '', 'kazan_arena', '', '', '2019-06-25 04:15:45', '2019-06-25 04:15:45', '', 7, 'http://localhost/TW_cms_module/wp-content/uploads/2019/06/kazan_arena.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2019-06-25 04:15:47', '2019-06-25 04:15:47', '', 'kazan-zilant', '', 'inherit', 'open', 'closed', '', 'kazan-zilant', '', '', '2019-06-25 04:15:47', '2019-06-25 04:15:47', '', 7, 'http://localhost/TW_cms_module/wp-content/uploads/2019/06/kazan-zilant.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2019-06-25 04:15:48', '2019-06-25 04:15:48', '', 'maxresdefault_7', '', 'inherit', 'open', 'closed', '', 'maxresdefault_7', '', '', '2019-06-25 04:15:48', '2019-06-25 04:15:48', '', 7, 'http://localhost/TW_cms_module/wp-content/uploads/2019/06/maxresdefault_7.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2019-06-25 04:15:49', '2019-06-25 04:15:49', '', 'sYA6kYcp485W', '', 'inherit', 'open', 'closed', '', 'sya6kycp485w', '', '', '2019-06-25 04:15:49', '2019-06-25 04:15:49', '', 7, 'http://localhost/TW_cms_module/wp-content/uploads/2019/06/sYA6kYcp485W.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2019-06-25 04:22:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-25 04:22:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/TW_cms_module/?post_type=image-slider&p=17', 0, 'image-slider', '', 0),
(18, 1, '2019-06-25 04:23:48', '2019-06-25 04:23:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"image-slider\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Image Slider', 'image-slider', 'publish', 'closed', 'closed', '', 'group_5d11a198af44a', '', '', '2019-06-25 04:26:26', '2019-06-25 04:26:26', '', 0, 'http://localhost/TW_cms_module/?post_type=acf-field-group&#038;p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2019-06-25 04:23:48', '2019-06-25 04:23:48', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5d11a19cde13f', '', '', '2019-06-25 04:26:26', '2019-06-25 04:26:26', '', 18, 'http://localhost/TW_cms_module/?post_type=acf-field&#038;p=19', 0, 'acf-field', '', 0),
(20, 1, '2019-06-25 04:23:48', '2019-06-25 04:23:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5d11a1c8de140', '', '', '2019-06-25 04:23:48', '2019-06-25 04:23:48', '', 18, 'http://localhost/TW_cms_module/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(21, 1, '2019-06-25 04:24:28', '2019-06-25 04:24:28', '', 'Check out our fall special!', '', 'publish', 'closed', 'closed', '', 'check-out-our-fall-special', '', '', '2019-06-25 04:24:28', '2019-06-25 04:24:28', '', 0, 'http://localhost/TW_cms_module/?post_type=image-slider&#038;p=21', 0, 'image-slider', '', 0),
(22, 1, '2019-06-25 04:24:47', '2019-06-25 04:24:47', '', 'This is another museum', '', 'publish', 'closed', 'closed', '', 'this-is-another-museum', '', '', '2019-06-25 04:24:47', '2019-06-25 04:24:47', '', 0, 'http://localhost/TW_cms_module/?post_type=image-slider&#038;p=22', 0, 'image-slider', '', 0),
(23, 1, '2019-06-25 04:25:05', '2019-06-25 04:25:05', '', 'I think it\'s better to have another image', '', 'publish', 'closed', 'closed', '', 'i-think-its-better-to-have-another-image', '', '', '2019-06-25 04:25:05', '2019-06-25 04:25:05', '', 0, 'http://localhost/TW_cms_module/?post_type=image-slider&#038;p=23', 0, 'image-slider', '', 0),
(24, 1, '2019-06-25 04:45:15', '2019-06-25 04:45:15', '', 'Museum 2', '', 'publish', 'closed', 'closed', '', 'museum-2', '', '', '2019-06-25 04:45:15', '2019-06-25 04:45:15', '', 0, 'http://localhost/TW_cms_module/?post_type=museum&#038;p=24', 0, 'museum', '', 0),
(25, 1, '2019-06-25 04:45:24', '2019-06-25 04:45:24', '', 'Museum 3', '', 'publish', 'closed', 'closed', '', 'museum-3', '', '', '2019-06-25 04:45:24', '2019-06-25 04:45:24', '', 0, 'http://localhost/TW_cms_module/?post_type=museum&#038;p=25', 0, 'museum', '', 0),
(26, 1, '2019-06-25 04:45:40', '2019-06-25 04:45:40', '', 'Museum 4', '', 'trash', 'closed', 'closed', '', 'museum-4__trashed', '', '', '2019-06-25 09:56:32', '2019-06-25 09:56:32', '', 0, 'http://localhost/TW_cms_module/?post_type=museum&#038;p=26', 0, 'museum', '', 0),
(27, 1, '2019-06-25 05:29:31', '2019-06-25 05:29:31', 'this is first event', 'Event 1', '', 'publish', 'closed', 'closed', '', 'event-1', '', '', '2019-06-25 05:29:31', '2019-06-25 05:29:31', '', 0, 'http://localhost/TW_cms_module/?post_type=event&#038;p=27', 0, 'event', '', 0),
(28, 1, '2019-06-25 05:29:12', '2019-06-25 05:29:12', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Event', 'event', 'publish', 'closed', 'closed', '', 'group_5d11b117214c3', '', '', '2019-06-25 05:29:18', '2019-06-25 05:29:18', '', 0, 'http://localhost/TW_cms_module/?post_type=acf-field-group&#038;p=28', 0, 'acf-field-group', '', 0),
(29, 1, '2019-06-25 05:29:12', '2019-06-25 05:29:12', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5d11b119e283d', '', '', '2019-06-25 05:29:12', '2019-06-25 05:29:12', '', 28, 'http://localhost/TW_cms_module/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2019-06-25 05:29:44', '2019-06-25 05:29:44', 'this is second event', 'Event 2', '', 'publish', 'closed', 'closed', '', 'event-2', '', '', '2019-06-25 05:29:44', '2019-06-25 05:29:44', '', 0, 'http://localhost/TW_cms_module/?post_type=event&#038;p=30', 0, 'event', '', 0),
(31, 1, '2019-06-25 05:29:58', '2019-06-25 05:29:58', 'this is third event', 'Event 3', '', 'publish', 'closed', 'closed', '', 'event-3', '', '', '2019-06-25 05:29:58', '2019-06-25 05:29:58', '', 0, 'http://localhost/TW_cms_module/?post_type=event&#038;p=31', 0, 'event', '', 0),
(32, 1, '2019-06-25 05:30:11', '2019-06-25 05:30:11', 'this is 4th event', 'Event 4', '', 'publish', 'closed', 'closed', '', 'event-4', '', '', '2019-06-25 05:30:11', '2019-06-25 05:30:11', '', 0, 'http://localhost/TW_cms_module/?post_type=event&#038;p=32', 0, 'event', '', 0),
(33, 1, '2019-06-25 05:30:26', '2019-06-25 05:30:26', 'this is 5th event', 'Event 5', '', 'trash', 'closed', 'closed', '', 'event-5__trashed', '', '', '2019-06-25 09:57:10', '2019-06-25 09:57:10', '', 0, 'http://localhost/TW_cms_module/?post_type=event&#038;p=33', 0, 'event', '', 0),
(34, 1, '2019-06-25 05:40:11', '2019-06-25 05:40:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-06-25 05:40:11', '2019-06-25 05:40:11', '', 1, 'http://localhost/TW_cms_module/2019/06/25/1-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-06-25 05:40:38', '2019-06-25 05:40:38', 'first news', 'News 1', '', 'publish', 'open', 'open', '', 'news-1', '', '', '2019-06-25 05:40:38', '2019-06-25 05:40:38', '', 0, 'http://localhost/TW_cms_module/?p=35', 0, 'post', '', 0),
(36, 1, '2019-06-25 05:40:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-25 05:40:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/TW_cms_module/?post_type=acf-field-group&p=36', 0, 'acf-field-group', '', 0),
(37, 1, '2019-06-25 05:40:38', '2019-06-25 05:40:38', 'first news', 'News 1', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-06-25 05:40:38', '2019-06-25 05:40:38', '', 35, 'http://localhost/TW_cms_module/2019/06/25/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-06-25 05:40:53', '2019-06-25 05:40:53', 'second news', 'News 2', '', 'publish', 'open', 'open', '', 'news-2', '', '', '2019-06-25 05:40:53', '2019-06-25 05:40:53', '', 0, 'http://localhost/TW_cms_module/?p=38', 0, 'post', '', 0),
(39, 1, '2019-06-25 05:40:53', '2019-06-25 05:40:53', 'second news', 'News 2', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-06-25 05:40:53', '2019-06-25 05:40:53', '', 38, 'http://localhost/TW_cms_module/2019/06/25/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-06-25 05:41:11', '2019-06-25 05:41:11', 'third news', 'News 3', '', 'publish', 'open', 'open', '', 'news-3', '', '', '2019-06-25 05:41:11', '2019-06-25 05:41:11', '', 0, 'http://localhost/TW_cms_module/?p=40', 0, 'post', '', 0),
(41, 1, '2019-06-25 05:41:11', '2019-06-25 05:41:11', 'third news', 'News 3', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-06-25 05:41:11', '2019-06-25 05:41:11', '', 40, 'http://localhost/TW_cms_module/2019/06/25/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-06-25 05:41:24', '2019-06-25 05:41:24', '4th news', 'News 4', '', 'publish', 'open', 'open', '', 'news-4', '', '', '2019-06-25 05:41:24', '2019-06-25 05:41:24', '', 0, 'http://localhost/TW_cms_module/?p=42', 0, 'post', '', 0),
(43, 1, '2019-06-25 05:41:24', '2019-06-25 05:41:24', '4th news', 'News 4', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-06-25 05:41:24', '2019-06-25 05:41:24', '', 42, 'http://localhost/TW_cms_module/2019/06/25/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-06-25 05:41:42', '2019-06-25 05:41:42', '5th news', 'News 5', '', 'publish', 'open', 'open', '', 'news-5', '', '', '2019-06-25 05:41:42', '2019-06-25 05:41:42', '', 0, 'http://localhost/TW_cms_module/?p=44', 0, 'post', '', 0),
(45, 1, '2019-06-25 05:41:42', '2019-06-25 05:41:42', '5th news', 'News 5', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-06-25 05:41:42', '2019-06-25 05:41:42', '', 44, 'http://localhost/TW_cms_module/2019/06/25/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-06-25 06:10:37', '2019-06-25 06:10:37', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nKazan Museum Tour \"[your-subject]\"\nKazan Museum Tour <admin@mail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Kazan Museum Tour (http://localhost/TW_cms_module)\nadmin@mail.com\nReply-To: [your-email]\n\n0\n0\n\nKazan Museum Tour \"[your-subject]\"\nKazan Museum Tour <admin@mail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Kazan Museum Tour (http://localhost/TW_cms_module)\n[your-email]\nReply-To: admin@mail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-06-25 06:10:37', '2019-06-25 06:10:37', '', 0, 'http://localhost/TW_cms_module/?post_type=wpcf7_contact_form&p=46', 0, 'wpcf7_contact_form', '', 0),
(47, 1, '2019-06-25 06:10:47', '2019-06-25 06:10:47', '<div class=\"form-group\">\r\n	<label> Your Name* </label>[text* name]\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n	<label> Your Email* </label>[email* email]\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n	<label> Your Message </label>[textarea message 100x3]\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n	[submit \"Submit\"]\r\n</div>\n1\nKazan Museum Tour \"[your-subject]\"\nKazan Museum Tour <admin@mail.com>\nadmin@mail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Kazan Museum Tour (http://localhost/TW_cms_module)\nReply-To: [your-email]\n\n\n\n\nKazan Museum Tour \"[your-subject]\"\nKazan Museum Tour <admin@mail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Kazan Museum Tour (http://localhost/TW_cms_module)\nReply-To: admin@mail.com\n\n\n\nThank you for your message! We will contact you as soon as possible.\nSomething wrong happened. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.\nskip_mail: on', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-form-1_copy', '', '', '2019-06-25 06:17:49', '2019-06-25 06:17:49', '', 0, 'http://localhost/TW_cms_module/?post_type=wpcf7_contact_form&#038;p=47', 0, 'wpcf7_contact_form', '', 0),
(48, 1, '2019-06-25 09:42:14', '2019-06-25 09:42:14', '', 'aa', '', 'publish', 'closed', 'closed', '', 'aa', '', '', '2019-06-25 09:42:14', '2019-06-25 09:42:14', '', 0, 'http://localhost/TW_cms_module/?post_type=image-slider&#038;p=48', 0, 'image-slider', '', 0),
(49, 2, '2019-06-25 09:55:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-25 09:55:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/TW_cms_module/?p=49', 0, 'post', '', 0),
(50, 2, '2019-06-25 09:56:20', '2019-06-25 09:56:20', '', 'mUSEUM5', '', 'publish', 'closed', 'closed', '', 'museum5', '', '', '2019-06-25 09:56:20', '2019-06-25 09:56:20', '', 0, 'http://localhost/TW_cms_module/?post_type=museum&#038;p=50', 0, 'museum', '', 0),
(51, 2, '2019-06-25 09:56:15', '2019-06-25 09:56:15', '', 'sYA6kYcp485W', '', 'inherit', 'open', 'closed', '', 'sya6kycp485w-2', '', '', '2019-06-25 09:56:15', '2019-06-25 09:56:15', '', 50, 'http://localhost/TW_cms_module/wp-content/uploads/2019/06/sYA6kYcp485W-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 2, '2019-06-25 09:56:54', '2019-06-25 09:56:54', 'AA', 'AA', '', 'publish', 'closed', 'closed', '', 'aa', '', '', '2019-06-25 09:56:54', '2019-06-25 09:56:54', '', 0, 'http://localhost/TW_cms_module/?post_type=event&#038;p=52', 0, 'event', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kmt_termmeta`
--

CREATE TABLE `kmt_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmt_terms`
--

CREATE TABLE `kmt_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kmt_terms`
--

INSERT INTO `kmt_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kmt_term_relationships`
--

CREATE TABLE `kmt_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kmt_term_relationships`
--

INSERT INTO `kmt_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(35, 1, 0),
(38, 1, 0),
(40, 1, 0),
(42, 1, 0),
(44, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kmt_term_taxonomy`
--

CREATE TABLE `kmt_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kmt_term_taxonomy`
--

INSERT INTO `kmt_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kmt_usermeta`
--

CREATE TABLE `kmt_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kmt_usermeta`
--

INSERT INTO `kmt_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'AdMiN'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'kmt_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'kmt_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"df51716ce39fa8d6663ad94ba7e7dd88b5aefeede5d182a47bec759ded82615b\";a:4:{s:10:\"expiration\";i:1561608870;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1561436070;}}'),
(17, 1, 'kmt_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(19, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(20, 1, 'kmt_user-settings', 'libraryContent=browse'),
(21, 1, 'kmt_user-settings-time', '1561436165'),
(22, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:80:\"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'screen_layout_acf-field-group', '2'),
(24, 2, 'nickname', '4Clients'),
(25, 2, 'first_name', ''),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'kmt_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(36, 2, 'kmt_user_level', '10'),
(37, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(38, 2, 'session_tokens', 'a:2:{s:64:\"4438a68ac269c4681559029324e7df3cc6ea22805c8313547a27d1832f076616\";a:4:{s:10:\"expiration\";i:1561616682;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1561443882;}s:64:\"60e4de41133594f235d4061f2410ccf99cffcaa2bf2fbaf710560c4c9b5eb4fc\";a:4:{s:10:\"expiration\";i:1561629320;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1561456520;}}'),
(39, 2, 'last_login_time', '2019-06-25 09:55:20'),
(40, 2, 'kmt_dashboard_quick_press_last_post_id', '49'),
(41, 2, 'kmt_user-settings', 'libraryContent=browse'),
(42, 2, 'kmt_user-settings-time', '1561456575');

-- --------------------------------------------------------

--
-- Table structure for table `kmt_users`
--

CREATE TABLE `kmt_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kmt_users`
--

INSERT INTO `kmt_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'AdMiN', '$P$ByaaaxL0V7cnSD/SIghZSeU6XbY/NX.', 'admin', 'admin@mail.com', '', '2019-06-25 04:13:56', '', 0, 'AdMiN'),
(2, '4Clients', '$P$BYvaWC6hS6H8dh.wcK7wJG9QuZdI970', '4clients', 'client@mail.com', '', '2019-06-25 06:21:07', '', 0, '4Clients');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kmt_aiowps_events`
--
ALTER TABLE `kmt_aiowps_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmt_aiowps_failed_logins`
--
ALTER TABLE `kmt_aiowps_failed_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmt_aiowps_global_meta`
--
ALTER TABLE `kmt_aiowps_global_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `kmt_aiowps_login_activity`
--
ALTER TABLE `kmt_aiowps_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmt_aiowps_login_lockdown`
--
ALTER TABLE `kmt_aiowps_login_lockdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmt_aiowps_permanent_block`
--
ALTER TABLE `kmt_aiowps_permanent_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmt_commentmeta`
--
ALTER TABLE `kmt_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `kmt_comments`
--
ALTER TABLE `kmt_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `kmt_feedback`
--
ALTER TABLE `kmt_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmt_links`
--
ALTER TABLE `kmt_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `kmt_options`
--
ALTER TABLE `kmt_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `kmt_postmeta`
--
ALTER TABLE `kmt_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `kmt_posts`
--
ALTER TABLE `kmt_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `kmt_termmeta`
--
ALTER TABLE `kmt_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `kmt_terms`
--
ALTER TABLE `kmt_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `kmt_term_relationships`
--
ALTER TABLE `kmt_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `kmt_term_taxonomy`
--
ALTER TABLE `kmt_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `kmt_usermeta`
--
ALTER TABLE `kmt_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `kmt_users`
--
ALTER TABLE `kmt_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kmt_aiowps_events`
--
ALTER TABLE `kmt_aiowps_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmt_aiowps_failed_logins`
--
ALTER TABLE `kmt_aiowps_failed_logins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmt_aiowps_global_meta`
--
ALTER TABLE `kmt_aiowps_global_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmt_aiowps_login_activity`
--
ALTER TABLE `kmt_aiowps_login_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kmt_aiowps_login_lockdown`
--
ALTER TABLE `kmt_aiowps_login_lockdown`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmt_aiowps_permanent_block`
--
ALTER TABLE `kmt_aiowps_permanent_block`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmt_commentmeta`
--
ALTER TABLE `kmt_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmt_comments`
--
ALTER TABLE `kmt_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kmt_feedback`
--
ALTER TABLE `kmt_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kmt_links`
--
ALTER TABLE `kmt_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmt_options`
--
ALTER TABLE `kmt_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `kmt_postmeta`
--
ALTER TABLE `kmt_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `kmt_posts`
--
ALTER TABLE `kmt_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `kmt_termmeta`
--
ALTER TABLE `kmt_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmt_terms`
--
ALTER TABLE `kmt_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kmt_term_taxonomy`
--
ALTER TABLE `kmt_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kmt_usermeta`
--
ALTER TABLE `kmt_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `kmt_users`
--
ALTER TABLE `kmt_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
