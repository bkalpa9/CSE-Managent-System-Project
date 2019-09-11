-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 09, 2018 at 06:28 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpressdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-01-06 18:38:31', '2018-01-06 18:38:31', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'DEPARTMENT OF CSE &amp; IT', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bejaey@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:86:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:31:\"WPSchoolPress/wpschoolpress.php\";i:1;s:47:\"bootstrap-3-shortcodes/bootstrap-shortcodes.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:19:\"jetpack/jetpack.php\";i:4;s:46:\"ketchup-shortcodes-pack/ketchup-shortcodes.php\";i:5;s:39:\"options-framework/options-framework.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'cursos', 'yes'),
(41, 'stylesheet', 'cursos', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '86', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:7:\"teacher\";a:2:{s:4:\"name\";s:7:\"Teacher\";s:12:\"capabilities\";a:3:{s:11:\"add_student\";b:1;s:11:\"upload_mark\";b:1;s:16:\"attendance_entry\";b:1;}}s:7:\"student\";a:2:{s:4:\"name\";s:8:\" Student\";s:12:\"capabilities\";a:1:{s:12:\"send_message\";b:1;}}s:6:\"parent\";a:2:{s:4:\"name\";s:6:\"Parent\";s:12:\"capabilities\";a:1:{s:12:\"send_message\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'nonce_key', 'eXJQRrn7T6x^oj5UbtR~P% [(eQN5T>.{YE+/.Na%,0*3ia%UJpO7O}PUuYte4-&', 'no'),
(107, 'nonce_salt', 'yu!5f zdCp:,=lCLf_v&!;DOu+K7#`1Sg^VFiRxG<2;o).If,[lUs?O#Nm =e!Kz', 'no'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1515523112;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1515523316;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515523430;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515524435;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:7:{s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:0:\"\";s:12:\"header_image\";s:111:\"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-10501793_608642992582582_250383404255183829_n.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:38;s:3:\"url\";s:111:\"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-10501793_608642992582582_250383404255183829_n.jpg\";s:13:\"thumbnail_url\";s:111:\"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-10501793_608642992582582_250383404255183829_n.jpg\";s:6:\"height\";i:1200;s:5:\"width\";i:2000;}s:11:\"custom_logo\";i:42;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:0;s:6:\"social\";i:0;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1515329004;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}}}}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1515519259;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(119, 'auth_key', ']5FEd,7Max[lDr``Bo+>cCl0x6||}&oP=yO2!|E4Za}a=-Wg=;l-BzMa4Mbm`l4~', 'no'),
(120, 'auth_salt', 'Ne{Mihe~oRrhcd>Tvv)1DB}nrpjh[iT[uS/u3v?a~yF=3d/7=3Wkz)iR9EQJPlRk', 'no'),
(121, 'logged_in_key', 'Fx%xA~b+`42ElZPry77=/%+o4f=Vyb4U,8s_*M>M2!l&e.A2kG:<?s3_!p;<Q*d.', 'no'),
(122, 'logged_in_salt', 'B0kc8IJbv7[SkU$2mUP::>`bl!x]l+Qs|?MyU!hIIHGo_5E|C|x*12%BN4t|6GGe', 'no'),
(299, '_site_transient_timeout_theme_roots', '1515521073', 'no'),
(300, '_site_transient_theme_roots', 'a:13:{s:6:\"cursos\";s:7:\"/themes\";s:9:\"economics\";s:7:\"/themes\";s:14:\"education-base\";s:7:\"/themes\";s:14:\"education-zone\";s:7:\"/themes\";s:7:\"juniper\";s:7:\"/themes\";s:26:\"preschool-and-kindergarten\";s:7:\"/themes\";s:6:\"school\";s:7:\"/themes\";s:4:\"sela\";s:7:\"/themes\";s:6:\"shrake\";s:7:\"/themes\";s:13:\"spirited-lite\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(133, 'recently_activated', 'a:1:{s:19:\"akismet/akismet.php\";i:1515321415;}', 'yes'),
(135, 'plugin_error', '', 'yes'),
(139, '_site_transient_timeout_browser_d53538f4f9e2f546a9f7142246b92d02', '1515873495', 'no'),
(140, '_site_transient_browser_d53538f4f9e2f546a9f7142246b92d02', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"55.0.2883.87\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(165, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(218, 'theme_switched_via_customizer', '', 'yes'),
(219, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(224, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:3;}}', 'yes'),
(168, 'current_theme', 'Cursos', 'yes'),
(169, 'theme_mods_school', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1515324187;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}}}}', 'yes'),
(170, 'theme_switched', '', 'yes'),
(177, 'optionsframework', 'a:1:{s:2:\"id\";s:23:\"optionsframework_cursos\";}', 'yes'),
(223, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515519287;s:7:\"checked\";a:13:{s:6:\"cursos\";s:5:\"1.0.8\";s:9:\"economics\";s:5:\"1.0.3\";s:14:\"education-base\";s:5:\"1.4.1\";s:14:\"education-zone\";s:5:\"1.1.3\";s:7:\"juniper\";s:5:\"1.0.8\";s:26:\"preschool-and-kindergarten\";s:5:\"1.0.9\";s:6:\"school\";s:5:\"1.4.5\";s:4:\"sela\";s:6:\"1.0.15\";s:6:\"shrake\";s:5:\"2.5.0\";s:13:\"spirited-lite\";s:3:\"1.4\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(189, 'theme_mods_education-zone', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1515328853;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}}}}', 'yes'),
(190, 'widget_education_zone_recent_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(191, 'widget_education_zone_popular_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'widget_education_zone_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(193, 'widget_preschool_and_kindergarten_recent_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(194, 'widget_preschool_and_kindergarten_popular_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(195, 'widget_preschool_and_kindergarten_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'theme_mods_preschool-and-kindergarten', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(197, '_transient_preschool_and_kindergarten_categories', '1', 'yes'),
(232, 'jetpack_activated', '1', 'yes'),
(235, 'jetpack_activation_source', 'a:2:{i:0;s:8:\"featured\";i:1;N;}', 'yes'),
(236, 'jetpack_sync_settings_disable', '0', 'yes'),
(237, '_transient_timeout_jetpack_file_data_5.7', '1517836097', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(238, '_transient_jetpack_file_data_5.7', 'a:57:{s:32:\"31e5b9ae08b62c2b0cd8a7792242298b\";a:14:{s:4:\"name\";s:20:\"Spelling and Grammar\";s:11:\"description\";s:39:\"Check your spelling, style, and grammar\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"6\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:115:\"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche\";}s:32:\"3f41b2d629265b5de8108b463abbe8e2\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:14:\"jumpstart_desc\";s:79:\"Brings your photos and images to life as full-size, easily navigable galleries.\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";}s:32:\"e1c539d5b392f5a1709dada3da5793cc\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";}s:32:\"c6ebb418dde302de09600a6025370583\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:80:\"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";}s:32:\"836f9485669e1bbb02920cb474730df0\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:57:\"Insert a customizable contact form anywhere on your site.\";s:14:\"jumpstart_desc\";s:111:\"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:18:\"Writing, Jumpstart\";s:25:\"additional_search_queries\";s:44:\"contact, form, grunion, feedback, submission\";}s:32:\"ea3970eebf8aac55fc3eca5dca0e0157\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";}s:32:\"d2bb05ccad3d8789df40ca3abb97336c\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:53:\"Tweak your site’s CSS without modifying your theme.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";}s:32:\"a2064eec5b9c7e0d816af71dee7a715f\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"53a4ec755022ef3953699734c343da02\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";}s:32:\"e1f1f6e3689fc31c477e64b06e2f8fbf\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";}s:32:\"72fecb67ee6704ba0a33e0225316ad06\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"d56e2886185a9eace719cc57d46770df\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:131:\"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";}s:32:\"e391e760617bd0e0736550e34a73d7fe\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:8:\"2.0.3 ??\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"2e345370766346c616b3c5046e817720\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";}s:32:\"bd69edbf134de5fae8fdcf2e70a45b56\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";}s:32:\"8110b7a4423aaa619dfa46b8843e10d1\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:57:\"Use LaTeX markup for complex equations and other geekery.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";}s:32:\"f868c97c313f21b23fa6d6c64505fab6\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:71:\"Improve performance by loading images just before they scroll into view\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:26:\"mobile, theme, performance\";}s:32:\"fd7e85d3b4887fa6b6f997d6592c1f33\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";}s:32:\"c5dfef41fad5bcdcaae8e315e5cfc420\";a:14:{s:4:\"name\";s:6:\"Manage\";s:11:\"description\";s:54:\"Manage all of your sites from a centralized dashboard.\";s:14:\"jumpstart_desc\";s:151:\"Helps you remotely manage plugins, turn on automated updates, and more from <a href=\"https://wordpress.com/plugins/\" target=\"_blank\">wordpress.com</a>.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"3\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:35:\"Centralized Management, Recommended\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:26:\"manage, management, remote\";}s:32:\"fd6dc399b92bce76013427e3107c314f\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";}s:32:\"614679778a7db6d8129c9f69ac8e10a5\";a:14:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";}s:32:\"c49a35b6482b0426cb07ad28ecf5d7df\";a:14:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";}s:32:\"b42e38f6fafd2e4104ebe5bf39b4be47\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"771cfeeba0d3d23ec344d5e781fb0ae2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"54f0661d27c814fc8bde39580181d939\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"46c4c413b5c72bbd3c3dbd14ff8f8adc\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"9ea52fa25783e5ceeb6bfaed3268e64e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:14:\"jumpstart_desc\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:37:\"monitor, uptime, downtime, monitoring\";}s:32:\"cfcaafd0fcad087899d715e0b877474d\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";}s:32:\"0d18bfa69bec61550c1d813ce64149b0\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"3f0a11e23118f0788d424b646a6d465f\";a:14:{s:4:\"name\";s:6:\"Photon\";s:11:\"description\";s:26:\"Speed up images and photos\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:38:\"photon, image, cdn, performance, speed\";}s:32:\"e37cfbcb72323fb1fe8255a2edb4d738\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";}s:32:\"728290d131a480bfe7b9e405d7cd925f\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:41:\"Block suspicious-looking sign in activity\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:65:\"security, secure, protection, botnet, brute force, protect, login\";}s:32:\"f9ce784babbbf4dcca99b8cd2ceb420c\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:27:\"Automated social marketing.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:107:\"facebook, twitter, google+, googleplus, google, path, tumblr, linkedin, social, tweet, connections, sharing\";}s:32:\"83622cd43b5e31bb82e59a9d52e9bb10\";a:14:{s:4:\"name\";s:20:\"Progressive Web Apps\";s:11:\"description\";s:85:\"Speed up and improve the reliability of your site using the latest in web technology.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"18\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:26:\"manifest, pwa, progressive\";}s:32:\"052c03877dd3d296a71531cb07ad939a\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"52edecb2a75222e75b2dce4356a4efce\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:64:\"Increase page views by showing related content to your visitors.\";s:14:\"jumpstart_desc\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:22:\"related, related posts\";}s:32:\"fe7a38addc9275dcbe6c4ff6c44a9350\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:41:\"Enhanced search, powered by Elasticsearch\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:6:\"search\";}s:32:\"68b0d01689803c0ea7e4e60a86de2519\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:18:\"Traffic, Jumpstart\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";}s:32:\"8b059cb50a66b717f1ec842e736b858c\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:37:\"Allow visitors to share your content.\";s:14:\"jumpstart_desc\";s:116:\"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:141:\"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr\";}s:32:\"a6d2394329871857401255533a9873f7\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:50:\"Embed media from popular sites without any coding.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";}s:32:\"21496e2897ea5f81605e2f2ac3beb921\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:54:\"Create short and simple links for all posts and pages.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";}s:32:\"e2a54a5d7879a4162709e6ffb540dd08\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"f5c537bc304f55b29c1a87e30be0cd24\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";}s:32:\"59a23643437358a9b557f1d1e20ab040\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"6a90f97c3194cfca5671728eaaeaf15e\";a:14:{s:4:\"name\";s:14:\"Single Sign On\";s:11:\"description\";s:62:\"Allow users to log into this site using WordPress.com accounts\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";}s:32:\"b65604e920392e2f7134b646760b75e8\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";}s:32:\"23a586dd7ead00e69ec53eb32ef740e4\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:87:\"Allow users to subscribe to your posts and comments and receive notifications via email\";s:14:\"jumpstart_desc\";s:126:\"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";}s:32:\"1d978b8d84d2f378fe1a702a67633b6d\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"b3b983461d7f3d27322a3551ed8a9405\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";}s:32:\"d924e5b05722b0e104448543598f54c0\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"36741583b10c521997e563ad8e1e8b77\";a:14:{s:4:\"name\";s:12:\"Data Backups\";s:11:\"description\";s:54:\"Off-site backups, security scans, and automatic fixes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:28:\"vaultpress, backup, security\";}s:32:\"2b9b44f09b5459617d68dd82ee17002a\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";}s:32:\"5ab4c0db7c42e10e646342da0274c491\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:27:\"Fast, ad-free video hosting\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:25:\"video, videos, videopress\";}s:32:\"60a1d3aa38bc0fe1039e59dd60888543\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";}s:32:\"174ed3416476c2cb9ff5b0f671280b15\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:54:\"Add images, Twitter streams, and more to your sidebar.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";}s:32:\"a668bc9418d6de87409f867892fcdd7f\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";}s:32:\"28b931a1db19bd24869bd54b14e733d5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}}', 'no'),
(199, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"4.9.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1515324462;s:7:\"version\";s:5:\"4.9.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(201, 'widget_education_base_course', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'widget_education_base_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(203, 'widget_education_base_about', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(204, 'widget_education_base_team', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(205, 'widget_education_base_testimonial', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, 'widget_education_base_contact', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(207, 'widget_education_base_fdcolumn', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(208, 'widget_education_base_posts_col', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'category_children', 'a:0:{}', 'yes'),
(210, 'theme_mods_education-base', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(211, '_transient_education_base_categories', '1', 'yes'),
(212, 'theme_mods_juniper', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(214, 'theme_mods_spirited-lite', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(222, 'theme_mods_sela', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:6:\"social\";i:0;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1515330440;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}}}}', 'yes'),
(217, 'theme_switch_menu_locations', 'a:1:{s:6:\"social\";i:0;}', 'yes'),
(229, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515519282;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"bootstrap-3-shortcodes/bootstrap-shortcodes.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/bootstrap-3-shortcodes\";s:4:\"slug\";s:22:\"bootstrap-3-shortcodes\";s:6:\"plugin\";s:47:\"bootstrap-3-shortcodes/bootstrap-shortcodes.php\";s:11:\"new_version\";s:6:\"3.3.10\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/bootstrap-3-shortcodes/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/bootstrap-3-shortcodes.3.3.10.zip\";s:5:\"icons\";a:2:{s:3:\"svg\";s:67:\"https://ps.w.org/bootstrap-3-shortcodes/assets/icon.svg?rev=1010631\";s:7:\"default\";s:67:\"https://ps.w.org/bootstrap-3-shortcodes/assets/icon.svg?rev=1010631\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/bootstrap-3-shortcodes/assets/banner-1544x500.png?rev=861867\";s:2:\"1x\";s:76:\"https://ps.w.org/bootstrap-3-shortcodes/assets/banner-772x250.png?rev=861867\";s:7:\"default\";s:77:\"https://ps.w.org/bootstrap-3-shortcodes/assets/banner-1544x500.png?rev=861867\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.9.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"5.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.5.7.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:60:\"https://ps.w.org/jetpack/assets/icon-128x128.png?rev=1791404\";s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:7:\"default\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";s:7:\"default\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:46:\"ketchup-shortcodes-pack/ketchup-shortcodes.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/ketchup-shortcodes-pack\";s:4:\"slug\";s:23:\"ketchup-shortcodes-pack\";s:6:\"plugin\";s:46:\"ketchup-shortcodes-pack/ketchup-shortcodes.php\";s:11:\"new_version\";s:5:\"0.1.2\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/ketchup-shortcodes-pack/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/ketchup-shortcodes-pack.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:39:\"options-framework/options-framework.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/options-framework\";s:4:\"slug\";s:17:\"options-framework\";s:6:\"plugin\";s:39:\"options-framework/options-framework.php\";s:11:\"new_version\";s:5:\"1.8.5\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/options-framework/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/options-framework.1.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/options-framework/assets/icon-256x256.png?rev=977481\";s:7:\"default\";s:69:\"https://ps.w.org/options-framework/assets/icon-256x256.png?rev=977481\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:71:\"https://ps.w.org/options-framework/assets/banner-772x250.jpg?rev=496961\";s:7:\"default\";s:71:\"https://ps.w.org/options-framework/assets/banner-772x250.jpg?rev=496961\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(239, 'jetpack_available_modules', 'a:1:{s:3:\"5.7\";a:43:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(240, 'jetpack_options', 'a:4:{s:7:\"version\";s:14:\"5.7:1515330036\";s:11:\"old_version\";s:14:\"5.7:1515330036\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:-1;}', 'yes'),
(243, 'do_activate', '0', 'yes'),
(242, 'jetpack_testimonial', '0', 'yes'),
(248, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:0:{}s:6:\"custom\";a:0:{}}}', 'yes'),
(249, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(250, 'theme_mods_cursos', 'a:14:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:11:\"cursos-menu\";i:0;}s:16:\"background_color\";s:6:\"ffffff\";s:11:\"custom_logo\";i:121;s:16:\"background_image\";s:0:\"\";s:21:\"background_position_y\";s:3:\"top\";s:17:\"background_preset\";s:4:\"fill\";s:21:\"background_position_x\";s:4:\"left\";s:15:\"background_size\";s:5:\"cover\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:17:\"cursos_blog_image\";s:78:\"http://localhost/wordpress/wp-content/themes/cursos/assets/images/demo/bgh.jpg\";s:22:\"cursos_blog_page_title\";s:22:\"department of cse & it\";s:20:\"cursos_blog_subtitle\";s:31:\"Place where you gain knowledge.\";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=447 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 25, '_edit_lock', '1515267679:1'),
(3, 25, '_wp_trash_meta_status', 'publish'),
(4, 25, '_wp_trash_meta_time', '1515267680'),
(20, 32, '_edit_lock', '1515268960:1'),
(21, 32, '_customize_restore_dismissed', '1'),
(22, 33, '_edit_lock', '1515269065:1'),
(436, 121, '_wp_attached_file', '2018/01/cropped-HEADER-1.png'),
(437, 121, '_wp_attachment_context', 'custom-logo'),
(438, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:325;s:6:\"height\";i:75;s:4:\"file\";s:28:\"2018/01/cropped-HEADER-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-HEADER-1-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-HEADER-1-300x69.png\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-HEADER-1-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"cursos-photo-240-240\";a:4:{s:4:\"file\";s:27:\"cropped-HEADER-1-240x75.png\";s:5:\"width\";i:240;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(418, 114, '_wp_attached_file', '2018/01/cropped-headerfinalsvcet.jpg'),
(419, 114, '_wp_attachment_context', 'custom-logo'),
(420, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:385;s:6:\"height\";i:76;s:4:\"file\";s:36:\"2018/01/cropped-headerfinalsvcet.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-headerfinalsvcet-150x76.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"cropped-headerfinalsvcet-300x59.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:59;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-headerfinalsvcet-150x76.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"cursos-photo-360-240\";a:4:{s:4:\"file\";s:35:\"cropped-headerfinalsvcet-360x76.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"cursos-photo-240-240\";a:4:{s:4:\"file\";s:35:\"cropped-headerfinalsvcet-240x76.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(421, 115, '_wp_attached_file', '2018/01/cropped-headerfinalsvcet-1.jpg'),
(422, 115, '_wp_attachment_context', 'custom-logo'),
(423, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:352;s:6:\"height\";i:76;s:4:\"file\";s:38:\"2018/01/cropped-headerfinalsvcet-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-headerfinalsvcet-1-150x76.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"cropped-headerfinalsvcet-1-300x65.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-headerfinalsvcet-1-150x76.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"cursos-photo-240-240\";a:4:{s:4:\"file\";s:37:\"cropped-headerfinalsvcet-1-240x76.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 28, '_wp_trash_meta_status', 'publish'),
(11, 28, '_wp_trash_meta_time', '1515268786'),
(12, 29, '_wp_trash_meta_status', 'publish'),
(13, 29, '_wp_trash_meta_time', '1515268816'),
(32, 36, '_edit_lock', '1515269749:1'),
(424, 110, '_wp_trash_meta_status', 'publish'),
(425, 110, '_wp_trash_meta_time', '1515337719'),
(17, 31, '_edit_lock', '1515268875:1'),
(18, 31, '_wp_trash_meta_status', 'publish'),
(19, 31, '_wp_trash_meta_time', '1515268875'),
(30, 33, '_wp_trash_meta_status', 'publish'),
(31, 33, '_wp_trash_meta_time', '1515269065'),
(40, 36, '_wp_trash_meta_status', 'publish'),
(41, 36, '_wp_trash_meta_time', '1515269749'),
(439, 119, '_wp_trash_meta_status', 'publish'),
(440, 119, '_wp_trash_meta_time', '1515338168'),
(442, 122, '_wp_trash_meta_status', 'publish'),
(443, 122, '_wp_trash_meta_time', '1515338645'),
(444, 123, '_edit_lock', '1515338746:1'),
(445, 123, '_wp_trash_meta_status', 'publish'),
(47, 41, '_edit_lock', '1515269807:1'),
(48, 41, '_wp_trash_meta_status', 'publish'),
(49, 41, '_wp_trash_meta_time', '1515269807'),
(415, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:75;s:6:\"height\";i:75;s:4:\"file\";s:25:\"2018/01/cropped-123-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(414, 112, '_wp_attachment_context', 'custom-logo'),
(407, 108, '_wp_trash_meta_time', '1515337068'),
(408, 109, '_wp_trash_meta_status', 'publish'),
(409, 109, '_wp_trash_meta_time', '1515337099'),
(410, 110, '_edit_lock', '1515337719:1'),
(446, 123, '_wp_trash_meta_time', '1515338746'),
(413, 112, '_wp_attached_file', '2018/01/cropped-123-1.png'),
(53, 43, '_edit_lock', '1515269871:1'),
(54, 43, '_wp_trash_meta_status', 'publish'),
(55, 43, '_wp_trash_meta_time', '1515269871'),
(56, 44, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(57, 44, '_mail', 'a:8:{s:7:\"subject\";s:43:\"DEPARTMENT OF CSE &amp; IT \"[your-subject]\"\";s:6:\"sender\";s:30:\"[your-name] <bejaey@gmail.com>\";s:4:\"body\";s:191:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on DEPARTMENT OF CSE &amp; IT (http://localhost/wordpress)\";s:9:\"recipient\";s:16:\"bejaey@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(58, 44, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:43:\"DEPARTMENT OF CSE &amp; IT \"[your-subject]\"\";s:6:\"sender\";s:45:\"DEPARTMENT OF CSE &amp; IT <bejaey@gmail.com>\";s:4:\"body\";s:133:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on DEPARTMENT OF CSE &amp; IT (http://localhost/wordpress)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:26:\"Reply-To: bejaey@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(59, 44, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(60, 44, '_additional_settings', NULL),
(61, 44, '_locale', 'en_US'),
(62, 45, '_edit_lock', '1515328853:1'),
(63, 45, '_wp_trash_meta_status', 'publish'),
(64, 45, '_wp_trash_meta_time', '1515328853'),
(65, 46, '_wp_trash_meta_status', 'publish'),
(66, 46, '_wp_trash_meta_time', '1515329004'),
(370, 90, '_wp_trash_meta_time', '1515334520'),
(135, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(363, 84, '_customize_restore_dismissed', '1'),
(364, 88, '_edit_lock', '1515334435:1'),
(365, 88, '_wp_trash_meta_status', 'publish'),
(134, 1, '_wp_desired_post_slug', 'hello-world'),
(366, 88, '_wp_trash_meta_time', '1515334435'),
(367, 89, '_wp_trash_meta_status', 'publish'),
(368, 89, '_wp_trash_meta_time', '1515334510'),
(369, 90, '_wp_trash_meta_status', 'publish'),
(133, 1, '_wp_trash_meta_time', '1515330515'),
(132, 1, '_wp_trash_meta_status', 'publish'),
(143, 56, '_menu_item_url', 'http://localhost/wordpress/'),
(142, 56, '_menu_item_xfn', ''),
(141, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 54, '_wp_trash_meta_time', '1515330440'),
(140, 56, '_menu_item_target', ''),
(139, 56, '_menu_item_object', 'custom'),
(138, 56, '_menu_item_object_id', '56'),
(137, 56, '_menu_item_menu_item_parent', '0'),
(136, 56, '_menu_item_type', 'custom'),
(130, 54, '_wp_trash_meta_status', 'publish'),
(430, 118, '_wp_attached_file', '2018/01/cropped-HEADER.png'),
(431, 118, '_wp_attachment_context', 'custom-logo'),
(432, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:325;s:6:\"height\";i:75;s:4:\"file\";s:26:\"2018/01/cropped-HEADER.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-HEADER-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-HEADER-300x69.png\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-HEADER-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"cursos-photo-240-240\";a:4:{s:4:\"file\";s:25:\"cropped-HEADER-240x75.png\";s:5:\"width\";i:240;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 61, '_menu_item_type', 'post_type'),
(182, 61, '_menu_item_menu_item_parent', '0'),
(183, 61, '_menu_item_object_id', '15'),
(184, 61, '_menu_item_object', 'page'),
(185, 61, '_menu_item_target', ''),
(186, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(187, 61, '_menu_item_xfn', ''),
(188, 61, '_menu_item_url', ''),
(190, 62, '_menu_item_type', 'post_type'),
(191, 62, '_menu_item_menu_item_parent', '0'),
(192, 62, '_menu_item_object_id', '18'),
(193, 62, '_menu_item_object', 'page'),
(194, 62, '_menu_item_target', ''),
(195, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(196, 62, '_menu_item_xfn', ''),
(197, 62, '_menu_item_url', ''),
(433, 119, '_edit_lock', '1515338168:1'),
(434, 120, '_wp_attached_file', '2018/01/HEADER.png'),
(435, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:325;s:6:\"height\";i:75;s:4:\"file\";s:18:\"2018/01/HEADER.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"HEADER-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"HEADER-300x69.png\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"HEADER-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"cursos-photo-240-240\";a:4:{s:4:\"file\";s:17:\"HEADER-240x75.png\";s:5:\"width\";i:240;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 65, '_menu_item_type', 'post_type'),
(218, 65, '_menu_item_menu_item_parent', '0'),
(219, 65, '_menu_item_object_id', '6'),
(220, 65, '_menu_item_object', 'page'),
(221, 65, '_menu_item_target', ''),
(222, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(223, 65, '_menu_item_xfn', ''),
(224, 65, '_menu_item_url', ''),
(362, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:229;s:4:\"file\";s:23:\"2018/01/cropped-123.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-123-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-123-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(360, 87, '_wp_attached_file', '2018/01/cropped-123.png'),
(361, 87, '_wp_attachment_context', 'custom-logo'),
(354, 84, '_edit_lock', '1515331565:1'),
(374, 92, '_wp_trash_meta_status', 'publish'),
(375, 92, '_wp_trash_meta_time', '1515334726'),
(376, 93, '_edit_lock', '1515334802:1'),
(377, 93, '_wp_trash_meta_status', 'publish'),
(378, 93, '_wp_trash_meta_time', '1515334802'),
(379, 94, '_wp_trash_meta_status', 'publish'),
(380, 94, '_wp_trash_meta_time', '1515334840'),
(381, 94, '_edit_lock', '1515335099:1'),
(382, 95, '_wp_trash_meta_status', 'publish'),
(383, 95, '_wp_trash_meta_time', '1515334926'),
(384, 96, '_wp_trash_meta_status', 'publish'),
(385, 96, '_wp_trash_meta_time', '1515334937'),
(386, 97, '_wp_trash_meta_status', 'publish'),
(387, 97, '_wp_trash_meta_time', '1515334977'),
(388, 98, '_wp_trash_meta_status', 'publish'),
(389, 98, '_wp_trash_meta_time', '1515335003'),
(390, 99, '_wp_trash_meta_status', 'publish'),
(391, 99, '_wp_trash_meta_time', '1515335020'),
(392, 100, '_edit_lock', '1515338278:1'),
(393, 100, '_edit_last', '1'),
(395, 103, '_edit_lock', '1515335605:1'),
(396, 103, '_edit_last', '1'),
(398, 105, '_wp_trash_meta_status', 'publish'),
(399, 105, '_wp_trash_meta_time', '1515335441'),
(400, 106, '_wp_trash_meta_status', 'publish'),
(401, 106, '_wp_trash_meta_time', '1515335528'),
(406, 108, '_wp_trash_meta_status', 'publish'),
(271, 71, '_menu_item_type', 'post_type'),
(272, 71, '_menu_item_menu_item_parent', '0'),
(273, 71, '_menu_item_object_id', '13'),
(274, 71, '_menu_item_object', 'page'),
(275, 71, '_menu_item_target', ''),
(276, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(277, 71, '_menu_item_xfn', ''),
(278, 71, '_menu_item_url', ''),
(280, 72, '_menu_item_type', 'post_type'),
(281, 72, '_menu_item_menu_item_parent', '0'),
(282, 72, '_menu_item_object_id', '10'),
(283, 72, '_menu_item_object', 'page'),
(284, 72, '_menu_item_target', ''),
(285, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(286, 72, '_menu_item_xfn', ''),
(287, 72, '_menu_item_url', ''),
(298, 74, '_menu_item_type', 'post_type'),
(299, 74, '_menu_item_menu_item_parent', '0'),
(300, 74, '_menu_item_object_id', '7'),
(301, 74, '_menu_item_object', 'page'),
(302, 74, '_menu_item_target', ''),
(303, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(304, 74, '_menu_item_xfn', ''),
(305, 74, '_menu_item_url', ''),
(344, 78, '_wp_trash_meta_time', '1515331108'),
(343, 78, '_wp_trash_meta_status', 'publish'),
(350, 82, '_wp_trash_meta_time', '1515331459'),
(427, 116, '_wp_trash_meta_time', '1515337761'),
(426, 116, '_wp_trash_meta_status', 'publish'),
(348, 81, '_wp_trash_meta_time', '1515331334'),
(349, 82, '_wp_trash_meta_status', 'publish'),
(347, 81, '_wp_trash_meta_status', 'publish'),
(346, 80, '_wp_trash_meta_time', '1515331158'),
(345, 80, '_wp_trash_meta_status', 'publish'),
(334, 78, '_edit_lock', '1515331108:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-01-06 18:38:31', '2018-01-06 18:38:31', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-01-07 13:08:35', '2018-01-07 13:08:35', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-01-06 18:38:31', '2018-01-06 18:38:31', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-01-06 18:38:31', '2018-01-06 18:38:31', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-01-06 18:39:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-06 18:39:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2018-01-06 18:43:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-06 18:43:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'TeacherAttendance', 'Teacher Attendance', 'publish', 'closed', 'closed', '', 'sch-teacherattendance', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-teacherattendance/', 0, 'page', '', 0),
(6, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Marks', 'Student marks are entered and viewed ! ', 'publish', 'closed', 'closed', '', 'sch-marks', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-marks/', 0, 'page', '', 0),
(7, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Teacher', 'Teacher profile and author page details page ! ', 'publish', 'closed', 'closed', '', 'sch-teacher', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-teacher/', 0, 'page', '', 0),
(8, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Transport', 'Transport details page ! ', 'publish', 'closed', 'closed', '', 'sch-transport', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-transport/', 0, 'page', '', 0),
(9, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Dashboard', 'Dashboard contains all the overview ! ', 'publish', 'closed', 'closed', '', 'sch-dashboard', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-dashboard/', 0, 'page', '', 0),
(10, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Student', 'Student profile and author page details page ! ', 'publish', 'closed', 'closed', '', 'sch-student', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-student/', 0, 'page', '', 0),
(11, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Parent', 'Parent profile and author page details page ! ', 'publish', 'closed', 'closed', '', 'sch-parent', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-parent/', 0, 'page', '', 0),
(12, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Class', 'Class details page ! ', 'publish', 'closed', 'closed', '', 'sch-class', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-class/', 0, 'page', '', 0),
(13, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Settings', 'Settings page ! ', 'publish', 'closed', 'closed', '', 'sch-settings', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-settings/', 0, 'page', '', 0),
(14, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Subject', 'Subject details page ! ', 'publish', 'closed', 'closed', '', 'sch-subject', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-subject/', 0, 'page', '', 0),
(15, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Events', 'School Events page ! ', 'publish', 'closed', 'closed', '', 'sch-events', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-events/', 0, 'page', '', 0),
(16, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Timetable', 'Academic daily Timetable ! ', 'publish', 'closed', 'closed', '', 'sch-timetable', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-timetable/', 0, 'page', '', 0),
(17, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Attendance', 'Student attendance page ! ', 'publish', 'closed', 'closed', '', 'sch-attendance', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-attendance/', 0, 'page', '', 0),
(18, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Exams', 'Exam details page ! ', 'publish', 'closed', 'closed', '', 'sch-exams', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-exams/', 0, 'page', '', 0),
(19, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Messages', 'Messages page ! ', 'publish', 'closed', 'closed', '', 'sch-messages', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-messages/', 0, 'page', '', 0),
(20, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Notify', 'Send notification page ! ', 'publish', 'closed', 'closed', '', 'sch-notify', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-notify/', 0, 'page', '', 0),
(21, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'ImportHistory', 'Import history page ! ', 'publish', 'closed', 'closed', '', 'sch-importhistory', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-importhistory/', 0, 'page', '', 0),
(22, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'LeaveCalendar', 'Leave calendar page ! ', 'publish', 'closed', 'closed', '', 'sch-leavecalendar', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-leavecalendar/', 0, 'page', '', 0),
(23, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Change Password', 'Change Password', 'publish', 'closed', 'closed', '', 'sch-changepassword', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-changepassword/', 0, 'page', '', 0),
(24, 1, '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 'Payment', 'Fees', 'publish', 'closed', 'closed', '', 'sch-payment', '', '', '2018-01-06 18:45:54', '2018-01-06 18:45:54', '', 0, 'http://localhost/wordpress/sch-payment/', 0, 'page', '', 0),
(25, 1, '2018-01-06 19:41:20', '2018-01-06 19:41:20', '{\n    \"blogname\": {\n        \"value\": \"DEPARTMENT OF CSE & IT\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 19:40:18\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 19:40:18\"\n    },\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 19:40:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '17544f78-2e44-4110-882d-6e0028e8767e', '', '', '2018-01-06 19:41:20', '2018-01-06 19:41:20', '', 0, 'http://localhost/wordpress/?p=25', 0, 'customize_changeset', '', 0),
(32, 1, '2018-01-06 20:02:40', '0000-00-00 00:00:00', '{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 20:02:40\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '06adb309-090c-4226-af47-ee33b70067e7', '', '', '2018-01-06 20:02:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=32', 0, 'customize_changeset', '', 0),
(93, 1, '2018-01-07 14:20:02', '2018-01-07 14:20:02', '{\n    \"cursos::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:20:02\"\n    },\n    \"cursos::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:20:02\"\n    },\n    \"cursos::background_position_x\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:19:51\"\n    },\n    \"cursos::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:20:02\"\n    },\n    \"cursos::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:19:51\"\n    },\n    \"cursos::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:19:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '98aa8da9-9d40-4daf-93c9-60fc13568d6f', '', '', '2018-01-07 14:20:02', '2018-01-07 14:20:02', '', 0, 'http://localhost/wordpress/?p=93', 0, 'customize_changeset', '', 0),
(28, 1, '2018-01-06 19:59:46', '2018-01-06 19:59:46', '{\n    \"site_icon\": {\n        \"value\": 27,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 19:59:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'adb3c599-7d9f-4848-b2d2-1424180534ec', '', '', '2018-01-06 19:59:46', '2018-01-06 19:59:46', '', 0, 'http://localhost/wordpress/adb3c599-7d9f-4848-b2d2-1424180534ec/', 0, 'customize_changeset', '', 0),
(29, 1, '2018-01-06 20:00:16', '2018-01-06 20:00:16', '{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 20:00:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '344726c5-dd7f-4227-8880-9253ec316e24', '', '', '2018-01-06 20:00:16', '2018-01-06 20:00:16', '', 0, 'http://localhost/wordpress/344726c5-dd7f-4227-8880-9253ec316e24/', 0, 'customize_changeset', '', 0),
(31, 1, '2018-01-06 20:01:15', '2018-01-06 20:01:15', '{\n    \"site_icon\": {\n        \"value\": 30,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 20:01:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5173e40c-8eeb-4d8f-9c6e-2c4bb7f6a3b6', '', '', '2018-01-06 20:01:15', '2018-01-06 20:01:15', '', 0, 'http://localhost/wordpress/?p=31', 0, 'customize_changeset', '', 0),
(33, 1, '2018-01-06 20:04:25', '2018-01-06 20:04:25', '{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 20:03:18\"\n    },\n    \"twentyseventeen::header_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-ccb26a9b6c7b439aa8107289b99e477acover3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 20:04:21\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-ccb26a9b6c7b439aa8107289b99e477acover3.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-ccb26a9b6c7b439aa8107289b99e477acover3.jpg\",\n            \"timestamp\": 1515269035583,\n            \"attachment_id\": 35,\n            \"width\": 2000,\n            \"height\": 1199\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 20:04:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7f270921-c2f1-4712-9284-fe85e347e07a', '', '', '2018-01-06 20:04:25', '2018-01-06 20:04:25', '', 0, 'http://localhost/wordpress/?p=33', 0, 'customize_changeset', '', 0),
(36, 1, '2018-01-06 20:15:49', '2018-01-06 20:15:49', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-10501793_608642992582582_250383404255183829_n.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 20:15:12\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-10501793_608642992582582_250383404255183829_n.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-10501793_608642992582582_250383404255183829_n.jpg\",\n            \"timestamp\": 1515269709811,\n            \"attachment_id\": 38,\n            \"width\": 2000,\n            \"height\": 1200\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 20:15:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '45b306d4-6357-4a74-94d4-bc99c6c75e8f', '', '', '2018-01-06 20:15:49', '2018-01-06 20:15:49', '', 0, 'http://localhost/wordpress/?p=36', 0, 'customize_changeset', '', 0),
(92, 1, '2018-01-07 14:18:46', '2018-01-07 14:18:46', '{\n    \"cursos::background_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/01/13416822_1751565515125266_7544873671972831378_o.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:18:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0a4d9e24-b09c-4baa-9aa8-796213de516b', '', '', '2018-01-07 14:18:46', '2018-01-07 14:18:46', '', 0, 'http://localhost/wordpress/0a4d9e24-b09c-4baa-9aa8-796213de516b/', 0, 'customize_changeset', '', 0),
(119, 1, '2018-01-07 15:16:08', '2018-01-07 15:16:08', '{\n    \"cursos::custom_logo\": {\n        \"value\": 121,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 15:16:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '28bf8b4d-f56e-46d8-a01d-01ddf8d2e788', '', '', '2018-01-07 15:16:08', '2018-01-07 15:16:08', '', 0, 'http://localhost/wordpress/?p=119', 0, 'customize_changeset', '', 0),
(118, 1, '2018-01-07 15:14:53', '2018-01-07 15:14:53', 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-HEADER.png', 'cropped-HEADER.png', '', 'inherit', 'open', 'closed', '', 'cropped-header-png', '', '', '2018-01-07 15:14:53', '2018-01-07 15:14:53', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-HEADER.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2018-01-06 20:16:47', '2018-01-06 20:16:47', '{\n    \"twentyseventeen::custom_logo\": {\n        \"value\": 40,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 20:16:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6fdbb893-2af9-42f5-b1d9-19560eb7b20f', '', '', '2018-01-06 20:16:47', '2018-01-06 20:16:47', '', 0, 'http://localhost/wordpress/?p=41', 0, 'customize_changeset', '', 0),
(90, 1, '2018-01-07 14:15:20', '2018-01-07 14:15:20', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:15:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aba4e6bc-0c68-4d47-9efc-82bb4c212a0f', '', '', '2018-01-07 14:15:20', '2018-01-07 14:15:20', '', 0, 'http://localhost/wordpress/aba4e6bc-0c68-4d47-9efc-82bb4c212a0f/', 0, 'customize_changeset', '', 0),
(43, 1, '2018-01-06 20:17:51', '2018-01-06 20:17:51', '{\n    \"twentyseventeen::custom_logo\": {\n        \"value\": 42,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 20:17:42\"\n    },\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-06 20:17:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aa77b61d-55f6-4133-8e4c-5980f3cd45b8', '', '', '2018-01-06 20:17:51', '2018-01-06 20:17:51', '', 0, 'http://localhost/wordpress/?p=43', 0, 'customize_changeset', '', 0),
(44, 1, '2018-01-07 11:27:42', '2018-01-07 11:27:42', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nDEPARTMENT OF CSE &amp; IT \"[your-subject]\"\n[your-name] <bejaey@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on DEPARTMENT OF CSE &amp; IT (http://localhost/wordpress)\nbejaey@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nDEPARTMENT OF CSE &amp; IT \"[your-subject]\"\nDEPARTMENT OF CSE &amp; IT <bejaey@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on DEPARTMENT OF CSE &amp; IT (http://localhost/wordpress)\n[your-email]\nReply-To: bejaey@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-01-07 11:27:42', '2018-01-07 11:27:42', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=44', 0, 'wpcf7_contact_form', '', 0),
(45, 1, '2018-01-07 12:40:53', '2018-01-07 12:40:53', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"right-sidebar\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"footer-one\": [],\n            \"footer-two\": [],\n            \"footer-three\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 11:34:58\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 12:40:42\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 12:40:42\"\n    },\n    \"nav_menu[-3132670016348606500]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 12:40:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f749c158-8821-4468-bb4e-55b5f9320ee7', '', '', '2018-01-07 12:40:53', '2018-01-07 12:40:53', '', 0, 'http://localhost/wordpress/?p=45', 0, 'customize_changeset', '', 0),
(46, 1, '2018-01-07 12:43:24', '2018-01-07 12:43:24', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"right-sidebar\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"footer-one\": [],\n            \"footer-two\": [],\n            \"footer-three\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 12:43:24\"\n    },\n    \"sela::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 12:43:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '849c5b32-0ee3-495e-bb15-465b20f7f2d6', '', '', '2018-01-07 12:43:24', '2018-01-07 12:43:24', '', 0, 'http://localhost/wordpress/849c5b32-0ee3-495e-bb15-465b20f7f2d6/', 0, 'customize_changeset', '', 0),
(62, 1, '2018-01-07 13:11:39', '2018-01-07 13:11:39', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2018-01-07 13:18:28', '2018-01-07 13:18:28', '', 0, 'http://localhost/wordpress/?p=62', 3, 'nav_menu_item', '', 0),
(61, 1, '2018-01-07 13:11:39', '2018-01-07 13:11:39', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2018-01-07 13:18:28', '2018-01-07 13:18:28', '', 0, 'http://localhost/wordpress/?p=61', 5, 'nav_menu_item', '', 0),
(89, 1, '2018-01-07 14:15:10', '2018-01-07 14:15:10', '{\n    \"blogdescription\": {\n        \"value\": \"dfssasa\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:15:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b95e1f5a-625c-487f-8791-5544381f51ee', '', '', '2018-01-07 14:15:10', '2018-01-07 14:15:10', '', 0, 'http://localhost/wordpress/b95e1f5a-625c-487f-8791-5544381f51ee/', 0, 'customize_changeset', '', 0),
(84, 1, '2018-01-07 13:26:05', '0000-00-00 00:00:00', '{\n    \"cursos::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:25:41\"\n    },\n    \"site_icon\": {\n        \"value\": 85,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:26:05\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '41f5055f-c894-4920-8575-8aeb1e7a8109', '', '', '2018-01-07 13:26:05', '2018-01-07 13:26:05', '', 0, 'http://localhost/wordpress/?p=84', 0, 'customize_changeset', '', 0),
(121, 1, '2018-01-07 15:16:02', '2018-01-07 15:16:02', 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-HEADER-1.png', 'cropped-HEADER-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-header-1-png', '', '', '2018-01-07 15:16:02', '2018-01-07 15:16:02', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-HEADER-1.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2018-01-07 13:11:39', '2018-01-07 13:11:39', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-01-07 13:18:28', '2018-01-07 13:18:28', '', 0, 'http://localhost/wordpress/?p=56', 2, 'nav_menu_item', '', 0),
(54, 1, '2018-01-07 13:07:20', '2018-01-07 13:07:20', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"right-sidebar\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"footer-one\": [],\n            \"footer-two\": [],\n            \"footer-three\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:07:20\"\n    },\n    \"cursos::nav_menu_locations[cursos-menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:07:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f84d8d53-7ab8-4306-b863-153c62a36e25', '', '', '2018-01-07 13:07:20', '2018-01-07 13:07:20', '', 0, 'http://localhost/wordpress/f84d8d53-7ab8-4306-b863-153c62a36e25/', 0, 'customize_changeset', '', 0),
(55, 1, '2018-01-07 13:08:35', '2018-01-07 13:08:35', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-01-07 13:08:35', '2018-01-07 13:08:35', '', 1, 'http://localhost/wordpress/1-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-01-07 13:11:39', '2018-01-07 13:11:39', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2018-01-07 13:18:28', '2018-01-07 13:18:28', '', 0, 'http://localhost/wordpress/?p=65', 4, 'nav_menu_item', '', 0),
(82, 1, '2018-01-07 13:24:19', '2018-01-07 13:24:19', '{\n    \"cursos::background_color\": {\n        \"value\": \"#12a89d\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:24:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0a0ed7fd-34b7-4c6b-9762-492f16a73991', '', '', '2018-01-07 13:24:19', '2018-01-07 13:24:19', '', 0, 'http://localhost/wordpress/0a0ed7fd-34b7-4c6b-9762-492f16a73991/', 0, 'customize_changeset', '', 0),
(71, 1, '2018-01-07 13:11:39', '2018-01-07 13:11:39', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2018-01-07 13:18:28', '2018-01-07 13:18:28', '', 0, 'http://localhost/wordpress/?p=71', 11, 'nav_menu_item', '', 0),
(72, 1, '2018-01-07 13:11:39', '2018-01-07 13:11:39', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2018-01-07 13:18:28', '2018-01-07 13:18:28', '', 0, 'http://localhost/wordpress/?p=72', 7, 'nav_menu_item', '', 0),
(74, 1, '2018-01-07 13:11:39', '2018-01-07 13:11:39', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2018-01-07 13:18:28', '2018-01-07 13:18:28', '', 0, 'http://localhost/wordpress/?p=74', 6, 'nav_menu_item', '', 0),
(81, 1, '2018-01-07 13:22:14', '2018-01-07 13:22:14', '{\n    \"cursos::background_color\": {\n        \"value\": \"#31e2e2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:22:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '236a5190-37ae-42d5-9d35-ddfa564344a6', '', '', '2018-01-07 13:22:14', '2018-01-07 13:22:14', '', 0, 'http://localhost/wordpress/236a5190-37ae-42d5-9d35-ddfa564344a6/', 0, 'customize_changeset', '', 0),
(80, 1, '2018-01-07 13:19:18', '2018-01-07 13:19:18', '{\n    \"nav_menu_item[79]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:19:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '14a0f81d-dbcd-4c58-b6cd-8e7cff5249c4', '', '', '2018-01-07 13:19:18', '2018-01-07 13:19:18', '', 0, 'http://localhost/wordpress/14a0f81d-dbcd-4c58-b6cd-8e7cff5249c4/', 0, 'customize_changeset', '', 0),
(120, 1, '2018-01-07 15:15:55', '2018-01-07 15:15:55', '', 'HEADER', '', 'inherit', 'open', 'closed', '', 'header', '', '', '2018-01-07 15:15:55', '2018-01-07 15:15:55', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/HEADER.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2018-01-07 13:18:28', '2018-01-07 13:18:28', '{\n    \"cursos::nav_menu_locations[cursos-menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu_item[58]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu_item[59]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu_item[60]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu_item[63]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu_item[64]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu_item[66]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu_item[67]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu_item[68]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu_item[69]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu_item[70]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu[4]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:16:17\"\n    },\n    \"nav_menu_item[61]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/sch-events/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"Events\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:18:28\"\n    },\n    \"nav_menu_item[62]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/sch-exams/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Exams\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:18:28\"\n    },\n    \"nav_menu_item[65]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/sch-marks/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Marks\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:18:28\"\n    },\n    \"nav_menu_item[71]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/sch-settings/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 11,\n            \"status\": \"publish\",\n            \"original_title\": \"Settings\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:18:28\"\n    },\n    \"nav_menu_item[72]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/sch-student/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 7,\n            \"status\": \"publish\",\n            \"original_title\": \"Student\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:18:28\"\n    },\n    \"nav_menu_item[73]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:17:03\"\n    },\n    \"nav_menu_item[74]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/sch-teacher/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 6,\n            \"status\": \"publish\",\n            \"original_title\": \"Teacher\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:18:28\"\n    },\n    \"nav_menu_item[75]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:17:03\"\n    },\n    \"nav_menu_item[76]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 16,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/sch-timetable/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 10,\n            \"status\": \"publish\",\n            \"original_title\": \"Timetable\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:17:03\"\n    },\n    \"nav_menu_item[77]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:17:03\"\n    },\n    \"nav_menu_item[-7839769736756396000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:18:28\"\n    },\n    \"nav_menu_item[56]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 56,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Custom Link\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:18:28\"\n    },\n    \"nav_menu_item[57]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 17,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/sch-attendance/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 8,\n            \"status\": \"publish\",\n            \"original_title\": \"Attendance\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 13:18:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '99b0af68-7917-4584-8c40-40f304ee3f74', '', '', '2018-01-07 13:18:28', '2018-01-07 13:18:28', '', 0, 'http://localhost/wordpress/?p=78', 0, 'customize_changeset', '', 0),
(87, 1, '2018-01-07 14:12:02', '2018-01-07 14:12:02', 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-123.png', 'cropped-123.png', '', 'inherit', 'open', 'closed', '', 'cropped-123-png', '', '', '2018-01-07 14:12:02', '2018-01-07 14:12:02', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-123.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2018-01-07 14:13:55', '2018-01-07 14:13:55', '{\n    \"cursos::custom_logo\": {\n        \"value\": 87,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:13:03\"\n    },\n    \"site_icon\": {\n        \"value\": 86,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:13:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f3d11198-d076-4cb7-bbdc-76d07225583a', '', '', '2018-01-07 14:13:55', '2018-01-07 14:13:55', '', 0, 'http://localhost/wordpress/?p=88', 0, 'customize_changeset', '', 0),
(94, 1, '2018-01-07 14:20:40', '2018-01-07 14:20:40', '{\n    \"cursos::background_preset\": {\n        \"value\": \"fit\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:20:40\"\n    },\n    \"cursos::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:20:40\"\n    },\n    \"cursos::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:20:40\"\n    },\n    \"cursos::background_size\": {\n        \"value\": \"contain\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:20:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2a6f1665-1655-4898-8566-10abd2f9f10f', '', '', '2018-01-07 14:20:40', '2018-01-07 14:20:40', '', 0, 'http://localhost/wordpress/2a6f1665-1655-4898-8566-10abd2f9f10f/', 0, 'customize_changeset', '', 0),
(95, 1, '2018-01-07 14:22:06', '2018-01-07 14:22:06', '{\n    \"cursos::background_position_x\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:06\"\n    },\n    \"cursos::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'caab5116-418e-484d-9623-08ff2e8a698e', '', '', '2018-01-07 14:22:06', '2018-01-07 14:22:06', '', 0, 'http://localhost/wordpress/caab5116-418e-484d-9623-08ff2e8a698e/', 0, 'customize_changeset', '', 0),
(96, 1, '2018-01-07 14:22:17', '2018-01-07 14:22:17', '{\n    \"cursos::background_preset\": {\n        \"value\": \"default\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:17\"\n    },\n    \"cursos::background_position_x\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:17\"\n    },\n    \"cursos::background_size\": {\n        \"value\": \"auto\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:17\"\n    },\n    \"cursos::background_repeat\": {\n        \"value\": \"repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:17\"\n    },\n    \"cursos::background_attachment\": {\n        \"value\": \"scroll\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '80588d83-52c5-4794-8c3e-802f75a6b05f', '', '', '2018-01-07 14:22:17', '2018-01-07 14:22:17', '', 0, 'http://localhost/wordpress/80588d83-52c5-4794-8c3e-802f75a6b05f/', 0, 'customize_changeset', '', 0),
(97, 1, '2018-01-07 14:22:57', '2018-01-07 14:22:57', '{\n    \"cursos::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:57\"\n    },\n    \"cursos::background_position_x\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:57\"\n    },\n    \"cursos::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:57\"\n    },\n    \"cursos::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:57\"\n    },\n    \"cursos::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:57\"\n    },\n    \"cursos::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:22:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3a0d1df3-680a-4ebe-900a-99d19e5dc465', '', '', '2018-01-07 14:22:57', '2018-01-07 14:22:57', '', 0, 'http://localhost/wordpress/3a0d1df3-680a-4ebe-900a-99d19e5dc465/', 0, 'customize_changeset', '', 0),
(98, 1, '2018-01-07 14:23:23', '2018-01-07 14:23:23', '{\n    \"cursos::background_preset\": {\n        \"value\": \"default\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:23:23\"\n    },\n    \"cursos::background_size\": {\n        \"value\": \"auto\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:23:23\"\n    },\n    \"cursos::background_repeat\": {\n        \"value\": \"repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:23:23\"\n    },\n    \"cursos::background_attachment\": {\n        \"value\": \"scroll\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:23:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '21151889-0e05-4c1b-89bf-9f635027cd88', '', '', '2018-01-07 14:23:23', '2018-01-07 14:23:23', '', 0, 'http://localhost/wordpress/21151889-0e05-4c1b-89bf-9f635027cd88/', 0, 'customize_changeset', '', 0),
(99, 1, '2018-01-07 14:23:40', '2018-01-07 14:23:40', '{\n    \"cursos::background_preset\": {\n        \"value\": \"fit\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:23:40\"\n    },\n    \"cursos::background_size\": {\n        \"value\": \"contain\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:23:40\"\n    },\n    \"cursos::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:23:40\"\n    },\n    \"cursos::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:23:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6b2e8ed9-8c73-443c-9634-96acf7f24218', '', '', '2018-01-07 14:23:40', '2018-01-07 14:23:40', '', 0, 'http://localhost/wordpress/6b2e8ed9-8c73-443c-9634-96acf7f24218/', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(100, 1, '2018-01-07 14:27:24', '2018-01-07 14:27:24', 'Sri Venkateswara College of Engineering and Technology, is a leading technical Institution in India located at Chittoor, Andhra Pradesh. Department of Computer Science and Engineering having academic autonomy of having its own syllabus and curriculum. It offers undergraduate, postgraduate in various disciplines of Computer Science &amp; Engineering. The Department of CSE is accredited by NBA, New Delhi, under Tier -I in 2015,and NAAC Bengaluru.\r\n\r\nThe Department imparts world class training and research.The Department provides state of the art computing facilities to the students.  It also promotes active industry-institute collaboration by identifying areas of interest and taking part in sponsored research projects and consultancy services.\r\n\r\nCentralized Computer Centre with a built up area of 552 sq. mts., and more than 280 Systems with internet facility of 310 Mbps used by all the departments of the college. The department offers excellent training in computer programming using both proprietary &amp; open source software and has excellent lab facilities for multimedia, internet and web designing.\r\n\r\nHeaded by an experienced Professor and supported by 32 dedicated faculty members. All the faculty members are Post Graduate. Most of the faculty members are members of professional bodies like ISTE, CSI. Apart from these, some of the Professors are the members of Institution of Engineers (IE) as Fellows (FIE) and are actively participating in the activities of those professional bodies.\r\n\r\nSome of the major research areas which the faculty members and students working on are Cloud Computing, Networks, Database, Multimedia, Image Processing, Software Engineering and Data Mining\r\n\r\n<b>Major Events &amp; Achievements</b>\r\n\r\nThe CSE Department organizes national conferences, seminars, student symposium, Youth Festivals short-term training program and value added courses. This provides a wide range of opportunities for faculty and students to bring out their potential and innovative skills in a variety of fields. The department has conducted national conferences on Recent Trends in Advanced Computing, Advanced Computing Architecture, and Data Warehousing &amp; Data Mining. The department regularly conducts International/National workshops and the notable ones are Ethical Hacking &amp;Cyber Forensics, Application Development using PHP &amp; MySql, Network Security &amp; cryptography, Wireless Sensor Networks, Research challenges in Soft Computing. A national level student symposium named ‘I Technofest ‘ and ‘Selesta’ student Youth Festival has received wide publicity and response.\r\n\r\n<b>Industrial connection</b>\r\n\r\nThe CSE Department works closely with several related industries of repute. These relationships facilitate joint research, funded projects, and the opportunity to learn the latest technologies.Experts from industries and leading institutions are invited every fortnight for technical lectures under the association activities. The department Industry Advisory Board includes senior executives from IBM, Microsoft, Infosys, Wipro, Students are sent on industrial visits to companies and they also undergo in-plant training at industries.\r\n\r\nOur Department has signed MoU with infosys for Campus Connect Programme and our Institution has Received Advanced Partner College from infosy for Infosys Campus Connect Program.our department has also signed MoUs with the following reputed Corporates and is actively engaged in their Training Programmes and Industry Institute Collaboration .\r\n<ul>\r\n 	<li> IBM Centre of Excellence.</li>\r\n</ul>\r\n<ul>\r\n 	<li> Sun Academic Initiative (SAI) School.</li>\r\n</ul>\r\n<ul>\r\n 	<li> MoU with Oracle Academy for Advance Computer Science Program.</li>\r\n</ul>\r\n<ul>\r\n 	<li> MoU with SAP India Pvt. Ltd.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<b>Careers</b>\r\n\r\nThe CSE Department effectively prepares students to pursue leadership, technical, and management positions in a variety of industries. Students have obtained successful placements at leading companies like IBM, Infosys, Wipro, Cognizant, TCS, Satyam, Microsoft etc. Some of the alumni are successful entrepreneurs abroad.\r\n<h3><b>Courses Offered</b></h3>\r\n<div align=\"center\">\r\n<table border=\"3\" width=\"390\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">Under Graduate</td>\r\n</tr>\r\n<tr>\r\n<td>B.Tech</td>\r\n<td>Computer Science and Engineering</td>\r\n</tr>\r\n<tr>\r\n<td>B.Tech</td>\r\n<td>Computer Science and Systems Engineering</td>\r\n</tr>\r\n<tr align=\"center\" valign=\"top\">\r\n<td colspan=\"2\" align=\"left\" valign=\"middle\">Post Graduate</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"3\">M.Tech</td>\r\n<td>Computer Science and Engineering( I Shift)</td>\r\n</tr>\r\n<tr>\r\n<td>Computer Science and Engineering( II Shift)</td>\r\n</tr>\r\n<tr>\r\n<td>Computer Science</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'CSE DEPARTMENT', '', 'publish', 'open', 'open', '', 'cse-it-department', '', '', '2018-01-07 15:18:07', '2018-01-07 15:18:07', '', 0, 'http://localhost/wordpress/?p=100', 0, 'post', '', 0),
(101, 1, '2018-01-07 14:27:24', '2018-01-07 14:27:24', 'Sri Venkateswara College of Engineering and Technology, is a leading technical Institution in India located at Chittoor, Andhra Pradesh. Department of Computer Science and Engineering having academic autonomy of having its own syllabus and curriculum. It offers undergraduate, postgraduate in various disciplines of Computer Science &amp; Engineering. The Department of CSE is accredited by NBA, New Delhi, under Tier -I in 2015,and NAAC Bengaluru.\r\n\r\nThe Department imparts world class training and research.The Department provides state of the art computing facilities to the students.  It also promotes active industry-institute collaboration by identifying areas of interest and taking part in sponsored research projects and consultancy services.\r\n\r\nCentralized Computer Centre with a built up area of 552 sq. mts., and more than 280 Systems with internet facility of 310 Mbps used by all the departments of the college. The department offers excellent training in computer programming using both proprietary &amp; open source software and has excellent lab facilities for multimedia, internet and web designing.\r\n\r\nHeaded by an experienced Professor and supported by 32 dedicated faculty members. All the faculty members are Post Graduate. Most of the faculty members are members of professional bodies like ISTE, CSI. Apart from these, some of the Professors are the members of Institution of Engineers (IE) as Fellows (FIE) and are actively participating in the activities of those professional bodies.\r\n\r\nSome of the major research areas which the faculty members and students working on are Cloud Computing, Networks, Database, Multimedia, Image Processing, Software Engineering and Data Mining\r\n\r\n<b>Major Events &amp; Achievements</b>\r\n\r\nThe CSE Department organizes national conferences, seminars, student symposium, Youth Festivals short-term training program and value added courses. This provides a wide range of opportunities for faculty and students to bring out their potential and innovative skills in a variety of fields. The department has conducted national conferences on Recent Trends in Advanced Computing, Advanced Computing Architecture, and Data Warehousing &amp; Data Mining. The department regularly conducts International/National workshops and the notable ones are Ethical Hacking &amp;Cyber Forensics, Application Development using PHP &amp; MySql, Network Security &amp; cryptography, Wireless Sensor Networks, Research challenges in Soft Computing. A national level student symposium named ‘I Technofest ‘ and ‘Selesta’ student Youth Festival has received wide publicity and response.\r\n\r\n<b>Industrial connection</b>\r\n\r\nThe CSE Department works closely with several related industries of repute. These relationships facilitate joint research, funded projects, and the opportunity to learn the latest technologies.Experts from industries and leading institutions are invited every fortnight for technical lectures under the association activities. The department Industry Advisory Board includes senior executives from IBM, Microsoft, Infosys, Wipro, Students are sent on industrial visits to companies and they also undergo in-plant training at industries.\r\n\r\nOur Department has signed MoU with infosys for Campus Connect Programme and our Institution has Received Advanced Partner College from infosy for Infosys Campus Connect Program.our department has also signed MoUs with the following reputed Corporates and is actively engaged in their Training Programmes and Industry Institute Collaboration .\r\n<ul>\r\n 	<li> IBM Centre of Excellence.</li>\r\n</ul>\r\n<ul>\r\n 	<li> Sun Academic Initiative (SAI) School.</li>\r\n</ul>\r\n<ul>\r\n 	<li> MoU with Oracle Academy for Advance Computer Science Program.</li>\r\n</ul>\r\n<ul>\r\n 	<li> MoU with SAP India Pvt. Ltd.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<b>Careers</b>\r\n\r\nThe CSE Department effectively prepares students to pursue leadership, technical, and management positions in a variety of industries. Students have obtained successful placements at leading companies like IBM, Infosys, Wipro, Cognizant, TCS, Satyam, Microsoft etc. Some of the alumni are successful entrepreneurs abroad.\r\n<h3><b>Courses Offered</b></h3>\r\n<div align=\"center\">\r\n<table border=\"3\" width=\"390\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">Under Graduate</td>\r\n</tr>\r\n<tr>\r\n<td>B.Tech</td>\r\n<td>Computer Science and Engineering</td>\r\n</tr>\r\n<tr>\r\n<td>B.Tech</td>\r\n<td>Computer Science and Systems Engineering</td>\r\n</tr>\r\n<tr align=\"center\" valign=\"top\">\r\n<td colspan=\"2\" align=\"left\" valign=\"middle\">Post Graduate</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"3\">M.Tech</td>\r\n<td>Computer Science and Engineering( I Shift)</td>\r\n</tr>\r\n<tr>\r\n<td>Computer Science and Engineering( II Shift)</td>\r\n</tr>\r\n<tr>\r\n<td>Computer Science</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'CSE & IT DEPARTMENT', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2018-01-07 14:27:24', '2018-01-07 14:27:24', '', 100, 'http://localhost/wordpress/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-01-07 14:27:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-07 14:27:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=102', 0, 'post', '', 0),
(103, 1, '2018-01-07 14:29:57', '2018-01-07 14:29:57', 'Information Technology graduates are the pillars in the current and emerging information era. Opportunities include pursuing Master of Science programs in reputed Universities of U.S. and taking up research assignments in Hardware, System Software, Computer Engineering, Multi media, and Net Working and Communications areas.\r\n\r\nJob opportunities are ever increasing, and are varied in nature. System Study, Analysis, Design and Programming are the inherent phases in application development, and each one of them provides enormous potential to the Computer Science and Engineering graduates to shape themselves in their career. Hi-end profiles include Artificial Intelligence, Robotics, Graphic Solutions and Simulations.\r\n\r\n<span class=\"headings2\"><strong>Motto</strong></span>\r\n\r\n“Enabling the undergraduates to develop logic and a problem solving approach and help build their careers in the innovative field of computing.”\r\n\r\n<span class=\"headings2\"><strong>Labs</strong></span>\r\n\r\nThe Computer Centre includes two laboratories, an Internet gateway, a Server Room, and a facility for scanning and printing spread across an area of 2,400 Sq.ft. The laboratories house 70 computer systems, connected to the campus-wide LAN. The laboratories are equipped with various software C, C++, Oracle, Visual Studio, Java and Case Tools.\r\n\r\nBesides these labs, the students are also trained in advanced labs VLSI Design Centre, Embedded Systems Lab and the Networking Lab.', 'IT DEPARTMENT', '', 'publish', 'open', 'open', '', 'it-department', '', '', '2018-01-07 14:35:12', '2018-01-07 14:35:12', '', 0, 'http://localhost/wordpress/?p=103', 0, 'post', '', 0),
(104, 1, '2018-01-07 14:29:57', '2018-01-07 14:29:57', 'Information Technology graduates are the pillars in the current and emerging information era. Opportunities include pursuing Master of Science programs in reputed Universities of U.S. and taking up research assignments in Hardware, System Software, Computer Engineering, Multi media, and Net Working and Communications areas.\r\n\r\nJob opportunities are ever increasing, and are varied in nature. System Study, Analysis, Design and Programming are the inherent phases in application development, and each one of them provides enormous potential to the Computer Science and Engineering graduates to shape themselves in their career. Hi-end profiles include Artificial Intelligence, Robotics, Graphic Solutions and Simulations.\r\n\r\n<span class=\"headings2\"><strong>Motto</strong></span>\r\n\r\n“Enabling the undergraduates to develop logic and a problem solving approach and help build their careers in the innovative field of computing.”\r\n\r\n<span class=\"headings2\"><strong>Labs</strong></span>\r\n\r\nThe Computer Centre includes two laboratories, an Internet gateway, a Server Room, and a facility for scanning and printing spread across an area of 2,400 Sq.ft. The laboratories house 70 computer systems, connected to the campus-wide LAN. The laboratories are equipped with various software C, C++, Oracle, Visual Studio, Java and Case Tools.\r\n\r\nBesides these labs, the students are also trained in advanced labs VLSI Design Centre, Embedded Systems Lab and the Networking Lab.', 'IT DEPARTMENT', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-01-07 14:29:57', '2018-01-07 14:29:57', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-01-07 14:30:41', '2018-01-07 14:30:41', '{\n    \"cursos::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:30:41\"\n    },\n    \"cursos::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:30:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '77d2063f-a31b-4695-bf44-cd1f01a3ae90', '', '', '2018-01-07 14:30:41', '2018-01-07 14:30:41', '', 0, 'http://localhost/wordpress/77d2063f-a31b-4695-bf44-cd1f01a3ae90/', 0, 'customize_changeset', '', 0),
(106, 1, '2018-01-07 14:32:08', '2018-01-07 14:32:08', '{\n    \"cursos::cursos_blog_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:32:08\"\n    },\n    \"cursos::cursos_blog_page_title\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:32:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9a18c9c8-e7c1-4cb3-88b1-aabee55cdc90', '', '', '2018-01-07 14:32:08', '2018-01-07 14:32:08', '', 0, 'http://localhost/wordpress/9a18c9c8-e7c1-4cb3-88b1-aabee55cdc90/', 0, 'customize_changeset', '', 0),
(107, 1, '2018-01-07 14:33:44', '2018-01-07 14:33:44', 'Sri Venkateswara College of Engineering and Technology, is a leading technical Institution in India located at Chittoor, Andhra Pradesh. Department of Computer Science and Engineering having academic autonomy of having its own syllabus and curriculum. It offers undergraduate, postgraduate in various disciplines of Computer Science &amp; Engineering. The Department of CSE is accredited by NBA, New Delhi, under Tier -I in 2015,and NAAC Bengaluru.\r\n\r\nThe Department imparts world class training and research.The Department provides state of the art computing facilities to the students.  It also promotes active industry-institute collaboration by identifying areas of interest and taking part in sponsored research projects and consultancy services.\r\n\r\nCentralized Computer Centre with a built up area of 552 sq. mts., and more than 280 Systems with internet facility of 310 Mbps used by all the departments of the college. The department offers excellent training in computer programming using both proprietary &amp; open source software and has excellent lab facilities for multimedia, internet and web designing.\r\n\r\nHeaded by an experienced Professor and supported by 32 dedicated faculty members. All the faculty members are Post Graduate. Most of the faculty members are members of professional bodies like ISTE, CSI. Apart from these, some of the Professors are the members of Institution of Engineers (IE) as Fellows (FIE) and are actively participating in the activities of those professional bodies.\r\n\r\nSome of the major research areas which the faculty members and students working on are Cloud Computing, Networks, Database, Multimedia, Image Processing, Software Engineering and Data Mining\r\n\r\n<b>Major Events &amp; Achievements</b>\r\n\r\nThe CSE Department organizes national conferences, seminars, student symposium, Youth Festivals short-term training program and value added courses. This provides a wide range of opportunities for faculty and students to bring out their potential and innovative skills in a variety of fields. The department has conducted national conferences on Recent Trends in Advanced Computing, Advanced Computing Architecture, and Data Warehousing &amp; Data Mining. The department regularly conducts International/National workshops and the notable ones are Ethical Hacking &amp;Cyber Forensics, Application Development using PHP &amp; MySql, Network Security &amp; cryptography, Wireless Sensor Networks, Research challenges in Soft Computing. A national level student symposium named ‘I Technofest ‘ and ‘Selesta’ student Youth Festival has received wide publicity and response.\r\n\r\n<b>Industrial connection</b>\r\n\r\nThe CSE Department works closely with several related industries of repute. These relationships facilitate joint research, funded projects, and the opportunity to learn the latest technologies.Experts from industries and leading institutions are invited every fortnight for technical lectures under the association activities. The department Industry Advisory Board includes senior executives from IBM, Microsoft, Infosys, Wipro, Students are sent on industrial visits to companies and they also undergo in-plant training at industries.\r\n\r\nOur Department has signed MoU with infosys for Campus Connect Programme and our Institution has Received Advanced Partner College from infosy for Infosys Campus Connect Program.our department has also signed MoUs with the following reputed Corporates and is actively engaged in their Training Programmes and Industry Institute Collaboration .\r\n<ul>\r\n 	<li> IBM Centre of Excellence.</li>\r\n</ul>\r\n<ul>\r\n 	<li> Sun Academic Initiative (SAI) School.</li>\r\n</ul>\r\n<ul>\r\n 	<li> MoU with Oracle Academy for Advance Computer Science Program.</li>\r\n</ul>\r\n<ul>\r\n 	<li> MoU with SAP India Pvt. Ltd.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<b>Careers</b>\r\n\r\nThe CSE Department effectively prepares students to pursue leadership, technical, and management positions in a variety of industries. Students have obtained successful placements at leading companies like IBM, Infosys, Wipro, Cognizant, TCS, Satyam, Microsoft etc. Some of the alumni are successful entrepreneurs abroad.\r\n<h3><b>Courses Offered</b></h3>\r\n<div align=\"center\">\r\n<table border=\"3\" width=\"390\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">Under Graduate</td>\r\n</tr>\r\n<tr>\r\n<td>B.Tech</td>\r\n<td>Computer Science and Engineering</td>\r\n</tr>\r\n<tr>\r\n<td>B.Tech</td>\r\n<td>Computer Science and Systems Engineering</td>\r\n</tr>\r\n<tr align=\"center\" valign=\"top\">\r\n<td colspan=\"2\" align=\"left\" valign=\"middle\">Post Graduate</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"3\">M.Tech</td>\r\n<td>Computer Science and Engineering( I Shift)</td>\r\n</tr>\r\n<tr>\r\n<td>Computer Science and Engineering( II Shift)</td>\r\n</tr>\r\n<tr>\r\n<td>Computer Science</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'CSE DEPARTMENT', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2018-01-07 14:33:44', '2018-01-07 14:33:44', '', 100, 'http://localhost/wordpress/100-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-01-07 14:57:48', '2018-01-07 14:57:48', '{\n    \"cursos::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:57:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4daa0128-1dbe-4a8c-9f8a-3e9445a5b0e1', '', '', '2018-01-07 14:57:48', '2018-01-07 14:57:48', '', 0, 'http://localhost/wordpress/4daa0128-1dbe-4a8c-9f8a-3e9445a5b0e1/', 0, 'customize_changeset', '', 0),
(109, 1, '2018-01-07 14:58:19', '2018-01-07 14:58:19', '{\n    \"cursos::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 14:58:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9f7b34f0-d66e-44b2-aedb-341a997d5297', '', '', '2018-01-07 14:58:19', '2018-01-07 14:58:19', '', 0, 'http://localhost/wordpress/9f7b34f0-d66e-44b2-aedb-341a997d5297/', 0, 'customize_changeset', '', 0),
(110, 1, '2018-01-07 15:08:39', '2018-01-07 15:08:39', '{\n    \"cursos::custom_logo\": {\n        \"value\": 115,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 15:08:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '69547455-a4d9-4323-9db1-35b6c6a4d01e', '', '', '2018-01-07 15:08:39', '2018-01-07 15:08:39', '', 0, 'http://localhost/wordpress/?p=110', 0, 'customize_changeset', '', 0),
(112, 1, '2018-01-07 15:03:47', '2018-01-07 15:03:47', 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-123-1.png', 'cropped-123-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-123-1-png', '', '', '2018-01-07 15:03:47', '2018-01-07 15:03:47', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-123-1.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2018-01-07 15:09:21', '2018-01-07 15:09:21', '{\n    \"nav_menu_item[57]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 15:09:21\"\n    },\n    \"nav_menu_item[76]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 15:09:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '87a98599-d6d0-4cd4-90c6-77c8ccc2ea3d', '', '', '2018-01-07 15:09:21', '2018-01-07 15:09:21', '', 0, 'http://localhost/wordpress/87a98599-d6d0-4cd4-90c6-77c8ccc2ea3d/', 0, 'customize_changeset', '', 0),
(114, 1, '2018-01-07 15:07:57', '2018-01-07 15:07:57', 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-headerfinalsvcet.jpg', 'cropped-headerfinalsvcet.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-headerfinalsvcet-jpg', '', '', '2018-01-07 15:07:57', '2018-01-07 15:07:57', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-headerfinalsvcet.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2018-01-07 15:08:24', '2018-01-07 15:08:24', 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-headerfinalsvcet-1.jpg', 'cropped-headerfinalsvcet-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-headerfinalsvcet-1-jpg', '', '', '2018-01-07 15:08:24', '2018-01-07 15:08:24', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-headerfinalsvcet-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2018-01-07 15:24:05', '2018-01-07 15:24:05', '{\n    \"cursos::cursos_blog_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/themes/cursos/assets/images/demo/bgh.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 15:24:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f46764b7-7be3-412a-9b90-0d8bd037a663', '', '', '2018-01-07 15:24:05', '2018-01-07 15:24:05', '', 0, 'http://localhost/wordpress/f46764b7-7be3-412a-9b90-0d8bd037a663/', 0, 'customize_changeset', '', 0),
(123, 1, '2018-01-07 15:25:46', '2018-01-07 15:25:46', '{\n    \"cursos::cursos_blog_page_title\": {\n        \"value\": \"department of cse & it\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 15:25:46\"\n    },\n    \"cursos::cursos_blog_subtitle\": {\n        \"value\": \"Place where you gain knowledge.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-07 15:25:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1c3e78ee-9e5a-46a5-984f-6dcd6fbd0249', '', '', '2018-01-07 15:25:46', '2018-01-07 15:25:46', '', 0, 'http://localhost/wordpress/?p=123', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'Menu 1', 'menu-1', 0),
(5, 'ABOUT', 'about-it', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(62, 3, 0),
(61, 3, 0),
(56, 3, 0),
(65, 3, 0),
(71, 3, 0),
(72, 3, 0),
(103, 5, 0),
(74, 3, 0),
(100, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 7),
(5, 5, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'BejaeyT'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(122, 1, 'session_tokens', 'a:1:{s:64:\"2572fad2c544e86f7345243c1cf5521444871c6b404e170b3b88f58a1fec431c\";a:4:{s:10:\"expiration\";i:1516527649;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36\";s:5:\"login\";i:1515318049;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1515268788'),
(115, 8, 'use_ssl', '0'),
(114, 8, 'admin_color', 'fresh'),
(113, 8, 'comment_shortcuts', 'false'),
(112, 8, 'syntax_highlighting', 'true'),
(111, 8, 'rich_editing', 'true'),
(110, 8, 'description', ''),
(109, 8, 'last_name', ''),
(108, 8, 'first_name', 'Bijay'),
(107, 8, 'nickname', 'Bijay'),
(37, 3, 'nickname', 'Bishow'),
(38, 3, 'first_name', ''),
(39, 3, 'last_name', ''),
(40, 3, 'description', ''),
(41, 3, 'rich_editing', 'true'),
(42, 3, 'syntax_highlighting', 'true'),
(43, 3, 'comment_shortcuts', 'false'),
(44, 3, 'admin_color', 'fresh'),
(45, 3, 'use_ssl', '0'),
(46, 3, 'show_admin_bar_front', 'true'),
(47, 3, 'locale', ''),
(48, 3, 'wp_capabilities', 'a:1:{s:6:\"parent\";b:1;}'),
(49, 3, 'wp_user_level', '0'),
(50, 3, 'dismissed_wp_pointers', ''),
(51, 4, 'nickname', 'dashrath'),
(52, 4, 'first_name', 'DASARATH'),
(53, 4, 'last_name', ''),
(54, 4, 'description', ''),
(55, 4, 'rich_editing', 'true'),
(56, 4, 'syntax_highlighting', 'true'),
(57, 4, 'comment_shortcuts', 'false'),
(58, 4, 'admin_color', 'fresh'),
(59, 4, 'use_ssl', '0'),
(60, 4, 'show_admin_bar_front', 'true'),
(61, 4, 'locale', ''),
(62, 4, 'wp_capabilities', 'a:1:{s:7:\"teacher\";b:1;}'),
(63, 4, 'wp_user_level', '0'),
(64, 4, 'dismissed_wp_pointers', ''),
(65, 5, 'nickname', 'jyotsna'),
(66, 5, 'first_name', 'Jyotsna'),
(67, 5, 'last_name', ''),
(68, 5, 'description', ''),
(69, 5, 'rich_editing', 'true'),
(70, 5, 'syntax_highlighting', 'true'),
(71, 5, 'comment_shortcuts', 'false'),
(72, 5, 'admin_color', 'fresh'),
(73, 5, 'use_ssl', '0'),
(74, 5, 'show_admin_bar_front', 'true'),
(75, 5, 'locale', ''),
(76, 5, 'wp_capabilities', 'a:1:{s:7:\"teacher\";b:1;}'),
(77, 5, 'wp_user_level', '0'),
(78, 5, 'dismissed_wp_pointers', ''),
(79, 6, 'nickname', 'vellore'),
(80, 6, 'first_name', 'Nagraju'),
(81, 6, 'last_name', ''),
(82, 6, 'description', ''),
(83, 6, 'rich_editing', 'true'),
(84, 6, 'syntax_highlighting', 'true'),
(85, 6, 'comment_shortcuts', 'false'),
(86, 6, 'admin_color', 'fresh'),
(87, 6, 'use_ssl', '0'),
(88, 6, 'show_admin_bar_front', 'true'),
(89, 6, 'locale', ''),
(90, 6, 'wp_capabilities', 'a:1:{s:7:\"teacher\";b:1;}'),
(91, 6, 'wp_user_level', '0'),
(92, 6, 'dismissed_wp_pointers', ''),
(123, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(120, 8, 'dismissed_wp_pointers', ''),
(119, 8, 'wp_user_level', '0'),
(118, 8, 'wp_capabilities', 'a:1:{s:7:\"student\";b:1;}'),
(117, 8, 'locale', ''),
(116, 8, 'show_admin_bar_front', 'true'),
(124, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(125, 1, 'optionsframework_ignore_notice', 'true'),
(126, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'BejaeyT', '$P$BQTxjXjsKU9f3oZVVaB2q51xNk1XOG0', 'bejaeyt', 'bejaey@gmail.com', '', '2018-01-06 18:38:31', '', 0, 'BejaeyT'),
(3, 'Bishow', '$P$BoXoPLjTn3Le5e6ahsLGAyjnMzJjV/.', 'bishow', 'xyz@gmail.com', '', '2018-01-07 09:12:19', '', 0, 'Bishow'),
(8, 'Bijay', '$P$BqA/4Uzj4Sqsut7Vl3gPbbi9qFBqFx1', 'bijay', 'bejaey4@gmail.com', '', '2018-01-07 09:34:30', '1515317672:$P$BYPik1dO/Po4A2nsrUChxDGqkfCSZ2/', 0, 'Bijay'),
(4, 'dashrath', '$P$BsdmuUji2vVvxw2GukvpbHD5QLvtdU/', 'dashrath', 'DASHARATH@GMAIL.COM', '', '2018-01-07 09:18:59', '', 0, 'DASARATH'),
(5, 'jyotsna', '$P$Bn7cMFrH2VyeTGw97p7Y.UciQxzeaC0', 'jyotsna', 'jyotsna@gmail.com', '', '2018-01-07 09:24:11', '', 0, 'Jyotsna'),
(6, 'vellore', '$P$BcZtIxn4RmzS2vLWfcuD05jQ0EF9FS.', 'vellore', 'naagraju@gmail.com', '', '2018-01-07 09:26:25', '', 0, 'Nagraju');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_attendance`
--

DROP TABLE IF EXISTS `wp_wpsp_attendance`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_attendance` (
  `aid` int(15) UNSIGNED NOT NULL AUTO_INCREMENT,
  `class_id` varchar(15) DEFAULT NULL,
  `absents` text,
  `date` date DEFAULT NULL,
  `entry` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_class`
--

DROP TABLE IF EXISTS `wp_wpsp_class`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_class` (
  `cid` int(15) NOT NULL AUTO_INCREMENT,
  `c_numb` varchar(128) DEFAULT NULL,
  `c_name` varchar(128) DEFAULT NULL,
  `teacher_id` int(15) DEFAULT NULL,
  `c_capacity` int(5) DEFAULT NULL,
  `c_loc` varchar(60) DEFAULT NULL,
  `c_sdate` date DEFAULT NULL,
  `c_edate` date DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_wpsp_class`
--

INSERT INTO `wp_wpsp_class` (`cid`, `c_numb`, `c_name`, `teacher_id`, `c_capacity`, `c_loc`, `c_sdate`, `c_edate`) VALUES
(1, 'S-220', 'CSE-A', 4, 65, 'CSE DEPARTMENT', '2017-12-10', '2018-05-11'),
(2, 'S-221', 'CSE-B', 5, 65, 'CSE DEPARTMENT', '2017-12-10', '2018-05-11'),
(3, 'S-222', 'IT', 6, 65, 'IT DEPARTMENT', '2018-01-01', '2018-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_events`
--

DROP TABLE IF EXISTS `wp_wpsp_events`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_events` (
  `id` bigint(15) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start` varchar(50) DEFAULT NULL,
  `end` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `title` text,
  `description` longtext,
  `color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_exam`
--

DROP TABLE IF EXISTS `wp_wpsp_exam`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_exam` (
  `eid` int(15) NOT NULL AUTO_INCREMENT,
  `classid` int(15) DEFAULT NULL,
  `subject_id` varchar(128) DEFAULT NULL,
  `e_name` varchar(128) DEFAULT NULL,
  `e_s_date` date DEFAULT NULL,
  `e_e_date` date DEFAULT NULL,
  `entry_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_fees`
--

DROP TABLE IF EXISTS `wp_wpsp_fees`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_fees` (
  `fees_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fees_amount` float NOT NULL,
  `description` text NOT NULL,
  `duration` text NOT NULL,
  `paymentType` text NOT NULL,
  `due_time` int(2) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`fees_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_fees_payment`
--

DROP TABLE IF EXISTS `wp_wpsp_fees_payment`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_fees_payment` (
  `fees_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `fees_id` int(11) NOT NULL,
  `fees_paid_amount` float NOT NULL,
  `payment_status` varchar(10) NOT NULL,
  `paid_due_date` date NOT NULL,
  PRIMARY KEY (`fees_pay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_fee_payment_history`
--

DROP TABLE IF EXISTS `wp_wpsp_fee_payment_history`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_fee_payment_history` (
  `payment_history_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fees_pay_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `paid_date` date NOT NULL,
  `paid_by` bigint(20) NOT NULL,
  `paid_status` int(2) NOT NULL,
  `paymentdescription` text NOT NULL,
  PRIMARY KEY (`payment_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_grade`
--

DROP TABLE IF EXISTS `wp_wpsp_grade`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_grade` (
  `gid` int(15) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `g_point` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `mark_from` int(3) DEFAULT NULL,
  `mark_upto` int(3) DEFAULT NULL,
  `comment` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_import_history`
--

DROP TABLE IF EXISTS `wp_wpsp_import_history`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_import_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `imported_id` longtext NOT NULL,
  `time` datetime NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_leavedays`
--

DROP TABLE IF EXISTS `wp_wpsp_leavedays`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_leavedays` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `leave_date` date DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_mark`
--

DROP TABLE IF EXISTS `wp_wpsp_mark`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_mark` (
  `mid` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` varchar(128) DEFAULT NULL,
  `class_id` int(15) DEFAULT NULL,
  `student_id` int(15) DEFAULT NULL,
  `exam_id` int(15) DEFAULT NULL,
  `mark` varchar(60) DEFAULT NULL,
  `attendance` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_mark_extract`
--

DROP TABLE IF EXISTS `wp_wpsp_mark_extract`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_mark_extract` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) DEFAULT NULL,
  `field_id` bigint(20) DEFAULT NULL,
  `exam_id` int(12) DEFAULT NULL,
  `subject_id` int(12) DEFAULT NULL,
  `mark` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_mark_fields`
--

DROP TABLE IF EXISTS `wp_wpsp_mark_fields`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_mark_fields` (
  `field_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` int(12) DEFAULT NULL,
  `field_text` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_messages`
--

DROP TABLE IF EXISTS `wp_wpsp_messages`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_messages` (
  `mid` int(15) NOT NULL AUTO_INCREMENT,
  `s_id` int(15) DEFAULT NULL,
  `r_id` int(15) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `msg` longtext,
  `del_stat` int(15) DEFAULT NULL,
  `m_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_notification`
--

DROP TABLE IF EXISTS `wp_wpsp_notification`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_notification` (
  `nid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `receiver` varchar(25) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_settings`
--

DROP TABLE IF EXISTS `wp_wpsp_settings`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_settings` (
  `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(50) DEFAULT NULL,
  `option_value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_student`
--

DROP TABLE IF EXISTS `wp_wpsp_student`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_student` (
  `sid` int(15) NOT NULL AUTO_INCREMENT,
  `wp_usr_id` bigint(20) DEFAULT NULL,
  `parent_wp_usr_id` int(15) DEFAULT NULL,
  `s_rollno` varchar(15) DEFAULT NULL,
  `s_fname` varchar(30) DEFAULT NULL,
  `s_mname` varchar(30) DEFAULT NULL,
  `s_lname` varchar(30) DEFAULT NULL,
  `s_dob` date DEFAULT NULL,
  `s_gender` varchar(10) DEFAULT NULL,
  `s_address` varchar(200) DEFAULT NULL,
  `s_paddress` varchar(200) DEFAULT NULL,
  `s_country` varchar(20) DEFAULT NULL,
  `s_zipcode` varchar(10) DEFAULT NULL,
  `s_phone` varchar(25) DEFAULT NULL,
  `s_bloodgrp` varchar(20) DEFAULT NULL,
  `s_doj` date DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `s_pzipcode` varchar(10) DEFAULT NULL,
  `s_pcountry` varchar(20) DEFAULT NULL,
  `s_city` varchar(20) DEFAULT NULL,
  `s_pcity` varchar(20) DEFAULT NULL,
  `p_fname` varchar(30) DEFAULT NULL,
  `p_mname` varchar(30) DEFAULT NULL,
  `p_lname` varchar(30) DEFAULT NULL,
  `p_gender` varchar(10) DEFAULT NULL,
  `p_edu` varchar(50) DEFAULT NULL,
  `p_profession` varchar(60) DEFAULT NULL,
  `p_bloodgrp` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_wpsp_student`
--

INSERT INTO `wp_wpsp_student` (`sid`, `wp_usr_id`, `parent_wp_usr_id`, `s_rollno`, `s_fname`, `s_mname`, `s_lname`, `s_dob`, `s_gender`, `s_address`, `s_paddress`, `s_country`, `s_zipcode`, `s_phone`, `s_bloodgrp`, `s_doj`, `class_id`, `s_pzipcode`, `s_pcountry`, `s_city`, `s_pcity`, `p_fname`, `p_mname`, `p_lname`, `p_gender`, `p_edu`, `p_profession`, `p_bloodgrp`) VALUES
(3, 8, 0, '15781A05B9', 'Bijay', '', 'Twanabasu', '1995-11-21', 'Male', 'chasukhel', 'chasukhel', 'Nepal', '44800', '9841299961', 'A+', '2015-09-02', 2, '44800', 'Nepal', 'Bhaktapur', 'Bhaktapur', 'Bishow', 'Ram', 'Twanabasu', 'Male', '6', '', 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_subject`
--

DROP TABLE IF EXISTS `wp_wpsp_subject`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_subject` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `sub_code` varchar(8) DEFAULT NULL,
  `class_id` int(15) DEFAULT NULL,
  `sub_name` varchar(60) DEFAULT NULL,
  `sub_teach_id` varchar(15) DEFAULT NULL,
  `book_name` varchar(60) DEFAULT NULL,
  `sub_desc` varchar(250) DEFAULT NULL,
  `max_mark` int(4) DEFAULT NULL,
  `pass_mark` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_teacher`
--

DROP TABLE IF EXISTS `wp_wpsp_teacher`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_teacher` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `wp_usr_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `middle_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `empcode` varchar(60) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `dol` date DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `qualification` varchar(25) DEFAULT NULL,
  `gender` varchar(12) DEFAULT NULL,
  `bloodgrp` varchar(5) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `whours` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_wpsp_teacher`
--

INSERT INTO `wp_wpsp_teacher` (`tid`, `wp_usr_id`, `first_name`, `middle_name`, `last_name`, `zipcode`, `country`, `city`, `address`, `empcode`, `dob`, `doj`, `dol`, `phone`, `qualification`, `gender`, `bloodgrp`, `position`, `whours`) VALUES
(1, 4, 'DASARATH', '', 'Ranga', '517127', 'India', 'chittoor', 'chittoor', '51212', '1985-07-18', '2009-01-01', '2018-12-31', '9666854485', 'Ph. D', 'Male', 'B+', 'Assistant professor', '5'),
(2, 5, 'Jyotsna', '', 'Lama', '512745', 'India', 'nellore', 'nellore', '51213', '1986-01-01', '2010-08-09', '2017-12-31', '9843452213', 'Ph. D', 'Female', 'A+', 'Assistant Professor', '5'),
(3, 6, 'Nagraju', '', 'Thapa', '547841', 'India', 'vellore', 'vellore', '51214', '1981-01-14', '2018-01-17', '2018-12-31', '9898954532', 'Ph. D', 'Male', 'AB+', 'Professor', '8');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_teacher_attendance`
--

DROP TABLE IF EXISTS `wp_wpsp_teacher_attendance`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_teacher_attendance` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL,
  `entry_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_timetable`
--

DROP TABLE IF EXISTS `wp_wpsp_timetable`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_timetable` (
  `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT,
  `class_id` int(10) NOT NULL,
  `time_id` int(10) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `day` int(2) NOT NULL,
  `heading` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_transport`
--

DROP TABLE IF EXISTS `wp_wpsp_transport`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_transport` (
  `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bus_no` varchar(30) DEFAULT NULL,
  `bus_name` varchar(50) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `bus_route` mediumtext,
  `route_fees` varchar(5) DEFAULT NULL,
  `phone_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpsp_workinghours`
--

DROP TABLE IF EXISTS `wp_wpsp_workinghours`;
CREATE TABLE IF NOT EXISTS `wp_wpsp_workinghours` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hour` varchar(20) DEFAULT NULL,
  `begintime` varchar(10) NOT NULL,
  `endtime` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
