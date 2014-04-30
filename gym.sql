-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-04-2014 a las 22:02:07
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gym`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_accessories`
--

CREATE TABLE IF NOT EXISTS `exp_accessories` (
  `accessory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(75) NOT NULL DEFAULT '',
  `member_groups` varchar(255) NOT NULL DEFAULT 'all',
  `controllers` text,
  `accessory_version` varchar(12) NOT NULL,
  PRIMARY KEY (`accessory_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `exp_accessories`
--

INSERT INTO `exp_accessories` (`accessory_id`, `class`, `member_groups`, `controllers`, `accessory_version`) VALUES
(1, 'Expressionengine_info_acc', '1|5', 'addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities', '1.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_actions`
--

CREATE TABLE IF NOT EXISTS `exp_actions` (
  `action_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `csrf_exempt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Volcado de datos para la tabla `exp_actions`
--

INSERT INTO `exp_actions` (`action_id`, `class`, `method`, `csrf_exempt`) VALUES
(1, 'Comment', 'insert_new_comment', 0),
(2, 'Comment_mcp', 'delete_comment_notification', 0),
(3, 'Comment', 'comment_subscribe', 0),
(4, 'Comment', 'edit_comment', 0),
(5, 'Email', 'send_email', 0),
(6, 'Mailinglist', 'insert_new_email', 0),
(7, 'Mailinglist', 'authorize_email', 0),
(8, 'Mailinglist', 'unsubscribe', 0),
(9, 'Metaweblog_api', 'incoming', 0),
(10, 'Search', 'do_search', 1),
(11, 'Simple_commerce', 'incoming_ipn', 1),
(12, 'Channel', 'submit_entry', 0),
(13, 'Channel', 'filemanager_endpoint', 0),
(14, 'Channel', 'smiley_pop', 0),
(15, 'Channel', 'combo_loader', 0),
(16, 'Member', 'registration_form', 0),
(17, 'Member', 'register_member', 0),
(18, 'Member', 'activate_member', 0),
(19, 'Member', 'member_login', 0),
(20, 'Member', 'member_logout', 0),
(21, 'Member', 'send_reset_token', 0),
(22, 'Member', 'process_reset_password', 0),
(23, 'Member', 'send_member_email', 0),
(24, 'Member', 'update_un_pw', 0),
(25, 'Member', 'member_search', 0),
(26, 'Member', 'member_delete', 0),
(27, 'Rte', 'get_js', 0),
(28, 'User', 'group_edit', 0),
(29, 'User', 'edit_profile', 0),
(30, 'User', 'reg', 0),
(31, 'User', 'reassign_jump', 0),
(32, 'User', 'retrieve_password', 0),
(33, 'User', 'do_logout', 0),
(34, 'User', 'do_search', 0),
(35, 'User', 'delete_account', 0),
(36, 'User', 'activate_member', 0),
(37, 'User', 'retrieve_username', 0),
(38, 'User', 'create_key', 0),
(39, 'Calendar', 'permissions_json', 0),
(40, 'Channel_images', 'channel_images_router', 1),
(41, 'Channel_images', 'locked_image_url', 0),
(42, 'Channel_images', 'simple_image_url', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_blacklisted`
--

CREATE TABLE IF NOT EXISTS `exp_blacklisted` (
  `blacklisted_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blacklisted_type` varchar(20) DEFAULT NULL,
  `blacklisted_value` longtext,
  PRIMARY KEY (`blacklisted_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_calendars`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_calendars` (
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `tz_offset` char(5) NOT NULL DEFAULT '+0000',
  `timezone` varchar(100) NOT NULL DEFAULT 'Europe/London',
  `time_format` varchar(10) NOT NULL DEFAULT 'g:i a',
  `ics_url` text,
  `ics_updated` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`calendar_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_calendar_calendars`
--

INSERT INTO `exp_calendar_calendars` (`calendar_id`, `site_id`, `tz_offset`, `timezone`, `time_format`, `ics_url`, `ics_updated`) VALUES
(54, 1, '', 'Europe/London', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_events`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_events` (
  `event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `start_date` int(8) NOT NULL DEFAULT '0',
  `start_year` smallint(4) NOT NULL DEFAULT '0',
  `start_month` tinyint(2) NOT NULL DEFAULT '0',
  `start_day` tinyint(2) NOT NULL DEFAULT '0',
  `all_day` char(1) NOT NULL DEFAULT 'n',
  `start_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `end_date` int(8) NOT NULL DEFAULT '0',
  `end_year` smallint(4) NOT NULL DEFAULT '0',
  `end_month` tinyint(2) NOT NULL DEFAULT '0',
  `end_day` tinyint(2) NOT NULL DEFAULT '0',
  `end_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recurs` char(1) NOT NULL DEFAULT 'n',
  `last_date` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`),
  KEY `site_id` (`site_id`),
  KEY `calendar_id` (`calendar_id`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`),
  KEY `last_date` (`last_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_events_exceptions`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_events_exceptions` (
  `exception_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `start_date` int(8) NOT NULL DEFAULT '0',
  `start_year` smallint(4) NOT NULL DEFAULT '0',
  `start_month` tinyint(2) NOT NULL DEFAULT '0',
  `start_day` tinyint(2) NOT NULL DEFAULT '0',
  `start_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`exception_id`),
  KEY `event_id` (`event_id`),
  KEY `entry_id` (`entry_id`),
  KEY `calendar_id` (`calendar_id`),
  KEY `site_id` (`site_id`),
  KEY `start_date` (`start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_events_imports`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_events_imports` (
  `import_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `last_mod` char(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`import_id`),
  KEY `calendar_id` (`calendar_id`),
  KEY `event_id` (`event_id`),
  KEY `entry_id` (`entry_id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_events_occurrences`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_events_occurrences` (
  `occurrence_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `start_date` int(8) NOT NULL DEFAULT '0',
  `start_year` smallint(4) NOT NULL DEFAULT '0',
  `start_month` tinyint(2) NOT NULL DEFAULT '0',
  `start_day` tinyint(2) NOT NULL DEFAULT '0',
  `all_day` char(1) NOT NULL DEFAULT 'n',
  `start_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `end_date` int(8) NOT NULL DEFAULT '0',
  `end_year` smallint(4) NOT NULL DEFAULT '0',
  `end_month` tinyint(2) NOT NULL DEFAULT '0',
  `end_day` tinyint(2) NOT NULL DEFAULT '0',
  `end_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occurrence_id`),
  KEY `event_id` (`event_id`),
  KEY `entry_id` (`entry_id`),
  KEY `calendar_id` (`calendar_id`),
  KEY `site_id` (`site_id`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_events_rules`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_events_rules` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rule_type` char(1) DEFAULT '+',
  `start_date` int(8) NOT NULL DEFAULT '0',
  `all_day` char(1) NOT NULL DEFAULT 'n',
  `start_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `end_date` int(8) NOT NULL DEFAULT '0',
  `end_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `repeat_years` smallint(5) unsigned NOT NULL DEFAULT '0',
  `repeat_months` smallint(5) unsigned NOT NULL DEFAULT '0',
  `repeat_days` smallint(5) unsigned NOT NULL DEFAULT '0',
  `repeat_weeks` smallint(5) unsigned NOT NULL DEFAULT '0',
  `days_of_week` varchar(7) DEFAULT '',
  `relative_dow` varchar(6) NOT NULL DEFAULT '',
  `days_of_month` varchar(31) DEFAULT '',
  `months_of_year` varchar(12) DEFAULT '',
  `stop_by` int(8) NOT NULL DEFAULT '0',
  `stop_after` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_date` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `event_id` (`event_id`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_permissions_groups`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_permissions_groups` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_admin` char(1) NOT NULL DEFAULT 'n',
  `calendar_edit` char(1) NOT NULL DEFAULT 'n',
  `calendar_view` char(1) NOT NULL DEFAULT 'n',
  `events_admin` char(1) NOT NULL DEFAULT 'n',
  `events_edit` char(1) NOT NULL DEFAULT 'n',
  `events_view` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`permission_id`),
  KEY `group_id` (`group_id`),
  KEY `calendar_id` (`calendar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_permissions_preferences`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_permissions_preferences` (
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `preferences` text,
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_permissions_users`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_permissions_users` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_admin` char(1) NOT NULL DEFAULT 'n',
  `calendar_edit` char(1) NOT NULL DEFAULT 'n',
  `calendar_view` char(1) NOT NULL DEFAULT 'n',
  `events_admin` char(1) NOT NULL DEFAULT 'n',
  `events_edit` char(1) NOT NULL DEFAULT 'n',
  `events_view` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`permission_id`),
  KEY `user_id` (`user_id`),
  KEY `calendar_id` (`calendar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_preferences`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_preferences` (
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `preferences` text,
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_calendar_preferences`
--

INSERT INTO `exp_calendar_preferences` (`site_id`, `preferences`) VALUES
(1, 'a:8:{s:17:"first_day_of_week";s:1:"0";s:10:"clock_type";s:2:"12";s:9:"tz_offset";s:5:"-0500";s:11:"date_format";s:8:"mm/dd/yy";s:11:"time_format";s:5:"g:i a";s:15:"calendar_weblog";s:1:"3";s:12:"event_weblog";s:1:"4";s:25:"ics_update_delete_default";s:1:"n";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_reminders`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_reminders` (
  `reminder_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occurrence_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `time_interval` smallint(5) unsigned NOT NULL DEFAULT '1',
  `time_unit` char(1) NOT NULL DEFAULT 'd',
  PRIMARY KEY (`reminder_id`),
  KEY `member_id` (`member_id`),
  KEY `event_id` (`event_id`),
  KEY `occurrence_id` (`occurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_calendar_reminders_templates`
--

CREATE TABLE IF NOT EXISTS `exp_calendar_reminders_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `html` char(1) NOT NULL DEFAULT 'n',
  `template_name` varchar(150) NOT NULL DEFAULT '',
  `template_label` varchar(150) NOT NULL DEFAULT '',
  `from_name` varchar(150) NOT NULL DEFAULT '',
  `from_email` varchar(200) NOT NULL DEFAULT '',
  `subject` varchar(80) NOT NULL DEFAULT '',
  `template_data` text,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_captcha`
--

CREATE TABLE IF NOT EXISTS `exp_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_categories`
--

CREATE TABLE IF NOT EXISTS `exp_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_url_title` varchar(75) NOT NULL,
  `cat_description` text,
  `cat_image` varchar(120) DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `group_id` (`group_id`),
  KEY `cat_name` (`cat_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_category_fields`
--

CREATE TABLE IF NOT EXISTS `exp_category_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `field_label` varchar(50) NOT NULL DEFAULT '',
  `field_type` varchar(12) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_maxl` smallint(3) NOT NULL DEFAULT '128',
  `field_ta_rows` tinyint(2) NOT NULL DEFAULT '8',
  `field_default_fmt` varchar(40) NOT NULL DEFAULT 'none',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`field_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_category_field_data`
--

CREATE TABLE IF NOT EXISTS `exp_category_field_data` (
  `cat_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_category_groups`
--

CREATE TABLE IF NOT EXISTS `exp_category_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `sort_order` char(1) NOT NULL DEFAULT 'a',
  `exclude_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `can_edit_categories` text,
  `can_delete_categories` text,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_category_posts`
--

CREATE TABLE IF NOT EXISTS `exp_category_posts` (
  `entry_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channels`
--

CREATE TABLE IF NOT EXISTS `exp_channels` (
  `channel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_name` varchar(40) NOT NULL,
  `channel_title` varchar(100) NOT NULL,
  `channel_url` varchar(100) NOT NULL,
  `channel_description` varchar(255) DEFAULT NULL,
  `channel_lang` varchar(12) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_group` varchar(255) DEFAULT NULL,
  `status_group` int(4) unsigned DEFAULT NULL,
  `deft_status` varchar(50) NOT NULL DEFAULT 'open',
  `field_group` int(4) unsigned DEFAULT NULL,
  `search_excerpt` int(4) unsigned DEFAULT NULL,
  `deft_category` varchar(60) DEFAULT NULL,
  `deft_comments` char(1) NOT NULL DEFAULT 'y',
  `channel_require_membership` char(1) NOT NULL DEFAULT 'y',
  `channel_max_chars` int(5) unsigned DEFAULT NULL,
  `channel_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `channel_allow_img_urls` char(1) NOT NULL DEFAULT 'y',
  `channel_auto_link_urls` char(1) NOT NULL DEFAULT 'n',
  `channel_notify` char(1) NOT NULL DEFAULT 'n',
  `channel_notify_emails` varchar(255) DEFAULT NULL,
  `comment_url` varchar(80) DEFAULT NULL,
  `comment_system_enabled` char(1) NOT NULL DEFAULT 'y',
  `comment_require_membership` char(1) NOT NULL DEFAULT 'n',
  `comment_use_captcha` char(1) NOT NULL DEFAULT 'n',
  `comment_moderate` char(1) NOT NULL DEFAULT 'n',
  `comment_max_chars` int(5) unsigned DEFAULT '5000',
  `comment_timelock` int(5) unsigned NOT NULL DEFAULT '0',
  `comment_require_email` char(1) NOT NULL DEFAULT 'y',
  `comment_text_formatting` char(5) NOT NULL DEFAULT 'xhtml',
  `comment_html_formatting` char(4) NOT NULL DEFAULT 'safe',
  `comment_allow_img_urls` char(1) NOT NULL DEFAULT 'n',
  `comment_auto_link_urls` char(1) NOT NULL DEFAULT 'y',
  `comment_notify` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_authors` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_emails` varchar(255) DEFAULT NULL,
  `comment_expiration` int(4) unsigned NOT NULL DEFAULT '0',
  `search_results_url` varchar(80) DEFAULT NULL,
  `show_button_cluster` char(1) NOT NULL DEFAULT 'y',
  `rss_url` varchar(80) DEFAULT NULL,
  `enable_versioning` char(1) NOT NULL DEFAULT 'n',
  `max_revisions` smallint(4) unsigned NOT NULL DEFAULT '10',
  `default_entry_title` varchar(100) DEFAULT NULL,
  `url_title_prefix` varchar(80) DEFAULT NULL,
  `live_look_template` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_id`),
  KEY `cat_group` (`cat_group`),
  KEY `status_group` (`status_group`),
  KEY `field_group` (`field_group`),
  KEY `channel_name` (`channel_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `exp_channels`
--

INSERT INTO `exp_channels` (`channel_id`, `site_id`, `channel_name`, `channel_title`, `channel_url`, `channel_description`, `channel_lang`, `total_entries`, `total_comments`, `last_entry_date`, `last_comment_date`, `cat_group`, `status_group`, `deft_status`, `field_group`, `search_excerpt`, `deft_category`, `deft_comments`, `channel_require_membership`, `channel_max_chars`, `channel_html_formatting`, `channel_allow_img_urls`, `channel_auto_link_urls`, `channel_notify`, `channel_notify_emails`, `comment_url`, `comment_system_enabled`, `comment_require_membership`, `comment_use_captcha`, `comment_moderate`, `comment_max_chars`, `comment_timelock`, `comment_require_email`, `comment_text_formatting`, `comment_html_formatting`, `comment_allow_img_urls`, `comment_auto_link_urls`, `comment_notify`, `comment_notify_authors`, `comment_notify_emails`, `comment_expiration`, `search_results_url`, `show_button_cluster`, `rss_url`, `enable_versioning`, `max_revisions`, `default_entry_title`, `url_title_prefix`, `live_look_template`) VALUES
(1, 1, 'solicitudes_ch', 'solicitudes_ch', 'http://localhost/gym/index.php', '', 'en', 3, 0, 1398471180, 0, '', NULL, 'open', 1, 1, '', 'y', 'y', NULL, 'all', 'y', 'n', 'n', '', '', 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', '', 0, '', 'y', '', 'n', 10, '', '', 0),
(2, 1, 'ticket_ch', 'ticket_ch', 'http://localhost/gym/index.php', NULL, 'en', 51, 0, 1398807126, 0, '', NULL, 'open', 2, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(3, 1, 'calendar_calendars', 'Calendar: Calendars', 'http://localhost/gym/index.php', NULL, 'en', 1, 0, 1398801060, 0, NULL, 1, 'open', 3, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(4, 1, 'calendar_events', 'Calendar: Events', 'http://localhost/gym/index.php', NULL, 'en', 3, 0, 1398819060, 0, NULL, 1, 'open', 4, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_data`
--

CREATE TABLE IF NOT EXISTS `exp_channel_data` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `field_id_1` text,
  `field_ft_1` tinytext,
  `field_id_2` text,
  `field_ft_2` tinytext,
  `field_id_3` text,
  `field_ft_3` tinytext,
  `field_id_4` text,
  `field_ft_4` tinytext,
  `field_id_5` text,
  `field_ft_5` tinytext,
  `field_id_6` text,
  `field_ft_6` tinytext,
  `field_id_7` text,
  `field_ft_7` tinytext,
  `field_id_8` text,
  `field_ft_8` tinytext,
  `field_id_9` varchar(8) DEFAULT NULL,
  `field_ft_9` tinytext,
  `field_id_11` text,
  `field_ft_11` tinytext,
  `field_id_12` text,
  `field_ft_12` tinytext,
  `field_id_13` text,
  `field_ft_13` tinytext,
  `field_id_14` text,
  `field_ft_14` tinytext,
  `field_id_15` text,
  `field_ft_15` tinytext,
  `field_id_16` text,
  `field_ft_16` tinytext,
  `field_id_17` text,
  `field_ft_17` tinytext,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_channel_data`
--

INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`) VALUES
(1, 1, 1, 'grave', 'none', 'Baños', 'none', 'no sale agua', 'none', '', 'none', 'No', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(2, 1, 1, 'Grave', 'none', 'Pasillos', 'none', 'hay un gato muerto', 'none', '', 'none', 'Si', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(3, 1, 1, 'Grave', 'none', 'Pasillos', 'none', 'hay un gato muerto', 'none', '{filedir_1}gato-bonito1.jpg', 'none', 'Si', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(4, 1, 2, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'se ingreso la solicitud', 'none', 'descripcion de la solicitud', 'none', NULL, NULL, NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(5, 1, 2, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'se agenda la visita', 'none', 'deseo que visien en tal fecha', 'none', NULL, NULL, NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(6, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(7, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(8, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(9, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(10, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(11, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(12, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(13, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(14, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(15, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'sfsdf', 'none', 'sfgdfgdfgdgdfgdf', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(16, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(17, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(18, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(19, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(20, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(21, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(22, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(23, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(24, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(25, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(26, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(27, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(28, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(29, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(30, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(31, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(32, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(33, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(34, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(35, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(36, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(37, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(38, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(39, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(40, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(41, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(42, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(43, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(44, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(45, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(46, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(47, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(48, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(49, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(50, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(51, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(52, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(53, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', NULL, 'xhtml', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'none', NULL, 'xhtml', NULL, 'none'),
(54, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '', 'xhtml', '', 'none', 'g:i a', 'none', '', 'none', '', NULL, '', NULL, '', NULL),
(55, 1, 4, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '0', 'none', '', 'xhtml', '', 'none'),
(56, 1, 4, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none', '', 'xhtml', '', 'none'),
(57, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none'),
(58, 1, 2, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'descripcion', 'none', 'Some data', 'none', '', 'xhtml', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none'),
(59, 1, 4, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none', 'las horas estan definidas', 'xhtml', 'mi casa', 'none');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_entries_autosave`
--

CREATE TABLE IF NOT EXISTS `exp_channel_entries_autosave` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  `entry_data` text,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_fields`
--

CREATE TABLE IF NOT EXISTS `exp_channel_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_label` varchar(50) NOT NULL,
  `field_instructions` text,
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_pre_populate` char(1) NOT NULL DEFAULT 'n',
  `field_pre_channel_id` int(6) unsigned DEFAULT NULL,
  `field_pre_field_id` int(6) unsigned DEFAULT NULL,
  `field_ta_rows` tinyint(2) DEFAULT '8',
  `field_maxl` smallint(3) DEFAULT NULL,
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_search` char(1) NOT NULL DEFAULT 'n',
  `field_is_hidden` char(1) NOT NULL DEFAULT 'n',
  `field_fmt` varchar(40) NOT NULL DEFAULT 'xhtml',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_order` int(3) unsigned NOT NULL,
  `field_content_type` varchar(20) NOT NULL DEFAULT 'any',
  `field_settings` text,
  PRIMARY KEY (`field_id`),
  KEY `group_id` (`group_id`),
  KEY `field_type` (`field_type`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `exp_channel_fields`
--

INSERT INTO `exp_channel_fields` (`field_id`, `site_id`, `group_id`, `field_name`, `field_label`, `field_instructions`, `field_type`, `field_list_items`, `field_pre_populate`, `field_pre_channel_id`, `field_pre_field_id`, `field_ta_rows`, `field_maxl`, `field_required`, `field_text_direction`, `field_search`, `field_is_hidden`, `field_fmt`, `field_show_fmt`, `field_order`, `field_content_type`, `field_settings`) VALUES
(1, 1, 1, 'tipo_problema', 'Tipo de problema', '', 'text', '', '0', 0, 0, 6, 128, 'y', 'ltr', 'y', 'n', 'none', 'n', 1, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(2, 1, 1, 'ubicacion', 'Ubicacion', '', 'select', 'Sala\nCuartos\nBaños\nPasillos\nEscaleras\nVentanas\nPuertas', 'n', 0, 0, 6, 128, 'y', 'ltr', 'y', 'n', 'none', 'n', 2, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(3, 1, 1, 'descripcion_problema', 'Descripción del problema', '', 'textarea', '', '0', 0, 0, 6, 128, 'y', 'ltr', 'y', 'n', 'none', 'n', 3, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(4, 1, 1, 'foto_problema', 'Foto', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 4, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(5, 1, 1, 'danhos_otros', 'Daños otros', '', 'select', 'Si\nNo', 'n', 0, 0, 6, 128, 'y', 'ltr', 'y', 'n', 'none', 'n', 5, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(6, 1, 1, 'otro_dep_afectado', 'Otro_dep_afectado', '', 'text', '', '0', 0, 0, 6, 20, 'n', 'ltr', 'n', 'n', 'none', 'n', 6, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(7, 1, 2, 'descripcion_status', 'descripcion_status', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(8, 1, 2, 'detalle_status', 'detalle_status', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(9, 1, 1, 'relacion_status', 'relacion_status', '', 'relationship', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'xhtml', 'n', 7, 'any', 'YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiIyIjt9czo3OiJleHBpcmVkIjtpOjA7czo2OiJmdXR1cmUiO2k6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO3M6MjoiMjAiO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtzOjE6IjEiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
(11, 1, 3, 'calendar_summary', 'Summary', '', 'textarea', '', 'n', 0, NULL, 4, 0, 'n', 'ltr', 'y', 'n', 'xhtml', 'y', 1, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(12, 1, 3, 'calendar_tz_offset', 'Timezone', '', 'calendar', '', 'n', 0, NULL, 0, 100, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(13, 1, 3, 'calendar_time_format', 'Time Format', 'Default time format to use for this calendar.', 'text', '', 'n', 0, NULL, 0, 20, 'n', 'ltr', 'n', 'y', 'none', 'n', 3, 'any', 'YTo4OntzOjEwOiJmaWVsZF9tYXhsIjtzOjI6IjIwIjtzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO2I6MDtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(14, 1, 3, 'calendar_ics_url', 'URL to iCalendar (.ics) file', 'Add one or more URLs to .ics files - separated by newlines - to import to this calendar. All imported times will be adjusted to this calendar''s timezone settings.', 'textarea', '', 'n', 0, NULL, 3, 20, 'n', 'ltr', 'n', 'y', 'none', 'n', 4, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(15, 1, 4, 'event_dates_and_options', 'Dates & Options', '', 'calendar', '', 'n', 0, NULL, 0, 0, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(16, 1, 4, 'event_summary', 'Summary', '', 'textarea', '', 'n', 0, NULL, 4, 0, 'n', 'ltr', 'y', 'n', 'xhtml', 'y', 2, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(17, 1, 4, 'event_location', 'Location', '', 'text', '', 'n', 0, NULL, 0, 200, 'n', 'ltr', 'y', 'n', 'none', 'n', 3, 'any', 'YTo4OntzOjEwOiJmaWVsZF9tYXhsIjtzOjM6IjIwMCI7czoxODoiZmllbGRfY29udGVudF90eXBlIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_form_settings`
--

CREATE TABLE IF NOT EXISTS `exp_channel_form_settings` (
  `channel_form_settings_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(6) unsigned NOT NULL DEFAULT '0',
  `default_status` varchar(50) NOT NULL DEFAULT 'open',
  `require_captcha` char(1) NOT NULL DEFAULT 'n',
  `allow_guest_posts` char(1) NOT NULL DEFAULT 'n',
  `default_author` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_form_settings_id`),
  KEY `site_id` (`site_id`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `exp_channel_form_settings`
--

INSERT INTO `exp_channel_form_settings` (`channel_form_settings_id`, `site_id`, `channel_id`, `default_status`, `require_captcha`, `allow_guest_posts`, `default_author`) VALUES
(4, 1, 1, 'open', 'n', 'y', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_images`
--

CREATE TABLE IF NOT EXISTS `exp_channel_images` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` tinyint(3) unsigned DEFAULT '1',
  `entry_id` int(10) unsigned DEFAULT '0',
  `field_id` mediumint(8) unsigned DEFAULT '0',
  `channel_id` tinyint(3) unsigned DEFAULT '0',
  `member_id` int(10) unsigned DEFAULT '0',
  `is_draft` tinyint(3) unsigned DEFAULT '0',
  `link_image_id` int(10) unsigned DEFAULT '0',
  `link_entry_id` int(10) unsigned DEFAULT '0',
  `link_channel_id` int(10) unsigned DEFAULT '0',
  `link_field_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) unsigned DEFAULT '0',
  `cover` tinyint(1) unsigned DEFAULT '0',
  `image_order` smallint(5) unsigned DEFAULT '1',
  `filename` varchar(250) DEFAULT '',
  `extension` varchar(20) DEFAULT '',
  `filesize` int(10) unsigned DEFAULT '0',
  `mime` varchar(20) DEFAULT '',
  `width` smallint(6) DEFAULT '0',
  `height` smallint(6) DEFAULT '0',
  `title` varchar(250) DEFAULT '',
  `url_title` varchar(250) DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `category` varchar(250) DEFAULT '',
  `cifield_1` varchar(250) DEFAULT '',
  `cifield_2` varchar(250) DEFAULT '',
  `cifield_3` varchar(250) DEFAULT '',
  `cifield_4` varchar(250) DEFAULT '',
  `cifield_5` varchar(250) DEFAULT '',
  `sizes_metadata` varchar(250) DEFAULT '',
  `iptc` text,
  `exif` text,
  `xmp` text,
  PRIMARY KEY (`image_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_member_groups`
--

CREATE TABLE IF NOT EXISTS `exp_channel_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_titles`
--

CREATE TABLE IF NOT EXISTS `exp_channel_titles` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Volcado de datos para la tabla `exp_channel_titles`
--

INSERT INTO `exp_channel_titles` (`entry_id`, `site_id`, `channel_id`, `author_id`, `forum_topic_id`, `ip_address`, `title`, `url_title`, `status`, `versioning_enabled`, `view_count_one`, `view_count_two`, `view_count_three`, `view_count_four`, `allow_comments`, `sticky`, `entry_date`, `year`, `month`, `day`, `expiration_date`, `comment_expiration_date`, `edit_date`, `recent_comment_date`, `comment_total`) VALUES
(1, 1, 1, 1, NULL, '::1', 'prueba', 'prueba', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1398462840, '2014', '04', '25', 0, 0, 20140428184900, 0, 0),
(2, 1, 1, 1, NULL, '::1', 'asdasd', 'asdasd', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1398470280, '2014', '04', '25', 0, 0, 20140426003423, 0, 0),
(3, 1, 1, 1, NULL, '::1', 'asdasd', 'asdasd1', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1398471180, '2014', '04', '25', 0, 0, 20140428180814, 0, 0),
(4, 1, 2, 1, NULL, '::1', 'Ingreso Solicitud', 'ingreso-solicitud', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1398705480, '2014', '04', '28', 0, 0, 20140428171856, 0, 0),
(5, 1, 2, 1, NULL, '::1', 'Agendar visita', 'agendar-visita', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1398706860, '2014', '04', '28', 0, 0, 20140428174205, 0, 0),
(6, 1, 2, 1, NULL, '::1', 'Breaking News Story!', 'breaking-news-story', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1256953732, '2009', '10', '30', 0, 0, 20121031032209, 0, 0),
(7, 1, 2, 1, NULL, '::1', 'Breaking News Story!', 'breaking-news-story1', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398718276, '2014', '04', '28', 0, 0, 20140428205116, 0, 0),
(8, 1, 2, 1, NULL, '::1', 'Breaking News Story!', 'breaking-news-story2', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398718843, '2014', '04', '28', 0, 0, 20140428210043, 0, 0),
(9, 1, 2, 1, NULL, '::1', 'noticias', 'noticias', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398718942, '2014', '04', '28', 0, 0, 20140428210222, 0, 0),
(10, 1, 2, 1, NULL, '::1', 'noticias', 'noticias1', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398719521, '2014', '04', '28', 0, 0, 20140428211201, 0, 0),
(11, 1, 2, 1, NULL, '::1', 'noticias', 'noticias2', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398719581, '2014', '04', '28', 0, 0, 20140428211301, 0, 0),
(12, 1, 2, 1, NULL, '::1', 'noticias', 'noticias3', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398719605, '2014', '04', '28', 0, 0, 20140428211325, 0, 0),
(13, 1, 2, 1, NULL, '::1', 'noticias', 'noticias4', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398719749, '2014', '04', '28', 0, 0, 20140428211549, 0, 0),
(14, 1, 2, 1, NULL, '::1', 'noticias', 'noticias5', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398720263, '2014', '04', '28', 0, 0, 20140428212423, 0, 0),
(15, 1, 2, 1, NULL, '::1', 'noticias', 'noticias6', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398720240, '2014', '04', '28', 0, 0, 20140428212717, 0, 0),
(16, 1, 2, 1, NULL, '::1', 'noticias', 'noticias7', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398720905, '2014', '04', '28', 0, 0, 20140428213505, 0, 0),
(17, 1, 2, 1, NULL, '::1', 'noticias', 'noticias8', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398720953, '2014', '04', '28', 0, 0, 20140428213553, 0, 0),
(18, 1, 2, 1, NULL, '::1', 'noticias', 'noticias9', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398721014, '2014', '04', '28', 0, 0, 20140428213654, 0, 0),
(19, 1, 2, 1, NULL, '::1', 'noticias', 'noticias10', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398721065, '2014', '04', '28', 0, 0, 20140428213745, 0, 0),
(20, 1, 2, 1, NULL, '::1', 'noticias', 'noticias11', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398721134, '2014', '04', '28', 0, 0, 20140428213854, 0, 0),
(21, 1, 2, 1, NULL, '::1', 'noticias', 'noticias12', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398721419, '2014', '04', '28', 0, 0, 20140428214339, 0, 0),
(22, 1, 2, 1, NULL, '::1', 'noticias', 'noticias13', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729027, '2014', '04', '28', 0, 0, 20140428235027, 0, 0),
(23, 1, 2, 1, NULL, '::1', 'noticias', 'noticias14', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729190, '2014', '04', '28', 0, 0, 20140428235310, 0, 0),
(24, 1, 2, 1, NULL, '::1', 'noticias', 'noticias15', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729223, '2014', '04', '28', 0, 0, 20140428235343, 0, 0),
(25, 1, 2, 1, NULL, '::1', 'noticias', 'noticias16', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729246, '2014', '04', '28', 0, 0, 20140428235406, 0, 0),
(26, 1, 2, 1, NULL, '::1', 'noticias', 'noticias17', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729567, '2014', '04', '28', 0, 0, 20140428235927, 0, 0),
(27, 1, 2, 1, NULL, '::1', 'noticias', 'noticias18', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729683, '2014', '04', '28', 0, 0, 20140429000123, 0, 0),
(28, 1, 2, 1, NULL, '::1', 'noticias', 'noticias19', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729698, '2014', '04', '28', 0, 0, 20140429000138, 0, 0),
(29, 1, 2, 1, NULL, '::1', 'noticias', 'noticias20', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729717, '2014', '04', '28', 0, 0, 20140429000157, 0, 0),
(30, 1, 2, 1, NULL, '::1', 'noticias', 'noticias21', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729746, '2014', '04', '28', 0, 0, 20140429000226, 0, 0),
(31, 1, 2, 1, NULL, '::1', 'noticias', 'noticias22', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729813, '2014', '04', '28', 0, 0, 20140429000333, 0, 0),
(32, 1, 2, 1, NULL, '::1', 'noticias', 'noticias23', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729827, '2014', '04', '28', 0, 0, 20140429000347, 0, 0),
(33, 1, 2, 1, NULL, '::1', 'noticias', 'noticias24', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729844, '2014', '04', '28', 0, 0, 20140429000404, 0, 0),
(34, 1, 2, 1, NULL, '::1', 'noticias', 'noticias25', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729858, '2014', '04', '28', 0, 0, 20140429000418, 0, 0),
(35, 1, 2, 1, NULL, '::1', 'noticias', 'noticias26', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398729933, '2014', '04', '28', 0, 0, 20140429000533, 0, 0),
(36, 1, 2, 1, NULL, '::1', 'noticias', 'noticias27', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730178, '2014', '04', '28', 0, 0, 20140429000938, 0, 0),
(37, 1, 2, 1, NULL, '::1', 'noticias', 'noticias28', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730214, '2014', '04', '28', 0, 0, 20140429001014, 0, 0),
(38, 1, 2, 1, NULL, '::1', 'noticias', 'noticias29', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730238, '2014', '04', '28', 0, 0, 20140429001038, 0, 0),
(39, 1, 2, 1, NULL, '::1', 'noticias', 'noticias30', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730284, '2014', '04', '28', 0, 0, 20140429001124, 0, 0),
(40, 1, 2, 1, NULL, '::1', 'noticias', 'noticias31', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730393, '2014', '04', '28', 0, 0, 20140429001313, 0, 0),
(41, 1, 2, 1, NULL, '::1', 'noticias', 'noticias32', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730438, '2014', '04', '28', 0, 0, 20140429001358, 0, 0),
(42, 1, 2, 1, NULL, '::1', 'noticias', 'noticias33', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730475, '2014', '04', '28', 0, 0, 20140429001435, 0, 0),
(43, 1, 2, 1, NULL, '::1', 'noticias', 'noticias34', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730506, '2014', '04', '28', 0, 0, 20140429001506, 0, 0),
(44, 1, 2, 1, NULL, '::1', 'noticias', 'noticias35', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730559, '2014', '04', '28', 0, 0, 20140429001559, 0, 0),
(45, 1, 2, 1, NULL, '::1', 'noticias', 'noticias36', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730574, '2014', '04', '28', 0, 0, 20140429001614, 0, 0),
(46, 1, 2, 1, NULL, '::1', 'noticias', 'noticias37', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730649, '2014', '04', '28', 0, 0, 20140429001729, 0, 0),
(47, 1, 2, 1, NULL, '::1', 'noticias', 'noticias38', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398730670, '2014', '04', '28', 0, 0, 20140429001750, 0, 0),
(48, 1, 2, 1, NULL, '::1', 'noticias', 'noticias39', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398790588, '2014', '04', '29', 0, 0, 20140429165628, 0, 0),
(49, 1, 2, 1, NULL, '::1', 'noticias', 'noticias40', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398791295, '2014', '04', '29', 0, 0, 20140429170815, 0, 0),
(50, 1, 2, 1, NULL, '::1', 'noticias', 'noticias41', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398791314, '2014', '04', '29', 0, 0, 20140429170834, 0, 0),
(51, 1, 2, 1, NULL, '::1', 'noticias', 'noticias42', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398791497, '2014', '04', '29', 0, 0, 20140429171137, 0, 0),
(52, 1, 2, 1, NULL, '::1', 'noticias', 'noticias43', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398791803, '2014', '04', '29', 0, 0, 20140429171643, 0, 0),
(53, 1, 2, 1, NULL, '::1', 'noticias', 'noticias44', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398791895, '2014', '04', '29', 0, 0, 20140429171815, 0, 0),
(54, 1, 3, 1, NULL, '::1', 'Abril 2014', 'abril-2014', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1398801060, '2014', '04', '29', 0, 0, 20140429195153, 0, 0),
(55, 1, 4, 1, NULL, '::1', 'no vayan', 'no-vayan', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1398801300, '2014', '04', '29', 0, 0, 20140429195546, 0, 0),
(56, 1, 4, 1, NULL, '::1', 'llamar a revision', 'llamar-a-revision', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1398806340, '2014', '04', '29', 0, 0, 20140429211930, 0, 0),
(57, 1, 2, 1, NULL, '::1', 'noticias', 'noticias45', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398807126, '2014', '04', '29', 0, 0, 20140429213206, 0, 0),
(58, 1, 2, 1, NULL, '::1', 'noticias', 'noticias46', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1398817462, '2014', '04', '29', 0, 0, 20140430002422, 0, 0),
(59, 1, 4, 1, NULL, '::1', 'Agendar visita 3', 'agendar-visita-3', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1398819060, '2014', '04', '29', 0, 0, 20140430005110, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_comments`
--

CREATE TABLE IF NOT EXISTS `exp_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) DEFAULT '1',
  `entry_id` int(10) unsigned DEFAULT '0',
  `channel_id` int(4) unsigned DEFAULT '1',
  `author_id` int(10) unsigned DEFAULT '0',
  `status` char(1) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `url` varchar(75) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `comment_date` int(10) DEFAULT NULL,
  `edit_date` int(10) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`comment_id`),
  KEY `entry_id` (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `status` (`status`),
  KEY `site_id` (`site_id`),
  KEY `comment_date_idx` (`comment_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_comment_subscriptions`
--

CREATE TABLE IF NOT EXISTS `exp_comment_subscriptions` (
  `subscription_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `member_id` int(10) DEFAULT '0',
  `email` varchar(75) DEFAULT NULL,
  `subscription_date` varchar(10) DEFAULT NULL,
  `notification_sent` char(1) DEFAULT 'n',
  `hash` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `entry_id` (`entry_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_content_types`
--

CREATE TABLE IF NOT EXISTS `exp_content_types` (
  `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_type_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `exp_content_types`
--

INSERT INTO `exp_content_types` (`content_type_id`, `name`) VALUES
(1, 'grid'),
(2, 'channel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_cp_log`
--

CREATE TABLE IF NOT EXISTS `exp_cp_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `act_date` int(10) NOT NULL,
  `action` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `exp_cp_log`
--

INSERT INTO `exp_cp_log` (`id`, `site_id`, `member_id`, `username`, `ip_address`, `act_date`, `action`) VALUES
(1, 1, 1, 'julio', '::1', 1398383657, 'Logged in'),
(2, 1, 1, 'julio', '::1', 1398384845, 'Member Group Created:&nbsp;&nbsp;usuarios_dep'),
(3, 1, 1, 'julio', '::1', 1398385763, 'Username was changed to:&nbsp;&nbsp;jmoron@hot.com'),
(4, 1, 1, 'julio', '::1', 1398387686, 'Member Group Updated:&nbsp;&nbsp;usuarios_dep'),
(5, 1, 1, 'julio', '::1', 1398441608, 'Logged in'),
(6, 1, 1, 'julio', '::1', 1398452695, 'Channel Created:&nbsp;&nbsp;Solicitudes'),
(7, 1, 1, 'julio', '::1', 1398452819, 'Field Group Created:&nbsp;solicitud_ch'),
(8, 1, 1, 'julio', '::1', 1398703160, 'Logged in'),
(9, 1, 1, 'julio', '::1', 1398705088, 'Field Group Created:&nbsp;ticket_status'),
(10, 1, 1, 'julio', '::1', 1398705375, 'Channel Created:&nbsp;&nbsp;ticket_ch'),
(11, 1, 1, 'julio', '::1', 1398711279, 'Custom Field Deleted:&nbsp;fecha_ingreso'),
(12, 1, 1, 'julio', '::1', 1398716181, 'Logged in'),
(13, 1, 1, 'julio', '::1', 1398728722, 'Logged in'),
(14, 1, 1, 'julio', '::1', 1398790007, 'Logged in'),
(15, 1, 1, 'julio', '::1', 1398799160, 'Logged in'),
(16, 1, 1, 'julio', '::1', 1398799471, 'channel_created&nbsp;&nbsp;Calendar: Calendars'),
(17, 1, 1, 'julio', '::1', 1398799471, 'channel_created&nbsp;&nbsp;Calendar: Events'),
(18, 1, 1, 'julio', '::1', 1398817320, 'Logged in'),
(19, 1, 1, 'julio', '::1', 1398878584, 'Logged in'),
(20, 1, 1, 'julio', '::1', 1398893821, 'Logged in'),
(21, 1, 1, 'julio', '::1', 1398895057, 'Logged in');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_cp_search_index`
--

CREATE TABLE IF NOT EXISTS `exp_cp_search_index` (
  `search_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(20) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `access` varchar(50) DEFAULT NULL,
  `keywords` text,
  PRIMARY KEY (`search_id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_developer_log`
--

CREATE TABLE IF NOT EXISTS `exp_developer_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned NOT NULL,
  `viewed` char(1) NOT NULL DEFAULT 'n',
  `description` text,
  `function` varchar(100) DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `deprecated_since` varchar(10) DEFAULT NULL,
  `use_instead` varchar(100) DEFAULT NULL,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_name` varchar(100) DEFAULT NULL,
  `template_group` varchar(100) DEFAULT NULL,
  `addon_module` varchar(100) DEFAULT NULL,
  `addon_method` varchar(100) DEFAULT NULL,
  `snippets` text,
  `hash` char(32) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `exp_developer_log`
--

INSERT INTO `exp_developer_log` (`log_id`, `timestamp`, `viewed`, `description`, `function`, `line`, `file`, `deprecated_since`, `use_instead`, `template_id`, `template_name`, `template_group`, `addon_module`, `addon_method`, `snippets`, `hash`) VALUES
(1, 1398384983, 'y', NULL, 'check_xid()', 5983, 'C:\\wamp\\www\\gym\\system\\expressionengine\\third_party\\user\\mod.user.php', '2.8', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2bbf13595148f174f6386173779f000c'),
(2, 1398384983, 'y', NULL, 'restore_xid()', 6013, 'C:\\wamp\\www\\gym\\system\\expressionengine\\third_party\\user\\mod.user.php', '2.8', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'b3701dee6695c54d057af2185181e8a8'),
(3, 1398385850, 'y', NULL, 'restore_xid()', 13717, 'C:\\wamp\\www\\gym\\system\\expressionengine\\third_party\\user\\mod.user.php', '2.8', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'bd4d86e0bf888330b6ec11edabe50c64');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_email_cache`
--

CREATE TABLE IF NOT EXISTS `exp_email_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_sent` int(6) unsigned NOT NULL,
  `from_name` varchar(70) NOT NULL,
  `from_email` varchar(75) NOT NULL,
  `recipient` text NOT NULL,
  `cc` text NOT NULL,
  `bcc` text NOT NULL,
  `recipient_array` mediumtext NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  `plaintext_alt` mediumtext NOT NULL,
  `mailinglist` char(1) NOT NULL DEFAULT 'n',
  `mailtype` varchar(6) NOT NULL,
  `text_fmt` varchar(40) NOT NULL,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `priority` char(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_email_cache_mg`
--

CREATE TABLE IF NOT EXISTS `exp_email_cache_mg` (
  `cache_id` int(6) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_email_cache_ml`
--

CREATE TABLE IF NOT EXISTS `exp_email_cache_ml` (
  `cache_id` int(6) unsigned NOT NULL,
  `list_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_email_console_cache`
--

CREATE TABLE IF NOT EXISTS `exp_email_console_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `recipient` varchar(75) NOT NULL,
  `recipient_name` varchar(50) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_email_tracker`
--

CREATE TABLE IF NOT EXISTS `exp_email_tracker` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_ip` varchar(45) NOT NULL,
  `sender_email` varchar(75) NOT NULL,
  `sender_username` varchar(50) NOT NULL,
  `number_recipients` int(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_entry_versioning`
--

CREATE TABLE IF NOT EXISTS `exp_entry_versioning` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `version_date` int(10) NOT NULL,
  `version_data` mediumtext NOT NULL,
  PRIMARY KEY (`version_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_extensions`
--

CREATE TABLE IF NOT EXISTS `exp_extensions` (
  `extension_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `hook` varchar(50) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '10',
  `version` varchar(10) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `exp_extensions`
--

INSERT INTO `exp_extensions` (`extension_id`, `class`, `method`, `hook`, `settings`, `priority`, `version`, `enabled`) VALUES
(1, 'Wiki_ext', 'files_after_delete', 'files_after_delete', '', 5, '2.3', 'y'),
(2, 'Rte_ext', 'myaccount_nav_setup', 'myaccount_nav_setup', '', 10, '1.0.1', 'y'),
(3, 'Rte_ext', 'cp_menu_array', 'cp_menu_array', '', 10, '1.0.1', 'y'),
(4, 'User_ext', 'insert_comment_start', 'insert_comment_start', 'a:0:{}', 5, '3.4.5', 'y'),
(5, 'User_ext', 'insert_rating_start', 'insert_rating_start', 'a:0:{}', 5, '3.4.5', 'y'),
(6, 'User_ext', 'paypalpro_payment_start', 'paypalpro_payment_start', 'a:0:{}', 5, '3.4.5', 'y'),
(7, 'User_ext', 'cp_members_validate_members', 'cp_members_validate_members', 'a:0:{}', 1, '3.4.5', 'y'),
(8, 'User_ext', 'delete_entries_start', 'delete_entries_start', 'a:0:{}', 5, '3.4.5', 'y'),
(9, 'Calendar_ext', 'delete_entries_loop', 'delete_entries_loop', 'a:0:{}', 10, '1.8.6', 'y'),
(10, 'Calendar_ext', 'entry_submission_end', 'entry_submission_end', 'a:0:{}', 10, '1.8.6', 'y'),
(11, 'Calendar_ext', 'cp_js_end', 'cp_js_end', 'a:0:{}', 10, '1.8.6', 'y'),
(12, 'Calendar_ext', 'edit_entries_additional_where', 'edit_entries_additional_where', 'a:0:{}', 10, '1.8.6', 'y'),
(13, 'Calendar_ext', 'update_multi_entries_start', 'update_multi_entries_start', 'a:0:{}', 10, '1.8.6', 'y'),
(14, 'Calendar_ext', 'delete_entries_start', 'delete_entries_start', 'a:0:{}', 10, '1.8.6', 'y'),
(15, 'Channel_images_ext', 'wygwam_config', 'wygwam_config', 'a:0:{}', 100, '5.4.17', 'y'),
(16, 'Channel_images_ext', 'wygwam_tb_groups', 'wygwam_tb_groups', 'a:0:{}', 100, '5.4.17', 'y'),
(17, 'Channel_images_ext', 'wygwam_before_display', 'wygwam_before_display', 'a:0:{}', 100, '5.4.17', 'y'),
(18, 'Channel_images_ext', 'wygwam_before_save', 'wygwam_before_save', 'a:0:{}', 100, '5.4.17', 'y'),
(19, 'Channel_images_ext', 'wygwam_before_replace', 'wygwam_before_replace', 'a:0:{}', 100, '5.4.17', 'y'),
(20, 'Channel_images_ext', 'editor_before_display', 'editor_before_display', 'a:0:{}', 100, '5.4.17', 'y'),
(21, 'Channel_images_ext', 'editor_before_save', 'editor_before_save', 'a:0:{}', 100, '5.4.17', 'y'),
(22, 'Channel_images_ext', 'editor_before_replace', 'editor_before_replace', 'a:0:{}', 100, '5.4.17', 'y');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_fieldtypes`
--

CREATE TABLE IF NOT EXISTS `exp_fieldtypes` (
  `fieldtype_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` varchar(12) NOT NULL,
  `settings` text,
  `has_global_settings` char(1) DEFAULT 'n',
  PRIMARY KEY (`fieldtype_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `exp_fieldtypes`
--

INSERT INTO `exp_fieldtypes` (`fieldtype_id`, `name`, `version`, `settings`, `has_global_settings`) VALUES
(1, 'select', '1.0', 'YTowOnt9', 'n'),
(2, 'text', '1.0', 'YTowOnt9', 'n'),
(3, 'textarea', '1.0', 'YTowOnt9', 'n'),
(4, 'date', '1.0', 'YTowOnt9', 'n'),
(5, 'file', '1.0', 'YTowOnt9', 'n'),
(6, 'grid', '1.0', 'YTowOnt9', 'n'),
(7, 'multi_select', '1.0', 'YTowOnt9', 'n'),
(8, 'checkboxes', '1.0', 'YTowOnt9', 'n'),
(9, 'radio', '1.0', 'YTowOnt9', 'n'),
(10, 'relationship', '1.0', 'YTowOnt9', 'n'),
(11, 'rte', '1.0', 'YTowOnt9', 'n'),
(12, 'calendar', '1.8.6', 'YTowOnt9', 'n'),
(13, 'channel_images', '5.4.17', 'YTowOnt9', 'n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_field_formatting`
--

CREATE TABLE IF NOT EXISTS `exp_field_formatting` (
  `formatting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL,
  `field_fmt` varchar(40) NOT NULL,
  PRIMARY KEY (`formatting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Volcado de datos para la tabla `exp_field_formatting`
--

INSERT INTO `exp_field_formatting` (`formatting_id`, `field_id`, `field_fmt`) VALUES
(1, 1, 'none'),
(2, 1, 'br'),
(3, 1, 'markdown'),
(4, 1, 'xhtml'),
(5, 2, 'none'),
(6, 2, 'br'),
(7, 2, 'markdown'),
(8, 2, 'xhtml'),
(9, 3, 'none'),
(10, 3, 'br'),
(11, 3, 'markdown'),
(12, 3, 'xhtml'),
(13, 4, 'none'),
(14, 4, 'br'),
(15, 4, 'markdown'),
(16, 4, 'xhtml'),
(17, 5, 'none'),
(18, 5, 'br'),
(19, 5, 'markdown'),
(20, 5, 'xhtml'),
(21, 6, 'none'),
(22, 6, 'br'),
(23, 6, 'markdown'),
(24, 6, 'xhtml'),
(25, 7, 'none'),
(26, 7, 'br'),
(27, 7, 'markdown'),
(28, 7, 'xhtml'),
(29, 8, 'none'),
(30, 8, 'br'),
(31, 8, 'markdown'),
(32, 8, 'xhtml'),
(33, 9, 'none'),
(34, 9, 'br'),
(35, 9, 'markdown'),
(36, 9, 'xhtml'),
(44, 12, 'none'),
(43, 11, 'xhtml'),
(42, 11, 'br'),
(41, 11, 'none'),
(45, 12, 'br'),
(46, 12, 'xhtml'),
(47, 13, 'none'),
(48, 13, 'br'),
(49, 13, 'xhtml'),
(50, 14, 'none'),
(51, 14, 'br'),
(52, 14, 'xhtml'),
(53, 15, 'none'),
(54, 15, 'br'),
(55, 15, 'xhtml'),
(56, 16, 'none'),
(57, 16, 'br'),
(58, 16, 'xhtml'),
(59, 17, 'none'),
(60, 17, 'br'),
(61, 17, 'xhtml');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_field_groups`
--

CREATE TABLE IF NOT EXISTS `exp_field_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `exp_field_groups`
--

INSERT INTO `exp_field_groups` (`group_id`, `site_id`, `group_name`) VALUES
(1, 1, 'solicitud_campos'),
(2, 1, 'ticket_status'),
(3, 1, 'Calendar: Calendars'),
(4, 1, 'Calendar: Events');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_files`
--

CREATE TABLE IF NOT EXISTS `exp_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `upload_location_id` int(4) unsigned DEFAULT '0',
  `rel_path` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(10) DEFAULT '0',
  `description` text,
  `credit` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `uploaded_by_member_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) DEFAULT NULL,
  `modified_by_member_id` int(10) unsigned DEFAULT '0',
  `modified_date` int(10) DEFAULT NULL,
  `file_hw_original` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`),
  KEY `upload_location_id` (`upload_location_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `exp_files`
--

INSERT INTO `exp_files` (`file_id`, `site_id`, `title`, `upload_location_id`, `rel_path`, `mime_type`, `file_name`, `file_size`, `description`, `credit`, `location`, `uploaded_by_member_id`, `upload_date`, `modified_by_member_id`, `modified_date`, `file_hw_original`) VALUES
(1, 1, 'gato-bonito1.jpg', 1, 'C:/wamp/www/gym/fotos_problemas/gato-bonito1.jpg', 'image/jpeg', 'gato-bonito1.jpg', 32010, NULL, NULL, NULL, 1, 1398471215, 1, 1398471215, '301 400');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_file_categories`
--

CREATE TABLE IF NOT EXISTS `exp_file_categories` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `is_cover` char(1) DEFAULT 'n',
  KEY `file_id` (`file_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_file_dimensions`
--

CREATE TABLE IF NOT EXISTS `exp_file_dimensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `upload_location_id` int(4) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `short_name` varchar(255) DEFAULT '',
  `resize_type` varchar(50) DEFAULT '',
  `width` int(10) DEFAULT '0',
  `height` int(10) DEFAULT '0',
  `watermark_id` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_location_id` (`upload_location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_file_watermarks`
--

CREATE TABLE IF NOT EXISTS `exp_file_watermarks` (
  `wm_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `wm_name` varchar(80) DEFAULT NULL,
  `wm_type` varchar(10) DEFAULT 'text',
  `wm_image_path` varchar(100) DEFAULT NULL,
  `wm_test_image_path` varchar(100) DEFAULT NULL,
  `wm_use_font` char(1) DEFAULT 'y',
  `wm_font` varchar(30) DEFAULT NULL,
  `wm_font_size` int(3) unsigned DEFAULT NULL,
  `wm_text` varchar(100) DEFAULT NULL,
  `wm_vrt_alignment` varchar(10) DEFAULT 'top',
  `wm_hor_alignment` varchar(10) DEFAULT 'left',
  `wm_padding` int(3) unsigned DEFAULT NULL,
  `wm_opacity` int(3) unsigned DEFAULT NULL,
  `wm_hor_offset` int(4) unsigned DEFAULT NULL,
  `wm_vrt_offset` int(4) unsigned DEFAULT NULL,
  `wm_x_transp` int(4) DEFAULT NULL,
  `wm_y_transp` int(4) DEFAULT NULL,
  `wm_font_color` varchar(7) DEFAULT NULL,
  `wm_use_drop_shadow` char(1) DEFAULT 'y',
  `wm_shadow_distance` int(3) unsigned DEFAULT NULL,
  `wm_shadow_color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`wm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_global_variables`
--

CREATE TABLE IF NOT EXISTS `exp_global_variables` (
  `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `variable_name` varchar(50) NOT NULL,
  `variable_data` text NOT NULL,
  PRIMARY KEY (`variable_id`),
  KEY `variable_name` (`variable_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_grid_columns`
--

CREATE TABLE IF NOT EXISTS `exp_grid_columns` (
  `col_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `col_order` int(3) unsigned DEFAULT NULL,
  `col_type` varchar(50) DEFAULT NULL,
  `col_label` varchar(50) DEFAULT NULL,
  `col_name` varchar(32) DEFAULT NULL,
  `col_instructions` text,
  `col_required` char(1) DEFAULT NULL,
  `col_search` char(1) DEFAULT NULL,
  `col_width` int(3) unsigned DEFAULT NULL,
  `col_settings` text,
  PRIMARY KEY (`col_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_html_buttons`
--

CREATE TABLE IF NOT EXISTS `exp_html_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `tag_name` varchar(32) NOT NULL,
  `tag_open` varchar(120) NOT NULL,
  `tag_close` varchar(120) NOT NULL,
  `accesskey` varchar(32) NOT NULL,
  `tag_order` int(3) unsigned NOT NULL,
  `tag_row` char(1) NOT NULL DEFAULT '1',
  `classname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `exp_html_buttons`
--

INSERT INTO `exp_html_buttons` (`id`, `site_id`, `member_id`, `tag_name`, `tag_open`, `tag_close`, `accesskey`, `tag_order`, `tag_row`, `classname`) VALUES
(1, 1, 0, 'b', '<strong>', '</strong>', 'b', 1, '1', 'btn_b'),
(2, 1, 0, 'i', '<em>', '</em>', 'i', 2, '1', 'btn_i'),
(3, 1, 0, 'blockquote', '<blockquote>', '</blockquote>', 'q', 3, '1', 'btn_blockquote'),
(4, 1, 0, 'a', '<a href="[![Link:!:http://]!]"(!( title="[![Title]!]")!)>', '</a>', 'a', 4, '1', 'btn_a'),
(5, 1, 0, 'img', '<img src="[![Link:!:http://]!]" alt="[![Alternative text]!]" />', '', '', 5, '1', 'btn_img');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_layout_publish`
--

CREATE TABLE IF NOT EXISTS `exp_layout_publish` (
  `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_group` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(4) unsigned NOT NULL DEFAULT '0',
  `field_layout` text,
  PRIMARY KEY (`layout_id`),
  KEY `site_id` (`site_id`),
  KEY `member_group` (`member_group`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_mailing_list`
--

CREATE TABLE IF NOT EXISTS `exp_mailing_list` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` int(7) unsigned NOT NULL,
  `authcode` varchar(10) NOT NULL,
  `email` varchar(75) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `list_id` (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_mailing_lists`
--

CREATE TABLE IF NOT EXISTS `exp_mailing_lists` (
  `list_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `list_name` varchar(40) NOT NULL,
  `list_title` varchar(100) NOT NULL,
  `list_template` text NOT NULL,
  PRIMARY KEY (`list_id`),
  KEY `list_name` (`list_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `exp_mailing_lists`
--

INSERT INTO `exp_mailing_lists` (`list_id`, `list_name`, `list_title`, `list_template`) VALUES
(1, 'default', 'Default Mailing List', '{message_text}\n\nTo remove your email from this mailing list, click here:\n{if html_email}<a href=\\"{unsubscribe_url}\\">{unsubscribe_url}</a>{/if}\n{if plain_email}{unsubscribe_url}{/if}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_mailing_list_queue`
--

CREATE TABLE IF NOT EXISTS `exp_mailing_list_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(75) NOT NULL,
  `list_id` int(7) unsigned NOT NULL DEFAULT '0',
  `authcode` varchar(10) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`queue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_members`
--

CREATE TABLE IF NOT EXISTS `exp_members` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` smallint(4) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL DEFAULT '',
  `unique_id` varchar(40) NOT NULL,
  `crypt_key` varchar(40) DEFAULT NULL,
  `authcode` varchar(10) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `occupation` varchar(80) DEFAULT NULL,
  `interests` varchar(120) DEFAULT NULL,
  `bday_d` int(2) DEFAULT NULL,
  `bday_m` int(2) DEFAULT NULL,
  `bday_y` int(4) DEFAULT NULL,
  `aol_im` varchar(50) DEFAULT NULL,
  `yahoo_im` varchar(50) DEFAULT NULL,
  `msn_im` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `bio` text,
  `signature` text,
  `avatar_filename` varchar(120) DEFAULT NULL,
  `avatar_width` int(4) unsigned DEFAULT NULL,
  `avatar_height` int(4) unsigned DEFAULT NULL,
  `photo_filename` varchar(120) DEFAULT NULL,
  `photo_width` int(4) unsigned DEFAULT NULL,
  `photo_height` int(4) unsigned DEFAULT NULL,
  `sig_img_filename` varchar(120) DEFAULT NULL,
  `sig_img_width` int(4) unsigned DEFAULT NULL,
  `sig_img_height` int(4) unsigned DEFAULT NULL,
  `ignore_list` text,
  `private_messages` int(4) unsigned NOT NULL DEFAULT '0',
  `accept_messages` char(1) NOT NULL DEFAULT 'y',
  `last_view_bulletins` int(10) NOT NULL DEFAULT '0',
  `last_bulletin_date` int(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `join_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `total_entries` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `accept_admin_email` char(1) NOT NULL DEFAULT 'y',
  `accept_user_email` char(1) NOT NULL DEFAULT 'y',
  `notify_by_default` char(1) NOT NULL DEFAULT 'y',
  `notify_of_pm` char(1) NOT NULL DEFAULT 'y',
  `display_avatars` char(1) NOT NULL DEFAULT 'y',
  `display_signatures` char(1) NOT NULL DEFAULT 'y',
  `parse_smileys` char(1) NOT NULL DEFAULT 'y',
  `smart_notifications` char(1) NOT NULL DEFAULT 'y',
  `language` varchar(50) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `time_format` char(2) NOT NULL DEFAULT '12',
  `date_format` varchar(8) NOT NULL DEFAULT '%n/%j/%y',
  `include_seconds` char(1) NOT NULL DEFAULT 'n',
  `cp_theme` varchar(32) DEFAULT NULL,
  `profile_theme` varchar(32) DEFAULT NULL,
  `forum_theme` varchar(32) DEFAULT NULL,
  `tracker` text,
  `template_size` varchar(2) NOT NULL DEFAULT '28',
  `notepad` text,
  `notepad_size` varchar(2) NOT NULL DEFAULT '18',
  `quick_links` text,
  `quick_tabs` text,
  `show_sidebar` char(1) NOT NULL DEFAULT 'n',
  `pmember_id` int(10) NOT NULL DEFAULT '0',
  `rte_enabled` char(1) NOT NULL DEFAULT 'y',
  `rte_toolset_id` int(10) NOT NULL DEFAULT '0',
  `profile_views` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`),
  KEY `group_id` (`group_id`),
  KEY `unique_id` (`unique_id`),
  KEY `password` (`password`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `exp_members`
--

INSERT INTO `exp_members` (`member_id`, `group_id`, `username`, `screen_name`, `password`, `salt`, `unique_id`, `crypt_key`, `authcode`, `email`, `url`, `location`, `occupation`, `interests`, `bday_d`, `bday_m`, `bday_y`, `aol_im`, `yahoo_im`, `msn_im`, `icq`, `bio`, `signature`, `avatar_filename`, `avatar_width`, `avatar_height`, `photo_filename`, `photo_width`, `photo_height`, `sig_img_filename`, `sig_img_width`, `sig_img_height`, `ignore_list`, `private_messages`, `accept_messages`, `last_view_bulletins`, `last_bulletin_date`, `ip_address`, `join_date`, `last_visit`, `last_activity`, `total_entries`, `total_comments`, `total_forum_topics`, `total_forum_posts`, `last_entry_date`, `last_comment_date`, `last_forum_post_date`, `last_email_date`, `in_authorlist`, `accept_admin_email`, `accept_user_email`, `notify_by_default`, `notify_of_pm`, `display_avatars`, `display_signatures`, `parse_smileys`, `smart_notifications`, `language`, `timezone`, `time_format`, `date_format`, `include_seconds`, `cp_theme`, `profile_theme`, `forum_theme`, `tracker`, `template_size`, `notepad`, `notepad_size`, `quick_links`, `quick_tabs`, `show_sidebar`, `pmember_id`, `rte_enabled`, `rte_toolset_id`, `profile_views`) VALUES
(1, 1, 'julio', 'julio', 'f12a4f4ee29a2ff71c38879a305cf0091c78d61496e0b9693a9b70755262e71a1253fcc4e92d8dcdb5cd71c2552057e57b3b100fe1c6332a5366f382ebe5a9ba', 'j?:MbSd_!@J}vkY6<yp5oC|@''}u~D/xrkrcRF''|^yUe3&Fx3RB@CJgL/l0^@_wV6SaV/BEQF#,&T)?8aO+/"O.X9(CYsB/taMTGW77/)8vbR9t3oo-dvLOTT8<_6\\ksc', '6c52bbd69719b974f69a472adb1688a7d6fe762e', '8c12439e28d0a93a07d10dfb89ab85c76a42bd1c', NULL, 'jcmoron82@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'y', 0, 0, '::1', 1398383318, 1398884717, 1398895059, 59, 0, 0, 0, 1398819070, 0, 0, 0, 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'english', 'America/Lima', '12', '%n/%j/%y', 'n', NULL, NULL, NULL, NULL, '28', NULL, '18', '', NULL, 'n', 0, 'y', 0, 0),
(9, 6, 'daniel', 'daniel', '464256e1157c640f0cbd68698d5327fb39ed7c45ac7ee3332134934447a05daa3628ad8e26f29258ccca815ca3616def6e3dd36e5451c41a41c6b77e883302b9', '!C6DA\\ZszZ:ELKx$>@R~6]o=g9eZo2Nue3-5tft$}BaA}0&oVqNd2+^ha;>xD}S4<Rp^ke{.j^%:1/LH44''~1Kq4?J|o%D~;;,Yshj^:U%$wGOK>HS@L(S4Vy.RBw^?t', 'cda90d789e801a62e535f2459e5283ca87999686', '27954e527414878a7c7103ba1bd10023ab34757b', NULL, 'daniel@hot.com', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, 'default_set/hello_prey.jpg', 100, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'y', 0, 0, '::1', 1398445845, 1398445859, 1398470086, 0, 0, 0, 0, 0, 0, 0, 0, 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'english', 'America/Lima', '12', '%n/%j/%y', 'n', NULL, NULL, NULL, NULL, '28', NULL, '18', NULL, NULL, 'n', 0, 'y', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_bulletin_board`
--

CREATE TABLE IF NOT EXISTS `exp_member_bulletin_board` (
  `bulletin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `bulletin_group` int(8) unsigned NOT NULL,
  `bulletin_date` int(10) unsigned NOT NULL,
  `hash` varchar(10) NOT NULL DEFAULT '',
  `bulletin_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `bulletin_message` text NOT NULL,
  PRIMARY KEY (`bulletin_id`),
  KEY `sender_id` (`sender_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_data`
--

CREATE TABLE IF NOT EXISTS `exp_member_data` (
  `member_id` int(10) unsigned NOT NULL,
  `m_field_id_1` varchar(100) DEFAULT NULL,
  `m_field_id_2` varchar(100) DEFAULT NULL,
  `m_field_id_3` varchar(100) DEFAULT NULL,
  `m_field_id_4` varchar(100) DEFAULT NULL,
  `m_field_id_5` varchar(50) DEFAULT NULL,
  `m_field_id_6` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_member_data`
--

INSERT INTO `exp_member_data` (`member_id`, `m_field_id_1`, `m_field_id_2`, `m_field_id_3`, `m_field_id_4`, `m_field_id_5`, `m_field_id_6`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'd566', 'Si', 'Marquina', 'Chavez', '234324', '987889787656');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_fields`
--

CREATE TABLE IF NOT EXISTS `exp_member_fields` (
  `m_field_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `m_field_name` varchar(32) NOT NULL,
  `m_field_label` varchar(50) NOT NULL,
  `m_field_description` text NOT NULL,
  `m_field_type` varchar(12) NOT NULL DEFAULT 'text',
  `m_field_list_items` text NOT NULL,
  `m_field_ta_rows` tinyint(2) DEFAULT '8',
  `m_field_maxl` smallint(3) NOT NULL,
  `m_field_width` varchar(6) NOT NULL,
  `m_field_search` char(1) NOT NULL DEFAULT 'y',
  `m_field_required` char(1) NOT NULL DEFAULT 'n',
  `m_field_public` char(1) NOT NULL DEFAULT 'y',
  `m_field_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_cp_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_fmt` char(5) NOT NULL DEFAULT 'none',
  `m_field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`m_field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `exp_member_fields`
--

INSERT INTO `exp_member_fields` (`m_field_id`, `m_field_name`, `m_field_label`, `m_field_description`, `m_field_type`, `m_field_list_items`, `m_field_ta_rows`, `m_field_maxl`, `m_field_width`, `m_field_search`, `m_field_required`, `m_field_public`, `m_field_reg`, `m_field_cp_reg`, `m_field_fmt`, `m_field_order`) VALUES
(1, 'cod_depa', 'Código de Departmento', '', 'text', '', 10, 100, '100%', 'y', 'n', 'y', 'y', 'y', 'none', 1),
(2, 'propietario', 'Propietario o Inquilino', 'Propietario o Inquilino', 'select', 'Si\nNo', 10, 100, '100%', 'y', 'n', 'y', 'y', 'y', 'none', 2),
(3, 'ap_pat', 'Apellidos Paterno', 'Apellidos Paterno', 'text', '', 10, 100, '100%', 'y', 'n', 'y', 'y', 'y', 'none', 3),
(4, 'ap_mat', 'Apellidos Materno', 'Apellidos Materno', 'text', '', 10, 100, '100%', 'y', 'n', 'y', 'y', 'y', 'none', 4),
(5, 't_fijo', 'Teléfono Fijo', 'Teléfono Fijo', 'text', '', 10, 50, '100%', 'y', 'n', 'y', 'y', 'y', 'none', 5),
(6, 't_cel', 'Teléfono Celular', 'Teléfono Celular', 'text', '', 10, 50, '100%', 'y', 'n', 'y', 'y', 'y', 'none', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_groups`
--

CREATE TABLE IF NOT EXISTS `exp_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_title` varchar(100) NOT NULL,
  `group_description` text NOT NULL,
  `is_locked` char(1) NOT NULL DEFAULT 'y',
  `can_view_offline_system` char(1) NOT NULL DEFAULT 'n',
  `can_view_online_system` char(1) NOT NULL DEFAULT 'y',
  `can_access_cp` char(1) NOT NULL DEFAULT 'y',
  `can_access_content` char(1) NOT NULL DEFAULT 'n',
  `can_access_publish` char(1) NOT NULL DEFAULT 'n',
  `can_access_edit` char(1) NOT NULL DEFAULT 'n',
  `can_access_files` char(1) NOT NULL DEFAULT 'n',
  `can_access_fieldtypes` char(1) NOT NULL DEFAULT 'n',
  `can_access_design` char(1) NOT NULL DEFAULT 'n',
  `can_access_addons` char(1) NOT NULL DEFAULT 'n',
  `can_access_modules` char(1) NOT NULL DEFAULT 'n',
  `can_access_extensions` char(1) NOT NULL DEFAULT 'n',
  `can_access_accessories` char(1) NOT NULL DEFAULT 'n',
  `can_access_plugins` char(1) NOT NULL DEFAULT 'n',
  `can_access_members` char(1) NOT NULL DEFAULT 'n',
  `can_access_admin` char(1) NOT NULL DEFAULT 'n',
  `can_access_sys_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_content_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_tools` char(1) NOT NULL DEFAULT 'n',
  `can_access_comm` char(1) NOT NULL DEFAULT 'n',
  `can_access_utilities` char(1) NOT NULL DEFAULT 'n',
  `can_access_data` char(1) NOT NULL DEFAULT 'n',
  `can_access_logs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_channels` char(1) NOT NULL DEFAULT 'n',
  `can_admin_upload_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_design` char(1) NOT NULL DEFAULT 'n',
  `can_admin_members` char(1) NOT NULL DEFAULT 'n',
  `can_delete_members` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_groups` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_templates` char(1) NOT NULL DEFAULT 'n',
  `can_ban_users` char(1) NOT NULL DEFAULT 'n',
  `can_admin_modules` char(1) NOT NULL DEFAULT 'n',
  `can_admin_templates` char(1) NOT NULL DEFAULT 'n',
  `can_edit_categories` char(1) NOT NULL DEFAULT 'n',
  `can_delete_categories` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_edit_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_assign_post_authors` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self_entries` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_entries` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_moderate_comments` char(1) NOT NULL DEFAULT 'n',
  `can_send_email` char(1) NOT NULL DEFAULT 'n',
  `can_send_cached_email` char(1) NOT NULL DEFAULT 'n',
  `can_email_member_groups` char(1) NOT NULL DEFAULT 'n',
  `can_email_mailinglist` char(1) NOT NULL DEFAULT 'n',
  `can_email_from_profile` char(1) NOT NULL DEFAULT 'n',
  `can_view_profiles` char(1) NOT NULL DEFAULT 'n',
  `can_edit_html_buttons` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self` char(1) NOT NULL DEFAULT 'n',
  `mbr_delete_notify_emails` varchar(255) DEFAULT NULL,
  `can_post_comments` char(1) NOT NULL DEFAULT 'n',
  `exclude_from_moderation` char(1) NOT NULL DEFAULT 'n',
  `can_search` char(1) NOT NULL DEFAULT 'n',
  `search_flood_control` mediumint(5) unsigned NOT NULL,
  `can_send_private_messages` char(1) NOT NULL DEFAULT 'n',
  `prv_msg_send_limit` smallint(5) unsigned NOT NULL DEFAULT '20',
  `prv_msg_storage_limit` smallint(5) unsigned NOT NULL DEFAULT '60',
  `can_attach_in_private_messages` char(1) NOT NULL DEFAULT 'n',
  `can_send_bulletins` char(1) NOT NULL DEFAULT 'n',
  `include_in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `include_in_memberlist` char(1) NOT NULL DEFAULT 'y',
  `include_in_mailinglists` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`group_id`,`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_member_groups`
--

INSERT INTO `exp_member_groups` (`group_id`, `site_id`, `group_title`, `group_description`, `is_locked`, `can_view_offline_system`, `can_view_online_system`, `can_access_cp`, `can_access_content`, `can_access_publish`, `can_access_edit`, `can_access_files`, `can_access_fieldtypes`, `can_access_design`, `can_access_addons`, `can_access_modules`, `can_access_extensions`, `can_access_accessories`, `can_access_plugins`, `can_access_members`, `can_access_admin`, `can_access_sys_prefs`, `can_access_content_prefs`, `can_access_tools`, `can_access_comm`, `can_access_utilities`, `can_access_data`, `can_access_logs`, `can_admin_channels`, `can_admin_upload_prefs`, `can_admin_design`, `can_admin_members`, `can_delete_members`, `can_admin_mbr_groups`, `can_admin_mbr_templates`, `can_ban_users`, `can_admin_modules`, `can_admin_templates`, `can_edit_categories`, `can_delete_categories`, `can_view_other_entries`, `can_edit_other_entries`, `can_assign_post_authors`, `can_delete_self_entries`, `can_delete_all_entries`, `can_view_other_comments`, `can_edit_own_comments`, `can_delete_own_comments`, `can_edit_all_comments`, `can_delete_all_comments`, `can_moderate_comments`, `can_send_email`, `can_send_cached_email`, `can_email_member_groups`, `can_email_mailinglist`, `can_email_from_profile`, `can_view_profiles`, `can_edit_html_buttons`, `can_delete_self`, `mbr_delete_notify_emails`, `can_post_comments`, `exclude_from_moderation`, `can_search`, `search_flood_control`, `can_send_private_messages`, `prv_msg_send_limit`, `prv_msg_storage_limit`, `can_attach_in_private_messages`, `can_send_bulletins`, `include_in_authorlist`, `include_in_memberlist`, `include_in_mailinglists`) VALUES
(1, 1, 'Super Admins', '', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', '', 'y', 'y', 'y', 0, 'y', 20, 60, 'y', 'y', 'y', 'y', 'y'),
(2, 1, 'Banned', '', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', '', 'n', 'n', 'n', 60, 'n', 20, 60, 'n', 'n', 'n', 'n', 'n'),
(3, 1, 'Guests', '', 'y', 'n', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'n', 'n', 'n', 'n', '', 'y', 'n', 'y', 15, 'n', 20, 60, 'n', 'n', 'n', 'n', 'n'),
(4, 1, 'Pending', '', 'y', 'n', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'n', 'n', 'n', 'n', '', 'y', 'n', 'y', 15, 'n', 20, 60, 'n', 'n', 'n', 'n', 'n'),
(5, 1, 'Members', '', 'y', 'n', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'n', '', 'y', 'n', 'y', 10, 'y', 20, 60, 'y', 'n', 'n', 'y', 'y'),
(6, 1, 'usuarios_dep', '', 'n', 'y', 'y', 'n', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'n', 'n', 'n', 'n', '', 'y', 'n', 'y', 2, 'n', 20, 60, 'n', 'n', 'n', 'n', 'n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_homepage`
--

CREATE TABLE IF NOT EXISTS `exp_member_homepage` (
  `member_id` int(10) unsigned NOT NULL,
  `recent_entries` char(1) NOT NULL DEFAULT 'l',
  `recent_entries_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_comments` char(1) NOT NULL DEFAULT 'l',
  `recent_comments_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_members` char(1) NOT NULL DEFAULT 'n',
  `recent_members_order` int(3) unsigned NOT NULL DEFAULT '0',
  `site_statistics` char(1) NOT NULL DEFAULT 'r',
  `site_statistics_order` int(3) unsigned NOT NULL DEFAULT '0',
  `member_search_form` char(1) NOT NULL DEFAULT 'n',
  `member_search_form_order` int(3) unsigned NOT NULL DEFAULT '0',
  `notepad` char(1) NOT NULL DEFAULT 'r',
  `notepad_order` int(3) unsigned NOT NULL DEFAULT '0',
  `bulletin_board` char(1) NOT NULL DEFAULT 'r',
  `bulletin_board_order` int(3) unsigned NOT NULL DEFAULT '0',
  `pmachine_news_feed` char(1) NOT NULL DEFAULT 'n',
  `pmachine_news_feed_order` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_member_homepage`
--

INSERT INTO `exp_member_homepage` (`member_id`, `recent_entries`, `recent_entries_order`, `recent_comments`, `recent_comments_order`, `recent_members`, `recent_members_order`, `site_statistics`, `site_statistics_order`, `member_search_form`, `member_search_form_order`, `notepad`, `notepad_order`, `bulletin_board`, `bulletin_board_order`, `pmachine_news_feed`, `pmachine_news_feed_order`) VALUES
(1, 'l', 1, 'l', 2, 'n', 0, 'r', 1, 'n', 0, 'r', 2, 'r', 0, 'l', 0),
(9, 'l', 0, 'l', 0, 'n', 0, 'r', 0, 'n', 0, 'r', 0, 'r', 0, 'n', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_search`
--

CREATE TABLE IF NOT EXISTS `exp_member_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `search_date` int(10) unsigned NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `fields` varchar(200) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL,
  `query` text NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_message_attachments`
--

CREATE TABLE IF NOT EXISTS `exp_message_attachments` (
  `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_name` varchar(50) NOT NULL DEFAULT '',
  `attachment_hash` varchar(40) NOT NULL DEFAULT '',
  `attachment_extension` varchar(20) NOT NULL DEFAULT '',
  `attachment_location` varchar(150) NOT NULL DEFAULT '',
  `attachment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_size` int(10) unsigned NOT NULL DEFAULT '0',
  `is_temp` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_message_copies`
--

CREATE TABLE IF NOT EXISTS `exp_message_copies` (
  `copy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_received` char(1) NOT NULL DEFAULT 'n',
  `message_read` char(1) NOT NULL DEFAULT 'n',
  `message_time_read` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_downloaded` char(1) NOT NULL DEFAULT 'n',
  `message_folder` int(10) unsigned NOT NULL DEFAULT '1',
  `message_authcode` varchar(10) NOT NULL DEFAULT '',
  `message_deleted` char(1) NOT NULL DEFAULT 'n',
  `message_status` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`copy_id`),
  KEY `message_id` (`message_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_message_data`
--

CREATE TABLE IF NOT EXISTS `exp_message_data` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_date` int(10) unsigned NOT NULL DEFAULT '0',
  `message_subject` varchar(255) NOT NULL DEFAULT '',
  `message_body` text NOT NULL,
  `message_tracking` char(1) NOT NULL DEFAULT 'y',
  `message_attachments` char(1) NOT NULL DEFAULT 'n',
  `message_recipients` varchar(200) NOT NULL DEFAULT '',
  `message_cc` varchar(200) NOT NULL DEFAULT '',
  `message_hide_cc` char(1) NOT NULL DEFAULT 'n',
  `message_sent_copy` char(1) NOT NULL DEFAULT 'n',
  `total_recipients` int(5) unsigned NOT NULL DEFAULT '0',
  `message_status` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_message_folders`
--

CREATE TABLE IF NOT EXISTS `exp_message_folders` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `folder1_name` varchar(50) NOT NULL DEFAULT 'InBox',
  `folder2_name` varchar(50) NOT NULL DEFAULT 'Sent',
  `folder3_name` varchar(50) NOT NULL DEFAULT '',
  `folder4_name` varchar(50) NOT NULL DEFAULT '',
  `folder5_name` varchar(50) NOT NULL DEFAULT '',
  `folder6_name` varchar(50) NOT NULL DEFAULT '',
  `folder7_name` varchar(50) NOT NULL DEFAULT '',
  `folder8_name` varchar(50) NOT NULL DEFAULT '',
  `folder9_name` varchar(50) NOT NULL DEFAULT '',
  `folder10_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_message_folders`
--

INSERT INTO `exp_message_folders` (`member_id`, `folder1_name`, `folder2_name`, `folder3_name`, `folder4_name`, `folder5_name`, `folder6_name`, `folder7_name`, `folder8_name`, `folder9_name`, `folder10_name`) VALUES
(1, 'InBox', 'Sent', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_message_listed`
--

CREATE TABLE IF NOT EXISTS `exp_message_listed` (
  `listed_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_member` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_description` varchar(100) NOT NULL DEFAULT '',
  `listed_type` varchar(10) NOT NULL DEFAULT 'blocked',
  PRIMARY KEY (`listed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_metaweblog_api`
--

CREATE TABLE IF NOT EXISTS `exp_metaweblog_api` (
  `metaweblog_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `metaweblog_pref_name` varchar(80) NOT NULL DEFAULT '',
  `metaweblog_parse_type` varchar(1) NOT NULL DEFAULT 'y',
  `entry_status` varchar(50) NOT NULL DEFAULT 'NULL',
  `field_group_id` int(5) unsigned NOT NULL DEFAULT '0',
  `excerpt_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `content_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `more_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `keywords_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `upload_dir` int(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`metaweblog_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `exp_metaweblog_api`
--

INSERT INTO `exp_metaweblog_api` (`metaweblog_id`, `metaweblog_pref_name`, `metaweblog_parse_type`, `entry_status`, `field_group_id`, `excerpt_field_id`, `content_field_id`, `more_field_id`, `keywords_field_id`, `upload_dir`) VALUES
(1, 'Default', 'y', 'NULL', 1, 0, 2, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_moblogs`
--

CREATE TABLE IF NOT EXISTS `exp_moblogs` (
  `moblog_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `moblog_full_name` varchar(80) DEFAULT '',
  `moblog_short_name` varchar(20) DEFAULT '',
  `moblog_enabled` char(1) DEFAULT 'y',
  `moblog_file_archive` char(1) DEFAULT 'n',
  `moblog_time_interval` int(4) unsigned DEFAULT '0',
  `moblog_type` varchar(10) DEFAULT '',
  `moblog_gallery_id` int(6) DEFAULT '0',
  `moblog_gallery_category` int(10) unsigned DEFAULT '0',
  `moblog_gallery_status` varchar(50) DEFAULT '',
  `moblog_gallery_comments` varchar(10) DEFAULT 'y',
  `moblog_gallery_author` int(10) unsigned DEFAULT '1',
  `moblog_channel_id` int(4) unsigned DEFAULT '1',
  `moblog_categories` varchar(25) DEFAULT '',
  `moblog_field_id` varchar(5) DEFAULT '',
  `moblog_status` varchar(50) DEFAULT '',
  `moblog_author_id` int(10) unsigned DEFAULT '1',
  `moblog_sticky_entry` char(1) DEFAULT 'n',
  `moblog_allow_overrides` char(1) DEFAULT 'y',
  `moblog_auth_required` char(1) DEFAULT 'n',
  `moblog_auth_delete` char(1) DEFAULT 'n',
  `moblog_upload_directory` int(4) unsigned DEFAULT '1',
  `moblog_template` text,
  `moblog_image_size` int(10) DEFAULT '0',
  `moblog_thumb_size` int(10) DEFAULT '0',
  `moblog_email_type` varchar(10) DEFAULT '',
  `moblog_email_address` varchar(125) DEFAULT '',
  `moblog_email_server` varchar(100) DEFAULT '',
  `moblog_email_login` varchar(125) DEFAULT '',
  `moblog_email_password` varchar(125) DEFAULT '',
  `moblog_subject_prefix` varchar(50) DEFAULT '',
  `moblog_valid_from` text,
  `moblog_ignore_text` text,
  PRIMARY KEY (`moblog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_modules`
--

CREATE TABLE IF NOT EXISTS `exp_modules` (
  `module_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_version` varchar(12) NOT NULL,
  `has_cp_backend` char(1) NOT NULL DEFAULT 'n',
  `has_publish_fields` char(1) NOT NULL DEFAULT 'n',
  `settings` text,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `exp_modules`
--

INSERT INTO `exp_modules` (`module_id`, `module_name`, `module_version`, `has_cp_backend`, `has_publish_fields`, `settings`) VALUES
(1, 'Blacklist', '3.0.1', 'y', 'n', NULL),
(2, 'Comment', '2.3.2', 'y', 'n', NULL),
(3, 'Email', '2.0', 'n', 'n', NULL),
(4, 'Emoticon', '2.0', 'n', 'n', NULL),
(5, 'File', '1.0.0', 'n', 'n', NULL),
(6, 'Jquery', '1.0', 'n', 'n', NULL),
(7, 'Mailinglist', '3.2', 'y', 'n', NULL),
(8, 'Metaweblog_api', '2.1', 'y', 'n', NULL),
(9, 'Moblog', '3.2', 'y', 'n', NULL),
(10, 'Pages', '2.2', 'y', 'y', NULL),
(11, 'Query', '2.0', 'n', 'n', NULL),
(12, 'Rss', '2.0', 'n', 'n', NULL),
(13, 'Referrer', '2.1.1', 'y', 'n', NULL),
(14, 'Search', '2.2.2', 'n', 'n', NULL),
(15, 'Simple_commerce', '2.2', 'y', 'n', NULL),
(16, 'Wiki', '2.3', 'y', 'n', NULL),
(17, 'Channel', '2.0.1', 'n', 'n', NULL),
(18, 'Member', '2.1', 'n', 'n', NULL),
(19, 'Stats', '2.0', 'n', 'n', NULL),
(20, 'Rte', '1.0.1', 'y', 'n', NULL),
(21, 'User', '3.4.5', 'y', 'y', NULL),
(22, 'Calendar', '1.8.6', 'y', 'n', NULL),
(23, 'Channel_images', '5.4.17', 'y', 'n', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_module_member_groups`
--

CREATE TABLE IF NOT EXISTS `exp_module_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `module_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_online_users`
--

CREATE TABLE IF NOT EXISTS `exp_online_users` (
  `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `in_forum` char(1) NOT NULL DEFAULT 'n',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `anon` char(1) NOT NULL,
  PRIMARY KEY (`online_id`),
  KEY `date` (`date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Volcado de datos para la tabla `exp_online_users`
--

INSERT INTO `exp_online_users` (`online_id`, `site_id`, `member_id`, `in_forum`, `name`, `ip_address`, `date`, `anon`) VALUES
(66, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(65, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(57, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(64, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(63, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(61, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(62, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(67, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(68, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(69, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(70, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(71, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(72, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(73, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(74, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(75, 1, 1, 'n', 'julio', '::1', 1398881748, ''),
(76, 1, 0, 'n', '', '::1', 1398895043, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_pages_configuration`
--

CREATE TABLE IF NOT EXISTS `exp_pages_configuration` (
  `configuration_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(8) unsigned NOT NULL DEFAULT '1',
  `configuration_name` varchar(60) NOT NULL,
  `configuration_value` varchar(100) NOT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_password_lockout`
--

CREATE TABLE IF NOT EXISTS `exp_password_lockout` (
  `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`lockout_id`),
  KEY `login_date` (`login_date`),
  KEY `ip_address` (`ip_address`),
  KEY `user_agent` (`user_agent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_referrers`
--

CREATE TABLE IF NOT EXISTS `exp_referrers` (
  `ref_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) DEFAULT '1',
  `ref_from` varchar(150) DEFAULT NULL,
  `ref_to` varchar(120) DEFAULT NULL,
  `ref_ip` varchar(45) DEFAULT NULL,
  `ref_date` int(10) unsigned DEFAULT '0',
  `ref_agent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ref_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_relationships`
--

CREATE TABLE IF NOT EXISTS `exp_relationships` (
  `relationship_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_col_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_row_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`relationship_id`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `field_id` (`field_id`),
  KEY `grid_row_id` (`grid_row_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `exp_relationships`
--

INSERT INTO `exp_relationships` (`relationship_id`, `parent_id`, `child_id`, `field_id`, `grid_field_id`, `grid_col_id`, `grid_row_id`, `order`) VALUES
(1, 3, 5, 9, 0, 0, 0, 1),
(2, 3, 4, 9, 0, 0, 0, 2),
(3, 1, 4, 9, 0, 0, 0, 1),
(14, 3, 5, 9, 0, 0, 0, 0),
(13, 1, 5, 9, 0, 0, 0, 0),
(12, 1, 5, 9, 0, 0, 0, 0),
(11, 3, 6, 9, 0, 0, 0, 3),
(10, 3, 35, 9, 0, 0, 0, 4),
(15, 3, 5, 9, 0, 0, 0, 0),
(16, 3, 5, 9, 0, 0, 0, 0),
(17, 3, 5, 9, 0, 0, 0, 0),
(18, 3, 5, 9, 0, 0, 0, 0),
(19, 3, 5, 9, 0, 0, 0, 0),
(20, 3, 5, 9, 0, 0, 0, 0),
(21, 3, 5, 9, 0, 0, 0, 0),
(22, 3, 5, 9, 0, 0, 0, 0),
(23, 3, 5, 9, 0, 0, 0, 0),
(24, 3, 5, 9, 0, 0, 0, 0),
(25, 3, 5, 9, 0, 0, 0, 0),
(26, 3, 5, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_remember_me`
--

CREATE TABLE IF NOT EXISTS `exp_remember_me` (
  `remember_me_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT '0',
  `user_agent` varchar(120) DEFAULT '',
  `admin_sess` tinyint(1) DEFAULT '0',
  `site_id` int(4) DEFAULT '1',
  `expiration` int(10) DEFAULT '0',
  `last_refresh` int(10) DEFAULT '0',
  PRIMARY KEY (`remember_me_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_reset_password`
--

CREATE TABLE IF NOT EXISTS `exp_reset_password` (
  `reset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `resetcode` varchar(12) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`reset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_revision_tracker`
--

CREATE TABLE IF NOT EXISTS `exp_revision_tracker` (
  `tracker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `item_table` varchar(20) NOT NULL,
  `item_field` varchar(20) NOT NULL,
  `item_date` int(10) NOT NULL,
  `item_author_id` int(10) unsigned NOT NULL,
  `item_data` mediumtext NOT NULL,
  PRIMARY KEY (`tracker_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=175 ;

--
-- Volcado de datos para la tabla `exp_revision_tracker`
--

INSERT INTO `exp_revision_tracker` (`tracker_id`, `item_id`, `item_table`, `item_field`, `item_date`, `item_author_id`, `item_data`) VALUES
(13, 2, 'exp_templates', 'template_data', 1398387829, 1, '<a href="{path=''member/register''}">Register as a new member</a>\n'),
(14, 2, 'exp_templates', 'template_data', 1398387874, 1, '<a href="{path=''member/register''}">Register as a new member</a>\n'),
(30, 3, 'exp_templates', 'template_data', 1398453764, 1, '{if logged_in}\n\n{exp:member:custom_profile_data}\n        Bienvenido: {username}</p>\n{/exp:member:custom_profile_data}\n<p>\n\n<a href="{path=''member/profile''}">Edit your profile</a><br>\n\n<a href="{path=''member/profile''}">Nueva Solicitud</a><br>\n\n\n        <a href="{path=''logout''}">Log Out</a>\n{/if}\n{if logged_out}\n        Are you a member? Please <a href="{path=''member/login''}">log-in</a>.<br>\n        Not a member? <a href="{path=''member/register''}">Register</a>.<br>\n        Have you <a href="{path=''member/forgot''}">forgotten your password</a>?\n{/if}\n'),
(23, 1, 'exp_templates', 'template_data', 1398446496, 1, '{exp:member:login_form return="http://localhost/gym/index.php/main/bienvenido"}\n        <p>\n                <label>Username</label><br>\n                <input type="text" name="mail" value="" maxlength="32" size="25">\n        </p>\n        <p>\n                <label>Password</label><br>\n                <input type="password" name="password" value="" maxlength="32" size="25">\n        </p>\n        {if auto_login}\n                <p><input type="checkbox" name="auto_login" value="1"> Auto-login on future visits</p>\n        {/if}\n\n        <p><input type="checkbox" name="anon" value="1" checked="checked"> Show my name in the online users list</p>\n        <p><input type="submit" name="submit" value="Submit"></p>\n        <p><a href="{path=''member/forgot_password''}">Forgot your password?</a></p>\n	<p><a href="{path=''member/register''}">Register as a new member</a></p>\n{/exp:member:login_form}\n\n<a href="{path=''logout''}">Log Out</a>'),
(24, 1, 'exp_templates', 'template_data', 1398446558, 1, '{exp:member:login_form return="http://localhost/gym/index.php/main/bienvenido"}\n        <p>\n                <label>Username</label><br>\n                <input type="text" name="username" value="" maxlength="32" size="25">\n        </p>\n        <p>\n                <label>Password</label><br>\n                <input type="password" name="password" value="" maxlength="32" size="25">\n        </p>\n        {if auto_login}\n                <p><input type="checkbox" name="auto_login" value="1"> Auto-login on future visits</p>\n        {/if}\n\n        <p><input type="checkbox" name="anon" value="1" checked="checked"> Show my name in the online users list</p>\n        <p><input type="submit" name="submit" value="Submit"></p>\n        <p><a href="{path=''member/forgot_password''}">Forgot your password?</a></p>\n	<p><a href="{path=''member/register''}">Register as a new member</a></p>\n{/exp:member:login_form}\n\n<a href="{path=''logout''}">Log Out</a>'),
(5, 2, 'exp_templates', 'template_data', 1398386189, 1, '{exp:user:register\n    return="main/login" group_id="6"\n}\n \n    Email Address:\n    <input type="text" name="username" />\n \n    Screen Name:\n    <input type="text" name="screen_name" />\n \n    Password:\n    <input type="password" name="password" />\n \n    Confirm Password:\n    <input type="password" name="password_confirm" />\n \n    <input type="checkbox" name="accept_terms" value="y" />\n    Accept Terms?\n \n    <input type="submit" value="Submit" />\n\n \n{/exp:user:register}'),
(31, 1, 'exp_templates', 'template_data', 1398453995, 1, '{exp:member:login_form return="{site_url}/index.php/main/bienvenido"}\n        <p>\n                <label>Username</label><br>\n                <input type="text" name="username" value="" maxlength="32" size="25">\n        </p>\n        <p>\n                <label>Password</label><br>\n                <input type="password" name="password" value="" maxlength="32" size="25">\n        </p>\n        {if auto_login}\n                <p><input type="checkbox" name="auto_login" value="1"> Auto-login on future visits</p>\n        {/if}\n\n        <p><input type="checkbox" name="anon" value="1" checked="checked"> Show my name in the online users list</p>\n        <p><input type="submit" name="submit" value="Submit"></p>\n        <p><a href="{path=''member/forgot_password''}">Forgot your password?</a></p>\n	<p><a href="{path=''member/register''}">Register as a new member</a></p>\n{/exp:member:login_form}\n\n<a href="{path=''logout''}">Log Out</a>'),
(54, 3, 'exp_templates', 'template_data', 1398459305, 1, '{if logged_in}\n\n{exp:member:custom_profile_data}\n        Bienvenido: {username}</p>\n{/exp:member:custom_profile_data}\n<p>\n\n<a href="{path=''member/profile''}">Edit your profile</a><br>\n\n<a href="{site_url}index.php/main/nueva_solicitud">Nueva Solicitud</a><br>\n\n<a href="{path=''logout''}">Log Out</a>\n{/if}\n{if logged_out}\n        Are you a member? Please <a href="{path=''member/login''}">log-in</a>.<br>\n        Not a member? <a href="{path=''member/register''}">Register</a>.<br>\n        Have you <a href="{path=''member/forgot''}">forgotten your password</a>?\n{/if}\n\n{exp:channel:form channel="solicitudes_ch" return="contact/thanks" }\n   <input name="title" type="text">\n   <input name="my_custom_field" type="text">\n   <input type="submit" value="Submit">\n{/exp:channel:form}\n'),
(36, 3, 'exp_templates', 'template_data', 1398456836, 1, '{if logged_in}\n\n{exp:member:custom_profile_data}\n        Bienvenido: {username}</p>\n{/exp:member:custom_profile_data}\n<p>\n\n<a href="{path=''member/profile''}">Edit your profile</a><br>\n\n<a href="{site_url}index.php/main/nueva_solicitud">Nueva Solicitud</a><br>\n\n<a href="{path=''logout''}">Log Out</a>\n{/if}\n{if logged_out}\n        Are you a member? Please <a href="{path=''member/login''}">log-in</a>.<br>\n        Not a member? <a href="{path=''member/register''}">Register</a>.<br>\n        Have you <a href="{path=''member/forgot''}">forgotten your password</a>?\n{/if}\n'),
(21, 1, 'exp_templates', 'template_data', 1398445512, 1, '{exp:member:login_form return="http://localhost/gym/index.php/main/bienvenido"}\n        <p>\n                <label>Username</label><br>\n                <input type="text" name="username" value="" maxlength="32" size="25">\n        </p>\n        <p>\n                <label>Password</label><br>\n                <input type="password" name="password" value="" maxlength="32" size="25">\n        </p>\n        {if auto_login}\n                <p><input type="checkbox" name="auto_login" value="1"> Auto-login on future visits</p>\n        {/if}\n\n        <p><input type="checkbox" name="anon" value="1" checked="checked"> Show my name in the online users list</p>\n        <p><input type="submit" name="submit" value="Submit"></p>\n        <p><a href="{path=''member/forgot_password''}">Forgot your password?</a></p>\n	<p><a href="{path=''member/register''}">Register as a new member</a></p>\n{/exp:member:login_form}\n\n<a href="{path=''logout''}">Log Out</a>'),
(11, 2, 'exp_templates', 'template_data', 1398387329, 1, '{exp:user:register\n    return="member/login" group_id="6"\n}\n \n    Email Address:\n    <input type="text" name="username" />\n \n    Screen Name:\n    <input type="text" name="screen_name" />\n \n    Password:\n    <input type="password" name="password" />\n \n    Confirm Password:\n    <input type="password" name="password_confirm" />\n \n    <input type="checkbox" name="accept_terms" value="y" />\n    Accept Terms?\n \n    <input type="submit" value="Submit" />\n\n \n{/exp:user:register}'),
(12, 2, 'exp_templates', 'template_data', 1398387459, 1, '{exp:user:register\n    return="main/login" group_id="6"\n}\n \n    Email Address:\n    <input type="text" name="username" />\n \n    Screen Name:\n    <input type="text" name="screen_name" />\n \n    Password:\n    <input type="password" name="password" />\n \n    Confirm Password:\n    <input type="password" name="password_confirm" />\n \n    <input type="checkbox" name="accept_terms" value="y" />\n    Accept Terms?\n \n    <input type="submit" value="Submit" />\n\n \n{/exp:user:register}\n'),
(32, 3, 'exp_templates', 'template_data', 1398454045, 1, '{if logged_in}\n\n{exp:member:custom_profile_data}\n        Bienvenido: {username}</p>\n{/exp:member:custom_profile_data}\n<p>\n\n<a href="{path=''member/profile''}">Edit your profile</a><br>\n\n<a href="{site_url}/index.php/main/nueva_solicitud">Nueva Solicitud</a><br>\n\n<a href="{path=''logout''}">Log Out</a>\n{/if}\n{if logged_out}\n        Are you a member? Please <a href="{path=''member/login''}">log-in</a>.<br>\n        Not a member? <a href="{path=''member/register''}">Register</a>.<br>\n        Have you <a href="{path=''member/forgot''}">forgotten your password</a>?\n{/if}\n'),
(37, 1, 'exp_templates', 'template_data', 1398456844, 1, '{exp:member:login_form return="{site_url}index.php/main/bienvenido"}\n        <p>\n                <label>Username</label><br>\n                <input type="text" name="username" value="" maxlength="32" size="25">\n        </p>\n        <p>\n                <label>Password</label><br>\n                <input type="password" name="password" value="" maxlength="32" size="25">\n        </p>\n        {if auto_login}\n                <p><input type="checkbox" name="auto_login" value="1"> Auto-login on future visits</p>\n        {/if}\n\n        <p><input type="checkbox" name="anon" value="1" checked="checked"> Show my name in the online users list</p>\n        <p><input type="submit" name="submit" value="Submit"></p>\n        <p><a href="{path=''member/forgot_password''}">Forgot your password?</a></p>\n	<p><a href="{path=''member/register''}">Register as a new member</a></p>\n{/exp:member:login_form}\n\n<a href="{path=''logout''}">Log Out</a>'),
(55, 3, 'exp_templates', 'template_data', 1398459330, 1, '{if logged_in}\n\n{exp:member:custom_profile_data}\n        Bienvenido: {username}</p>\n{/exp:member:custom_profile_data}\n<p>\n\n<a href="{path=''member/profile''}">Edit your profile</a><br>\n\n<a href="{site_url}index.php/main/nueva_solicitud">Nueva Solicitud</a><br>\n\n<a href="{path=''logout''}">Log Out</a>\n{/if}\n{if logged_out}\n        Are you a member? Please <a href="{path=''member/login''}">log-in</a>.<br>\n        Not a member? <a href="{path=''member/register''}">Register</a>.<br>\n        Have you <a href="{path=''member/forgot''}">forgotten your password</a>?\n{/if}\n\n'),
(97, 4, 'exp_templates', 'template_data', 1398471519, 1, '{exp:channel:form channel="solicitudes_ch"}\n\n<label for="title">Title</label>\n<input type="text" name="title" id="title" value="{title}" onkeyup="liveUrlTitle();">\n<p>\n<label for="title">Tipo de Problema</label>\n{field:tipo_problema}\n\n<p>\n<label for="title">Ubicacion</label>\n{field:ubicacion}\n\n<p>\n<label for="title">Descripcion del problema</label>\n{field:descripcion_problema}\n\n<p>\n<label for="title">Foto problema</label>\n{field:foto_problema}\n\n<p>\n<label for="title">Daños a otros depas</label>\n{field:danhos_otros}\n\n\n<p>\n<label for="title">Otro depa Afectado</label>\n{field:otro_dep_afectado}\n\n  <input type="submit" value="Submit">\n{/exp:channel:form}\n'),
(93, 4, 'exp_templates', 'template_data', 1398469430, 1, '{exp:channel:form channel="solicitudes_ch"}\n\n<label for="title">Title</label>\n<input type="text" name="title" id="title" value="{title}" onkeyup="liveUrlTitle();">\n<p>\n<label for="title">Tipo de Problema</label>\n{field:tipo_problema}\n\n<p>\n<label for="title">Ubicacion</label>\n{field:ubicacion}\n\n<p>\n<label for="title">Descripcion del problema</label>\n{field:descripcion_problema}\n\n<p>\n<label for="title">Foto problema</label>\n{field:foto_problema}\n\n<p>\n<label for="title">Daños a otros depas</label>\n{field:danhos_otros}\n\n  <input type="submit" value="Submit">\n{/exp:channel:form}'),
(95, 4, 'exp_templates', 'template_data', 1398470294, 1, '{exp:channel:form channel="solicitudes_ch"}\n\n<label for="title">Title</label>\n<input type="text" name="title" id="title" value="{title}" onkeyup="liveUrlTitle();">\n<p>\n<label for="title">Tipo de Problema</label>\n{field:tipo_problema}\n\n<p>\n<label for="title">Ubicacion</label>\n{field:ubicacion}\n\n<p>\n<label for="title">Descripcion del problema</label>\n{field:descripcion_problema}\n\n<p>\n<label for="title">Foto problema</label>\n{field:foto_problema}\n\n<p>\n<label for="title">Daños a otros depas</label>\n{field:danhos_otros}\n\n  <input type="submit" value="Submit">\n{/exp:channel:form}\n'),
(94, 4, 'exp_templates', 'template_data', 1398470129, 1, '{if logged_in}\n\n{exp:channel:form channel="solicitudes_ch"}\n\n<label for="title">Title</label>\n<input type="text" name="title" id="title" value="{title}" onkeyup="liveUrlTitle();">\n<p>\n<label for="title">Tipo de Problema</label>\n{field:tipo_problema}\n\n<p>\n<label for="title">Ubicacion</label>\n{field:ubicacion}\n\n<p>\n<label for="title">Descripcion del problema</label>\n{field:descripcion_problema}\n\n<p>\n<label for="title">Foto problema</label>\n{field:foto_problema}\n\n<p>\n<label for="title">Daños a otros depas</label>\n{field:danhos_otros}\n\n  <input type="submit" value="Submit">\n{/exp:channel:form}\n\n{/if}'),
(96, 4, 'exp_templates', 'template_data', 1398471500, 1, '{exp:channel:form channel="solicitudes_ch"}\n\n<label for="title">Title</label>\n<input type="text" name="title" id="title" value="{title}" onkeyup="liveUrlTitle();">\n<p>\n<label for="title">Tipo de Problema</label>\n{field:tipo_problema}\n\n<p>\n<label for="title">Ubicacion</label>\n{field:ubicacion}\n\n<p>\n<label for="title">Descripcion del problema</label>\n{field:descripcion_problema}\n\n<p>\n<label for="title">Foto problema</label>\n{field:foto_problema}\n\n<p>\n<label for="title">Daños a otros depas</label>\n{field:danhos_otros}\n\n\n<p>\n<label for="title">Otro depa Afectado</label>\n{field:{otro_dep_afectado}\n\n  <input type="submit" value="Submit">\n{/exp:channel:form}\n'),
(136, 5, 'exp_templates', 'template_data', 1398721129, 1, '{exp:channel:entries channel="solicitudes_ch" sort="DESC" limit="10" }\n\n<table cellpadding="0" cellspacing="0" style="width: 100%" border="1">\n	<tr>\n		<td style="width: 128px">{tipo_problema}</td>\n		<td style="width: 87px">{ubicacion}</td>\n		<td style="width: 185px">{descripcion_problema} <br>status:\n			{relacion_status} {relacion_status:descripcion_status}<br>{/relacion_status}</td>\n		<td style="width: 150px"><img alt="" src="{foto_problema}" height="50" /></td>\n		<td style="width: 155px">{danhos_otros}</td>\n		<td>{otro_dep_afectado}</td>\n	</tr>\n</table>\n\n\n{/exp:channel:entries}	\n\n<?php\n\nee()->load->library(''api'');\nee()->api->instantiate(''channel_entries'');\nee()->api->instantiate(''channel_fields'');\n\n$data = array(\n    ''title''         => ''noticias'',\n	''descripcion_status''         => ''descripcion'',\n    ''detalle_status''    => ''Some data'',\n);\n\nprint_r($data); \n\nee()->api_channel_fields->setup_entry_settings(2, $data);\n\nif (ee()->api_channel_entries->submit_new_entry(2, $data) === FALSE)\n{\n    show_error(''An Error Occurred Creating the Entry'');\n}\n\nee()->api_channel_entries->errors;\n\n?>'),
(134, 5, 'exp_templates', 'template_data', 1398721009, 1, '{exp:channel:entries channel="solicitudes_ch" sort="DESC" limit="10" }\n\n<table cellpadding="0" cellspacing="0" style="width: 100%" border="1">\n	<tr>\n		<td style="width: 128px">{tipo_problema}</td>\n		<td style="width: 87px">{ubicacion}</td>\n		<td style="width: 185px">{descripcion_problema} <br>status:\n			{relacion_status} {relacion_status:descripcion_status}<br>{/relacion_status}</td>\n		<td style="width: 150px"><img alt="" src="{foto_problema}" height="50" /></td>\n		<td style="width: 155px">{danhos_otros}</td>\n		<td>{otro_dep_afectado}</td>\n	</tr>\n</table>\n\n\n{/exp:channel:entries}	\n\n<?php\n\nee()->load->library(''api'');\nee()->api->instantiate(''channel_entries'');\nee()->api->instantiate(''channel_fields'');\n\n$data = array(\n    ''title''         => ''noticias'',\n	''descripcion_status''         => ''descripcion'',\n    ''detalle_status''    => ''Some data''\n);\n\nprint_r($data); \n\nee()->api_channel_fields->setup_entry_settings(2, $data);\n\nif (ee()->api_channel_entries->submit_new_entry(2, $data) === FALSE)\n{\n    show_error(''An Error Occurred Creating the Entry'');\n}\n\n$this->EE->api_channel_entries->errors;\n\n?>'),
(135, 5, 'exp_templates', 'template_data', 1398721060, 1, '{exp:channel:entries channel="solicitudes_ch" sort="DESC" limit="10" }\n\n<table cellpadding="0" cellspacing="0" style="width: 100%" border="1">\n	<tr>\n		<td style="width: 128px">{tipo_problema}</td>\n		<td style="width: 87px">{ubicacion}</td>\n		<td style="width: 185px">{descripcion_problema} <br>status:\n			{relacion_status} {relacion_status:descripcion_status}<br>{/relacion_status}</td>\n		<td style="width: 150px"><img alt="" src="{foto_problema}" height="50" /></td>\n		<td style="width: 155px">{danhos_otros}</td>\n		<td>{otro_dep_afectado}</td>\n	</tr>\n</table>\n\n\n{/exp:channel:entries}	\n\n<?php\n\nee()->load->library(''api'');\nee()->api->instantiate(''channel_entries'');\nee()->api->instantiate(''channel_fields'');\n\n$data = array(\n    ''title''         => ''noticias'',\n	''descripcion_status''         => "descripcion",\n    ''detalle_status''    => "Some data"\n);\n\nprint_r($data); \n\nee()->api_channel_fields->setup_entry_settings(2, $data);\n\nif (ee()->api_channel_entries->submit_new_entry(2, $data) === FALSE)\n{\n    show_error(''An Error Occurred Creating the Entry'');\n}\n\nee()->api_channel_entries->errors;\n\n?>'),
(137, 5, 'exp_templates', 'template_data', 1398721414, 1, '{exp:channel:entries channel="solicitudes_ch" sort="DESC" limit="10" }\n\n<table cellpadding="0" cellspacing="0" style="width: 100%" border="1">\n	<tr>\n		<td style="width: 128px">{tipo_problema}</td>\n		<td style="width: 87px">{ubicacion}</td>\n		<td style="width: 185px">{descripcion_problema} <br>status:\n			{relacion_status} {relacion_status:descripcion_status}<br>{/relacion_status}</td>\n		<td style="width: 150px"><img alt="" src="{foto_problema}" height="50" /></td>\n		<td style="width: 155px">{danhos_otros}</td>\n		<td>{otro_dep_afectado}</td>\n	</tr>\n</table>\n\n\n{/exp:channel:entries}	\n\n<?php\n\nee()->load->library(''api'');\nee()->api->instantiate(''channel_entries'');\nee()->api->instantiate(''channel_fields'');\n\n$data = array(\n    ''title''         => ''noticias'',\n	''field_id_7''         => ''descripcion'',\n    ''field_id_8''    => ''Some data''\n);\n\nprint_r($data); \n\nee()->api_channel_fields->setup_entry_settings(2, $data);\n\nif (ee()->api_channel_entries->submit_new_entry(2, $data) === FALSE)\n{\n    show_error(''An Error Occurred Creating the Entry'');\n}\n\n\n?>'),
(138, 5, 'exp_templates', 'template_data', 1398721461, 1, '{exp:channel:entries channel="solicitudes_ch" sort="DESC" limit="10" }\n\n<table cellpadding="0" cellspacing="0" style="width: 100%" border="1">\n	<tr>\n		<td style="width: 128px">{tipo_problema}</td>\n		<td style="width: 87px">{ubicacion}</td>\n		<td style="width: 185px">{descripcion_problema} <br>status:\n			{relacion_status} {relacion_status:descripcion_status}<br>{/relacion_status}</td>\n		<td style="width: 150px"><img alt="" src="{foto_problema}" height="50" /></td>\n		<td style="width: 155px">{danhos_otros}</td>\n		<td>{otro_dep_afectado}</td>\n	</tr>\n</table>\n\n\n{/exp:channel:entries}	\n\n<?php\n\nee()->load->library(''api'');\nee()->api->instantiate(''channel_entries'');\nee()->api->instantiate(''channel_fields'');\n\n$data = array(\n    ''title''         => ''noticias'',\n    ''field_id_7''    => ''descripcion'',\n    ''field_id_8''    => ''Some data''\n);\n\nprint_r($data); \n\nee()->api_channel_fields->setup_entry_settings(2, $data);\n\nif (ee()->api_channel_entries->submit_new_entry(2, $data) === FALSE)\n{\n    show_error(''An Error Occurred Creating the Entry'');\n}\n\n\n?>'),
(145, 18, 'exp_templates', 'template_data', 1398807841, 1, '{embed="calendar_inc/index" page_title="Month View"}\n  <!--[if gte IE 7]>\n  <style type="text/css">\n    #fc_calendar .event { width: 80px; }\n  </style>\n  <![endif]-->\n</head>\n<body id="home">\n{embed="calendar_inc/header"}\n\n		<div id="maincolumn">\n		\n			<h2>Calendar</h2>\n			\n			<h3>Month View</h3>\n			\n			<p></p>\n\n			<div id="leftcolumn">\n\n				<div id="fc_legend"><span class="legend">LEGEND:</span>\n					<div class="event multi_day first_day"><a href="#">Multi-Day Event</a></div>\n					<div class="event all_day first_day last_day">All Day Event</a></div>\n					<div class="event">1pm <a href="#">Regular Event</a></div>\n				</div>\n				<hr />\n				{if segment_3 == "by_calendar"}\n					{exp:calendar:calendars calendar_name="{segment_4}" dynamic="off"}\n					<div class="calendar">\n						<h3>Events for <span>{calendar_title}</span> Calendar</h3>\n					</div>\n					{/exp:calendar:calendars}\n				<hr />\n				{/if}\n\ncalendario messsssssss\n\n<div id="fc_calendar">\n   {exp:calendar:cal\n      {if segment_3 == "by_calendar"}\n         {if segment_5 == ''''}calendar_name="{segment_4}" date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_5 != ''''}calendar_name="{segment_4}" date_range_start="{segment_5}-{segment_6}-01" date_range_end="{segment_5}-{segment_6}-last"{/if}\n      {/if}\n      {if segment_3 != "by_calendar"}\n         {if segment_3 == ''''}date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_3 != ""}date_range_start="{segment_3}-{segment_4}-01" date_range_end="{segment_3}-{segment_4}-last"{/if}\n      {/if}\n   }\n      {display_each_month}\n      <table id="fc_outer">\n         <thead>\n            <tr id="month_year">\n               <th colspan="2" class="left">&laquo; <a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{prev_month format="%Y/%m"}/">{prev_month format="%F"}</a></th>\n               <th colspan="3" class="center">{month format="%F %Y"} ({month_event_total} events)</th>\n               <th colspan="2" class="right"><a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{next_month format="%Y/%m"}/">{next_month format="%F"}</a> &raquo;</th>\n            </tr>\n         </thead>\n         <tbody>\n            <tr>\n               <td colspan="7">\n                  <div class="wrap">\n                  <table id="fc_inner">\n                     <thead>\n                        <tr id="days_of_week">\n                           {display_each_day_of_week}\n                           <th class="day_of_week {day_of_week}">{day_of_week}</th>\n                           {/display_each_day_of_week}\n                        </tr>\n                     </thead>\n                     <tbody>\n                        {display_each_week}\n                           <tr>\n                              {display_each_day}\n                              {if day_in_current_month}\n                                 <td class="day_cell"><div class="date"><a class="num" href="{path=''calendar_main/day''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{day format="%Y/%m/%d"}/">{day format="%j"}</a></div>\n                              {if:else}\n                                 <td class="day_cell out_of_range"><div class="date"><span class="num">{day format="%j"}</span></div>\n                              {/if}\n                              {display_each_hour}\n                                 {events}\n                                    <div \n                                      class="\n                                         event {if event_all_day}all_day{/if} \n                                         {if event_multi_day}multi_day{/if} \n                                         {if event_first_day}first_day{/if} \n                                         {if event_last_day}last_day{/if} \n                                         {if all_day_event_index_difference > 0}index_difference_{all_day_event_index_difference}{/if}\n                                      ">\n                                   {if event_multi_day} \n                                      {if event_all_day == FALSE}\n                                         {if event_first_day}\n                                            {event_start_time}\n                                         {/if} \n                                         {if event_last_day}\n                                            {event_end_time}\n                                         {/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a>\n                                   {if:else}\n                                      {if event_all_day == ''''}\n                                         {event_start_date format="%g"}{if event_start_minute > 0}:{event_start_minute}{/if}{if event_end_time != event_start_time && event_end_time != ''00:00''}&ndash;{event_end_date format="%g"}{if event_end_minute > 0}:{event_end_minute}{/if}{event_end_date format="%a"}{if:else}{event_start_date format="%a"}{/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{if edited_occurrence}{event_parent_id}{if:else}{event_id}{/if}/" title="{event_title}">{event_title}</a>\n                                   {/if}\n                                    </div>\n                                 {/events}\n                              {/display_each_hour}\n                           </td>\n                           {/display_each_day}\n                        </tr>\n                        {/display_each_week}\n                     </tbody>\n                  </table>\n               </div>\n            </td>\n         </tbody>\n      </table>\n   {/display_each_month}\n   {/exp:calendar:cal}\n</div> \n\n			</div>\n\n			<div id="rightcolumn">\n\n{embed="calendar_inc/side_column"}\n\n				<div id="aboutcolumn">\n		\n					<h3>About This Page</h3>\n			\n					<p>The "Month" page is meant to show a typical Calendar month view of all events that fall within the selected month. Additionally, this page is set to allow filtering down to a specific Calendar (if you''ve come to this page from the Calendars page).</p>\n\n					<p>It makes use of the following function:</p>\n\n					<ul>\n						<li><a href="http://www.solspace.com/docs/detail/calendar_month/">Calendar:Cal in Month mode</a> to display a month view of events.</li>\n						<li><a href="http://www.solspace.com/docs/detail/calendar_mini/">Calendar:Cal in Mini mode</a> to display a Mini Calendar that links to days that have events.</li>\n						<li><a href="http://www.solspace.com/docs/detail/calendar_calendars/">Calendar:Calendars</a> to display a list of all available Calendars.</li>\n					</ul>\n		\n				</div>\n\n			</div>\n	\n		</div>\n		\n{embed="calendar_inc/footer"}'),
(154, 20, 'exp_templates', 'template_data', 1398810639, 1, '<div id="fc_calendar">\n   {exp:calendar:cal\n      {if segment_3 == "by_calendar"}\n         {if segment_5 == ''''}calendar_name="{segment_4}" date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_5 != ''''}calendar_name="{segment_4}" date_range_start="{segment_5}-{segment_6}-01" date_range_end="{segment_5}-{segment_6}-last"{/if}\n      {/if}\n      {if segment_3 != "by_calendar"}\n         {if segment_3 == ''''}date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_3 != ""}date_range_start="{segment_3}-{segment_4}-01" date_range_end="{segment_3}-{segment_4}-last"{/if}\n      {/if}\n   }\n      {display_each_month}\n      <table id="fc_outer">\n         <thead>\n            <tr id="month_year">\n               <th colspan="2" class="left">&laquo; <a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{prev_month format="%Y/%m"}/">{prev_month format="%F"}</a></th>\n               <th colspan="3" class="center">{month format="%F %Y"} ({month_event_total} events)</th>\n               <th colspan="2" class="right"><a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{next_month format="%Y/%m"}/">{next_month format="%F"}</a> &raquo;</th>\n            </tr>\n         </thead>\n         <tbody>\n            <tr>\n               <td colspan="7">\n                  <div class="wrap">\n                  <table id="fc_inner">\n                     <thead>\n                        <tr id="days_of_week">\n                           {display_each_day_of_week}\n                           <th class="day_of_week {day_of_week}">{day_of_week}</th>\n                           {/display_each_day_of_week}\n                        </tr>\n                     </thead>\n                     <tbody>\n                        {display_each_week}\n                           <tr>\n                              {display_each_day}\n                              {if day_in_current_month}\n                                 <td class="day_cell"><div class="date"><a class="num" href="{path=''calendar_main/day''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{day format="%Y/%m/%d"}/">{day format="%j"}</a></div>\n                              {if:else}\n                                 <td class="day_cell out_of_range"><div class="date"><span class="num">{day format="%j"}</span></div>\n                              {/if}\n                              {display_each_hour}\n                                 {events}\n                                    <div \n                                      class="\n                                         event {if event_all_day}all_day{/if} \n                                         {if event_multi_day}multi_day{/if} \n                                         {if event_first_day}first_day{/if} \n                                         {if event_last_day}last_day{/if} \n                                         {if all_day_event_index_difference > 0}index_difference_{all_day_event_index_difference}{/if}\n                                      ">\n                                   {if event_multi_day} \n                                      {if event_all_day == FALSE}\n                                         {if event_first_day}\n                                            {event_start_time}\n                                         {/if} \n                                         {if event_last_day}\n                                            {event_end_time}\n                                         {/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a>\n                                   {if:else}\n                                      {if event_all_day == ''''}\n                                         {event_start_date format="%g"}{if event_start_minute > 0}:{event_start_minute}{/if}{if event_end_time != event_start_time && event_end_time != ''00:00''}&ndash;{event_end_date format="%g"}{if event_end_minute > 0}:{event_end_minute}{/if}{event_end_date format="%a"}{if:else}{event_start_date format="%a"}{/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{if edited_occurrence}{event_parent_id}{if:else}{event_id}{/if}/" title="{event_title}">{event_title}</a>\n                                   {/if}\n                                    </div>\n                                 {/events}\n                              {/display_each_hour}\n                           </td>\n                           {/display_each_day}\n                        </tr>\n                        {/display_each_week}\n                     </tbody>\n                  </table>\n               </div>\n            </td>\n         </tbody>\n      </table>\n   {/display_each_month}\n   {/exp:calendar:cal}\n</div> \n\n\n{exp:calendar:cal\n        date_range_start="today"\n        show_months="6"\n        pad_short_weeks="n"\n}\n    <li>\n        <a href="{path=''calender/event''}/{event_id}/">\n            {event_title}\n        </a>\n        ({event_start_date format="%F %j, %Y"})\n    </li>\n \n    {if no_results}\n    <li>No Results</li>\n    {/if}\n{/exp:calendar:cal}\n'),
(155, 20, 'exp_templates', 'template_data', 1398810675, 1, '<div id="fc_calendar">\n   {exp:calendar:cal\n      {if segment_3 == "by_calendar"}\n         {if segment_5 == ''''}calendar_name="{segment_4}" date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_5 != ''''}calendar_name="{segment_4}" date_range_start="{segment_5}-{segment_6}-01" date_range_end="{segment_5}-{segment_6}-last"{/if}\n      {/if}\n      {if segment_3 != "by_calendar"}\n         {if segment_3 == ''''}date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_3 != ""}date_range_start="{segment_3}-{segment_4}-01" date_range_end="{segment_3}-{segment_4}-last"{/if}\n      {/if}\n   }\n      {display_each_month}\n      <table id="fc_outer">\n         <thead>\n            <tr id="month_year">\n               <th colspan="2" class="left">&laquo; <a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{prev_month format="%Y/%m"}/">{prev_month format="%F"}</a></th>\n               <th colspan="3" class="center">{month format="%F %Y"} ({month_event_total} events)</th>\n               <th colspan="2" class="right"><a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{next_month format="%Y/%m"}/">{next_month format="%F"}</a> &raquo;</th>\n            </tr>\n         </thead>\n         <tbody>\n            <tr>\n               <td colspan="7">\n                  <div class="wrap">\n                  <table id="fc_inner">\n                     <thead>\n                        <tr id="days_of_week">\n                           {display_each_day_of_week}\n                           <th class="day_of_week {day_of_week}">{day_of_week}</th>\n                           {/display_each_day_of_week}\n                        </tr>\n                     </thead>\n                     <tbody>\n                        {display_each_week}\n                           <tr>\n                              {display_each_day}\n                              {if day_in_current_month}\n                                 <td class="day_cell"><div class="date"><a class="num" href="{path=''calendar_main/day''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{day format="%Y/%m/%d"}/">{day format="%j"}</a></div>\n                              {if:else}\n                                 <td class="day_cell out_of_range"><div class="date"><span class="num">{day format="%j"}</span></div>\n                              {/if}\n                              {display_each_hour}\n                                 {events}\n                                    <div \n                                      class="\n                                         event {if event_all_day}all_day{/if} \n                                         {if event_multi_day}multi_day{/if} \n                                         {if event_first_day}first_day{/if} \n                                         {if event_last_day}last_day{/if} \n                                         {if all_day_event_index_difference > 0}index_difference_{all_day_event_index_difference}{/if}\n                                      ">\n                                   {if event_multi_day} \n                                      {if event_all_day == FALSE}\n                                         {if event_first_day}\n                                            {event_start_time}\n                                         {/if} \n                                         {if event_last_day}\n                                            {event_end_time}\n                                         {/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a>\n                                   {if:else}\n                                      {if event_all_day == ''''}\n                                         {event_start_date format="%g"}{if event_start_minute > 0}:{event_start_minute}{/if}{if event_end_time != event_start_time && event_end_time != ''00:00''}&ndash;{event_end_date format="%g"}{if event_end_minute > 0}:{event_end_minute}{/if}{event_end_date format="%a"}{if:else}{event_start_date format="%a"}{/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{if edited_occurrence}{event_parent_id}{if:else}{event_id}{/if}/" title="{event_title}">{event_title}</a>\n                                   {/if}\n                                    </div>\n                                 {/events}\n                              {/display_each_hour}\n                           </td>\n                           {/display_each_day}\n                        </tr>\n                        {/display_each_week}\n                     </tbody>\n                  </table>\n               </div>\n            </td>\n         </tbody>\n      </table>\n   {/display_each_month}\n   {/exp:calendar:cal}\n</div> \n\n\n{exp:calendar:cal\n        date_range_start="today"\n        show_months="6"\n        pad_short_weeks="n"\n}\n    <li>\n        <a href="{path=''calender/event''}/{event_id}/">\n            {event_title}\n        </a>\n        ({event_start_date format="%F %j, %Y"})\n    </li>\n\n{/exp:calendar:cal}\n'),
(156, 20, 'exp_templates', 'template_data', 1398810822, 1, '<div id="fc_calendar">\n   {exp:calendar:cal\n      {if segment_3 == "by_calendar"}\n         {if segment_5 == ''''}calendar_name="{segment_4}" date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_5 != ''''}calendar_name="{segment_4}" date_range_start="{segment_5}-{segment_6}-01" date_range_end="{segment_5}-{segment_6}-last"{/if}\n      {/if}\n      {if segment_3 != "by_calendar"}\n         {if segment_3 == ''''}date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_3 != ""}date_range_start="{segment_3}-{segment_4}-01" date_range_end="{segment_3}-{segment_4}-last"{/if}\n      {/if}\n   }\n      {display_each_month}\n      <table id="fc_outer">\n         <thead>\n            <tr id="month_year">\n               <th colspan="2" class="left">&laquo; <a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{prev_month format="%Y/%m"}/">{prev_month format="%F"}</a></th>\n               <th colspan="3" class="center">{month format="%F %Y"} ({month_event_total} events)</th>\n               <th colspan="2" class="right"><a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{next_month format="%Y/%m"}/">{next_month format="%F"}</a> &raquo;</th>\n            </tr>\n         </thead>\n         <tbody>\n            <tr>\n               <td colspan="7">\n                  <div class="wrap">\n                  <table id="fc_inner">\n                     <thead>\n                        <tr id="days_of_week">\n                           {display_each_day_of_week}\n                           <th class="day_of_week {day_of_week}">{day_of_week}</th>\n                           {/display_each_day_of_week}\n                        </tr>\n                     </thead>\n                     <tbody>\n                        {display_each_week}\n                           <tr>\n                              {display_each_day}\n                              {if day_in_current_month}\n                                 <td class="day_cell"><div class="date"><a class="num" href="{path=''calendar_main/day''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{day format="%Y/%m/%d"}/">{day format="%j"}</a></div>\n                              {if:else}\n                                 <td class="day_cell out_of_range"><div class="date"><span class="num">{day format="%j"}</span></div>\n                              {/if}\n                              {display_each_hour}\n                                 {events}\n                                    <div \n                                      class="\n                                         event {if event_all_day}all_day{/if} \n                                         {if event_multi_day}multi_day{/if} \n                                         {if event_first_day}first_day{/if} \n                                         {if event_last_day}last_day{/if} \n                                         {if all_day_event_index_difference > 0}index_difference_{all_day_event_index_difference}{/if}\n                                      ">\n                                   {if event_multi_day} \n                                      {if event_all_day == FALSE}\n                                         {if event_first_day}\n                                            {event_start_time}\n                                         {/if} \n                                         {if event_last_day}\n                                            {event_end_time}\n                                         {/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a>\n                                   {if:else}\n                                      {if event_all_day == ''''}\n                                         {event_start_date format="%g"}{if event_start_minute > 0}:{event_start_minute}{/if}{if event_end_time != event_start_time && event_end_time != ''00:00''}&ndash;{event_end_date format="%g"}{if event_end_minute > 0}:{event_end_minute}{/if}{event_end_date format="%a"}{if:else}{event_start_date format="%a"}{/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{if edited_occurrence}{event_parent_id}{if:else}{event_id}{/if}/" title="{event_title}">{event_title}</a>\n                                   {/if}\n                                    </div>\n                                 {/events}\n                              {/display_each_hour}\n                           </td>\n                           {/display_each_day}\n                        </tr>\n                        {/display_each_week}\n                     </tbody>\n                  </table>\n               </div>\n            </td>\n         </tbody>\n      </table>\n   {/display_each_month}\n   {/exp:calendar:cal}\n</div> \n\n\n<div id="mc_wrap">\n            <div id="mc_calendar">\n                {exp:calendar:mini}\n                {/exp:calendar:mini}\n            </div>\n        </div>\n'),
(157, 20, 'exp_templates', 'template_data', 1398811111, 1, '<div id="fc_calendar">\n   {exp:calendar:cal\n      {if segment_3 == "by_calendar"}\n         {if segment_5 == ''''}calendar_name="{segment_4}" date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_5 != ''''}calendar_name="{segment_4}" date_range_start="{segment_5}-{segment_6}-01" date_range_end="{segment_5}-{segment_6}-last"{/if}\n      {/if}\n      {if segment_3 != "by_calendar"}\n         {if segment_3 == ''''}date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_3 != ""}date_range_start="{segment_3}-{segment_4}-01" date_range_end="{segment_3}-{segment_4}-last"{/if}\n      {/if}\n   }\n      {display_each_month}\n      <table id="fc_outer">\n         <thead>\n            <tr id="month_year">\n               <th colspan="2" class="left">&laquo; <a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{prev_month format="%Y/%m"}/">{prev_month format="%F"}</a></th>\n               <th colspan="3" class="center">{month format="%F %Y"} ({month_event_total} events)</th>\n               <th colspan="2" class="right"><a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{next_month format="%Y/%m"}/">{next_month format="%F"}</a> &raquo;</th>\n            </tr>\n         </thead>\n         <tbody>\n            <tr>\n               <td colspan="7">\n                  <div class="wrap">\n                  <table id="fc_inner">\n                     <thead>\n                        <tr id="days_of_week">\n                           {display_each_day_of_week}\n                           <th class="day_of_week {day_of_week}">{day_of_week}</th>\n                           {/display_each_day_of_week}\n                        </tr>\n                     </thead>\n                     <tbody>\n                        {display_each_week}\n                           <tr>\n                              {display_each_day}\n                              {if day_in_current_month}\n                                 <td class="day_cell"><div class="date"><a class="num" href="{path=''calendar_main/day''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{day format="%Y/%m/%d"}/">{day format="%j"}</a></div>\n                              {if:else}\n                                 <td class="day_cell out_of_range"><div class="date"><span class="num">{day format="%j"}</span></div>\n                              {/if}\n                              {display_each_hour}\n                                 {events}\n                                    <div \n                                      class="\n                                         event {if event_all_day}all_day{/if} \n                                         {if event_multi_day}multi_day{/if} \n                                         {if event_first_day}first_day{/if} \n                                         {if event_last_day}last_day{/if} \n                                         {if all_day_event_index_difference > 0}index_difference_{all_day_event_index_difference}{/if}\n                                      ">\n                                   {if event_multi_day} \n                                      {if event_all_day == FALSE}\n                                         {if event_first_day}\n                                            {event_start_time}\n                                         {/if} \n                                         {if event_last_day}\n                                            {event_end_time}\n                                         {/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a>\n                                   {if:else}\n                                      {if event_all_day == ''''}\n                                         {event_start_date format="%g"}{if event_start_minute > 0}:{event_start_minute}{/if}{if event_end_time != event_start_time && event_end_time != ''00:00''}&ndash;{event_end_date format="%g"}{if event_end_minute > 0}:{event_end_minute}{/if}{event_end_date format="%a"}{if:else}{event_start_date format="%a"}{/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{if edited_occurrence}{event_parent_id}{if:else}{event_id}{/if}/" title="{event_title}">{event_title}</a>\n                                   {/if}\n                                    </div>\n                                 {/events}\n                              {/display_each_hour}\n                           </td>\n                           {/display_each_day}\n                        </tr>\n                        {/display_each_week}\n                     </tbody>\n                  </table>\n               </div>\n            </td>\n         </tbody>\n      </table>\n   {/display_each_month}\n   {/exp:calendar:cal}\n</div> \n\n\n');
INSERT INTO `exp_revision_tracker` (`tracker_id`, `item_id`, `item_table`, `item_field`, `item_date`, `item_author_id`, `item_data`) VALUES
(171, 21, 'exp_templates', 'template_data', 1398814601, 1, '<html>\n    <head>\n        <title>Month Calendar</title>\n        <link rel="stylesheet" type="text/css" href="/themes/third_party/calendar/templates/month.css" />\n        <!--[if gte IE 7]>\n        <style type="text/css">\n            #fc_calendar .event { width: 137px; }\n        </style>\n        <![endif]-->\n    </head>\n    <body>\n        <div id="fc_calendar">\n            {exp:calendar:cal\n            {if segment_3 == ''''}\n                date_range_start="year-month-01"\n                date_range_end="year-month-last"\n            {/if}\n            {if segment_3 != ""}\n                date_range_start="{segment_3}-{segment_4}-01"\n                date_range_end="{segment_3}-{segment_4}-last"\n            {/if}\n            }\n            {display_each_month}\n            <table id="fc_outer">\n                <thead>\n                    <tr id="month_year">\n                        <th colspan="2">&laquo;\n                            <a href="{path=''calendar/month''}/{prev_month format="%Y/%m"}/">\n                                {prev_month format="%F"}\n                            </a>\n                        </th>\n                        <th colspan="3">{date format="%F %Y"}</th>\n                        <th colspan="2">\n                            <a href="{path=''calendar/month''}/{next_month format="%Y/%m"}/">\n                                {next_month format="%F"}\n                            </a>\n                            &raquo;\n                        </th>\n                    </tr>\n                </thead>\n                <tbody>\n                    <tr>\n                        <td colspan="7">\n                            <div class="wrap">\n                                <table id="fc_inner">\n                                    <thead>\n                                        <tr id="days_of_week">\n                                            {display_each_day_of_week}\n                                            <th class="day_of_week {day_of_week}">\n                                                {day_of_week}\n                                            </th>\n                                            {/display_each_day_of_week}\n                                        </tr>\n                                    </thead>\n                                    <tbody>\n                                        {display_each_week}\n                                         <tr>\n                                            {display_each_day}\n                                            {if day_in_current_month}\n                                                <td class="day_cell">\n                                                    <div class="date">\n                                                        <a class="num"\n                                                            href="{path=''calendar/day''}/{date format="%Y/%m/%d"}/">\n                                                            {date format="%j"}\n                                                        </a>\n                                                    </div>\n                                            {if:else}\n                                                <td class="day_cell out_of_range">\n                                                    <div class="date">\n                                                    <span class="num">\n                                                        {date format="%j"}\n                                                    </span>\n                                                </div>\n                                            {/if}\n                                            {display_each_hour}\n                                                {events}\n                                                    <div\n                                                      class="\n                                                        event {if event_all_day}all_day{/if}\n                                                        {if event_multi_day}multi_day{/if}\n                                                        {if event_first_day}first_day{/if}\n                                                        {if event_last_day}last_day{/if}\n                                                        {if all_day_event_index_difference > 0}\n                                                            index_difference_{all_day_event_index_difference}\n                                                        {/if}\n                                                      ">\n                                                    {if event_multi_day}\n                                                        {if event_all_day == FALSE}\n                                                            {if event_first_day}\n                                                                {event_start_time}\n                                                            {/if}\n                                                            {if event_last_day}\n                                                                {event_end_time}\n                                                            {/if}\n                                                        {/if}\n                                                        <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n                                                    {if:else}\n                                                        {if event_all_day == ''''}\n                                                            {event_start_date format="%g"}\n                                                            {if event_start_minute > 0}\n                                                                :{event_start_minute}\n                                                            {/if}\n                                                            {if event_end_time != event_start_time && event_end_time != ''00:00''}\n                                                                &ndash;\n                                                                {event_end_date format="%g"}\n                                                                {if event_end_minute > 0}\n                                                                    :{event_end_minute}\n                                                                {/if}\n                                                                {event_end_date format="%a"}\n                                                            {if:else}\n                                                                {event_start_date format="%a"}\n                                                            {/if}\n                                                        {/if}\n                                                         <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n                                                    {/if}\n                                                    </div>\n                                                    {/events}\n                                                {/display_each_hour}\n                                            </td>\n                                            {/display_each_day}\n                                        </tr>\n                                        {/display_each_week}\n                                    </tbody>\n                                </table>\n                            </div>\n                        </td>\n                    </tr>\n                </tbody>\n            </table>\n            {/display_each_month}\n            {/exp:calendar:cal}\n        </div>\n    </body>\n</html>'),
(173, 21, 'exp_templates', 'template_data', 1398814875, 1, '<html>\n    <head>\n        <title>Month Calendar</title>\n        <link rel="stylesheet" type="text/css" href="/themes/third_party/calendar/templates/month.css" />\n        <!--[if gte IE 7]>\n        <style type="text/css">\n            #fc_calendar .event { width: 137px; }\n        </style>\n        <![endif]-->\n    </head>\n    <body>\n        <div id="fc_calendar">\n            {exp:calendar:cal\n            {if segment_3 == ''''}\n                date_range_start="year-month-01"\n                date_range_end="year-month-last"\n            {/if}\n            {if segment_3 != ""}\n                date_range_start="{segment_3}-{segment_4}-01"\n                date_range_end="{segment_3}-{segment_4}-last"\n            {/if}\n            }\n            {display_each_month}\n            <table id="fc_outer">\n                <thead>\n                    <tr id="month_year">\n                        <th colspan="2">&laquo;\n                            <a href="{path=''calendar/month''}/{prev_month format="%Y/%m"}/">\n                                {prev_month format="%F"}\n                            </a>\n                        </th>\n                        <th colspan="3">{date format="%F %Y"}</th>\n                        <th colspan="2">\n                            <a href="{path=''calendar/month''}/{next_month format="%Y/%m"}/">\n                                {next_month format="%F"}\n                            </a>\n                            &raquo;\n                        </th>\n                    </tr>\n                </thead>\n                <tbody>\n                    <tr>\n                        <td colspan="7">\n                            <div class="wrap">\n                                <table id="fc_inner">\n                                    <thead>\n                                        <tr id="days_of_week">\n                                            {display_each_day_of_week}\n                                            <th class="day_of_week {day_of_week}">\n                                                {day_of_week}\n                                            </th>\n                                            {/display_each_day_of_week}\n                                        </tr>\n                                    </thead>\n                                    <tbody>\n                                        {display_each_week}\n                                         <tr>\n                                            {display_each_day}\n                                            {if day_in_current_month}\n                                                <td class="day_cell">\n                                                    <div class="date">\n                                                        <a class="num"\n                                                            href="{path=''calendar/day''}/{date format="%Y/%m/%d"}/">\n                                                            {date format="%j"}\n                                                        </a>\n                                                    </div>\n                                            {if:else}\n                                                <td class="day_cell out_of_range">\n                                                    <div class="date">\n                                                    <span class="num">\n                                                        {date format="%j"}\n                                                    </span>\n                                                </div>\n                                            {/if}\n                                            {display_each_hour}\n                                                {events}\n                                                    <div\n                                                      class="\n                                                        event {if event_all_day}all_day{/if}\n                                                        {if event_multi_day}multi_day{/if}\n                                                        {if event_first_day}first_day{/if}\n                                                        {if event_last_day}last_day{/if}\n                                                        {if all_day_event_index_difference > 0}\n                                                            index_difference_{all_day_event_index_difference}\n                                                        {/if}\n                                                      ">\n                                                    {if event_multi_day}\n                                                        {if event_all_day == FALSE}\n                                                            {if event_first_day}\n                                                                {event_start_time}\n                                                            {/if}\n                                                            {if event_last_day}\n                                                                {event_end_time}\n                                                            {/if}\n                                                        {/if}\n                                                        <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n                                                    {if:else}\n                                                        {if event_all_day == ''''}\n                                                            {event_start_date format="%g"}\n                                                            {if event_start_minute > 0}\n                                                                :{event_start_minute}\n                                                            {/if}\n                                                            {if event_end_time != event_start_time && event_end_time != ''00:00''}\n                                                                &ndash;\n                                                                {event_end_date format="%g"}\n                                                                {if event_end_minute > 0}\n                                                                    :{event_end_minute}\n                                                                {/if}\n                                                                {event_end_date format="%a"}\n                                                            {if:else}\n                                                                {event_start_date format="%a"}\n                                                            {/if}\n                                                        {/if}\n                                                         <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n                                                    {/if}\n                                                    </div>\n                                                    {/events}\n                                                {/display_each_hour}\n                                            </td>\n                                            {/display_each_day}\n                                        </tr>\n                                        {/display_each_week}\n                                    </tbody>\n                                </table>\n                            </div>\n                        </td>\n                    </tr>\n                </tbody>\n            </table>\n            {/display_each_month}\n            {/exp:calendar:cal}\n        </div>\n    </body>\n</html>'),
(159, 20, 'exp_templates', 'template_data', 1398811856, 1, '<div id="fc_calendar">\n   {exp:calendar:cal date_range_start="2014-04-10 @ 08:00 am" date_range_end="2014-04-18 @ 10:00 pm"\n      {if segment_3 == "by_calendar"}\n         {if segment_5 == ''''}calendar_name="{segment_4}" date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_5 != ''''}calendar_name="{segment_4}" date_range_start="{segment_5}-{segment_6}-01" date_range_end="{segment_5}-{segment_6}-last"{/if}\n      {/if}\n      {if segment_3 != "by_calendar"}\n         {if segment_3 == ''''}date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_3 != ""}date_range_start="{segment_3}-{segment_4}-01" date_range_end="{segment_3}-{segment_4}-last"{/if}\n      {/if}\n   }\n      {display_each_month}\n      <table id="fc_outer">\n         <thead>\n            <tr id="month_year">\n               <th colspan="2" class="left">&laquo; <a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{prev_month format="%Y/%m"}/">{prev_month format="%F"}</a></th>\n               <th colspan="3" class="center">{month format="%F %Y"} ({month_event_total} events)</th>\n               <th colspan="2" class="right"><a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{next_month format="%Y/%m"}/">{next_month format="%F"}</a> &raquo;</th>\n            </tr>\n         </thead>\n         <tbody>\n            <tr>\n               <td colspan="7">\n                  <div class="wrap">\n                  <table id="fc_inner">\n                     <thead>\n                        <tr id="days_of_week">\n                           {display_each_day_of_week}\n                           <th class="day_of_week {day_of_week}">{day_of_week}</th>\n                           {/display_each_day_of_week}\n                        </tr>\n                     </thead>\n                     <tbody>\n                        {display_each_week}\n                           <tr>\n                              {display_each_day}\n                              {if day_in_current_month}\n                                 <td class="day_cell"><div class="date"><a class="num" href="{path=''calendar_main/day''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{day format="%Y/%m/%d"}/">{day format="%j"}</a></div>\n                              {if:else}\n                                 <td class="day_cell out_of_range"><div class="date"><span class="num">{day format="%j"}</span></div>\n                              {/if}\n                              {display_each_hour}\n                                 {events}\n                                    <div \n                                      class="\n                                         event {if event_all_day}all_day{/if} \n                                         {if event_multi_day}multi_day{/if} \n                                         {if event_first_day}first_day{/if} \n                                         {if event_last_day}last_day{/if} \n                                         {if all_day_event_index_difference > 0}index_difference_{all_day_event_index_difference}{/if}\n                                      ">\n                                   {if event_multi_day} \n                                      {if event_all_day == FALSE}\n                                         {if event_first_day}\n                                            {event_start_time}\n                                         {/if} \n                                         {if event_last_day}\n                                            {event_end_time}\n                                         {/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a>\n                                   {if:else}\n                                      {if event_all_day == ''''}\n                                         {event_start_date format="%g"}{if event_start_minute > 0}:{event_start_minute}{/if}{if event_end_time != event_start_time && event_end_time != ''00:00''}&ndash;{event_end_date format="%g"}{if event_end_minute > 0}:{event_end_minute}{/if}{event_end_date format="%a"}{if:else}{event_start_date format="%a"}{/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{if edited_occurrence}{event_parent_id}{if:else}{event_id}{/if}/" title="{event_title}">{event_title}</a>\n                                   {/if}\n                                    </div>\n                                 {/events}\n                              {/display_each_hour}\n                           </td>\n                           {/display_each_day}\n                        </tr>\n                        {/display_each_week}\n                     </tbody>\n                  </table>\n               </div>\n            </td>\n         </tbody>\n      </table>\n   {/display_each_month}\n   {/exp:calendar:cal}\n</div> \n\n\n'),
(174, 22, 'exp_templates', 'template_data', 1398817547, 1, '<html>\n    <head>\n        <title>Add an Event to the Calendar</title>\n        <script type="text/javascript" \n            src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>\n        <script type="text/javascript"\n            src="/themes/third_party/calendar/js/jquery-ui.custom.min.js"></script>\n        {exp:calendar:datepicker_js}\n        {exp:calendar:datepicker_css}\n    </head>\n    <body>\n        <div id="calendar_saef">\n            {exp:channel:form channel="calendar_events" return="calendar/event/ENTRY_ID"}\n                <p>\n                    <label>Title:</label><br />\n                    <input type="text" name="title" />\n                </p>\n                {exp:calendar:date_widget}\n                <p>\n                    <label>Summary:</label><br />\n                    <textarea name="event_summary"></textarea>\n                </p>\n                <p>\n                    <label>Location:</label><br />\n                    <input type="text" name="event_location" />\n                </p>\n                <p>\n                    <input type="submit" name="submit" value="Submit" />\n                </p>\n            {/exp:channel:form}\n        </div>\n    </body>\n</html>'),
(169, 21, 'exp_templates', 'template_data', 1398814075, 1, '<html>\n    <head>\n        <title>Month Calendar</title>\n        <link rel="stylesheet" type="text/css" href="/themes/third_party/calendar/templates/month.css" />\n        <!--[if gte IE 7]>\n        <style type="text/css">\n            #fc_calendar .event { width: 137px; }\n        </style>\n        <![endif]-->\n    </head>\n    <body>\n \n    <div id="fc_calendar">\n    {exp:calendar:month\n        {if segment_3}\n            date_range_start="{segment_3}-{segment_4}-01"\n        {/if}\n    }\n        <div\n            class="\n                event\n                {if event_all_day}all_day{/if}\n                {if event_multi_day}multi_day{/if}\n                {if event_first_day}first_day{/if}\n                {if event_last_day}last_day{/if}\n                {if all_day_event_index_difference > 0}\n                    index_difference_{all_day_event_index_difference}\n                {/if}\n            ">\n         {if event_multi_day}\n            <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n            {if event_all_day == FALSE}\n                {if event_first_day}\n                    ({event_start_time}\n                {/if}\n                {if event_last_day}\n                    {event_end_time})\n                {/if}\n            {/if}\n        {if:else}\n            <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n            {if event_all_day == ''''}\n                (\n                    {event_start_date format="%g"}\n                    {if event_start_minute > 0}\n                        :{event_start_minute}\n                    {/if}\n                    {if event_end_time != event_start_time && event_end_time != ''00:00''}\n                        &ndash;\n                        {event_end_date format="%g"}\n                        {if event_end_minute > 0}\n                            :{event_end_minute}\n                        {/if}\n                        {event_end_date format="%a"}\n                    {if:else}\n                        {event_start_date format="%a"}\n                    {/if}\n                )\n            {/if}\n        {/if}\n        </div>\n    {/exp:calendar:month}\n    </div>\n \n    </body>\n</html>'),
(170, 21, 'exp_templates', 'template_data', 1398814460, 1, '<html>\n    <head>\n        <title>Month Calendar</title>\n        <link rel="stylesheet" type="text/css" href="/themes/third_party/calendar/templates/month.css" />\n        <!--[if gte IE 7]>\n        <style type="text/css">\n            #fc_calendar .event { width: 137px; }\n        </style>\n        <![endif]-->\n    </head>\n    <body>\n \n    <div id="fc_calendar">\n    {exp:calendar:month\n        {if segment_3}\n            date_range_start="{segment_3}-{segment_4}-01"\n        {/if}\n    }\n        <div\n            class="\n                event\n                {if event_all_day}all_day{/if}\n                {if event_multi_day}multi_day{/if}\n                {if event_first_day}first_day{/if}\n                {if event_last_day}last_day{/if}\n                {if all_day_event_index_difference > 0}\n                    index_difference_{all_day_event_index_difference}\n                {/if}\n            ">\n         {if event_multi_day}\n            <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n            {if event_all_day == FALSE}\n                {if event_first_day}\n                    ({event_start_time}\n                {/if}\n                {if event_last_day}\n                    {event_end_time})\n                {/if}\n            {/if}\n        {if:else}\n            <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n            {if event_all_day == ''''}\n                (\n                    {event_start_date format="%g"}\n                    {if event_start_minute > 0}\n                        :{event_start_minute}\n                    {/if}\n                    {if event_end_time != event_start_time && event_end_time != ''00:00''}\n                        &ndash;\n                        {event_end_date format="%g"}\n                        {if event_end_minute > 0}\n                            :{event_end_minute}\n                        {/if}\n                        {event_end_date format="%a"}\n                    {if:else}\n                        {event_start_date format="%a"}\n                    {/if}\n                )\n            {/if}\n        {/if}\n        </div>\n    {/exp:calendar:month}\n    </div>\n \n    </body>\n</html>'),
(172, 21, 'exp_templates', 'template_data', 1398814684, 1, '<html>\n    <head>\n        <title>Month Calendar</title>\n        <link rel="stylesheet" type="text/css" href="/themes/third_party/calendar/templates/month.css" />\n        <!--[if gte IE 7]>\n        <style type="text/css">\n            #fc_calendar .event { width: 137px; }\n        </style>\n        <![endif]-->\n    </head>\n    <body>\n        <div id="fc_calendar">\n            {exp:calendar:cal\n            {if segment_3 == ''''}\n                date_range_start="year-month-01"\n                date_range_end="year-month-last"\n            {/if}\n            {if segment_3 != ""}\n                date_range_start="{segment_3}-{segment_4}-01"\n                date_range_end="{segment_3}-{segment_4}-last"\n            {/if}\n            }\n            {display_each_month}\n            <table id="fc_outer">\n                <thead>\n                    <tr id="month_year">\n                        <th colspan="2">&laquo;\n                            <a href="{path=''calendar/month''}/{prev_month format="%Y/%m"}/">\n                                {prev_month format="%F"}\n                            </a>\n                        </th>\n                        <th colspan="3">{date format="%F %Y"}</th>\n                        <th colspan="2">\n                            <a href="{path=''calendar/month''}/{next_month format="%Y/%m"}/">\n                                {next_month format="%F"}\n                            </a>\n                            &raquo;\n                        </th>\n                    </tr>\n                </thead>\n                <tbody>\n                    <tr>\n                        <td colspan="7">\n                            <div class="wrap">\n                                <table id="fc_inner">\n                                    <thead>\n                                        <tr id="days_of_week">\n                                            {display_each_day_of_week}\n                                            <th class="day_of_week {day_of_week}">\n                                                {}\n                                            </th>\n                                            {/display_each_day_of_week}\n                                        </tr>\n                                    </thead>\n                                    <tbody>\n                                        {display_each_week}\n                                         <tr>\n                                            {display_each_day}\n                                            {if day_in_current_month}\n                                                <td class="day_cell">\n                                                    <div class="date">\n                                                        <a class="num"\n                                                            href="{path=''calendar/day''}/{date format="%Y/%m/%d"}/">\n                                                            {date format="%j"}\n                                                        </a>\n                                                    </div>\n                                            {if:else}\n                                                <td class="day_cell out_of_range">\n                                                    <div class="date">\n                                                    <span class="num">\n                                                        {date format="%j"}\n                                                    </span>\n                                                </div>\n                                            {/if}\n                                            {display_each_hour}\n                                                {events}\n                                                    <div\n                                                      class="\n                                                        event {if event_all_day}all_day{/if}\n                                                        {if event_multi_day}multi_day{/if}\n                                                        {if event_first_day}first_day{/if}\n                                                        {if event_last_day}last_day{/if}\n                                                        {if all_day_event_index_difference > 0}\n                                                            index_difference_{all_day_event_index_difference}\n                                                        {/if}\n                                                      ">\n                                                    {if event_multi_day}\n                                                        {if event_all_day == FALSE}\n                                                            {if event_first_day}\n                                                                {event_start_time}\n                                                            {/if}\n                                                            {if event_last_day}\n                                                                {event_end_time}\n                                                            {/if}\n                                                        {/if}\n                                                        <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n                                                    {if:else}\n                                                        {if event_all_day == ''''}\n                                                            {event_start_date format="%g"}\n                                                            {if event_start_minute > 0}\n                                                                :{event_start_minute}\n                                                            {/if}\n                                                            {if event_end_time != event_start_time && event_end_time != ''00:00''}\n                                                                &ndash;\n                                                                {event_end_date format="%g"}\n                                                                {if event_end_minute > 0}\n                                                                    :{event_end_minute}\n                                                                {/if}\n                                                                {event_end_date format="%a"}\n                                                            {if:else}\n                                                                {event_start_date format="%a"}\n                                                            {/if}\n                                                        {/if}\n                                                         <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n                                                    {/if}\n                                                    </div>\n                                                    {/events}\n                                                {/display_each_hour}\n                                            </td>\n                                            {/display_each_day}\n                                        </tr>\n                                        {/display_each_week}\n                                    </tbody>\n                                </table>\n                            </div>\n                        </td>\n                    </tr>\n                </tbody>\n            </table>\n            {/display_each_month}\n            {/exp:calendar:cal}\n        </div>\n    </body>\n</html>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_rte_tools`
--

CREATE TABLE IF NOT EXISTS `exp_rte_tools` (
  `tool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `class` varchar(75) DEFAULT NULL,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`tool_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `exp_rte_tools`
--

INSERT INTO `exp_rte_tools` (`tool_id`, `name`, `class`, `enabled`) VALUES
(1, 'Blockquote', 'Blockquote_rte', 'y'),
(2, 'Bold', 'Bold_rte', 'y'),
(3, 'Headings', 'Headings_rte', 'y'),
(4, 'Image', 'Image_rte', 'y'),
(5, 'Italic', 'Italic_rte', 'y'),
(6, 'Link', 'Link_rte', 'y'),
(7, 'Ordered List', 'Ordered_list_rte', 'y'),
(8, 'Underline', 'Underline_rte', 'y'),
(9, 'Unordered List', 'Unordered_list_rte', 'y'),
(10, 'View Source', 'View_source_rte', 'y'),
(11, 'Channel_images', 'Channel_images_rte', 'y');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_rte_toolsets`
--

CREATE TABLE IF NOT EXISTS `exp_rte_toolsets` (
  `toolset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `tools` text,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`toolset_id`),
  KEY `member_id` (`member_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `exp_rte_toolsets`
--

INSERT INTO `exp_rte_toolsets` (`toolset_id`, `member_id`, `name`, `tools`, `enabled`) VALUES
(1, 0, 'Default', '3|2|5|1|9|7|6|4|10', 'y');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_search`
--

CREATE TABLE IF NOT EXISTS `exp_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) NOT NULL DEFAULT '1',
  `search_date` int(10) NOT NULL,
  `keywords` varchar(60) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `total_results` int(6) NOT NULL,
  `per_page` tinyint(3) unsigned NOT NULL,
  `query` mediumtext,
  `custom_fields` mediumtext,
  `result_page` varchar(70) NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_search_log`
--

CREATE TABLE IF NOT EXISTS `exp_search_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `search_date` int(10) NOT NULL,
  `search_type` varchar(32) NOT NULL,
  `search_terms` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_security_hashes`
--

CREATE TABLE IF NOT EXISTS `exp_security_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL,
  PRIMARY KEY (`hash_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Volcado de datos para la tabla `exp_security_hashes`
--

INSERT INTO `exp_security_hashes` (`hash_id`, `date`, `session_id`, `hash`) VALUES
(51, 1398895059, '159aaf48d4235994808bfe5f9a78ccc44b0b23f0', '878f91c22cd45710ec7215d06a8cc0bed7f84bbe'),
(6, 1398441609, 'd1e5b53a76f4806d12887a53471da554c1708934', 'fb1f8e7468ec34ce2e865b22bfbfbdfc275b3a57'),
(50, 1398893822, '9b0012db79332ad06d2dd76ccd2d0f0a35bc0707', 'df2bcc8b9a78b9fb630a1d1ba984bc23a11c6872'),
(49, 1398878585, '6f0b357239cd2ed266313ee83f21f240bb749613', '07b4574c29f3b161b3fc34649710bd96566a422e'),
(48, 1398817321, '9c398213cbb1d9c333081a8892551830e27cbf67', 'a77055e8dcfd4ee02901f5539983bf550f837849'),
(47, 1398799161, '43abc61729611d2222b9a51ec218ed8b9c69baac', 'ae7c4b47ba993b16344cf6c7382dfe0c12c86595'),
(46, 1398790008, 'd3d4c6a788f1c43771e3b0004dca52bc13011049', '093250293740772e323d5043886ec504848fdf38'),
(45, 1398728724, '8572511d9b3b9d5128f4547113dfe1bbaca82a05', '3560245a6c7d7e7acc4ffce716ae2c7db92425bb'),
(44, 1398716183, '08eb3a6ba663c97fd38896ad16d6926f43b4e9af', '7be23f853d3d4b23bc34f0d92b7821f06dbd10b2'),
(43, 1398703161, '16c350dae216f98bc77aa3008675d20d0ed0deb3', 'c81185339dec5041dd2111b9ba7207c1378b4a5c'),
(42, 1398470100, '9acf2625ca1abfc22ba4da70040aa8567195dd56', 'c4bf5e3a667961db7b6416a9ff70e0a592c82a47'),
(40, 1398468782, 'a0a0ff5f4e8c5969dec22e3a2596bd7693c0fadd', 'c48fb3e97c5b21bc00bbacb6f44bafabe34f4d1e'),
(39, 1398468765, '62cd308d86797bd28f5ce398976bb47ad378a7e9', '92ceacb770a864162ec509fdb7565a5e4b37c7bb'),
(41, 1398470093, '0bc1e7acf3d7357e8253d7684df01f6aef231de9', '16255a656191fe1f7f2227b54ca4b651e12c735e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_sessions`
--

CREATE TABLE IF NOT EXISTS `exp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `admin_sess` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `fingerprint` varchar(40) NOT NULL,
  `sess_start` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `member_id` (`member_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_sessions`
--

INSERT INTO `exp_sessions` (`session_id`, `member_id`, `admin_sess`, `ip_address`, `user_agent`, `fingerprint`, `sess_start`, `last_activity`) VALUES
('159aaf48d4235994808bfe5f9a78ccc44b0b23f0', 1, 1, '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', 'c810ebff93dd51595ea9f358697828ee', 1398895057, 1398895241),
('9b0012db79332ad06d2dd76ccd2d0f0a35bc0707', 1, 1, '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', 'd2ddef73f40ec2718fe60f20de269a04', 1398893821, 1398894356),
('43abc61729611d2222b9a51ec218ed8b9c69baac', 1, 1, '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', 'c810ebff93dd51595ea9f358697828ee', 1398814875, 1398816182),
('9c398213cbb1d9c333081a8892551830e27cbf67', 1, 1, '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', 'c810ebff93dd51595ea9f358697828ee', 1398817320, 1398819158),
('6f0b357239cd2ed266313ee83f21f240bb749613', 1, 0, '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', 'c810ebff93dd51595ea9f358697828ee', 1398884717, 1398884717);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_simple_commerce_emails`
--

CREATE TABLE IF NOT EXISTS `exp_simple_commerce_emails` (
  `email_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `email_name` varchar(50) NOT NULL DEFAULT '',
  `email_subject` varchar(125) NOT NULL DEFAULT '',
  `email_body` text NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_simple_commerce_items`
--

CREATE TABLE IF NOT EXISTS `exp_simple_commerce_items` (
  `item_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(8) unsigned NOT NULL,
  `item_enabled` char(1) NOT NULL DEFAULT 'y',
  `item_regular_price` decimal(7,2) NOT NULL DEFAULT '0.00',
  `item_sale_price` decimal(7,2) NOT NULL DEFAULT '0.00',
  `item_use_sale` char(1) NOT NULL DEFAULT 'n',
  `recurring` char(1) NOT NULL DEFAULT 'n',
  `subscription_frequency` int(10) unsigned DEFAULT NULL,
  `subscription_frequency_unit` varchar(10) DEFAULT NULL,
  `item_purchases` int(8) NOT NULL DEFAULT '0',
  `current_subscriptions` int(8) NOT NULL DEFAULT '0',
  `new_member_group` int(8) DEFAULT '0',
  `member_group_unsubscribe` int(8) DEFAULT '0',
  `admin_email_address` varchar(75) DEFAULT NULL,
  `admin_email_template` int(5) DEFAULT '0',
  `customer_email_template` int(5) DEFAULT '0',
  `admin_email_template_unsubscribe` int(5) DEFAULT '0',
  `customer_email_template_unsubscribe` int(5) DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_simple_commerce_purchases`
--

CREATE TABLE IF NOT EXISTS `exp_simple_commerce_purchases` (
  `purchase_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(20) NOT NULL DEFAULT '',
  `member_id` varchar(50) NOT NULL DEFAULT '',
  `paypal_subscriber_id` varchar(100) DEFAULT NULL,
  `item_id` int(8) unsigned NOT NULL DEFAULT '0',
  `purchase_date` int(12) unsigned NOT NULL DEFAULT '0',
  `item_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paypal_details` text,
  `subscription_end_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`purchase_id`),
  KEY `item_id` (`item_id`),
  KEY `member_id` (`member_id`),
  KEY `txn_id` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_sites`
--

CREATE TABLE IF NOT EXISTS `exp_sites` (
  `site_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `site_label` varchar(100) NOT NULL DEFAULT '',
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_description` text,
  `site_system_preferences` mediumtext NOT NULL,
  `site_mailinglist_preferences` text NOT NULL,
  `site_member_preferences` text NOT NULL,
  `site_template_preferences` text NOT NULL,
  `site_channel_preferences` text NOT NULL,
  `site_bootstrap_checksums` text NOT NULL,
  `site_pages` text NOT NULL,
  PRIMARY KEY (`site_id`),
  KEY `site_name` (`site_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `exp_sites`
--

INSERT INTO `exp_sites` (`site_id`, `site_label`, `site_name`, `site_description`, `site_system_preferences`, `site_mailinglist_preferences`, `site_member_preferences`, `site_template_preferences`, `site_channel_preferences`, `site_bootstrap_checksums`, `site_pages`) VALUES
(1, 'VIVA - GyM', 'default_site', NULL, 'YTo4OTp7czoxMDoic2l0ZV9pbmRleCI7czo5OiJpbmRleC5waHAiO3M6ODoic2l0ZV91cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3QvZ3ltLyI7czoxNjoidGhlbWVfZm9sZGVyX3VybCI7czoyODoiaHR0cDovL2xvY2FsaG9zdC9neW0vdGhlbWVzLyI7czoxNToid2VibWFzdGVyX2VtYWlsIjtzOjE5OiJqY21vcm9uODJAZ21haWwuY29tIjtzOjE0OiJ3ZWJtYXN0ZXJfbmFtZSI7czowOiIiO3M6MjA6ImNoYW5uZWxfbm9tZW5jbGF0dXJlIjtzOjc6ImNoYW5uZWwiO3M6MTA6Im1heF9jYWNoZXMiO3M6MzoiMTUwIjtzOjExOiJjYXB0Y2hhX3VybCI7czozNzoiaHR0cDovL2xvY2FsaG9zdC9neW0vaW1hZ2VzL2NhcHRjaGFzLyI7czoxMjoiY2FwdGNoYV9wYXRoIjtzOjMyOiJDOlx3YW1wXHd3d1xneW1caW1hZ2VzXGNhcHRjaGFzXCI7czoxMjoiY2FwdGNoYV9mb250IjtzOjE6InkiO3M6MTI6ImNhcHRjaGFfcmFuZCI7czoxOiJ5IjtzOjIzOiJjYXB0Y2hhX3JlcXVpcmVfbWVtYmVycyI7czoxOiJuIjtzOjE3OiJlbmFibGVfZGJfY2FjaGluZyI7czoxOiJuIjtzOjE4OiJlbmFibGVfc3FsX2NhY2hpbmciO3M6MToibiI7czoxODoiZm9yY2VfcXVlcnlfc3RyaW5nIjtzOjE6Im4iO3M6MTM6InNob3dfcHJvZmlsZXIiO3M6MToibiI7czoxODoidGVtcGxhdGVfZGVidWdnaW5nIjtzOjE6Im4iO3M6MTU6ImluY2x1ZGVfc2Vjb25kcyI7czoxOiJuIjtzOjEzOiJjb29raWVfZG9tYWluIjtzOjA6IiI7czoxMToiY29va2llX3BhdGgiO3M6MDoiIjtzOjIwOiJ3ZWJzaXRlX3Nlc3Npb25fdHlwZSI7czoxOiJjIjtzOjE1OiJjcF9zZXNzaW9uX3R5cGUiO3M6MjoiY3MiO3M6MjE6ImFsbG93X3VzZXJuYW1lX2NoYW5nZSI7czoxOiJ5IjtzOjE4OiJhbGxvd19tdWx0aV9sb2dpbnMiO3M6MToieSI7czoxNjoicGFzc3dvcmRfbG9ja291dCI7czoxOiJ5IjtzOjI1OiJwYXNzd29yZF9sb2Nrb3V0X2ludGVydmFsIjtzOjE6IjEiO3M6MjA6InJlcXVpcmVfaXBfZm9yX2xvZ2luIjtzOjE6InkiO3M6MjI6InJlcXVpcmVfaXBfZm9yX3Bvc3RpbmciO3M6MToieSI7czoyNDoicmVxdWlyZV9zZWN1cmVfcGFzc3dvcmRzIjtzOjE6Im4iO3M6MTk6ImFsbG93X2RpY3Rpb25hcnlfcHciO3M6MToieSI7czoyMzoibmFtZV9vZl9kaWN0aW9uYXJ5X2ZpbGUiO3M6MDoiIjtzOjE3OiJ4c3NfY2xlYW5fdXBsb2FkcyI7czoxOiJ5IjtzOjE1OiJyZWRpcmVjdF9tZXRob2QiO3M6NzoicmVmcmVzaCI7czo5OiJkZWZ0X2xhbmciO3M6Nzoic3BhbmlzaCI7czo4OiJ4bWxfbGFuZyI7czoyOiJlbiI7czoxMjoic2VuZF9oZWFkZXJzIjtzOjE6InkiO3M6MTE6Imd6aXBfb3V0cHV0IjtzOjE6Im4iO3M6MTM6ImxvZ19yZWZlcnJlcnMiO3M6MToieSI7czoxMzoibWF4X3JlZmVycmVycyI7czozOiI1MDAiO3M6MTE6ImRhdGVfZm9ybWF0IjtzOjg6IiVuLyVqLyV5IjtzOjExOiJ0aW1lX2Zvcm1hdCI7czoyOiIxMiI7czoxMzoic2VydmVyX29mZnNldCI7czowOiIiO3M6MjE6ImRlZmF1bHRfc2l0ZV90aW1lem9uZSI7czoxMjoiQW1lcmljYS9MaW1hIjtzOjEzOiJtYWlsX3Byb3RvY29sIjtzOjQ6Im1haWwiO3M6MTE6InNtdHBfc2VydmVyIjtzOjA6IiI7czoxMzoic210cF91c2VybmFtZSI7czowOiIiO3M6MTM6InNtdHBfcGFzc3dvcmQiO3M6MDoiIjtzOjExOiJlbWFpbF9kZWJ1ZyI7czoxOiJuIjtzOjEzOiJlbWFpbF9jaGFyc2V0IjtzOjU6InV0Zi04IjtzOjE1OiJlbWFpbF9iYXRjaG1vZGUiO3M6MToibiI7czoxNjoiZW1haWxfYmF0Y2hfc2l6ZSI7czowOiIiO3M6MTE6Im1haWxfZm9ybWF0IjtzOjU6InBsYWluIjtzOjk6IndvcmRfd3JhcCI7czoxOiJ5IjtzOjIyOiJlbWFpbF9jb25zb2xlX3RpbWVsb2NrIjtzOjE6IjUiO3M6MjI6ImxvZ19lbWFpbF9jb25zb2xlX21zZ3MiO3M6MToieSI7czo4OiJjcF90aGVtZSI7czo3OiJkZWZhdWx0IjtzOjIxOiJlbWFpbF9tb2R1bGVfY2FwdGNoYXMiO3M6MToibiI7czoxNjoibG9nX3NlYXJjaF90ZXJtcyI7czoxOiJ5IjtzOjE5OiJkZW55X2R1cGxpY2F0ZV9kYXRhIjtzOjE6InkiO3M6MjQ6InJlZGlyZWN0X3N1Ym1pdHRlZF9saW5rcyI7czoxOiJuIjtzOjE2OiJlbmFibGVfY2Vuc29yaW5nIjtzOjE6Im4iO3M6MTQ6ImNlbnNvcmVkX3dvcmRzIjtzOjA6IiI7czoxODoiY2Vuc29yX3JlcGxhY2VtZW50IjtzOjA6IiI7czoxMDoiYmFubmVkX2lwcyI7czowOiIiO3M6MTM6ImJhbm5lZF9lbWFpbHMiO3M6MDoiIjtzOjE2OiJiYW5uZWRfdXNlcm5hbWVzIjtzOjA6IiI7czoxOToiYmFubmVkX3NjcmVlbl9uYW1lcyI7czowOiIiO3M6MTA6ImJhbl9hY3Rpb24iO3M6ODoicmVzdHJpY3QiO3M6MTE6ImJhbl9tZXNzYWdlIjtzOjM0OiJUaGlzIHNpdGUgaXMgY3VycmVudGx5IHVuYXZhaWxhYmxlIjtzOjE1OiJiYW5fZGVzdGluYXRpb24iO3M6MjE6Imh0dHA6Ly93d3cueWFob28uY29tLyI7czoxNjoiZW5hYmxlX2Vtb3RpY29ucyI7czoxOiJ5IjtzOjEyOiJlbW90aWNvbl91cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvZ3ltL2ltYWdlcy9zbWlsZXlzLyI7czoxOToicmVjb3VudF9iYXRjaF90b3RhbCI7czo0OiIxMDAwIjtzOjE3OiJuZXdfdmVyc2lvbl9jaGVjayI7czoxOiJuIjtzOjE3OiJlbmFibGVfdGhyb3R0bGluZyI7czoxOiJuIjtzOjE3OiJiYW5pc2hfbWFza2VkX2lwcyI7czoxOiJ5IjtzOjE0OiJtYXhfcGFnZV9sb2FkcyI7czoyOiIxMCI7czoxMzoidGltZV9pbnRlcnZhbCI7czoxOiI4IjtzOjEyOiJsb2Nrb3V0X3RpbWUiO3M6MjoiMzAiO3M6MTU6ImJhbmlzaG1lbnRfdHlwZSI7czo3OiJtZXNzYWdlIjtzOjE0OiJiYW5pc2htZW50X3VybCI7czowOiIiO3M6MTg6ImJhbmlzaG1lbnRfbWVzc2FnZSI7czo1MDoiWW91IGhhdmUgZXhjZWVkZWQgdGhlIGFsbG93ZWQgcGFnZSBsb2FkIGZyZXF1ZW5jeS4iO3M6MTc6ImVuYWJsZV9zZWFyY2hfbG9nIjtzOjE6InkiO3M6MTk6Im1heF9sb2dnZWRfc2VhcmNoZXMiO3M6MzoiNTAwIjtzOjE3OiJ0aGVtZV9mb2xkZXJfcGF0aCI7czoyMzoiQzovd2FtcC93d3cvZ3ltL3RoZW1lcy8iO3M6MTA6ImlzX3NpdGVfb24iO3M6MToieSI7czoxMToicnRlX2VuYWJsZWQiO3M6MToieSI7czoyMjoicnRlX2RlZmF1bHRfdG9vbHNldF9pZCI7czoxOiIxIjtzOjEyOiJjYWNoZV9kcml2ZXIiO3M6NDoiZmlsZSI7fQ==', 'YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==', 'YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToieSI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NDoibm9uZSI7czoyMzoibmV3X21lbWJlcl9ub3RpZmljYXRpb24iO3M6MToibiI7czoyMzoibWJyX25vdGlmaWNhdGlvbl9lbWFpbHMiO3M6MDoiIjtzOjI0OiJyZXF1aXJlX3Rlcm1zX29mX3NlcnZpY2UiO3M6MToieSI7czoyMjoidXNlX21lbWJlcnNoaXBfY2FwdGNoYSI7czoxOiJuIjtzOjIwOiJkZWZhdWx0X21lbWJlcl9ncm91cCI7czoxOiI2IjtzOjE1OiJwcm9maWxlX3RyaWdnZXIiO3M6NjoibWVtYmVyIjtzOjEyOiJtZW1iZXJfdGhlbWUiO3M6NzoiZGVmYXVsdCI7czoxNDoiZW5hYmxlX2F2YXRhcnMiO3M6MToieSI7czoyMDoiYWxsb3dfYXZhdGFyX3VwbG9hZHMiO3M6MToibiI7czoxMDoiYXZhdGFyX3VybCI7czozNjoiaHR0cDovL2xvY2FsaG9zdC9neW0vaW1hZ2VzL2F2YXRhcnMvIjtzOjExOiJhdmF0YXJfcGF0aCI7czozMToiQzovd2FtcC93d3cvZ3ltL2ltYWdlcy9hdmF0YXJzLyI7czoxNjoiYXZhdGFyX21heF93aWR0aCI7czozOiIxMDAiO3M6MTc6ImF2YXRhcl9tYXhfaGVpZ2h0IjtzOjM6IjEwMCI7czoxMzoiYXZhdGFyX21heF9rYiI7czoyOiI1MCI7czoxMzoiZW5hYmxlX3Bob3RvcyI7czoxOiJ5IjtzOjk6InBob3RvX3VybCI7czo0MjoiaHR0cDovL2xvY2FsaG9zdC9neW0vaW1hZ2VzL21lbWJlcl9waG90b3MvIjtzOjEwOiJwaG90b19wYXRoIjtzOjM3OiJDOi93YW1wL3d3dy9neW0vaW1hZ2VzL21lbWJlcl9waG90b3MvIjtzOjE1OiJwaG90b19tYXhfd2lkdGgiO3M6MzoiMTAwIjtzOjE2OiJwaG90b19tYXhfaGVpZ2h0IjtzOjM6IjEwMCI7czoxMjoicGhvdG9fbWF4X2tiIjtzOjI6IjUwIjtzOjE2OiJhbGxvd19zaWduYXR1cmVzIjtzOjE6InkiO3M6MTM6InNpZ19tYXhsZW5ndGgiO3M6MzoiNTAwIjtzOjIxOiJzaWdfYWxsb3dfaW1nX2hvdGxpbmsiO3M6MToibiI7czoyMDoic2lnX2FsbG93X2ltZ191cGxvYWQiO3M6MToibiI7czoxMToic2lnX2ltZ191cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3QvZ3ltL2ltYWdlcy9zaWduYXR1cmVfYXR0YWNobWVudHMvIjtzOjEyOiJzaWdfaW1nX3BhdGgiO3M6NDU6IkM6L3dhbXAvd3d3L2d5bS9pbWFnZXMvc2lnbmF0dXJlX2F0dGFjaG1lbnRzLyI7czoxNzoic2lnX2ltZ19tYXhfd2lkdGgiO3M6MzoiNDgwIjtzOjE4OiJzaWdfaW1nX21heF9oZWlnaHQiO3M6MjoiODAiO3M6MTQ6InNpZ19pbWdfbWF4X2tiIjtzOjI6IjMwIjtzOjE5OiJwcnZfbXNnX3VwbG9hZF9wYXRoIjtzOjM4OiJDOi93YW1wL3d3dy9neW0vaW1hZ2VzL3BtX2F0dGFjaG1lbnRzLyI7czoyMzoicHJ2X21zZ19tYXhfYXR0YWNobWVudHMiO3M6MToiMyI7czoyMjoicHJ2X21zZ19hdHRhY2hfbWF4c2l6ZSI7czozOiIyNTAiO3M6MjA6InBydl9tc2dfYXR0YWNoX3RvdGFsIjtzOjM6IjEwMCI7czoxOToicHJ2X21zZ19odG1sX2Zvcm1hdCI7czo0OiJzYWZlIjtzOjE4OiJwcnZfbXNnX2F1dG9fbGlua3MiO3M6MToieSI7czoxNzoicHJ2X21zZ19tYXhfY2hhcnMiO3M6NDoiNjAwMCI7czoxOToibWVtYmVybGlzdF9vcmRlcl9ieSI7czoxNzoidG90YWxfZm9ydW1fcG9zdHMiO3M6MjE6Im1lbWJlcmxpc3Rfc29ydF9vcmRlciI7czo0OiJkZXNjIjtzOjIwOiJtZW1iZXJsaXN0X3Jvd19saW1pdCI7czoyOiIyMCI7fQ==', 'YTo3OntzOjIyOiJlbmFibGVfdGVtcGxhdGVfcm91dGVzIjtzOjE6InkiO3M6MTE6InN0cmljdF91cmxzIjtzOjE6InkiO3M6ODoic2l0ZV80MDQiO3M6MDoiIjtzOjE5OiJzYXZlX3RtcGxfcmV2aXNpb25zIjtzOjE6InkiO3M6MTg6Im1heF90bXBsX3JldmlzaW9ucyI7czoxOiI1IjtzOjE1OiJzYXZlX3RtcGxfZmlsZXMiO3M6MToieSI7czoxODoidG1wbF9maWxlX2Jhc2VwYXRoIjtzOjI1OiJDOi93YW1wL3d3dy9neW0vdGVtcGxhdGVzIjt9', 'YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJuIjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=', 'YToyOntzOjI1OiJDOlx3YW1wXHd3d1xneW1caW5kZXgucGhwIjtzOjMyOiIyNDg2MDYxMWExZTgzNmZiZTIwNmE0NWNkMTIzMzQ1YyI7czozOToiQzpcd2FtcFx3d3dcVml2YUd5TV9Qb3N0VmVudGFcaW5kZXgucGhwIjtzOjMyOiIyNDg2MDYxMWExZTgzNmZiZTIwNmE0NWNkMTIzMzQ1YyI7fQ==', 'YToxOntpOjE7YToxOntzOjM6InVybCI7czozMToiaHR0cDovL2xvY2FsaG9zdC9neW0vaW5kZXgucGhwLyI7fX0=');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_snippets`
--

CREATE TABLE IF NOT EXISTS `exp_snippets` (
  `snippet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) NOT NULL,
  `snippet_name` varchar(75) NOT NULL,
  `snippet_contents` text,
  PRIMARY KEY (`snippet_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_specialty_templates`
--

CREATE TABLE IF NOT EXISTS `exp_specialty_templates` (
  `template_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_name` varchar(50) NOT NULL,
  `data_title` varchar(80) NOT NULL,
  `template_data` text NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `exp_specialty_templates`
--

INSERT INTO `exp_specialty_templates` (`template_id`, `site_id`, `enable_template`, `template_name`, `data_title`, `template_data`) VALUES
(1, 1, 'y', 'offline_template', '', '<html>\n<head>\n\n<title>System Offline</title>\n\n<style type="text/css">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#999999 1px solid;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n</style>\n\n</head>\n\n<body>\n\n<div id="content">\n\n<h1>System Offline</h1>\n\n<p>This site is currently offline</p>\n\n</div>\n\n</body>\n\n</html>'),
(2, 1, 'y', 'message_template', '', '<html>\n<head>\n\n<title>{title}</title>\n\n<meta http-equiv=''content-type'' content=''text/html; charset={charset}'' />\n\n{meta_refresh}\n\n<style type="text/css">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:active {\ncolor:				#ccc;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#000 1px solid;\nbackground-color: 	#DEDFE3;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n\nul {\nmargin-bottom: 		16px;\n}\n\nli {\nlist-style:			square;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		8px;\nmargin-bottom: 		8px;\ncolor: 				#000;\n}\n\n</style>\n\n</head>\n\n<body>\n\n<div id="content">\n\n<h1>{heading}</h1>\n\n{content}\n\n<p>{link}</p>\n\n</div>\n\n</body>\n\n</html>'),
(3, 1, 'y', 'admin_notify_reg', 'Notification of new member registration', 'New member registration site: {site_name}\n\nScreen name: {name}\nUser name: {username}\nEmail: {email}\n\nYour control panel URL: {control_panel_url}'),
(4, 1, 'y', 'admin_notify_entry', 'A new channel entry has been posted', 'A new entry has been posted in the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nPosted by: {name}\nEmail: {email}\n\nTo read the entry please visit:\n{entry_url}\n'),
(5, 1, 'y', 'admin_notify_mailinglist', 'Someone has subscribed to your mailing list', 'A new mailing list subscription has been accepted.\n\nEmail Address: {email}\nMailing List: {mailing_list}'),
(6, 1, 'y', 'admin_notify_comment', 'You have just received a comment', 'You have just received a comment for the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nLocated at:\n{comment_url}\n\nPosted by: {name}\nEmail: {email}\nURL: {url}\nLocation: {location}\n\n{comment}'),
(7, 1, 'y', 'mbr_activation_instructions', 'Enclosed is your activation code', 'Thank you for your new member registration.\n\nTo activate your new account, please visit the following URL:\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}\n\n{site_url}'),
(8, 1, 'y', 'forgot_password_instructions', 'Login information', '{name},\n\nTo reset your password, please go to the following page:\n\n{reset_url}\n\nThen log in with your username: {username}\n\nIf you do not wish to reset your password, ignore this message. It will expire in 24 hours.\n\n{site_name}\n{site_url}'),
(9, 1, 'y', 'validated_member_notify', 'Your membership account has been activated', '{name},\n\nYour membership account has been activated and is ready for use.\n\nThank You!\n\n{site_name}\n{site_url}'),
(10, 1, 'y', 'decline_member_validation', 'Your membership account has been declined', '{name},\n\nWe''re sorry but our staff has decided not to validate your membership.\n\n{site_name}\n{site_url}'),
(11, 1, 'y', 'mailinglist_activation_instructions', 'Email Confirmation', 'Thank you for joining the "{mailing_list}" mailing list!\n\nPlease click the link below to confirm your email.\n\nIf you do not want to be added to our list, ignore this email.\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}'),
(12, 1, 'y', 'comment_notification', 'Someone just responded to your comment', '{name_of_commenter} just responded to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comment at the following URL:\n{comment_url}\n\n{comment}\n\nTo stop receiving notifications for this comment, click here:\n{notification_removal_url}'),
(13, 1, 'y', 'comments_opened_notification', 'New comments have been added', 'Responses have been added to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comments at the following URL:\n{comment_url}\n\n{comments}\n{comment}\n{/comments}\n\nTo stop receiving notifications for this entry, click here:\n{notification_removal_url}'),
(14, 1, 'y', 'private_message_notification', 'Someone has sent you a Private Message', '\n{recipient_name},\n\n{sender_name} has just sent you a Private Message titled ‘{message_subject}’.\n\nYou can see the Private Message by logging in and viewing your inbox at:\n{site_url}\n\nContent:\n\n{message_content}\n\nTo stop receiving notifications of Private Messages, turn the option off in your Email Settings.\n\n{site_name}\n{site_url}'),
(15, 1, 'y', 'pm_inbox_full', 'Your private message mailbox is full', '{recipient_name},\n\n{sender_name} has just attempted to send you a Private Message,\nbut your inbox is full, exceeding the maximum of {pm_storage_limit}.\n\nPlease log in and remove unwanted messages from your inbox at:\n{site_url}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_stats`
--

CREATE TABLE IF NOT EXISTS `exp_stats` (
  `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `total_members` mediumint(7) NOT NULL DEFAULT '0',
  `recent_member_id` int(10) NOT NULL DEFAULT '0',
  `recent_member` varchar(50) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `most_visitors` mediumint(7) NOT NULL DEFAULT '0',
  `most_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_cache_clear` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stat_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `exp_stats`
--

INSERT INTO `exp_stats` (`stat_id`, `site_id`, `total_members`, `recent_member_id`, `recent_member`, `total_entries`, `total_forum_topics`, `total_forum_posts`, `total_comments`, `last_entry_date`, `last_forum_post_date`, `last_comment_date`, `last_visitor_date`, `most_visitors`, `most_visitor_date`, `last_cache_clear`) VALUES
(1, 1, 2, 9, 'daniel', 59, 0, 0, 0, 1398819060, 0, 0, 1398895043, 16, 1398881737, 1398988442);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_statuses`
--

CREATE TABLE IF NOT EXISTS `exp_statuses` (
  `status_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_order` int(3) unsigned NOT NULL,
  `highlight` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `group_id` (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `exp_statuses`
--

INSERT INTO `exp_statuses` (`status_id`, `site_id`, `group_id`, `status`, `status_order`, `highlight`) VALUES
(1, 1, 1, 'open', 1, '009933'),
(2, 1, 1, 'closed', 2, '990000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_status_groups`
--

CREATE TABLE IF NOT EXISTS `exp_status_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `exp_status_groups`
--

INSERT INTO `exp_status_groups` (`group_id`, `site_id`, `group_name`) VALUES
(1, 1, 'Statuses');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_status_no_access`
--

CREATE TABLE IF NOT EXISTS `exp_status_no_access` (
  `status_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`status_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_templates`
--

CREATE TABLE IF NOT EXISTS `exp_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `save_template_file` char(1) NOT NULL DEFAULT 'n',
  `template_type` varchar(16) NOT NULL DEFAULT 'webpage',
  `template_data` mediumtext,
  `template_notes` text,
  `edit_date` int(10) NOT NULL DEFAULT '0',
  `last_author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cache` char(1) NOT NULL DEFAULT 'n',
  `refresh` int(6) unsigned NOT NULL DEFAULT '0',
  `no_auth_bounce` varchar(50) NOT NULL DEFAULT '',
  `enable_http_auth` char(1) NOT NULL DEFAULT 'n',
  `allow_php` char(1) NOT NULL DEFAULT 'n',
  `php_parse_location` char(1) NOT NULL DEFAULT 'o',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`template_id`),
  KEY `group_id` (`group_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Volcado de datos para la tabla `exp_templates`
--

INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`) VALUES
(1, 1, 1, 'index', 'y', 'webpage', '{exp:member:login_form return="{site_url}index.php/main/bienvenido"}\n        <p>\n                <label>Username</label><br>\n                <input type="text" name="username" value="" maxlength="32" size="25">\n        </p>\n        <p>\n                <label>Password</label><br>\n                <input type="password" name="password" value="" maxlength="32" size="25">\n        </p>\n        {if auto_login}\n                <p><input type="checkbox" name="auto_login" value="1"> Auto-login on future visits</p>\n        {/if}\n\n        <p><input type="checkbox" name="anon" value="1" checked="checked"> Show my name in the online users list</p>\n        <p><input type="submit" name="submit" value="Submit"></p>\n        <p><a href="{path=''member/forgot_password''}">Forgot your password?</a></p>\n	<p><a href="{path=''member/register''}">Register as a new member</a></p>\n{/exp:member:login_form}\n\n<a href="{path=''logout''}">Log Out</a>', '', 1398456844, 1, 'n', 0, '', 'n', 'n', 'o', 103),
(2, 1, 1, 'register', 'y', 'webpage', '<a href="{path=''member/register''}">Register as a new member</a>\n', '', 1398387874, 1, 'n', 0, '', 'n', 'n', 'o', 16),
(4, 1, 1, 'nueva_solicitud', 'y', 'webpage', '{exp:channel:form channel="solicitudes_ch"}\n\n<label for="title">Title</label>\n<input type="text" name="title" id="title" value="{title}" onkeyup="liveUrlTitle();">\n<p>\n<label for="title">Tipo de Problema</label>\n{field:tipo_problema}\n\n<p>\n<label for="title">Ubicacion</label>\n{field:ubicacion}\n\n<p>\n<label for="title">Descripcion del problema</label>\n{field:descripcion_problema}\n\n<p>\n<label for="title">Foto problema</label>\n{field:foto_problema}\n\n<p>\n<label for="title">Daños a otros depas</label>\n{field:danhos_otros}\n\n\n<p>\n<label for="title">Otro depa Afectado</label>\n{field:otro_dep_afectado}\n\n  <input type="submit" value="Submit">\n{/exp:channel:form}\n', '', 1398471519, 1, 'n', 0, '3', 'n', 'n', 'o', 92),
(3, 1, 1, 'bienvenido', 'y', 'webpage', '{if logged_in}\n\n{exp:member:custom_profile_data}\n        Bienvenido: {username}</p>\n{/exp:member:custom_profile_data}\n<p>\n\n<a href="{path=''member/profile''}">Edit your profile</a><br>\n\n<a href="{site_url}index.php/main/nueva_solicitud">Nueva Solicitud</a><br>\n\n<a href="{path=''logout''}">Log Out</a>\n{/if}\n{if logged_out}\n        Are you a member? Please <a href="{path=''member/login''}">log-in</a>.<br>\n        Not a member? <a href="{path=''member/register''}">Register</a>.<br>\n        Have you <a href="{path=''member/forgot''}">forgotten your password</a>?\n{/if}\n\n', '', 1398459330, 1, 'n', 0, '', 'n', 'n', 'o', 30),
(5, 1, 1, 'lista_entradas', 'y', 'webpage', '{exp:channel:entries channel="solicitudes_ch" sort="DESC" limit="10" }\n\n<table cellpadding="0" cellspacing="0" style="width: 100%" border="1">\n	<tr>\n		<td style="width: 128px">{tipo_problema}</td>\n		<td style="width: 87px">{ubicacion}</td>\n		<td style="width: 185px">{descripcion_problema} <br>status:\n			{relacion_status} {relacion_status:descripcion_status}<br>{/relacion_status}</td>\n		<td style="width: 150px"><img alt="" src="{foto_problema}" height="50" /></td>\n		<td style="width: 155px">{danhos_otros}</td>\n		<td>{otro_dep_afectado}</td>\n	</tr>\n</table>\n\n\n{/exp:channel:entries}	\n\n<?php\n\nee()->load->library(''api'');\nee()->api->instantiate(''channel_entries'');\nee()->api->instantiate(''channel_fields'');\n\n$data = array(\n    ''title''         => ''noticias'',\n    ''field_id_7''    => ''descripcion'',\n    ''field_id_8''    => ''Some data''\n);\n\nprint_r($data); \n\nee()->api_channel_fields->setup_entry_settings(2, $data);\n\nif (ee()->api_channel_entries->submit_new_entry(2, $data) === FALSE)\n{\n    show_error(''An Error Occurred Creating the Entry'');\n}\n\n\n?>', '', 1398721461, 1, 'n', 0, '', 'n', 'y', 'o', 82),
(6, 1, 2, 'calendar_events', 'n', 'webpage', '{exp:calendar:cal calendar_id="{embed:calendar_id}" event_limit="{embed:event_limit}" date_range_start="today" show_months="6" pad_short_weeks="n" dynamic="off"}\r\n          <li><a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a> ({event_start_date format="%F %j, %Y"})</li>\r\n          {if no_results}\r\n          <li>No events could be found within the specified time range for this Calendar.</li>\r\n          {/if}\r\n{/exp:calendar:cal}', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 0),
(7, 1, 2, 'footer', 'n', 'webpage', '	</div>\n	\n<!--\n\n	<div class="spacer"></div>\n	\n	<div id="footer">\n	\n		<div class="subColumn">\n		\n			<h4>Page Persistent Content</h4>\n			\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor \n			incididunt ut labore et dolore magna aliqua.</p>\n			\n			<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip \n			ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n			cillum dolore eu fugiat nulla pariatur.</p>\n		\n		</div>\n		\n		<div class="subColumn">\n		\n			<h4>Recent Articles</h4>\n			\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor \n			incididunt ut labore et dolore magna aliqua.</p>\n			\n			<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip \n			ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n			cillum dolore eu fugiat nulla pariatur.</p>\n		\n		</div>\n		\n		<div class="subColumn">\n		\n			<h4>Solspace News and Blog</h4>\n			\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor \n			incididunt ut labore et dolore magna aliqua.</p>\n			\n			<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip \n			ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n			cillum dolore eu fugiat nulla pariatur.</p>\n		\n		</div>\n		\n		<div class="spacer"></div>\n		\n	</div>\n\n-->\n	\n	<div class="spacer"></div>\n	\n	<div id="copyrightFooter">	\n		<div id="copyright">copyright &copy; 2009-{current_time format="%Y"}</div>\n		<div id="footermenu">\n			<ul>\n				<li class="first"><a href="http://www.solspace.com/">Solspace</a></li>\n				<li class=""><a href="http://www.solspace.com/docs/addon/c/Calendar/">Calendar Module Documentation</a></li>\n				<li class=""><a href="http://www.solspace.com/software/detail/calendar/">Calendar Module</a></li>\n			</ul>\n		</div>\n	</div>\n</div>\n</body>\n</html>', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 0),
(8, 1, 2, 'header', 'n', 'webpage', '<div id="header">\r\n\r\n	<div id="logo"></div>\r\n\r\n	<div id="smallmenu">\r\n		<ul>\r\n			<li class=""><a href="{site_url}">Site Home</a></li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n\r\n<div class="spacer"></div>\r\n\r\n<div id="wrapper">\r\n\r\n	<div id="mainmenu">\r\n		<ul>\r\n			<li><a href="{path=''calendar_main''}/">Home</a></li>\r\n			<li><a href="{path=''calendar_main/calendars''}/">Calendars</a></li>\r\n			<li><a href="{path=''calendar_main/create''}/">Create an Event</a></li>\r\n			<li><a href="{path=''calendar_main/month''}/">Month Calendar</a></li>\r\n			<li><a href="{path=''calendar_main/week''}/">Week Calendar</a></li>\r\n			<li><a href="{path=''calendar_main/day''}/">Day Calendar</a></li>\r\n		</ul>\r\n	</div>\r\n	\r\n	<div id="content">\r\n	', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 0),
(9, 1, 2, 'index', 'n', 'webpage', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n\r\n<head>\r\n<title>Calendar | {if embed:page_title}{embed:page_title}{if:else}Home{/if}</title>\r\n\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<meta name="Author" content="Solspace" />\r\n\r\n<style type=''text/css''>\r\n@import "{exp:calendar:theme_folder_url}code_pack/css/base.css";\r\n#logo { background-image: url("{exp:calendar:theme_folder_url}code_pack/images/logo2.jpeg"); }\r\n#mainmenu { background-image: url("{exp:calendar:theme_folder_url}code_pack/images/menu_bg.png"); }\r\n</style>', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 0),
(10, 1, 2, 'side_column', 'n', 'webpage', '				<div id="sidecolumn">\r\n\r\n					<h4>Mini Calendar</h4>\r\n\r\n<div id="mc_wrap">\r\n   {exp:calendar:cal\r\n      {if segment_2 == "calendars"}\r\n         date_range_start="year-month-01" date_range_end="year-month-last"\r\n      {/if}\r\n      {if segment_2 == "edit"}\r\n         date_range_start="year-month-01" date_range_end="year-month-last"\r\n      {/if}\r\n      {if segment_2 == "create"}\r\n         date_range_start="year-month-01" date_range_end="year-month-last"\r\n      {/if}\r\n      {if segment_2 == "event"}\r\n         date_range_start="year-month-01" date_range_end="year-month-last"\r\n      {/if}\r\n      {if segment_2 == ""}\r\n         date_range_start="year-month-01" date_range_end="year-month-last"\r\n      {/if}\r\n      {if segment_2 == "month"}\r\n         {if segment_3 == ''''}date_range_start="year-month-01" date_range_end="year-month-last"{/if}\r\n         {if segment_3 != ''''}date_range_start="{segment_3}-{segment_4}-01" date_range_end="{segment_3}-{segment_4}-last"{/if}\r\n      {/if}\r\n      {if segment_2 == "week"}\r\n         {if segment_3 == ''''}date_range_start="year-month-01" date_range_end="year-month-last"{/if}\r\n         {if segment_3 != ''''}date_range_start="{segment_3}-{segment_4}-01" date_range_end="{segment_3}-{segment_4}-last"{/if}\r\n      {/if}\r\n      {if segment_2 == "day"}\r\n         {if segment_3 == ''''}date_range_start="year-month-01" date_range_end="year-month-last"{/if}\r\n         {if segment_3 != ''''}date_range_start="{segment_3}-{segment_4}-01" date_range_end="{segment_3}-{segment_4}-last"{/if}\r\n      {/if}\r\n   dynamic="off"\r\n   }\r\n      <div id="mc_calendar">\r\n         {display_each_month}\r\n         <table>\r\n            <thead>\r\n               <tr>\r\n                  <th colspan="1">{if segment_2 != "calendars"}<a id="mc_prev_month" class="icon left" href="{path=''calendar_main''}/month/{prev_month format="%Y/%m"}/">&laquo;</a>{/if}</th>\r\n                  <th colspan="5"><a href="{path=''calendar_main/month''}/{month format="%Y/%m"}/">{month format="%F %Y"}</a></th>\r\n                  <th colspan="1">{if segment_2 != "calendars"}<a id="mc_next_month" class="icon right" href="{path=''calendar_main''}/month/{next_month format="%Y/%m"}/"> &raquo;</a>{/if}</th>\r\n               </tr>\r\n               <tr id="mc_days">\r\n                  {display_each_day_of_week}\r\n                  <th class="{if day_of_week_is_weekend}weekend{/if} {if day_of_week_is_current}current{/if}">{day_of_week_one}</th>\r\n                  {/display_each_day_of_week}\r\n               </tr>\r\n            </thead>\r\n            <tbody>\r\n               {display_each_week}\r\n               <tr>\r\n                  {display_each_day}\r\n                  <td cellpadding="0" cellspacing="0" class="\r\n                     {if !day_in_current_month == FALSE}mc_pad{/if}\r\n                     {if day_event_total > 0}has_events{/if}\r\n                     {if count == 7}selected{/if}\r\n                     {if day_is_today}today{/if}\r\n                  "><div class="mc_date">{if day_in_current_month}\r\n                     {if day_event_total}<a href="{path=''calendar_main/day''}/{day format="%Y/%m/%d"}/">{/if}\r\n                     {day}\r\n                     {if day_event_total}</a>{/if}\r\n                     {if:else}\r\n                        <strong class="middot">&middot;</strong>\r\n                     {/if}</div></td>\r\n                  {/display_each_day}\r\n               </tr>\r\n               {/display_each_week}\r\n            </tbody>\r\n         </table>\r\n         {/display_each_month}\r\n      </div>\r\n   {/exp:calendar:cal}\r\n</div>\r\n\r\n					<h4>Calendars</h4>\r\n\r\n					<ul>\r\n						{exp:calendar:calendars dynamic="off"}\r\n						<li><a href="{path=calendar_main/calendars}/{calendar_url_title}/">{calendar_title}</a></li>\r\n						{/exp:calendar:calendars}\r\n					</ul>\r\n\r\n				</div>', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 0),
(11, 1, 3, 'calendars', 'n', 'webpage', '{embed="calendar_inc/index" page_title="Calendars"}\r\n</head>\r\n<body id="home">\r\n{embed="calendar_inc/header"}\r\n\r\n		<div id="maincolumn">\r\n		\r\n			<h2>Calendar</h2>\r\n			\r\n			<h3>Calendars</h3>\r\n			\r\n			<p></p>\r\n\r\n			<div id="leftcolumn">\r\n\r\n<div id="wc_calendar">\r\n\r\n{exp:calendar:calendars {if segment_3 != ""}calendar_name="{segment_3}"{/if}}\r\n<div class="calendars">\r\n    <h4><small>View events in this Calendar by: <b><a href="{path=''calendar_main/month/by_calendar''}/{calendar_url_title}/">Month</a></b> | <b><a href="{path=''calendar_main/week/by_calendar''}/{calendar_url_title}/">Week</a></b> | <b><a href="{path=''calendar_main/day/by_calendar''}/{calendar_url_title}/">Day</a></b><br /><a href="{path=''calendar_main/export/calendar''}/{calendar_id}/">Export this Calendar''s Events to another Application</a></small>{calendar_title}</h4>\r\n    <p><b>Description:</b> {calendar_summary}</p>\r\n    <p><b>Upcoming Events:</b>\r\n       <ul>\r\n{embed="calendar_inc/calendar_events" calendar_id="{calendar_id}" {if segment_3 == ""}event_limit="5"{/if}{if segment_3 != ""}event_limit="10"{/if}}\r\n       </ul></p>\r\n</div>\r\n{if no_results}<p>No Calendars found for this site.</p>{/if}\r\n{/exp:calendar:calendars}\r\n\r\n{if segment_3}\r\n<h3 class="other_cal">Other Calendars</h3>\r\n<ul>\r\n{exp:calendar:calendars calendar_name="not {segment_3}" dynamic="off"}\r\n    <li class="title"><small>View events in this Calendar by: <b><a href="{path=''calendar_main/month/by_calendar''}/{calendar_url_title}/">Month</a></b> | <b><a href="{path=''calendar_main/week/by_calendar''}/{calendar_url_title}/">Week</a></b> | <b><a href="{path=''calendar_main/day/by_calendar''}/{calendar_url_title}/">Day</a></b></small>{calendar_title}</li>\r\n{/exp:calendar:calendars}\r\n{if no_results}<li>No other Calendars found for this site.</li>{/if}\r\n</ul>\r\n{/if}\r\n\r\n</div>\r\n			</div>\r\n\r\n			<div id="rightcolumn">\r\n\r\n{embed="calendar_inc/side_column"}\r\n\r\n				<div id="aboutcolumn">\r\n		\r\n					<h3>About This Page</h3>\r\n			\r\n					<p>The "Calendars" page is meant to show all available Calendars for your site, along with detailed information about them and filtering options for other pages of the site.</p>\r\n\r\n					<p>It makes use of the following function:</p>\r\n\r\n					<ul>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_calendars/">Calendar:Calendars</a> to display a list of all available Calendars as well as detailed information about them.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_cal/">Calendar:Cal</a> to display a list of most recent upcoming event occurrences for each Calendar.</li>\r\n						<li>a link to a page with <a href="http://www.solspace.com/docs/detail/calendar_icalendar/">Calendar:iCalendar</a> tag to allow users to export event data for a particular Calendar.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_mini/">Calendar:Cal in Mini mode</a> to display a Mini Calendar that links to days that have events.</li>\r\n					</ul>\r\n		\r\n				</div>\r\n\r\n			</div>\r\n	\r\n		</div>\r\n		\r\n{embed="calendar_inc/footer"}', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 1),
(12, 1, 3, 'create', 'n', 'webpage', '{embed="calendar_inc/index" page_title="Create an Event"}\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>\r\n<script type="text/javascript" src="{exp:calendar:theme_folder_url}js/jquery-ui.custom.min.js"></script>\r\n{exp:calendar:datepicker_js}\r\n{exp:calendar:datepicker_css}\r\n</head>\r\n<body id="home">\r\n{embed="calendar_inc/header"}\r\n\r\n		<div id="maincolumn">\r\n\r\n			<h2>Calendar</h2>\r\n\r\n			<h3>Create an Event</h3>\r\n\r\n			<p></p>\r\n\r\n			<div id="leftcolumn">\r\n\r\n				{if segment_3 == "success"}<div class="calendar_success">Event has been successfully created!</div>{/if}\r\n\r\n				<h5>Create an Event</h5>\r\n				<hr />\r\n\r\n{if logged_in_group_id == "1"}\r\n\r\n<div id="calendar_saef">\r\n   {exp:channel:form channel="calendar_events" return="calendar_main/event/{segment_3}/updated"}\r\n   <p><label>Title:</label><br />\r\n   <input type="text" name="title" value="{title}" size="80" style="width: 600px;" /></p>\r\n   {exp:calendar:date_widget}\r\n   <p><label>Summary:</label><br />\r\n   <textarea name="event_summary" rows="5" cols="65" style="width: 600px; height: 100px;">{event_summary}</textarea>\r\n   <p><label>Location:</label><br />\r\n   <input type="text" name="event_location" value="{event_location}" size="80" style="width: 600px;" /></p>\r\n   <p><input type="submit" name="submit" value="Submit" /></p>\r\n   {/exp:channel:form}\r\n</div>\r\n\r\n{if:else}\r\n\r\n   <div class="calendar_error">You do not have sufficient privileges to create a new event.</div>\r\n\r\n{/if}\r\n\r\n			</div>\r\n\r\n			<div id="rightcolumn">\r\n\r\n{embed="calendar_inc/side_column"}\r\n\r\n				<div id="aboutcolumn">\r\n\r\n					<h3>About This Page</h3>\r\n\r\n					<p>The "Create an Event" page is meant to allow members with appropriate privileges to create new events.</p>\r\n\r\n					<p>It makes use of the following function:</p>\r\n\r\n					<ul>\r\n						<li><a href="http://ellislab.com/expressionengine/user-guide/modules/channel/channel_form/index.html">Channel:Form</a> to display the channel entry form for users to create new events.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_mini/">Calendar:Cal in Mini mode</a> to display a Mini Calendar that links to days that have events.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_calendars/">Calendar:Calendars</a> to display a list of all available Calendars.</li>\r\n					</ul>\r\n\r\n				</div>\r\n\r\n			</div>\r\n\r\n		</div>\r\n\r\n{embed="calendar_inc/footer"}', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 0),
(13, 1, 3, 'day', 'n', 'webpage', '{embed="calendar_inc/index" page_title="Day View"}\r\n</head>\r\n<body id="home">\r\n{embed="calendar_inc/header"}\r\n\r\n		<div id="maincolumn">\r\n		\r\n			<h2>Calendar</h2>\r\n			\r\n			<h3>Day View</h3>\r\n			\r\n			<p></p>\r\n\r\n			<div id="leftcolumn">\r\n\r\n				{if segment_3 == "by_calendar"}\r\n					{exp:calendar:calendars calendar_name="{segment_4}" dynamic="off"}\r\n					<div class="calendar">\r\n						<h3>Events for <span>{calendar_title}</span> Calendar</h3>\r\n					</div>\r\n					{/exp:calendar:calendars}\r\n				<hr />\r\n				{/if}\r\n\r\n<div id="dc_calendar">\r\n\r\n{exp:calendar:cal pad_short_weeks="n"\r\n   {if segment_3 == "by_calendar"}\r\n      {if segment_5 == ''''}calendar_name="{segment_4}" date_range_start="today" date_range_end="today"{/if}\r\n      {if segment_5 != ''''}calendar_name="{segment_4}" date_range_start="{segment_5}-{segment_6}-{segment_7}" date_range_end="{segment_5}-{segment_6}-{segment_7}"{/if}\r\n   {/if}\r\n   {if segment_3 != "by_calendar"}\r\n      {if segment_3 == ''''}date_range_start="today" date_range_end="today"{/if}\r\n      {if segment_3 != ""}date_range_start="{segment_3}-{segment_4}-{segment_5}" date_range_end="{segment_3}-{segment_4}-{segment_5}"{/if}\r\n   {/if}\r\n   dynamic="off"\r\n}\r\n\r\n   {display_each_day}\r\n   <div class="header">\r\n      <div class="left">\r\n         <a href="{path=''calendar_main/day''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{prev_day format="%Y/%m/%d"}/">Yesterday</a>\r\n      </div>\r\n      <div class="center">\r\n         <h2>{day format="%l, %F %d, %Y"} <span>({day_event_total} events)</span></h2>\r\n      </div>\r\n      <div class="right">\r\n         <a href="{path=''calendar_main/day''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{next_day format="%Y/%m/%d"}/">Tomorrow</a>\r\n      </div>\r\n      <hr />\r\n   </div>\r\n   {display_each_hour}\r\n   <h4 {if time == "00:00"}class="thickline"{/if}>{time format="%g %a"} <span>({if hour_event_total == "0"}no events{if:else}{hour_event_total} event{if hour_event_total > "1"}s{/if}{/if})</span></h4>\r\n   {events}\r\n{if event_multi_day == FALSE && event_all_day == FALSE}\r\n   <div class="event">\r\n         <h2><a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a> <span>({event_start_date format="%g:%i %a"}{if event_end_date}{if "{event_start_date format=''%g:%i %a''}" != "{event_end_date format=''%g:%i%a''}"} - {event_end_date format="%g:%i%a"}{/if}{/if})</span></h2>\r\n         <p><b>From Calendar:</b> <a href="{path=''calendar_main/calendars''}/{event_calendar_url_title}/">{event_calendar_title}</a></p>\r\n         <p><b>Location:</b> {event_location}</p>\r\n         <p><b>Details:</b> {event_summary}<p>\r\n   </div>\r\n{if:else}\r\n   <div class="event_top">\r\n         <h2><a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a> <span>({if event_multi_day == FALSE && event_all_day == TRUE}all day{if:else}{event_start_date format="%F %j, %Y at %g:%i%a"}{if event_end_date}{if "{event_start_date format=''%g:%i%a''}" != "{event_end_date format=''%g:%i%a''}"} - {event_end_date format="%F %j, %Y at %g:%i%a"}{/if}{/if}{/if})</span></h2>\r\n         <p><b>From Calendar:</b> <a href="{path=''calendar_main/calendars''}/{event_calendar_url_title}/">{event_calendar_title}</a> &nbsp; &nbsp; <b>Location:</b> {event_location} &nbsp; &nbsp; <a href="{path=''calendar_main/event''}/{event_id}/">View Details</a></p>\r\n   </div>\r\n{/if}\r\n   {/events}\r\n   {/display_each_hour}\r\n   {/display_each_day}\r\n{/exp:calendar:cal}\r\n\r\n</div> \r\n\r\n			</div>\r\n\r\n			<div id="rightcolumn">\r\n\r\n{embed="calendar_inc/side_column"}\r\n\r\n				<div id="aboutcolumn">\r\n		\r\n					<h3>About This Page</h3>\r\n			\r\n					<p>The "Day" page is meant to show events that are happening within the selected date. Additionally, this can be filtered down to a selected calendar (if you came to this page from the Calendars page).</p>\r\n\r\n					<p>It makes use of the following function:</p>\r\n\r\n					<ul>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_day/">Calendar:Cal in Day mode</a> to display events that are happening within the selected date.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_mini/">Calendar:Cal in Mini mode</a> to display a Mini Calendar that links to days that have events.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_calendars/">Calendar:Calendars</a> to display a list of all available Calendars.</li>\r\n					</ul>\r\n		\r\n				</div>\r\n\r\n			</div>\r\n	\r\n		</div>\r\n		\r\n{embed="calendar_inc/footer"}', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 2),
(14, 1, 3, 'edit', 'n', 'webpage', '{embed="calendar_inc/index" page_title="Edit Event"}\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>\r\n<script type="text/javascript" src="/themes/solspace_themes/calendar/js/jquery-ui.custom.min.js"></script>\r\n{exp:calendar:datepicker_js}\r\n{exp:calendar:datepicker_css}\r\n</head>\r\n<body id="home">\r\n{embed="calendar_inc/header"}\r\n\r\n		<div id="maincolumn">\r\n		\r\n			<h2>Calendar</h2>\r\n			\r\n			<h3>Edit Event</h3>\r\n			\r\n			<p></p>\r\n\r\n			<div id="leftcolumn">\r\n\r\n				<h5>Update this Event</h5>\r\n				<hr />\r\n\r\n{if logged_in_group_id == "1"}\r\n{if segment_3}\r\n\r\n<div id="calendar_saef">\r\n   {exp:channel:form channel="calendar_events" entry_id="{segment_3}" return="calendar_main/event/{segment_3}/updated"}\r\n   <p><label>Title:</label><br />\r\n   <input type="text" name="title" value="{title}" size="80" style="width: 600px;" /></p>\r\n   {exp:calendar:date_widget event_id="{segment_3}"}\r\n   <p><label>Summary:</label><br />\r\n   <textarea name="event_summary" rows="5" cols="65" style="width: 600px; height: 100px;">{event_summary}</textarea></p>\r\n   <p><label>Location:</label><br />\r\n   <input type="text" name="event_location" value="{event_location}" size="80" style="width: 600px;" /></p>\r\n   <p><input type="submit" name="submit" value="Submit" /></p>\r\n   {/exp:channel:form}\r\n</div>\r\n\r\n{if:else}\r\n\r\n   <div class="calendar_error">An event ID is required to edit events.</div>\r\n\r\n{/if}\r\n\r\n{if:else}\r\n\r\n   <div class="calendar_error">You do not have sufficient privileges to edit events.</div>\r\n\r\n{/if}\r\n\r\n			</div>\r\n\r\n			<div id="rightcolumn">\r\n\r\n{embed="calendar_inc/side_column"}\r\n\r\n				<div id="aboutcolumn">\r\n		\r\n					<h3>About This Page</h3>\r\n			\r\n					<p>The "Edit Event" page is meant to allow members with appropriate privileges to edit the selected event.</p>\r\n\r\n					<p>It makes use of the following function:</p>\r\n\r\n					<ul>\r\n						<li><a href="http://ellislab.com/expressionengine/user-guide/modules/channel/channel_form/index.html">Channel:Form</a> to display the channel entry form for users to edit an event.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_mini/">Calendar:Cal in Mini mode</a> to display a Mini Calendar that links to days that have events.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_calendars/">Calendar:Calendars</a> to display a list of all available Calendars.</li>\r\n					</ul>\r\n		\r\n				</div>\r\n\r\n			</div>\r\n	\r\n		</div>\r\n		\r\n{embed="calendar_inc/footer"}', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 0),
(15, 1, 3, 'event', 'n', 'webpage', '{embed="calendar_inc/index" page_title="Event View"}\r\n</head>\r\n<body id="home">\r\n{embed="calendar_inc/header"}\r\n\r\n		<div id="maincolumn">\r\n\r\n			<h2>Calendar</h2>\r\n\r\n			<h3>Event View</h3>\r\n\r\n			<p></p>\r\n\r\n			<div id="leftcolumn">\r\n\r\n{if logged_in_group_id == "1"}\r\n				{if segment_4 == "success"}<div class="calendar_success">Event has been successfully created!</div>{/if}\r\n				{if segment_4 == "updated"}<div class="calendar_success">Event has been successfully updated!</div>{/if}\r\n<p><b>Admin:</b> <a href="{path=''calendar_main/edit''}/{segment_3}/">Update this Event</a></p>\r\n				<hr />\r\n{/if}\r\n\r\n<div id="events_calendar">\r\n\r\n{exp:calendar:events\r\n	orderby="title"\r\n	sort="asc"\r\n	event_id="{segment_3}"\r\n	date_range_start="99 months ago"\r\n	show_months="999"\r\n	dynamic="off"}\r\n\r\n	{if no_results}No Results{/if}\r\n	<div class="event">\r\n		<small style="float:right;"><a href="{path=''calendar_main/export/event''}/{segment_3}/">Export this Event to another Application</a></small>\r\n		<h2 style="font-size:25px;font-weight:bold;">{event_title}</h2>\r\n		<p><b>From Calendar:</b> <a href="{path=''calendar_main/calendars''}/{event_calendar_url_title}/">{event_calendar_title}</a></p>\r\n		<p><b>Location:</b> {event_location}</p>\r\n		<p>\r\n			<b>From:</b> {event_first_date format="%F %j, %Y at %g:%i%a"}\r\n			{if event_never_ends}\r\n				(never ends)\r\n			{if:else}\r\n				{if "{event_first_date format=''%Y%m%d%g%i%a''}" != "{event_last_date format=''%Y%m%d%g%i%a''}"} <b>to:</b>\r\n					{if "{event_first_date format="%Y%m%d"}" != "{event_last_date format="%Y%m%d"}"}\r\n						{event_last_date format="%l, %F %j, %Y at %g:%i%a"}\r\n					{if:else}\r\n						{event_last_date format="%g:%i%a"}\r\n					{/if}\r\n				{/if}\r\n			{/if}\r\n		</p>\r\n		<p><b>Details:</b> {event_summary}</p>\r\n	</div>\r\n{/exp:calendar:events}\r\n\r\n	<hr />\r\n\r\n	<h3 class="occurrences">Upcoming Occurrences:</h3>\r\n	<ul>\r\n		{exp:calendar:occurrences event_id="{segment_3}" date_range_start="today" date_range_end="3 months" upcoming_occurrences_limit="5" prior_occurrences_limit="0" dynamic="off"}\r\n		<li>{occurrence_start_date format="%l, %F %j, %Y at %g:%i%a"}{if "{occurrence_start_date format=''%Y%m%d%g%i%a''}" != "{occurrence_end_date format=''%Y%m%d%g%i%a''}"} - {if "{occurrence_start_date format=''%Y%m%d''}" != "{occurrence_end_date format=''%Y%m%d''}"}{occurrence_end_date format="%l, %F %j, %Y at %g:%i%a"}{if:else}{occurrence_end_date format="%g:%i%a"}{/if}{/if} &nbsp; <small><a href="{path=''calendar_main/day''}/{occurrence_start_date format="%Y/%m/%d"}/">View other events on this day</a></small></li>\r\n		{if no_results}\r\n		<li>No upcoming occurrences in the timeframe specified for this event.</li>\r\n		{/if}\r\n		{/exp:calendar:occurrences}\r\n	</ul>\r\n\r\n	<h3 class="occurrences">Past Occurrences:</h3>\r\n	<ul>\r\n		{exp:calendar:occurrences event_id="{segment_3}" date_range_start="3 months ago" date_range_end="today" upcoming_occurrences_limit="0" prior_occurrences_limit="3" dynamic="off"}\r\n		<li>{occurrence_start_date format="%l, %F %j, %Y at %g:%i%a"}{if "{occurrence_start_date format=''%Y%m%d%g%i%a''}" != "{occurrence_end_date format=''%Y%m%d%g%i%a''}"} - {if "{occurrence_start_date format=''%Y%m%d''}" != "{occurrence_end_date format=''%Y%m%d''}"}{occurrence_end_date format="%l, %F %j, %Y at %g:%i%a"}{if:else}{occurrence_end_date format="%g:%i%a"}{/if}{/if} &nbsp; <small><a href="{path=''calendar_main/day''}/{occurrence_start_date format="%Y/%m/%d"}/">View other events on this day</a></small></li>\r\n		{if no_results}\r\n		<li>No prior occurrences in the timeframe specified for this event.</li>\r\n		{/if}\r\n		{/exp:calendar:occurrences}\r\n	</ul>\r\n\r\n	<hr />\r\n\r\n</div>\r\n\r\n			</div>\r\n\r\n			<div id="rightcolumn">\r\n\r\n{embed="calendar_inc/side_column"}\r\n\r\n				<div id="aboutcolumn">\r\n\r\n					<h3>About This Page</h3>\r\n\r\n					<p>The "Event Detail" page is meant to display more detailed information about the event. All event occurrences that show up throughout these templates point back to this page to display the events details.</p>\r\n\r\n					<p>It makes use of the following functions:</p>\r\n\r\n					<ul>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_events/">Calendar:Events</a> to display detailed information about the event.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_occurrences/">Calendar:Occurrences</a> to display a list for both Upcoming and Past occurrences of this event (if it repeats).</li>\r\n						<li>a link to a page with <a href="http://www.solspace.com/docs/detail/calendar_icalendar/">Calendar:iCalendar</a> tag to allow users to export the selected event.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_mini/">Calendar:Cal in Mini mode</a> to display a Mini Calendar that links to days that have events.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_calendars/">Calendar:Calendars</a> to display a list of all available Calendars.</li>\r\n					</ul>\r\n\r\n				</div>\r\n\r\n			</div>\r\n\r\n		</div>\r\n\r\n{embed="calendar_inc/footer"}', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 0),
(16, 1, 3, 'export', 'n', 'webpage', '{exp:calendar:icalendar\n{if segment_3 == "event"}event_id="{segment_4}"{/if}\n{if segment_3 == "calendar"}calendar_id="{segment_4}"{/if}\n   date_range_start="99 months ago" show_months="999" dynamic="off"\n   }\n{/exp:calendar:icalendar}', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 0),
(17, 1, 3, 'index', 'n', 'webpage', '{embed="calendar_inc/index"}\r\n</head>\r\n<body id="home">\r\n{embed="calendar_inc/header"}\r\n\r\n		<div id="maincolumn">\r\n		\r\n			<h2>Calendar</h2>\r\n			\r\n			<h3>Home</h3>\r\n			\r\n			<p></p>\r\n\r\n			<div id="leftcolumn">\r\n\r\n<div id="wc_calendar">\r\n\r\n<div class="calendars" style="float:left;width:210px;">\r\n    <h4>Events by Month</h4>\r\n    <ul>\r\n   {exp:calendar:month_list date_range_start="2010-01-01" date_range_end="2011-06-last" limit="100"}\r\n       <li><a href="{path=''calendar_main/month''}/{month format="%Y/%m"}/">{month format="%F, %Y"}</a></li>\r\n   {/exp:calendar:month_list}\r\n    </ul></p>\r\n</div>\r\n\r\n<div class="calendars" style="float:left;width:415px;margin-left:15px;">\r\n    <h4>Events by Calendar</h4>\r\n    <ul>\r\n   {exp:calendar:calendars dynamic="off"}\r\n       <li><b style="padding-top:5px;line-height:25px;"><a href="{path=''calendar_main/calendars''}/{calendar_url_title}/">{calendar_title}</a></b>\r\n          <ul>\r\n             <li>View by: <a href="{path=''calendar_main/month/by_calendar''}/{calendar_url_title}/">Month</a> | <a href="{path=''calendar_main/week/by_calendar''}/{calendar_url_title}/">Week</a> | <a href="{path=''calendar_main/day/by_calendar''}/{calendar_url_title}/">Day</a></li>\r\n             <li>Upcoming Events:</li>\r\n          </ul>\r\n          <ul>\r\n{embed="calendar_inc/calendar_events" calendar_id="{calendar_id}" event_limit="5"}\r\n          </ul></li>\r\n   {/exp:calendar:calendars}\r\n    </ul></p>\r\n</div>\r\n\r\n</div>\r\n			</div>\r\n\r\n			<div id="rightcolumn">\r\n\r\n{embed="calendar_inc/side_column"}\r\n\r\n				<div id="aboutcolumn">\r\n		\r\n					<h3>About This Page</h3>\r\n			\r\n					<p>The "Home" page is meant to display a simple overview of Calendars, along with links that filter the other pages down to events for specific calendars and/or timeframes.</p>\r\n\r\n					<p>It makes use of the following function:</p>\r\n\r\n					<ul>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_month_list/">Calendar:Month_List</a> to display a list of all months for the past year and a half.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_cal/">Calendar:Cal</a> to display a list of recent upcoming events for available Calendars.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_mini/">Calendar:Cal in Mini mode</a> to display a Mini Calendar that links to days that have events.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_calendars/">Calendar:Calendars</a> to display a list of all available Calendars.</li>\r\n					</ul>\r\n		\r\n				</div>\r\n\r\n			</div>\r\n	\r\n		</div>\r\n		\r\n{embed="calendar_inc/footer"}', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 1),
(18, 1, 3, 'month', 'n', 'webpage', '{embed="calendar_inc/index" page_title="Month View"}\n  <!--[if gte IE 7]>\n  <style type="text/css">\n    #fc_calendar .event { width: 80px; }\n  </style>\n  <![endif]-->\n</head>\n<body id="home">\n{embed="calendar_inc/header"}\n\n		<div id="maincolumn">\n		\n			<h2>Calendar</h2>\n			\n			<h3>Month View</h3>\n			\n			<p></p>\n\n			<div id="leftcolumn">\n\n				<div id="fc_legend"><span class="legend">LEGEND:</span>\n					<div class="event multi_day first_day"><a href="#">Multi-Day Event</a></div>\n					<div class="event all_day first_day last_day">All Day Event</a></div>\n					<div class="event">1pm <a href="#">Regular Event</a></div>\n				</div>\n				<hr />\n				{if segment_3 == "by_calendar"}\n					{exp:calendar:calendars calendar_name="{segment_4}" dynamic="off"}\n					<div class="calendar">\n						<h3>Events for <span>{calendar_title}</span> Calendar</h3>\n					</div>\n					{/exp:calendar:calendars}\n				<hr />\n				{/if}\n\ncalendario messsssssss\n\n<div id="fc_calendar">\n   {exp:calendar:cal\n      {if segment_3 == "by_calendar"}\n         {if segment_5 == ''''}calendar_name="{segment_4}" date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_5 != ''''}calendar_name="{segment_4}" date_range_start="{segment_5}-{segment_6}-01" date_range_end="{segment_5}-{segment_6}-last"{/if}\n      {/if}\n      {if segment_3 != "by_calendar"}\n         {if segment_3 == ''''}date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_3 != ""}date_range_start="{segment_3}-{segment_4}-01" date_range_end="{segment_3}-{segment_4}-last"{/if}\n      {/if}\n   }\n      {display_each_month}\n      <table id="fc_outer">\n         <thead>\n            <tr id="month_year">\n               <th colspan="2" class="left">&laquo; <a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{prev_month format="%Y/%m"}/">{prev_month format="%F"}</a></th>\n               <th colspan="3" class="center">{month format="%F %Y"} ({month_event_total} events)</th>\n               <th colspan="2" class="right"><a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{next_month format="%Y/%m"}/">{next_month format="%F"}</a> &raquo;</th>\n            </tr>\n         </thead>\n         <tbody>\n            <tr>\n               <td colspan="7">\n                  <div class="wrap">\n                  <table id="fc_inner">\n                     <thead>\n                        <tr id="days_of_week">\n                           {display_each_day_of_week}\n                           <th class="day_of_week {day_of_week}">{day_of_week}</th>\n                           {/display_each_day_of_week}\n                        </tr>\n                     </thead>\n                     <tbody>\n                        {display_each_week}\n                           <tr>\n                              {display_each_day}\n                              {if day_in_current_month}\n                                 <td class="day_cell"><div class="date"><a class="num" href="{path=''calendar_main/day''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{day format="%Y/%m/%d"}/">{day format="%j"}</a></div>\n                              {if:else}\n                                 <td class="day_cell out_of_range"><div class="date"><span class="num">{day format="%j"}</span></div>\n                              {/if}\n                              {display_each_hour}\n                                 {events}\n                                    <div \n                                      class="\n                                         event {if event_all_day}all_day{/if} \n                                         {if event_multi_day}multi_day{/if} \n                                         {if event_first_day}first_day{/if} \n                                         {if event_last_day}last_day{/if} \n                                         {if all_day_event_index_difference > 0}index_difference_{all_day_event_index_difference}{/if}\n                                      ">\n                                   {if event_multi_day} \n                                      {if event_all_day == FALSE}\n                                         {if event_first_day}\n                                            {event_start_time}\n                                         {/if} \n                                         {if event_last_day}\n                                            {event_end_time}\n                                         {/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a>\n                                   {if:else}\n                                      {if event_all_day == ''''}\n                                         {event_start_date format="%g"}{if event_start_minute > 0}:{event_start_minute}{/if}{if event_end_time != event_start_time && event_end_time != ''00:00''}&ndash;{event_end_date format="%g"}{if event_end_minute > 0}:{event_end_minute}{/if}{event_end_date format="%a"}{if:else}{event_start_date format="%a"}{/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{if edited_occurrence}{event_parent_id}{if:else}{event_id}{/if}/" title="{event_title}">{event_title}</a>\n                                   {/if}\n                                    </div>\n                                 {/events}\n                              {/display_each_hour}\n                           </td>\n                           {/display_each_day}\n                        </tr>\n                        {/display_each_week}\n                     </tbody>\n                  </table>\n               </div>\n            </td>\n         </tbody>\n      </table>\n   {/display_each_month}\n   {/exp:calendar:cal}\n</div> \n\n			</div>\n\n			<div id="rightcolumn">\n\n{embed="calendar_inc/side_column"}\n\n				<div id="aboutcolumn">\n		\n					<h3>About This Page</h3>\n			\n					<p>The "Month" page is meant to show a typical Calendar month view of all events that fall within the selected month. Additionally, this page is set to allow filtering down to a specific Calendar (if you''ve come to this page from the Calendars page).</p>\n\n					<p>It makes use of the following function:</p>\n\n					<ul>\n						<li><a href="http://www.solspace.com/docs/detail/calendar_month/">Calendar:Cal in Month mode</a> to display a month view of events.</li>\n						<li><a href="http://www.solspace.com/docs/detail/calendar_mini/">Calendar:Cal in Mini mode</a> to display a Mini Calendar that links to days that have events.</li>\n						<li><a href="http://www.solspace.com/docs/detail/calendar_calendars/">Calendar:Calendars</a> to display a list of all available Calendars.</li>\n					</ul>\n		\n				</div>\n\n			</div>\n	\n		</div>\n		\n{embed="calendar_inc/footer"}', '', 1398807841, 1, 'n', 0, '', 'n', 'n', 'o', 5),
(19, 1, 3, 'week', 'n', 'webpage', '{embed="calendar_inc/index" page_title="Week View"}\r\n</head>\r\n<body id="home">\r\n{embed="calendar_inc/header"}\r\n\r\n		<div id="maincolumn">\r\n		\r\n			<h2>Calendar</h2>\r\n			\r\n			<h3>Week View</h3>\r\n			\r\n			<p></p>\r\n\r\n			<div id="leftcolumn">\r\n\r\n				{if segment_3 == "by_calendar"}\r\n					{exp:calendar:calendars calendar_name="{segment_4}" dynamic="off"}\r\n					<div class="calendar">\r\n						<h3>Events for <span>{calendar_title}</span> Calendar</h3>\r\n					</div>\r\n					{/exp:calendar:calendars}\r\n				<hr />\r\n				{/if}\r\n\r\n<div id="wc_calendar">\r\n{exp:calendar:cal enable="custom_fields" pad_short_weeks="y" dynamic="off"\r\n   {if segment_3 == "by_calendar"}\r\n      {if segment_5 == ''''}calendar_name="{segment_4}" date_range_start="0 weeks begin"{/if}\r\n      {if segment_5 != ''''}calendar_name="{segment_4}" date_range_start="{segment_5}-{segment_6}-{segment_7}" date_range_end="{segment_5}-{segment_6}-{segment_7}"{/if}\r\n   {/if}\r\n   {if segment_3 != "by_calendar"}\r\n      {if segment_3 == ''''}date_range_start="0 weeks begin"{/if}\r\n      {if segment_3 != ""}date_range_start="{segment_3}-{segment_4}-{segment_5}" date_range_end="{segment_3}-{segment_4}-{segment_5}"{/if}\r\n   {/if}\r\n}\r\n\r\n   {display_each_week}\r\n   <div class="header">\r\n      <div class="left">\r\n         <a href="{path=''calendar_main/week''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{prev_week format="%Y/%m/%d"}/">Last Week</a>\r\n      </div>\r\n      <div class="center">\r\n         <h2>Week of {week format="%l, %F %j, %Y"}<br /><span>({week_event_total} events)</span></h2>\r\n      </div>\r\n      <div class="right">\r\n         <a href="{path=''calendar_main/week''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{next_week format="%Y/%m/%d"}/">Next Week</a>\r\n      </div>\r\n      <hr />\r\n   </div>\r\n   {display_each_day}\r\n   <div class="day">\r\n      <h4><a href="{path=''calendar_main/day''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{day format="%Y/%m/%d"}/">{day format="%l, %F %j, %Y"}</a><span> ({day_event_total} events)</span></h4>\r\n      <ul>\r\n      {if day_event_total == 0}<li>No events for this day.</li>{/if}\r\n         {events}\r\n         <li class="event">\r\n            <a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a> {if event_all_day}(all day){if:else}{event_start_date format="%g:%i%a"}{if event_end_time != event_start_time && event_end_time != ''00:00''} - {event_end_date format="%g:%i%a"}{/if}{/if}\r\n         </li>\r\n         {/events}\r\n      </ul>\r\n   </div>\r\n   {/display_each_day}\r\n   {/display_each_week}\r\n{/exp:calendar:cal}\r\n</div> \r\n\r\n			</div>\r\n\r\n			<div id="rightcolumn">\r\n\r\n{embed="calendar_inc/side_column"}\r\n\r\n				<div id="aboutcolumn">\r\n		\r\n					<h3>About This Page</h3>\r\n			\r\n					<p>The "Week" page is meant to show events for a particular week. Additionally, this page can be filtered down to display events for a specific calendar (if you''ve come from the Calendars page).</p>\r\n\r\n					<p>It makes use of the following function:</p>\r\n\r\n					<ul>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_week/">Calendar:Cal in Week mode</a> to display events for a particular week.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_mini/">Calendar:Cal in Mini mode</a> to display a Mini Calendar that links to days that have events.</li>\r\n						<li><a href="http://www.solspace.com/docs/detail/calendar_calendars/">Calendar:Calendars</a> to display a list of all available Calendars.</li>\r\n					</ul>\r\n		\r\n				</div>\r\n\r\n			</div>\r\n	\r\n		</div>\r\n		\r\n{embed="calendar_inc/footer"}', NULL, 1398800100, 0, 'n', 0, '', 'n', 'n', 'o', 0);
INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`) VALUES
(20, 1, 1, 'calendarios', 'y', 'webpage', '<div id="fc_calendar">\n   {exp:calendar:cal date_range_start="2014-04-10 @ 08:00 am" date_range_end="2014-04-18 @ 10:00 pm"\n      {if segment_3 == "by_calendar"}\n         {if segment_5 == ''''}calendar_name="{segment_4}" date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_5 != ''''}calendar_name="{segment_4}" date_range_start="{segment_5}-{segment_6}-01" date_range_end="{segment_5}-{segment_6}-last"{/if}\n      {/if}\n      {if segment_3 != "by_calendar"}\n         {if segment_3 == ''''}date_range_start="year-month-01" date_range_end="year-month-last"{/if}\n         {if segment_3 != ""}date_range_start="{segment_3}-{segment_4}-01" date_range_end="{segment_3}-{segment_4}-last"{/if}\n      {/if}\n   }\n      {display_each_month}\n      <table id="fc_outer">\n         <thead>\n            <tr id="month_year">\n               <th colspan="2" class="left">&laquo; <a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{prev_month format="%Y/%m"}/">{prev_month format="%F"}</a></th>\n               <th colspan="3" class="center">{month format="%F %Y"} ({month_event_total} events)</th>\n               <th colspan="2" class="right"><a href="{path=''calendar_main/month''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{next_month format="%Y/%m"}/">{next_month format="%F"}</a> &raquo;</th>\n            </tr>\n         </thead>\n         <tbody>\n            <tr>\n               <td colspan="7">\n                  <div class="wrap">\n                  <table id="fc_inner">\n                     <thead>\n                        <tr id="days_of_week">\n                           {display_each_day_of_week}\n                           <th class="day_of_week {day_of_week}">{day_of_week}</th>\n                           {/display_each_day_of_week}\n                        </tr>\n                     </thead>\n                     <tbody>\n                        {display_each_week}\n                           <tr>\n                              {display_each_day}\n                              {if day_in_current_month}\n                                 <td class="day_cell"><div class="date"><a class="num" href="{path=''calendar_main/day''}/{if segment_3 == "by_calendar"}by_calendar/{segment_4}/{/if}{day format="%Y/%m/%d"}/">{day format="%j"}</a></div>\n                              {if:else}\n                                 <td class="day_cell out_of_range"><div class="date"><span class="num">{day format="%j"}</span></div>\n                              {/if}\n                              {display_each_hour}\n                                 {events}\n                                    <div \n                                      class="\n                                         event {if event_all_day}all_day{/if} \n                                         {if event_multi_day}multi_day{/if} \n                                         {if event_first_day}first_day{/if} \n                                         {if event_last_day}last_day{/if} \n                                         {if all_day_event_index_difference > 0}index_difference_{all_day_event_index_difference}{/if}\n                                      ">\n                                   {if event_multi_day} \n                                      {if event_all_day == FALSE}\n                                         {if event_first_day}\n                                            {event_start_time}\n                                         {/if} \n                                         {if event_last_day}\n                                            {event_end_time}\n                                         {/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{event_id}/">{event_title}</a>\n                                   {if:else}\n                                      {if event_all_day == ''''}\n                                         {event_start_date format="%g"}{if event_start_minute > 0}:{event_start_minute}{/if}{if event_end_time != event_start_time && event_end_time != ''00:00''}&ndash;{event_end_date format="%g"}{if event_end_minute > 0}:{event_end_minute}{/if}{event_end_date format="%a"}{if:else}{event_start_date format="%a"}{/if}\n                                      {/if}\n                                         <a href="{path=''calendar_main/event''}/{if edited_occurrence}{event_parent_id}{if:else}{event_id}{/if}/" title="{event_title}">{event_title}</a>\n                                   {/if}\n                                    </div>\n                                 {/events}\n                              {/display_each_hour}\n                           </td>\n                           {/display_each_day}\n                        </tr>\n                        {/display_each_week}\n                     </tbody>\n                  </table>\n               </div>\n            </td>\n         </tbody>\n      </table>\n   {/display_each_month}\n   {/exp:calendar:cal}\n</div> \n\n\n', '', 1398811856, 1, 'n', 0, '', 'n', 'n', 'o', 22),
(21, 1, 1, 'mini_calendar', 'y', 'webpage', '<html>\n    <head>\n        <title>Month Calendar</title>\n        <link rel="stylesheet" type="text/css" href="/themes/third_party/calendar/templates/month.css" />\n        <!--[if gte IE 7]>\n        <style type="text/css">\n            #fc_calendar .event { width: 137px; }\n        </style>\n        <![endif]-->\n    </head>\n    <body>\n        <div id="fc_calendar">\n            {exp:calendar:cal\n            {if segment_3 == ''''}\n                date_range_start="year-month-01"\n                date_range_end="year-month-last"\n            {/if}\n            {if segment_3 != ""}\n                date_range_start="{segment_3}-{segment_4}-01"\n                date_range_end="{segment_3}-{segment_4}-last"\n            {/if}\n            }\n            {display_each_month}\n            <table id="fc_outer">\n                <thead>\n                    <tr id="month_year">\n                        <th colspan="2">&laquo;\n                            <a href="{path=''calendar/month''}/{prev_month format="%Y/%m"}/">\n                                {prev_month format="%F"}\n                            </a>\n                        </th>\n                        <th colspan="3">{date format="%F %Y"}</th>\n                        <th colspan="2">\n                            <a href="{path=''calendar/month''}/{next_month format="%Y/%m"}/">\n                                {next_month format="%F"}\n                            </a>\n                            &raquo;\n                        </th>\n                    </tr>\n                </thead>\n                <tbody>\n                    <tr>\n                        <td colspan="7">\n                            <div class="wrap">\n                                <table id="fc_inner">\n                                    <thead>\n                                        <tr id="days_of_week">\n                                            {display_each_day_of_week}\n                                            <th class="day_of_week {day_of_week}">\n                                                {day_of_week}\n                                            </th>\n                                            {/display_each_day_of_week}\n                                        </tr>\n                                    </thead>\n                                    <tbody>\n                                        {display_each_week}\n                                         <tr>\n                                            {display_each_day}\n                                            {if day_in_current_month}\n                                                <td class="day_cell">\n                                                    <div class="date">\n                                                        <a class="num"\n                                                            href="{path=''calendar/day''}/{date format="%Y/%m/%d"}/">\n                                                            {date format="%j"}\n                                                        </a>\n                                                    </div>\n                                            {if:else}\n                                                <td class="day_cell out_of_range">\n                                                    <div class="date">\n                                                    <span class="num">\n                                                        {date format="%j"}\n                                                    </span>\n                                                </div>\n                                            {/if}\n                                            {display_each_hour}\n                                                {events}\n                                                    <div\n                                                      class="\n                                                        event {if event_all_day}all_day{/if}\n                                                        {if event_multi_day}multi_day{/if}\n                                                        {if event_first_day}first_day{/if}\n                                                        {if event_last_day}last_day{/if}\n                                                        {if all_day_event_index_difference > 0}\n                                                            index_difference_{all_day_event_index_difference}\n                                                        {/if}\n                                                      ">\n                                                    {if event_multi_day}\n                                                        {if event_all_day == FALSE}\n                                                            {if event_first_day}\n                                                                {event_start_time}\n                                                            {/if}\n                                                            {if event_last_day}\n                                                                {event_end_time}\n                                                            {/if}\n                                                        {/if}\n                                                        <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n                                                    {if:else}\n                                                        {if event_all_day == ''''}\n                                                            {event_start_date format="%g"}\n                                                            {if event_start_minute > 0}\n                                                                :{event_start_minute}\n                                                            {/if}\n                                                            {if event_end_time != event_start_time && event_end_time != ''00:00''}\n                                                                &ndash;\n                                                                {event_end_date format="%g"}\n                                                                {if event_end_minute > 0}\n                                                                    :{event_end_minute}\n                                                                {/if}\n                                                                {event_end_date format="%a"}\n                                                            {if:else}\n                                                                {event_start_date format="%a"}\n                                                            {/if}\n                                                        {/if}\n                                                         <a href="{path=''calendar/events''}/{event_id}/">{event_title}</a>\n                                                    {/if}\n                                                    </div>\n                                                    {/events}\n                                                {/display_each_hour}\n                                            </td>\n                                            {/display_each_day}\n                                        </tr>\n                                        {/display_each_week}\n                                    </tbody>\n                                </table>\n                            </div>\n                        </td>\n                    </tr>\n                </tbody>\n            </table>\n            {/display_each_month}\n            {/exp:calendar:cal}\n        </div>\n    </body>\n</html>', '', 1398814875, 1, 'n', 0, '', 'n', 'n', 'o', 29),
(22, 1, 1, 'usar_form', 'y', 'webpage', '<html>\n    <head>\n        <title>Add an Event to the Calendar</title>\n        <script type="text/javascript" \n            src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>\n        <script type="text/javascript"\n            src="/themes/third_party/calendar/js/jquery-ui.custom.min.js"></script>\n        {exp:calendar:datepicker_js}\n        {exp:calendar:datepicker_css}\n    </head>\n    <body>\n        <div id="calendar_saef">\n            {exp:channel:form channel="calendar_events" return="calendar/event/ENTRY_ID"}\n                <p>\n                    <label>Title:</label><br />\n                    <input type="text" name="title" />\n                </p>\n                {exp:calendar:date_widget}\n                <p>\n                    <label>Summary:</label><br />\n                    <textarea name="event_summary"></textarea>\n                </p>\n                <p>\n                    <label>Location:</label><br />\n                    <input type="text" name="event_location" />\n                </p>\n                <p>\n                    <input type="submit" name="submit" value="Submit" />\n                </p>\n            {/exp:channel:form}\n        </div>\n    </body>\n</html>', '', 1398817547, 1, 'n', 0, '', 'n', 'n', 'o', 6);
INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`) VALUES
(23, 1, 4, 'calendar', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Cal | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Cal</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li class="current"><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:Cal</em> loop is the workhorse behind the Calendar module. It\ncan do almost anything you want it to do. In a nutshell, it outputs\ncalendar data in a variety of formats.</p>\n\n<pre class="brush: html;">{exp:calendar:cal} content {/exp:calendar:cal} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#variable_pairs">Variable Pairs</a></li>\n<li><a href="#conditionals">Conditionals</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>The following parameters are available for use:</p>\n\n<ul>\n<li><a href="#author_id">author_id</a></li>\n<li><a href="#site">site</a></li>\n<li><a href="#category">category</a></li>\n<li><a href="#calendar_id">calendar_id</a></li>\n<li><a href="#calendar_name">calendar_name</a></li>\n<li><a href="#dynamic">dynamic</a></li>\n<li><a href="#event_id">event_id</a></li>\n<li><a href="#event_name">event_name</a></li>\n<li><a href="#event_limit">event_limit</a></li>\n<li><a href="#event_offset">event_offset</a></li>\n<li><a href="#date_range_start">date_range_start</a></li>\n<li><a href="#date_range_end">date_range_end</a></li>\n<li><a href="#show_days">show_days</a></li>\n<li><a href="#show_weeks">show_weeks</a></li>\n<li><a href="#show_months">show_months</a></li>\n<li><a href="#show_years">show_years</a></li>\n<li><a href="#first_day_of_week">first_day_of_week</a></li>\n<li><a href="#pad_short_weeks">pad_short_weeks</a></li>\n<li><a href="#paginate">paginate</a></li>\n<li><a href="#enable">enable</a></li>\n</ul>\n\n<p><a name="author_id"></a></p>\n\n<h3>author_id=</h3>\n\n<pre class="brush: html;">author_id="{segment_3}" </pre>\n\n<p>Allows you to filter your event results by the member(s) that authored\nthem.</p>\n\n<p><a name="site"></a></p>\n\n<h3>site=</h3>\n\n<pre class="brush: html;">site="default_site" </pre>\n\n<p>If using MSM, you can specify a Site short name in this parameter to\nfilter entries down to that site.</p>\n\n<p><a name="category"></a></p>\n\n<h3>category=</h3>\n\n<pre class="brush: html;">category="12|15" </pre>\n\n<p>This parameter allows you to filter your results by events that belong\nto specific categories. You can specify a category ID or a category\nurl_title. You can hardcode the value, pass it through an embed, or\ngrab it from the URI. Seperate multiples with the pipe character.</p>\n\n<p><a name="calendar_id"></a></p>\n\n<h3>calendar_id=</h3>\n\n<pre class="brush: html;">calendar_id="1|3" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir entry ID(s). You can hardcode a calendar ID, pass it through an\nembed, or grab it from the URI. Seperate multiples with the pipe\ncharacter.</p>\n\n<p><a name="calendar_name"></a></p>\n\n<h3>calendar_name=</h3>\n\n<pre class="brush: html;">calendar_name="soccer|baseball|dodgeball" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir short_names (entry url_title). You can hardcode a short_name,\npass it through an embed, or grab it from the URI. Seperate multiples\nwith the pipe character.</p>\n\n<p><a name="dynamic"></a></p>\n\n<h3>dynamic=</h3>\n\n<pre class="brush: html;">dynamic="no" </pre>\n\n<p>This parameter allows you to enable/disable this template tag from\nlooking into the URI for entry ID''s or url titles. This is OFF by\ndefault. To enable, add this parameter and specify <strong>yes</strong>.</p>\n\n<p><a name="event_id"></a></p>\n\n<h3>event_id=</h3>\n\n<pre class="brush: html;">event_id="23|77" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nentry ID(s). You can hardcode an event ID, pass it through an embed, or\ngrab it from the URI. Seperate multiples with the pipe character.</p>\n\n<p><a name="event_name"></a></p>\n\n<h3>event_name=</h3>\n\n<pre class="brush: html;">event_name="best_event_evar|christmas|pie_day" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nshort_names (entry url_title). You can hardcode a short_name, pass it\nthrough an embed, or grab it from the URI. Seperate multiples with the\npipe character.</p>\n\n<p><a name="event_limit"></a></p>\n\n<h3>event_limit=</h3>\n\n<pre class="brush: html;">event_limit="5" </pre>\n\n<p>This parameter lets you limit the number of events and occurrences to be\ndisplayed. Default is unlimited.</p>\n\n<p><a name="event_offset"></a></p>\n\n<h3>event_offset=</h3>\n\n<pre class="brush: html;">event_offset="1" </pre>\n\n<p>This parameter lets you offset the results of events and occurrences\ndisplayed. For example, if you''d like the first result to be skipped\nfrom the results, specify a value of <strong>1</strong>.</p>\n\n<p><a name="date_range_start"></a></p>\n\n<h3>date_range_start=</h3>\n\n<pre class="brush: html;">date_range_start="2010-01-31 @ 8:00 AM" </pre>\n\n<p>Limits output to events on or after this date. If not specified, this\nvalue defaults to Today. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and easy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="date_range_end"></a></p>\n\n<h3>date_range_end=</h3>\n\n<pre class="brush: html;">date_range_end="2010-02-14 @ noon" </pre>\n\n<p>Limits output to events on or before this date. If not specified, this\nvalue defaults to Today. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and easy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="show_days"></a></p>\n\n<h3>show_days=</h3>\n\n<pre class="brush: html;">show_days="14" </pre>\n\n<p>Specifies the number of days to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. If set to a value like <strong>1</strong>, it will\nshow the remainder of today only (as opposed to a 24hr period). If set\nto a value like <strong>3</strong>, it will show remainder of today +2 days. Used in\nconjunction with either <a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="show_weeks"></a></p>\n\n<h3>show_weeks=</h3>\n\n<pre class="brush: html;">show_weeks="3" </pre>\n\n<p>Specifies the number of weeks to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. If set to a value like <strong>1</strong>, it will\nshow the remainder of the current week only (as opposed to a 7 day\nperiod). If set to a value like <strong>3</strong>, it will show the remainder of the\ncurrent week +2 weeks. This respects the\n<a href="#first_day_of_week">first_day_of_week</a> parameter. So if today is\n<em>Thursday, March 10</em>, and your <a href="#date_range_start">date_range_start</a>\nparameter is set to <strong>today</strong> and <em>show_weeks</em> parameter is set to <strong>1</strong>, it will show events from <em>Thursday, March 10</em> to <em>Saturday, March 12</em>. If you were to use the <a href="#date_range_end">date_range_end</a> parameter set to <strong>today</strong>\nand <em>show_weeks</em> parameter is set to <strong>1</strong>, it will show events from <em>Sunday,\nMarch 6</em> to <em>Thursday, March 10</em>. Used in conjunction with either\n<a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="show_months"></a></p>\n\n<h3>show_months=</h3>\n\n<pre class="brush: html;">show_months="6" </pre>\n\n<p>Specifies the number of months to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. If set to a value like <strong>1</strong>, it will\nshow the remainder of the current month only (as opposed to a 30/31 day\nperiod). If set to a value like <strong>3</strong>, it will show the remainder of the\ncurrent month +2 months. So if today is <em>March 11</em>, and your\n<a href="#date_range_start">date_range_start</a> parameter is set to <strong>today</strong> and\n<em>show_months</em> parameter is set to <strong>1</strong>, it will show events from <em>March 11</em> to <em>March 31</em>. If you were to use the <a href="#date_range_end">date_range_end</a>\nparameter set to <strong>today</strong> and <em>show_months</em> parameter is set to <strong>1</strong>, it will show events from <em>March 1</em> to <em>March 11</em>. Used in conjunction with either <a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="show_years"></a></p>\n\n<h3>show_years=</h3>\n\n<pre class="brush: html;">show_years="2" </pre>\n\n<p>Specifies the number of years to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. If set to a value like <strong>1</strong>, it will\nshow the remainder of the current year only (as opposed to a 365 day\nperiod). If set to a value like <strong>3</strong>, it will show the remainder of the\ncurrent year +2 years. So if today is <em>March 11, 2011</em>, and your\n<a href="#date_range_start">date_range_start</a> parameter is set to <strong>today</strong> and\n<em>show_years</em> parameter is set to <strong>1</strong>, it will show events from <em>March 11,\n2011</em> to <em>December 31, 2011</em>. If you were to use the\n<a href="#date_range_end">date_range_end</a> parameter set to <strong>today</strong> and\n<em>show_months</em> parameter is set to <strong>1</strong>, it will show events from <em>January 1,\n2011</em> to <em>March 11, 2011</em>. Used in conjunction with either\n<a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="first_day_of_week"></a></p>\n\n<h3>first_day_of_week=</h3>\n\n<pre class="brush: html;">first_day_of_week="0" </pre>\n\n<p>By default, Calendar considers Sunday as the first day of the week. This\nparameter allows you to override that by specifying the numeric value of\na weekday (ex: <em>Sunday</em> = <strong>0</strong>, <em>Monday</em> = <strong>1</strong>, etc).</p>\n\n<p><a name="pad_short_weeks"></a></p>\n\n<h3>pad_short_weeks=</h3>\n\n<pre class="brush: html;">pad_short_weeks="n" </pre>\n\n<p>You''ll likely need to have this parameter set to <strong>n</strong> in the event you''re\ntrying to display anything other than a typical calendar display. When\nset to <strong>n</strong>, weeks won''t be "padded" to the nearest first day of the week\nand last day of the week, as Calendar does this by default for the sake\nof properly outputting and formatting a calendar.</p>\n\n<p>So for example, using the <a href="#date_range_start">date_range_start</a> and\n<a href="#date_range_end">date_range_end</a> parameters, if your code looks like\nthis:</p>\n\n<pre class="brush: html;">date_range_start="2011-10-19" date_range_end="2011-10-21" </pre>\n\n<p>With <em>pad_short_weeks</em> parameter NOT specified, Calendar will\nautomatically display the entire week range (<strong>2011-10-16 - 2011-10-22</strong>). \nWith <em>pad_short_weeks="n"</em>, Calendar will just display the selected\nrange (<strong>2011-10-19 - 2011-10-21</strong>).</p>\n\n<p><img src="images/calendar_pad_short_weeks.gif" alt="" /></p>\n\n<p><a name="paginate"></a></p>\n\n<h3>paginate=</h3>\n\n<pre class="brush: html;">paginate="both" </pre>\n\n<p>This parameter allows you to control where the pagination will display.\nOptions are <strong>top</strong>, <strong>bottom</strong>, or <strong>both</strong>. Used in conjunction with the\n<a href="#paginate">paginate</a> variable pair.</p>\n\n<p><a name="enable"></a></p>\n\n<h3>enable=</h3>\n\n<pre class="brush: html;">enable="categories|category_fields|custom_fields|member_data|pagination" </pre>\n\n<p>By default, this function does not grab any advanced weblog data in\norder to improve performance. However, opposite to the EE Channel\nmodule''s\n<a href="http://ellislab.com/expressionengine/user-guide/modules/channel/channel_entries.html#disable" title="EE Channel module Documentation">disable</a>\nparameter, this parameter allows you to enable some or all of those\nfeatures when you need them. Seperate multiples with the pipe character.\nOptions are: <strong>categories</strong>, <strong>category_fields</strong>, <strong>custom_fields</strong>, <strong>member_data</strong> and <strong>pagination</strong>.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>Most of the <a href="events.html#variables" title="Calendar:Events Documentation">variables listed in\nCalendar:Events</a>\nare available for use within the <a href="#events">events</a> variable pair.\nAdditionally, these exist as well:</p>\n\n<ul>\n<li><a href="#date">date</a></li>\n<li><a href="#event_count">event_count</a></li>\n<li><a href="#event_total">event_total</a></li>\n<li><a href="#year_event_count">year_event_count</a></li>\n<li><a href="#year_event_total">year_event_total</a></li>\n<li><a href="#prev_year">prev_year</a></li>\n<li><a href="#next_year">next_year</a></li>\n<li><a href="#month_event_count">month_event_count</a></li>\n<li><a href="#month_event_total">month_event_total</a></li>\n<li><a href="#prev_month">prev_month</a></li>\n<li><a href="#next_month">next_month</a></li>\n<li><a href="#week_event_count">week_event_count</a></li>\n<li><a href="#week_event_total">week_event_total</a></li>\n<li><a href="#prev_week">prev_week</a></li>\n<li><a href="#next_week">next_week</a></li>\n<li><a href="#day_of_week">day_of_week</a></li>\n<li><a href="#day_of_week_one">day_of_week_one</a></li>\n<li><a href="#day_of_week_short">day_of_week_short</a></li>\n<li><a href="#day_of_week_N">day_of_week_N</a></li>\n<li><a href="#day_of_week_number">day_of_week_number</a></li>\n<li><a href="#day_event_count">day_event_count</a></li>\n<li><a href="#day_event_total">day_event_total</a></li>\n<li><a href="#prev_day">prev_day</a></li>\n<li><a href="#next_day">next_day</a></li>\n<li><a href="#hour_event_count">hour_event_count</a></li>\n<li><a href="#hour_event_total">hour_event_total</a></li>\n<li><a href="#hour_switch">hour_switch</a></li>\n<li><a href="#calendar_ignore_title">calendar_ignore_title</a></li>\n<li><a href="#calendar_ignore_url_title">calendar_ignore_url_title</a></li>\n</ul>\n\n<p><a name="date"></a></p>\n\n<h3>date</h3>\n\n<pre class="brush: html;">{date format="%F %j, %Y"} </pre>\n\n<p>Displays the given date, formatted using EE-style format characters.\nAvailable only within the <a href="#display_each_year">display_each_year</a>,\n<a href="#display_each_month">display_each_month</a>,\n<a href="#display_each_week">display_each_week</a>,\n<a href="#display_each_day">display_each_day</a>,\n<a href="#display_each_hour">display_each_hour</a> variable pairs.</p>\n\n<p><a name="event_count"></a></p>\n\n<h3>event_count</h3>\n\n<pre class="brush: html;">{event_count} </pre>\n\n<p>This variable outputs the display order number for each event result in the given timeframe. Available only within the\n<a href="#events">events</a> variable pair.</p>\n\n<p><a name="event_total"></a></p>\n\n<h3>event_total</h3>\n\n<pre class="brush: html;">{event_total} </pre>\n\n<p>This variable outputs the total amount of events outputted for the given\ntimeframe. Available only within the\n<a href="#events">events</a> variable pair.</p>\n\n<p><a name="year_event_count"></a></p>\n\n<h3>year_event_count</h3>\n\n<pre class="brush: html;">{year_event_count} </pre>\n\n<p>This variable outputs the display order number for each event result for\na given year. Available only within the\n<a href="#display_each_year">display_each_year</a> variable pair.</p>\n\n<p><a name="year_event_total"></a></p>\n\n<h3>year_event_total</h3>\n\n<pre class="brush: html;">{year_event_total} </pre>\n\n<p>This variable outputs the total amount of events outputted for a given\nyear. Available only within the\n<a href="#display_each_year">display_each_year</a> variable pair.</p>\n\n<p><a name="prev_year"></a></p>\n\n<h3>prev_year</h3>\n\n<pre class="brush: html;">{prev_year format="%Y"} </pre>\n\n<p>Displays the previous year, formatted using EE-style format characters.\nIf <em>format=""</em> is not specified, it will parse as <strong>YYYY</strong> (ex: <strong>2008</strong>).\nAvailable only within the <a href="#display_each_year">display_each_year</a>\nvariable pair.</p>\n\n<p><a name="next_year"></a></p>\n\n<h3>next_year</h3>\n\n<pre class="brush: html;">{next_year format="%Y"} </pre>\n\n<p>Displays the next year, formatted using EE-style format characters. If\n<em>format=""</em> is not specified, it will parse as <strong>YYYY</strong> (ex: <strong>2010</strong>). Available only within the <a href="#display_each_year">display_each_year</a> variable pair.</p>\n\n<p><a name="month_event_count"></a></p>\n\n<h3>month_event_count</h3>\n\n<pre class="brush: html;">{month_event_count} </pre>\n\n<p>This variable outputs the display order number for each event result for\na given month. Available only within the\n<a href="#display_each_month">display_each_month</a> variable pair.</p>\n\n<p><a name="month_event_total"></a></p>\n\n<h3>month_event_total</h3>\n\n<pre class="brush: html;">{month_event_total} </pre>\n\n<p>This variable outputs the total amount of events outputted for a given\nmonth. Available only within the\n<a href="#display_each_month">display_each_month</a> variable pair.</p>\n\n<p><a name="prev_month"></a></p>\n\n<h3>prev_month</h3>\n\n<pre class="brush: html;">{prev_month format="%F %Y"} </pre>\n\n<p>Displays the previous month, formatted using EE-style format characters.\nIf <em>format=""</em> is not specified, it will parse as <strong>MM</strong> (ex: <strong>02</strong>). Available only within the <a href="#display_each_month">display_each_month</a> variable\npair.</p>\n\n<p><a name="next_month"></a></p>\n\n<h3>next_month</h3>\n\n<pre class="brush: html;">{next_month format="%F %Y"} </pre>\n\n<p>Displays the next month, formatted using EE-style format characters. If\n<em>format=""</em> is not specified, it will parse as <strong>MM</strong> (ex: <strong>04</strong>). Available only within the <a href="#display_each_month">display_each_month</a> variable pair.</p>\n\n<p><a name="week_event_count"></a></p>\n\n<h3>week_event_count</h3>\n\n<pre class="brush: html;">{week_event_count} </pre>\n\n<p>This variable outputs the display order number for each event result for\na given week. Available only within the\n<a href="#display_each_week">display_each_week</a> variable pair.</p>\n\n<p><a name="week_event_total"></a></p>\n\n<h3>week_event_total</h3>\n\n<pre class="brush: html;">{week_event_total} </pre>\n\n<p>This variable outputs the total amount of events outputted for a given\nweek. Available only within the\n<a href="#display_each_week">display_each_week</a> variable pair.</p>\n\n<p><a name="prev_week"></a></p>\n\n<h3>prev_week</h3>\n\n<pre class="brush: html;">Week beginning {prev_week format="%F %j, %Y"} </pre>\n\n<p>Displays the starting day date for the previous week, formatted using\nEE-style format characters. If <em>format=""</em> is not specified, it will parse\nas the numeric week number - <strong>WW</strong> (ex: <strong>50</strong>). Available only within the\n<a href="#display_each_week">display_each_week</a> variable pair.</p>\n\n<p><a name="next_week"></a></p>\n\n<h3>next_week</h3>\n\n<pre class="brush: html;">Week beginning {next_week format="%F %j, %Y"} </pre>\n\n<p>Displays the starting day date for the next week, formatted using\nEE-style format characters. If <em>format=""</em> is not specified, it will parse\nas the numeric week number - <strong>WW</strong> (ex: <strong>52</strong>). Available only within the\n<a href="#display_each_week">display_each_week</a> variable pair.</p>\n\n<p><a name="day_of_week"></a></p>\n\n<h3>day_of_week</h3>\n\n<pre class="brush: html;">{day_of_week} </pre>\n\n<p>Displays the full text of the day of the week (ex: <strong>Thursday</strong>). Available\nonly within the\n<a href="#display_each_day_of_week">display_each_day_of_week</a> variable pair.</p>\n\n<p><a name="day_of_week_one"></a></p>\n\n<h3>day_of_week_one</h3>\n\n<pre class="brush: html;">{day_of_week_one} </pre>\n\n<p>Displays the first letter of the day of the week (ex: Wednesday = <strong>W</strong>).\nAvailable only within the\n<a href="#display_each_day_of_week">display_each_day_of_week</a> variable pair.</p>\n\n<p><a name="day_of_week_short"></a></p>\n\n<h3>day_of_week_short</h3>\n\n<pre class="brush: html;">{day_of_week_short} </pre>\n\n<p>Displays a shortened version of the day of the week (ex: <strong>Fri</strong>). Available\nonly within the\n<a href="#display_each_day_of_week">display_each_day_of_week</a> variable pair.</p>\n\n<p><a name="day_of_week_n"></a></p>\n\n<h3>day_of_week_N</h3>\n\n<pre class="brush: html;">{day_of_week_N} </pre>\n\n<p>Displays the numeric day of the week (ex: Monday = <strong>1</strong>, Sunday = <strong>7</strong>).\nAvailable only within the\n<a href="#display_each_day_of_week">display_each_day_of_week</a> variable pair.</p>\n\n<p><a name="day_of_week_number"></a></p>\n\n<h3>day_of_week_number</h3>\n\n<pre class="brush: html;">{day_of_week_number} </pre>\n\n<p>Displays the numeric day of the week (ex: Sunday = <strong>0</strong>, Saturday = <strong>6</strong>).\nAvailable only within the\n<a href="#display_each_day_of_week">display_each_day_of_week</a> variable pair.</p>\n\n<p><a name="day_event_count"></a></p>\n\n<h3>day_event_count</h3>\n\n<pre class="brush: html;">{day_event_count} </pre>\n\n<p>This variable outputs the display order number for each event result for\na given day. Available only within the\n<a href="#display_each_day">display_each_day</a> variable pair.</p>\n\n<p><a name="day_event_total"></a></p>\n\n<h3>day_event_total</h3>\n\n<pre class="brush: html;">{day_event_total} </pre>\n\n<p>This variable outputs the total amount of events outputted for a given\nday. Available only within the <a href="#display_each_day">display_each_day</a>\nvariable pair.</p>\n\n<p><a name="prev_day"></a></p>\n\n<h3>prev_day</h3>\n\n<pre class="brush: html;">{prev_day format="%F %j, %Y"} </pre>\n\n<p>Displays the previous day, formatted using EE-style format characters.\nIf <em>format=""</em> is not specified, it will parse as <strong>DD</strong> (ex: <strong>29</strong>). Available only within the <a href="#display_each_day">display_each_day</a> variable pair.</p>\n\n<p><a name="next_day"></a></p>\n\n<h3>next_day</h3>\n\n<pre class="brush: html;">{next_day format="%F %j, %Y"} </pre>\n\n<p>Displays the next day, formatted using EE-style format characters. If\n<em>format=""</em> is not specified, it will parse as <strong>DD</strong> (ex: <strong>31</strong>). Available only within the <a href="#display_each_day">display_each_day</a> variable pair.</p>\n\n<p><a name="hour_event_count"></a></p>\n\n<h3>hour_event_count</h3>\n\n<pre class="brush: html;">{hour_event_count} </pre>\n\n<p>This variable outputs the display order number for each event result for\na given hour. Available only within the\n<a href="#display_each_hour">display_each_hour</a> variable pair.</p>\n\n<p><a name="hour_event_total"></a></p>\n\n<h3>hour_event_total</h3>\n\n<pre class="brush: html;">{hour_event_total} </pre>\n\n<p>This variable outputs the total amount of events outputted for a given\nhour. Available only within the\n<a href="#display_each_hour">display_each_hour</a> variable pair.</p>\n\n<p><a name="hour_switch"></a></p>\n\n<h3>hour_switch</h3>\n\n<pre class="brush: html;">{hour_switch="one|two"} </pre>\n\n<p>This variable allows you to switch a CSS class back and\nfourth for all outputed results. Available only within the\n<a href="#display_each_hour">display_each_hour</a> variable pair.</p>\n\n<p><a name="calendar_ignore_title"></a></p>\n\n<h3>calendar_ignore_title</h3>\n\n<pre class="brush: html;">{calendar_ignore_title} </pre>\n\n<p>Due to the way Calendar works, it can cause trouble when trying to parse\ndata with other addons (such as displaying related entries). By\nspecifying this variable, it''ll parse the equivelant of <strong>{title}</strong> and tell\nCalendar to leave the variable alone.</p>\n\n<p><a name="calendar_ignore_url_title"></a></p>\n\n<h3>calendar_ignore_url_title</h3>\n\n<pre class="brush: html;">{calendar_ignore_url_title} </pre>\n\n<p>Due to the way Calendar works, it can cause trouble when trying to parse\ndata with other addons (such as displaying related entries). By\nspecifying this variable, it''ll parse the equivelant of <strong>{url_title}</strong> and\ntell Calendar to leave the variable alone.</p>\n\n<p><a name="variable_pairs"></a></p>\n\n<h2>Variable Pairs</h2>\n\n<p>The following variable pairs are available for use:</p>\n\n<ul>\n<li><a href="#display_each_year">display_each_year</a></li>\n<li><a href="#display_each_month">display_each_month</a></li>\n<li><a href="#display_each_week">display_each_week</a></li>\n<li><a href="#display_each_day_of_week">display_each_day_of_week</a></li>\n<li><a href="#display_each_day">display_each_day</a></li>\n<li><a href="#display_each_hour">display_each_hour</a></li>\n<li><a href="#events">events</a></li>\n<li><a href="#paginate_vp">paginate</a></li>\n</ul>\n\n<p><a name="display_each_year"></a></p>\n\n<h3>display_each_year</h3>\n\n<pre class="brush: html;">{display_each_year}{/display_each_year} </pre>\n\n<p>You can display calendar formatting and informational variables within\nthis variable pair.</p>\n\n<p><a name="display_each_month"></a></p>\n\n<h3>display_each_month</h3>\n\n<pre class="brush: html;">{display_each_month}{/display_each_month} </pre>\n\n<p>You can display calendar formatting and informational variables within\nthis variable pair. Can also be placed within the\n<a href="#display_each_year">display_each_year</a> variable pair.</p>\n\n<p><a name="display_each_week"></a></p>\n\n<h3>display_each_week</h3>\n\n<pre class="brush: html;">{display_each_week}{/display_each_week} </pre>\n\n<p>You can display calendar formatting and informational variables within\nthis variable pair. Can also be placed within the\n<a href="#display_each_year">display_each_year</a> and\n<a href="#display_each_month">display_each_month</a> variable pairs.</p>\n\n<p><a name="display_each_day_of_week"></a></p>\n\n<h3>display_each_day_of_week</h3>\n\n<pre class="brush: html;">{display_each_day_of_week}{/display_each_day_of_week} </pre>\n\n<p>You can display calendar formatting and informational variables within\nthis variable pair. Can also be placed within the\n<a href="#display_each_year">display_each_year</a>,\n<a href="#display_each_month">display_each_month</a> and\n<a href="#display_each_week">display_each_week</a> variable pairs.</p>\n\n<p><a name="display_each_day"></a></p>\n\n<h3>display_each_day</h3>\n\n<pre class="brush: html;">{display_each_day}{/display_each_day} </pre>\n\n<p>You can display calendar formatting and informational variables within\nthis variable pair. Can also be placed within the\n<a href="#display_each_year">display_each_year</a>,\n<a href="#display_each_month">display_each_month</a> and\n<a href="#display_each_week">display_each_week</a> variable pairs.</p>\n\n<p><a name="display_each_hour"></a></p>\n\n<h3>display_each_hour</h3>\n\n<pre class="brush: html;">{display_each_hour}{/display_each_hour} </pre>\n\n<p>You can display calendar formatting and informational variables within\nthis variable pair. Can also be placed within the\n<a href="#display_each_year">display_each_year</a>,\n<a href="#display_each_month">display_each_month</a>,\n<a href="#display_each_week">display_each_week</a> and\n<a href="#display_each_day">display_each_day</a> variable pairs.</p>\n\n<p><a name="events"></a></p>\n\n<h3>events</h3>\n\n<pre class="brush: html;">{events}{/events} </pre>\n\n<p>You can display most of the <a href="events.html#variables" title="Calendar:Events Documentation">variables listed in\nCalendar:Events</a>\nwithin this variable pair. Repeats for each event that falls within the\nrelevant range. Can also be placed within the\n<a href="#display_each_year">display_each_year</a>,\n<a href="#display_each_month">display_each_month</a>,\n<a href="#display_each_week">display_each_week</a>,\n<a href="#display_each_day_of_week">display_each_day_of_week</a>,\n<a href="#display_each_day">display_each_day</a> and\n<a href="#display_each_hour">display_each_hour</a> variable pairs.</p>\n\n<p><a name="paginate"></a></p>\n\n<h3>paginate</h3>\n\n<pre class="brush: html;">{paginate}Page {current_page} of {total_pages} pages &amp;nbsp; {pagination_links}{/paginate} </pre>\n\n<p>Pagination is available for this tag and works just like regular\npagination. Used in conjunction with the <a href="#paginate">paginate</a>\nparameter.</p>\n\n<p><a name="conditionals"></a></p>\n\n<h2>Conditionals</h2>\n\n<p>Most of the <a href="events.html#conditionals" title="Calendar:Events Documentation">conditionals listed in\nCalendar:Events</a>\nare available for use within the <a href="#events">events</a> variable pair.\nAdditionally, these exist as well:</p>\n\n<ul>\n<li><a href="#if_calendar_no_results">if calendar_no_results</a></li>\n<li><a href="#if_year_is_leap_year">if year_is_leap_year</a></li>\n<li><a href="#if_day_of_week_is_weekend">if day_of_week_is_weekend</a></li>\n<li><a href="#if_day_of_week_is_weekday">if day_of_week_is_weekday</a></li>\n<li><a href="#if_day_in_current_month">if day_in_current_month</a></li>\n<li><a href="#if_day_in_previous_month">if day_in_previous_month</a></li>\n<li><a href="#if_day_in_next_month">if day_in_next_month</a></li>\n<li><a href="#if_day_is_today">if day_is_today</a></li>\n<li><a href="#if_day_is_weekend">if day_is_weekend</a></li>\n<li><a href="#if_day_is_weekday">if day_is_weekday</a></li>\n</ul>\n\n<p><a name="if_calendar_no_results"></a></p>\n\n<h3>if calendar_no_results</h3>\n\n<pre class="brush: html;">{if calendar_no_results}{/if} </pre>\n\n<p>Works just like the regular <strong>{if no_results}</strong> conditional - displays its\ncontents when there is no results for the given parameters.</p>\n\n<p><a name="if_is_leap_year"></a></p>\n\n<h3>if is_leap_year</h3>\n\n<pre class="brush: html;">{if is_leap_year}Leap Year!{/if} </pre>\n\n<p>This conditional will displays it''s contents if the year is a leap year.\nAvailable only within the <a href="#display_each_year">display_each_year</a>\nvariable pair.</p>\n\n<p><a name="if_day_of_week_is_weekend"></a></p>\n\n<h3>if day_of_week_is_weekend</h3>\n\n<pre class="brush: html;">{if day_of_week_is_weekend}The Weekend!{/if} </pre>\n\n<p>This conditional will displays it''s contents if the day of the week\noccurs on the weekend. Available only within the\n<a href="#display_each_day_of_week">display_each_day_of_week</a> variable pair.</p>\n\n<p><a name="if_day_of_week_is_weekday"></a></p>\n\n<h3>if day_of_week_is_weekday</h3>\n\n<pre class="brush: html;">{if day_of_week_is_weekday}Weekday{/if} </pre>\n\n<p>This conditional will displays it''s contents if the day of the week\noccurs on a weekday. Available only within the\n<a href="#display_each_day_of_week">display_each_day_of_week</a> variable pair.</p>\n\n<p><a name="if_day_in_current_month"></a></p>\n\n<h3>if day_in_current_month</h3>\n\n<pre class="brush: html;">{if day_in_current_month}This Month!{/if} </pre>\n\n<p>This conditional will displays it''s contents if the day is within the\ncurrent month. Available only within the\n<a href="#display_each_day">display_each_day</a> variable pair.</p>\n\n<p><a name="if_day_in_previous_month"></a></p>\n\n<h3>if day_in_previous_month</h3>\n\n<pre class="brush: html;">{if day_in_previous_month}Previous Month!{/if} </pre>\n\n<p>This conditional will displays it''s contents if the day is within the\nprevious month. Available only within the\n<a href="#display_each_day">display_each_day</a> variable pair.</p>\n\n<p><a name="if_day_in_next_month"></a></p>\n\n<h3>if day_in_next_month</h3>\n\n<pre class="brush: html;">{if day_in_next_month}Next Month!{/if} </pre>\n\n<p>This conditional will displays it''s contents if the day is within the\nnext month. Available only within the\n<a href="#display_each_day">display_each_day</a> variable pair.</p>\n\n<p><a name="if_day_is_today"></a></p>\n\n<h3>if day_is_today</h3>\n\n<pre class="brush: html;">{if day_is_today}Today!{/if} </pre>\n\n<p>This conditional will displays it''s contents if the day happens to be\ntoday. Available only within the <a href="#display_each_day">display_each_day</a>\nvariable pair.</p>\n\n<p><a name="if_day_is_weekend"></a></p>\n\n<h3>if day_is_weekend</h3>\n\n<pre class="brush: html;">{if day_is_weekend}The Weekend!{/if} </pre>\n\n<p>This conditional will displays it''s contents if the day occurs on the\nweekend. Available only within the\n<a href="#display_each_day">display_each_day</a> variable pair.</p>\n\n<p><a name="if_day_is_weekday"></a></p>\n\n<h3>if day_is_weekday</h3>\n\n<pre class="brush: html;">{if day_is_weekday}Weekday{/if} </pre>\n\n<p>This conditional will displays it''s contents if the day occurs on a\nweekday. Available only within the\n<a href="#display_each_day">display_each_day</a> variable pair.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p>For examples for the <a href="month.html#examples">Monthly Calendar</a>,\n<a href="week.html#examples">Weekly Calendar</a>, <a href="day.html#examples">Daily\nCalendar</a>, and <a href="mini.html#examples">Mini\nCalendar</a>, click each of the respective\nlinks.</p>\n\n<p>The below code will generate you a simple list of all events happening\nbetween today and 6 months from now:</p>\n\n<pre class="brush: html;">&lt;ul&gt;\n{exp:calendar:cal\n        date_range_start="today"\n        show_months="6"\n        pad_short_weeks="n"\n}\n    &lt;li&gt;\n        &lt;a href="{path=''calender/event''}/{event_id}/"&gt;\n            {event_title}\n        &lt;/a&gt;\n        ({event_start_date format="%F %j, %Y"})\n    &lt;/li&gt;\n\n    {if no_results}\n    &lt;li&gt;No Results&lt;/li&gt;\n    {/if}\n{/exp:calendar:cal}\n&lt;/ul&gt;\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 1);
INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`) VALUES
(24, 1, 4, 'calendars', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Calendars | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Calendars</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li class="current"><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:Calendars</em> loop outputs information about each calendar.</p>\n\n<pre class="brush: html;">{exp:calendar:calendars} content {/exp:calendar:calendars} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#variable_pairs">Variable Pairs</a></li>\n<li><a href="#conditionals">Conditionals</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>Most parameters available in the <em>Channel:Entries</em> loop are available\nhere. Additionally, these are also available:</p>\n\n<ul>\n<li><a href="#site_id">site_id</a></li>\n<li><a href="#calendar_id">calendar_id</a></li>\n<li><a href="#calendar_name">calendar_name</a></li>\n<li><a href="#date_range_start">date_range_start</a></li>\n<li><a href="#date_range_end">date_range_end</a></li>\n<li><a href="#limit">limit</a></li>\n<li><a href="#offset">offset</a></li>\n<li><a href="#paginate">paginate</a></li>\n</ul>\n\n<p><a name="site_id"></a></p>\n\n<h3>site_id=</h3>\n\n<pre class="brush: html;">site_id="1" </pre>\n\n<p>If using MSM, you can specify a Site ID in this parameter to filter\nentries down to that site.</p>\n\n<p><a name="calendar_id"></a></p>\n\n<h3>calendar_id=</h3>\n\n<pre class="brush: html;">calendar_id="1|3" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir entry ID(s). You can hardcode a calendar ID, pass it through an\nembed, or grab it from the URI. Seperate multiples with the pipe\ncharacter.</p>\n\n<p><a name="calendar_name"></a></p>\n\n<h3>calendar_name=</h3>\n\n<pre class="brush: html;">calendar_name="baseball" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir entry url_title(s). You can hardcode a calendar url_title, pass\nit through an embed, or grab it from the URI. Seperate multiples with\nthe pipe character.</p>\n\n<p><a name="date_range_start"></a></p>\n\n<h3>date_range_start=</h3>\n\n<pre class="brush: html;">date_range_start="2010-01-31 @ 08:00 am" </pre>\n\n<p>Limits output to calendars that have events on or after this date. Both\n<a href="date_formatting.html" title="Date Formatting Documentation">standard and easy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="date_range_end"></a></p>\n\n<h3>date_range_end=</h3>\n\n<pre class="brush: html;">date_range_end="2010-02-14 @ 10:00 pm" </pre>\n\n<p>Limits output to calendars that have events on or before this date. Both\n<a href="date_formatting.html" title="Date Formatting Documentation">standard and easy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="limit"></a></p>\n\n<h3>limit=</h3>\n\n<pre class="brush: html;">limit="5" </pre>\n\n<p>This parameter lets you limit the number of calendars to be displayed.</p>\n\n<p><a name="offset"></a></p>\n\n<h3>offset=</h3>\n\n<pre class="brush: html;">offset="1" </pre>\n\n<p>This parameter lets you offset the results of calendars displayed. For\nexample, if you''d like the first result to be skipped from the results,\nspecify a value of <strong>1</strong>.</p>\n\n<p><a name="paginate"></a></p>\n\n<h3>paginate=</h3>\n\n<pre class="brush: html;">paginate="both" </pre>\n\n<p>This parameter allows you to control where the pagination will display.\nOptions are <strong>top</strong>, <strong>bottom</strong>, or <strong>both</strong>. Used in conjunction with the\n<a href="#paginate">paginate</a> variable pair.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>Most variables available in the <em>Channel:Entries</em> loop are available\nhere. Additionally, these are also available:</p>\n\n<ul>\n<li><a href="#calendar_title">calendar_title</a></li>\n<li><a href="#calendar_url_title">calendar_url_title</a></li>\n<li><a href="#calendar_id">calendar_id</a></li>\n<li><a href="#calendar_tz_offset">calendar_tz_offset</a></li>\n<li><a href="#calendar_ics_url">calendar_ics_url</a></li>\n<li><a href="#calendar_status">calendar_status</a></li>\n<li><a href="#calendar_author">calendar_author</a></li>\n<li><a href="#calendar_author_id">calendar_author_id</a></li>\n</ul>\n\n<p><a name="calendar_title"></a></p>\n\n<h3>calendar_title</h3>\n\n<pre class="brush: html;">{calendar_title} </pre>\n\n<p>This variable outputs the <strong>title</strong> of the calendar channel entry.</p>\n\n<p><a name="calendar_url_title"></a></p>\n\n<h3>calendar_url_title</h3>\n\n<pre class="brush: html;">{calendar_url_title} </pre>\n\n<p>This variable outputs the <strong>URL title</strong> of the calendar channel entry.</p>\n\n<p><a name="calendar_id"></a></p>\n\n<h3>calendar_id</h3>\n\n<pre class="brush: html;">{calendar_id} </pre>\n\n<p>This variable outputs the <strong>entry ID</strong> of the calendar channel entry.</p>\n\n<p><a name="calendar_tz_offset"></a></p>\n\n<h3>calendar_tz_offset</h3>\n\n<pre class="brush: html;">{calendar_tz_offset} </pre>\n\n<p>This variable outputs the timezone offset selected for the calendar.</p>\n\n<p><a name="calendar_ics_url"></a></p>\n\n<h3>calendar_ics_url</h3>\n\n<pre class="brush: html;">{calendar_ics_url} </pre>\n\n<p>This variable outputs the URL of ICS file(s) to be imported into this\ncalendar.</p>\n\n<p><a name="calendar_status"></a></p>\n\n<h3>calendar_status</h3>\n\n<pre class="brush: html;">{calendar_status} </pre>\n\n<p>This variable outputs the status of the calendar entry.</p>\n\n<p><a name="calendar_author"></a></p>\n\n<h3>calendar_author</h3>\n\n<pre class="brush: html;">{calendar_author} </pre>\n\n<p>This variable outputs the screen name of the author of the calendar\nentry.</p>\n\n<p><a name="calendar_author_id"></a></p>\n\n<h3>calendar_author_id</h3>\n\n<pre class="brush: html;">{calendar_author_id} </pre>\n\n<p>This variable outputs the member ID of the author of the calendar entry.</p>\n\n<p><a name="variable_pairs"></a></p>\n\n<h2>Variable Pairs</h2>\n\n<p>Most variable pairs available in the <em>Channel:Entries</em> loop are\navailable here. Additionally, these are also available:</p>\n\n<ul>\n<li><a href="#paginate_vp">paginate</a></li>\n</ul>\n\n<p><a name="paginate"></a></p>\n\n<h3>paginate</h3>\n\n<pre class="brush: html;">{paginate}Page {current_page} of {total_pages} pages &amp;nbsp; {pagination_links}{/paginate} </pre>\n\n<p>Pagination is available for this tag and works just like regular\npagination. Used in conjunction with the <a href="#paginate">paginate</a>\nparameter.</p>\n\n<p><a name="conditionals"></a></p>\n\n<h2>Conditionals</h2>\n\n<p>Most conditionals available in the <em>Channel:Entries</em> loop are available\nhere. Additionally, these exist as well:</p>\n\n<ul>\n<li><a href="#if_calendar_no_results">if calendar_no_results</a></li>\n</ul>\n\n<p><a name="if_calendar_no_results"></a></p>\n\n<h3>if calendar_no_results</h3>\n\n<pre class="brush: html;">{if calendar_no_results}{/if} </pre>\n\n<p>Works just like the regular <strong>{if no_results}</strong> conditional - displays its\ncontents when there is no results for the given parameters.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p>The following code example will display information about a given\ncalendar if its url_title is in the 3rd segment of the URI, or it’ll\notherwise list all available calendars:</p>\n\n<pre class="brush: html;">{exp:calendar:calendars\n    {if segment_3 != ""}\n        calendar_name="{segment_3}"\n    {/if}\n}\n    &lt;div class="calendar"&gt;\n        &lt;div class="title"&gt;\n            &lt;h1&gt;{calendar_title}&lt;/h1&gt;\n        &lt;/div&gt;\n        &lt;div class="body"&gt;\n            {calendar_summary}\n        &lt;/div&gt;\n        &lt;ul&gt;\n            &lt;li&gt;Calendar Shortname: {calendar_url_title}&lt;/li&gt;\n            &lt;li&gt;Calendar ID: {calendar_id}&lt;/li&gt;\n            &lt;li&gt;Calendar TZ Offset: {calendar_tz_offset}&lt;/li&gt;\n            &lt;li&gt;Calendar .ics URL: {calendar_ics_url}&lt;/li&gt;\n        &lt;/ul&gt;\n    &lt;/div&gt;\n{/exp:calendar:calendars}\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 1);
INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`) VALUES
(25, 1, 4, 'change_log', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Change Log | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Change Log</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li class="current"><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<ul>\n<li><a href="#v1.8.6">Version 1.8.6</a></li>\n<li><a href="#v1.8.5">Version 1.8.5</a></li>\n<li><a href="#v1.8.4">Version 1.8.4</a></li>\n<li><a href="#v1.8.3">Version 1.8.3</a></li>\n<li><a href="#v1.8.2">Version 1.8.2</a></li>\n<li><a href="#v1.8.1">Version 1.8.1</a></li>\n<li><a href="#v1.8.0">Version 1.8.0</a></li>\n<li><a href="#v1.7.0">Version 1.7.0</a></li>\n<li><a href="#v1.6.4">Version 1.6.4</a></li>\n<li><a href="#v1.6.3">Version 1.6.3</a></li>\n<li><a href="#v1.6.2">Version 1.6.2</a></li>\n<li><a href="#v1.6.1">Version 1.6.1</a></li>\n<li><a href="#v1.6.0">Version 1.6.0</a></li>\n<li><a href="#v1.5.4">Version 1.5.4</a></li>\n<li><a href="#v1.5.3">Version 1.5.3</a></li>\n<li><a href="#v1.5.2">Version 1.5.2</a></li>\n<li><a href="#v1.5.1">Version 1.5.1</a></li>\n<li><a href="#v1.5.0">Version 1.5.0</a></li>\n<li><a href="#v1.0.4">Version 1.0.4</a></li>\n<li><a href="#v1.0.3">Version 1.0.3</a></li>\n<li><a href="#v1.0.2">Version 1.0.2</a></li>\n<li><a href="#v1.0.1">Version 1.0.1</a></li>\n<li><a href="#v1.0.0">Version 1.0.0</a></li>\n</ul>\n\n<p><a name="v1.8.6"></a></p>\n\n<h2>Version 1.8.6 (April 13, 2014)</h2>\n\n<ul>\n<li>Updated for compatibility with EE 2.8.</li>\n<li>Fixed a bug with ICS import where missing elements could possibly cause a PHP error.</li>\n<li>Fixed a potential bug with permissions and incomplete channel data.</li>\n<li>Fixed a bug where ICS imports/updates could malform ''end_by'' rules on repeating events.</li>\n</ul>\n\n<p><a name="v1.8.5"></a></p>\n\n<h2>Version 1.8.5 (September 12, 2013)</h2>\n\n<ul>\n<li>Updated iCalendar class to 2.16.12.</li>\n<li>Fixed a bug where ICS updates would error and not create entries due to an entry_date error.</li>\n<li>Fixed a bug where new ICS imports in new Calendars could result in a PHP error on publish.</li>\n<li>Verified compatibility with EE 2.7.</li>\n</ul>\n\n<p><a name="v1.8.4"></a></p>\n\n<h2>Version 1.8.4 (May 14, 2013)</h2>\n\n<ul>\n<li>Fixed a bug where pagination would fail to work in some situations.</li>\n<li>Fixed a critical bug with installing Calendar on ExpressionEngine 2.6+.</li>\n</ul>\n\n<p><a name="v1.8.3"></a></p>\n\n<h2>Version 1.8.3 (May 1, 2013)</h2>\n\n<ul>\n<li>Added ''summary_field'' parameter to Calendar:iCalendar to allow changing of the default {event_title} for export. [With thanks to Aaron Gustafson]</li>\n<li>Added a preference for default behavior for deletion of events with the Calendar:ICS_Update tag.</li>\n<li>Added delete_missing="yes" parameter to Calendar:ICS_Update to override ''ICS Update Default Delete Behavior'' preference.</li>\n<li>Updated for compatibility with ExpressionEngine 2.6.</li>\n<li>Fixed a bug where PHP errors would occur in the CP on PHP 5.2.x.</li>\n<li>Fixed a bug where large amounts of events (over 500) would have issues showing all events within a timerange.</li>\n<li>Fixed a bug where updated events from Calendar:ICS_Update would create new events instead of updating the older imported items with the same UUID.</li>\n<li>Fixed a bug where Calendar permissions might not be able to load group data.</li>\n</ul>\n\n<p><a name="v1.8.2"></a></p>\n\n<h2>Version 1.8.2 (March 8, 2013)</h2>\n\n<ul>\n<li>Added internal Demo Templates tab in control panel (replaces older "code pack" approach).</li>\n<li>Updates are now automatic and no longer require a manual update screen.</li>\n<li>Fixed a bug where using the Calendar widget with SafeCracker and an alternate form ID would cause javascript errors.</li>\n<li>Fixed a bug where after many many events were displayed on a page with Calendar:Cal, a PHP error could occur in some rare situations.</li>\n</ul>\n\n<p><a name="v1.8.1"></a></p>\n\n<h2>Version 1.8.1 (December 29, 2012)</h2>\n\n<ul>\n<li>Fixed a bug where Calendar would error on upgrades or new installs.</li>\n</ul>\n\n<p><a name="v1.8.0"></a></p>\n\n<h2>Version 1.8.0 (December 11, 2012)</h2>\n\n<ul>\n<li>Removed support for ExpressionEngine 1.x (Calendar is now EE2 only).</li>\n<li>Added offline documentation files to download package.</li>\n<li>Added two new hooks for manipulating pagination data:\n''calendar_build_calendar_create_pagination'' and\n''calendar_events_create_pagination''.</li>\n<li>Added {event_count} and {event_total} variables to {events} variable\npair for use in Calendar:Cal tag.</li>\n<li>Added extra instructions to the Calendar channel field ''ICS URL'' to\nnotate that all imported times are adjusted to that calendar''s offset.</li>\n<li>Updated the ''date_range_end'' parameter to have a default value of end\nof the day instead of the current date and time as the\n''date_range_start'' parameter.</li>\n<li>Fixed a bug where Calendar was incorrectly putting defaults on text\ntype columns that aren''t compatible with MySQL strict mode.</li>\n<li>Fixed a bug where Calendar inserts on install were not MySQL Strict\nmode compliant.</li>\n<li>Fixed a bug where imported entry titles would get auto-truncated in\nnon-MySQL Strict mode silently, and error in MySQL Strict mode. Titles\nare all now restricted to 100 characters in length before sending to\nthe database, as that is the column limit for channel entry titles.</li>\n<li>Fixed a bug where some Calendar ICS imports running BYDAY rules could\ncause errors during the import stage of a new calendar.</li>\n<li>Fixed a bug where imported events with no title were not receiving a\ndefault title value of "No Title".</li>\n<li>Fixed a bug where events imported from ICS files would incorrectly\nadjust event times if the system was currently observing Daylight\nSavings Time.</li>\n<li>Fixed a bug where the Calendar channel timezone field was not properly\ndefaulting to the Default Timezone in Calendar Preferences.</li>\n<li>Fixed a bug where pagination would attempt to run even when the limit\nparameter was not present and would throw PHP errors.</li>\n<li>Fixed a bug where the default status group on install was ''1'' and\ncould error if status group id ''1'' did not exist. Calendar now\nsearches for the lowest status group ID as the default and uses ''0'' if\nnone are present. This affects new installs only.</li>\n<li>Fixed a bug where event data could be affected by third party addons\nhooking into the Channel module and result in missing event errors.</li>\n<li>Fixed a bug where errors would occur when using the Calendar:Cal tag\nwith PHP 5.4.x.</li>\n<li>Fixed a bug where creating new event rules could cause errors to occur\nwhen using MySQL in strict mode.</li>\n<li>Fixed a bug where setting the Calendar events ''Dates &amp; Options'' field\nto be required, and editing an event occurrence would result in the\ninability to submit the entry.</li>\n<li>Fixed a bug where using ''%I'' in a date format could result in a PHP\nerror being shown.</li>\n<li>Fixed a bug where using ''%F'' in a date format could result in an\ninvalid language line loaded.</li>\n<li>Fixed a bug where iCalendar format export for Calendars with a\ntimezone of GMT-0 would incorrectly set TZOFFSETTO to ''0000'' instead\nof ''+0000'' and cause imports into certain calendar software (including\nGoogle Calendar) to error and fail the import.</li>\n<li>Fixed a bug where an infinite update loop could occur if Calendar\nextensions were disabled but the module version number was up to date.</li>\n<li>Fixed a bug where recurring events would not take into account\n''date_range_start'' and ''date_range_end'' hours and minutes.</li>\n<li>Fixed a bug where giving non-integer values to the ''event_id'' or\n''calendar_id'' parameters could result in a MySQL error instead of\ngracefully falling back to default.</li>\n<li>Fixed a bug where the ''event_offset'' parameter in the Calendar:Events\ntag wouldn''t function without the ''event_limit'' parameter being set.</li>\n<li>Fixed a bug where new rules added in the Calendar widget of the\npublish page would not use alternate languages set by the system.</li>\n<li>Fixed some bugs that could occur when upgrading ExpressionEngine 1.x\nto 2.x with Calendar installed.</li>\n<li>Fixed a bug where adding exceptions or occurrences could result in a\nMySQL error when MySQL was running in Strict mode.</li>\n<li>Fixed a bug where ''Reply To'' and ''Reply Name'' were not being parsed\nfor variables or sent through to hooks.</li>\n<li>Fixed a bug where, given no start and end date ranges, the default\ndate range would not end at the end of the last day.</li>\n<li>Fixed a bug where ''pad_short_weeks'' would lose the end time of\ntime_range_end and would set it inadvertently to the beginning of the\nlast day.</li>\n<li>Fixed a bug where the rule removal button in the publish area would\nnot function in some situations when editing events.</li>\n<li>Fixed a bug where the text time parser would mistakenly consider\n12:00 pm as 00:00 military time rather than 12:00 and conversly would\nconsider 12:00 am as 12:00 military time rather than 00:00.</li>\n<li>Fixed a bug where foreign language translation files would not load\nfor Calendar unless the system default was set to the language desired\nand not just the current logged in users language preference.</li>\n<li>Fixed some rendering bugs with the Calendar widget that could cause\njavascript errors when foreign languages were used.</li>\n<li>Fixed a bug where pagination would not properly load foreign language\nlines for first and last link names.</li>\n<li>Fixed a bug where EE 1.x would not properly alert users if an update\nfailed because of extensions being disabled.</li>\n<li>Fixed a bug where some date formats were too aggressively cached and\nwould result in incorrect output.</li>\n<li>Fixed a bug where Calendar was not compatible with EE 2.5.x''s ability\nto move the third party themes folder.</li>\n</ul>\n\n<p><a name="v1.7.0"></a></p>\n\n<h2>Version 1.7.0 (January 25, 2012)</h2>\n\n<ul>\n<li>Added member group permissions feature to Calendar, which incudes a\nPermission tab in the Calendar module CP, and permissions blocks for\nCalendar events in the EE Edit page Publish area (EE2-only).</li>\n<li>Updated pagination to support ExpressionEngine 2.4.</li>\n<li>Fixed a bug where the ''rules'' variable pair would not get the proper\nthe hour and minutes for ''rule_start_date'' and ''rule_end_date''\nvariables.</li>\n<li>Fixed a bug where calculating date ranges would possibly add the\ntimezone offset twice, resulting in incorrect ranges.</li>\n</ul>\n\n<p><a name="v1.6.4"></a></p>\n\n<h2>Version 1.6.4 (November 16, 2011)</h2>\n\n<ul>\n<li>Fixed a bug where the update function could run more than once if\nfired automatically by EE during the manual running of the module\nupdate.</li>\n<li>Fixed a bug where the {occurrence_count} conditional was not\nworking in the {occurrences}{/occurrences} variable pair.</li>\n<li>Fixed a bug where using an invalid item with the event_name=""\nparameter in Calendar:Events would show all events instead of no\nresults.</li>\n<li>Fixed a bug where date formatting variable ''%G'' did not render the\nhour in 24-hour format without leading 0.</li>\n<li>Fixed a bug where date formatting variable ''%h'' did not render the\nhour in 12-hour format with leading 0.</li>\n<li>Fixed a bug where the {occurrence_duration_hours} variable was\nshowing "0" for all-day events instead of "24 hours".</li>\n<li>Fixed a bug where Calendar data would not save on submit/update of\nan entry if the site has a third party addon that modifies the\nSubmit button area in the EE CP Publish page.</li>\n</ul>\n\n<p><a name="v1.6.3"></a></p>\n\n<h2>Version 1.6.3 (September 14, 2011)</h2>\n\n<ul>\n<li>Fixed a bug where using show_days/weeks/months/years parameters\nwould not work in Calendar:Cal tag.</li>\n<li>Fixed a bug where category_url_title''s would not work with the\ncategory parameter.</li>\n</ul>\n\n<p><a name="v1.6.2"></a></p>\n\n<h2>Version 1.6.2 (August 23, 2011)</h2>\n\n<ul>\n<li>Fixed a bug where events could not be deleted from the Calendar CP\nif their parent channel entry had been deleted by other means.</li>\n<li>Fixed a bug where dates could show before they were supposed to\nexist due to a calculation bug in time advancement.</li>\n<li>Fixed a bug where a SQL error would be shown when trying to publish\nan entry in any channel on another MSM site.</li>\n<li>Fixed a bug where inclusive (''&amp;'') category searching was not\nworking.</li>\n<li>Fixed a bug where the adjustment words ''begin'' and ''end'' were not\nbeing parsed from phonetic date range parameters.</li>\n<li>Fixed a bug where the default end range for Calendar:Cal tag was "1\nday from start date", and not "today".</li>\n<li>Fixed a bug where events with just 1 occurrence would not show up in\nthe Occurrences tag.</li>\n<li>Fixed a bug where the calendar icon and "selected" day style in the\ndatepickers were missing.</li>\n</ul>\n\n<p><a name="v1.6.1"></a></p>\n\n<h2>Version 1.6.1 (August 12, 2011)</h2>\n\n<ul>\n<li>Added defaults to all NOT NULL type columns in Calendar''s SQL tables\nto support MySQL with Strict Mode enabled.</li>\n<li>Modified code in event checking to improve performance for repeating\nevents that began far before the start date range.</li>\n<li>Updated Exclude rules to now default to "Select Dates" for repeat\ntype.</li>\n<li>Removed some expensive ''table_exists'' queries where they were not\nneeded.</li>\n<li>Fixed a bug where the updating the iCalcreator library to 2.8.x no\nlonger fetched URIs in its parse stage.</li>\n<li>Fixed a bug where repeat events across multiple days would not show\nup on the days in between the start and end dates.</li>\n<li>Fixed a bug where showing events over multiple months in\nCalendar:Cal tag that spanned across years would incorrectly display\nthe month data once a new year was hit.</li>\n<li>Fixed a bug where event counts in month, week, and day were off.</li>\n<li>Fixed a bug where ''U%'' date formatting would output from the current\nmonth instead of the date in question.</li>\n<li>Fixed a bug where repeat events would stop showing up after a period\nof time.</li>\n<li>Fixed a visual bug in EE 2.2.0+ where days overlapped one another in\ncalendar publish widget.</li>\n<li>Fixed a bug where multiple dates in the same day were not respected\nby upcoming_occurrences_limit and prior_occurrences_limit\nparameters in the Calendar:Occurrences tag.</li>\n<li>Fixed a bug where pagination would not parse {pagination_links}\nvariable in Calendar:Events when the {occurrences} variable pair was\npresent.</li>\n<li>Fixed a bug where if the Calendar Event Channel''s Dates &amp; Options\nfield were set to ''required'', the publish form would never be able\nto be submitted, even if rules were created.</li>\n<li>Fixed a bug where the ''event_never_ends'' conditional would not\nproperly parse when another rule in the same event as a never ending\nitem had an end date.</li>\n<li>Fixed a bug where adding a new rule when editing an event would\nsometimes throw an error.</li>\n<li>Fixed a bug where the ''exclude'' rule type in the Calendar Event\npublish area was allowing a date range to be selected when it is not\nsupported for excludes.</li>\n</ul>\n\n<p><a name="v1.6.0"></a></p>\n\n<h2>Version 1.6.0 (July 11, 2011)</h2>\n\n<ul>\n<li>Converted Calendar to use Solspace Add-on Builder Framework, and\nSolspace Bridge for EE 1.x.</li>\n<li>Added event_offset="" parameter in Events and Cal tags to offset\nevents by the given number.</li>\n<li>Added offset="" and limit="" parameters to Calendars tag.</li>\n<li>Added {event_timeframe_total} variable in Events and Cal tags to\nshow the number all events returned before event_limit is added.</li>\n<li>Added pagination to all Calendar tags.</li>\n<li>Added Calendar:Date_Widget tag in order to allow editing\nfunctionality with SafeCracker in EE 2.x.</li>\n<li>Added category="" parameter to Calendar:Cal tag.</li>\n<li>Added sorting by ''event_title'' and ''event_start_time'' to\nCalendar:Events tag.</li>\n<li>Added {event_author_id}, {event_author}, {event_status}\nvariables in the Calendar:Events tag and {events} variable pair in\nCalendar:Cal tag.</li>\n<li>Added {calendar_author_id}, {calendar_author}, {calendar_status}\nvariables in the Events, Cal, and Calendars tags.</li>\n<li>Added {occurrence_author_id}, {occurrence_author},\n{occurrence_status} variables in the Calendar:Occurrences tag and\n{occurrences} variable pair in Calendar:Events tag.</li>\n<li>Added occurrences_limit="", occurrences_offset="", and paginate=""\nparams to the Calendar:Occurrences tag.</li>\n<li>Added support for ''not'' in event_id and calendar_id parameters.</li>\n<li>Changed themes folder paths to now be themes/calendar in EE 1.x and\nthemes/third_party/calendar in EE 2.x.</li>\n<li>Changed {display_each_month} current month calculation so the\nremoval of {display_each_week} from between it would not affect\nit.</li>\n<li>Fixed a bug where calendar fields didn''t get assigned order numbers\non install.</li>\n<li>Fixed a bug where the installed channels/weblogs were not\nspecifically using the default status_group, which could cause\nissues if default statuses change in the future.</li>\n<li>Fixed a bug in ICS export where unique ID''s were unique for the ICS\ninstead of per event, making it where only 1 event per file would\nproperly export.</li>\n<li>Fixed an iCalendar error where multiple days weekly repeating would\nnot properly export. Third party iCalendar bug.</li>\n<li>Fixed a bug with iCalendar where all day events would go in as 12am\nto 12pm instead of actually all day.</li>\n<li>Fixed a bug in the Calendar Event publish JavaScript that conflicted\nwith jQuery 1.6.1 (Default for ExpressionEngine 2.2.0).</li>\n<li>Fixed a bug where month/week/day/hour_event_count were being\ncounted as compounding totals when wrapped in parent\ndisplay_each_year/month/week tag pairs instead of resetting at the\nbeginning of each''s respective loops.</li>\n<li>Fixed a bug where ''event_last_date'' variable would parse as the\ncurrent day instead of the last date of the event in the\nCalendar:Events tag.</li>\n</ul>\n\n<p><a name="v1.5.4"></a></p>\n\n<h2>Version 1.5.4 (March 10, 2011)</h2>\n\n<ul>\n<li>Added NSM Add-on Updater support.</li>\n<li>Added extra filtering to the Edit Occurrences page in the Control\nPanel to allow proper editing of never ending repeating events after\n100 events has been reached.</li>\n<li>Added reverse="true" parameter to the Calendar:Occurrences tag to\nallow reversing of the order of the results displayed.</li>\n<li>Modified the behavior of the show_years=, show_months=,\nshow_weeks=, and show_days= parameters across the module. They now\ncount the current year, month, week, and day (respectively) in their\ncounts and go to the END day of the point of direction.</li>\n<li>Modified the {date format=""} to now parse within any\n{display_each_ variable pair. Deprecated the {year format=""},\n{month format=""}, {week format=""}, {day format=""} variable pairs.</li>\n<li>Modified the all ICS import entry dates for events to be pre-dated 2\ndays from the date of import in order to avoid future-dated event\nchannel entries from not showing up. This will positively affect the\ndisplaying of ICS imported events and will have no bearing on the\nactual event dates.</li>\n<li>Fixed a bug where a blank action was being inserted on update or\ninstall.</li>\n<li>Fixed a bug where never ending events would stop showing up after\n100 events had occurred.</li>\n<li>Fixed a bug where phonetic times like ''midnight'' and ''now'' were ONLY\nparsing locale instead of default English and locale.</li>\n<li>Fixed a bug where using the phonetic time ''now'' was inaccurately\ngetting the current localized time.</li>\n<li>Fixed a bug where subsequent rules in the Publish area was not\ngetting properly set when the first rule contained the date picker.</li>\n<li>Fixed a bug where checking for leap year for phonetic dates would\nonly work in the current year.</li>\n<li>Fixed a bug where recurring dates on a second rule when an event was\nedited would not show up correctly.</li>\n<li>Fixed a bug where the event_last_date variable on repeat events\nwas not being parsed correctly.</li>\n<li>Fixed a bug where a rule with a single day would be skipped over\nduring event display parsing if the second rule was more complex.</li>\n<li>Fixed a bug with the Calendar:Mini tag where time_range_end was\nnot set and caused all events to always be skipped.</li>\n<li>Fixed a bug where creating an event with an end date past 2012-12-31\nwould result in an ''end of world'' error when the calendar was set to\n''Mayan''.</li>\n<li>Fixed a bug with {exception_ style tags in the Events loop which\nwas causing them to never parse.</li>\n<li>Fixed a bug where exception parsing was incorrectly caching the\nformatted date.</li>\n<li>Fixed a bug where exclusions (EXDATE) were never getting inserted\ninto items exported as iCalendar files.</li>\n<li>Fixed a bug where previous_occurrences_limit="" parameter was not\nbeing respected when showing events that never ended.</li>\n<li>Fixed a bug where occurrences where not getting all event data or\nconditionals.</li>\n<li>Fixed a bug where the Channel Entries API was not always being\nloaded in EE 2.x.</li>\n<li>Removed the unused CALENDAR_ACTIONS constant as it was unused.</li>\n</ul>\n\n<p><a name="v1.5.3"></a></p>\n\n<h2>Version 1.5.3 (January 12, 2011)</h2>\n\n<ul>\n<li>Added an {if event_never_ends} conditional to the Calendar:Events\ntag to check to see if an event repeats endlessly.</li>\n<li>Updated and enhanced Calendar module CP area (in EE 2.x) to conform\ncompletely to native EE styling.</li>\n<li>Updated and enhanced Calendar UI in Publish page to match the rest\nof native EE 1.x styling.</li>\n<li>Modified the Calendar JS and CSS output to no longer display on\nnon-Calendar channels.</li>\n<li>Fixed a bug where filtering, sorting, and pagination did not work on\nthe Events and Occurrences Edit page in Calendar CP.</li>\n<li>Fixed a bug where the Calendar Publish UI would not properly respect\nthe "Datepicker Date Format" preference when adding rules.</li>\n<li>Fixed a bug where deleting a Calendar channel entry would not remove\nall Event entries assigned to it.</li>\n<li>Fixed a bug where ICS importing would not work correctly in EE 2.x.</li>\n<li>Fixed a bug where the SAEF date pickers would appear behind some\nfields/divs in EE 1.x.</li>\n<li>Fixed a bug where the hour, day, week, month, and year\n"_event_count" and "_event_total" variables and conditionals did\nnot always parse correctly.</li>\n<li>Fixed a bug where the "First Day of the Week" preference was not\nbeing respected on date pickers.</li>\n</ul>\n\n<p><a name="v1.5.2"></a></p>\n\n<h2>Version 1.5.2 (November 24, 2010)</h2>\n\n<ul>\n<li>Added a helper function because gregoriantojd may not exist if the\nphp-calendar module isn''t installed with PHP.</li>\n<li>Fixed a bug where the Calendar channels site_id was being\nincorrectly called on sites with MSM installed.</li>\n<li>Fixed a bug where some event with a date that did not belong in the\nrequested range where showing up in the Cal tag.</li>\n<li>Fixed a bug on install where an expected constant was missing for\ninstalling preference defaults.</li>\n<li>Fixed a bug where occurrence data did not properly get removed on\nedit.</li>\n<li>Fixed a bug where the ICS_Update tag would not work on the front\nend because the DSP class was not yet initialized.</li>\n<li>Fixed a bug where live auto url_title creation was not working in\nthe Publish page in EE 2.x.</li>\n<li>Fixed a bug where an occurrence edit would not receive the correct\n''all day'' information on publish edit.</li>\n<li>Fixed a bug where retrieval of occurrence data that was all day\nwould give the end time as 0000 instead of 2400</li>\n<li>Fixed a bug where the end_by_date of an event would be set to the\ncurrent date if it was set to an earlier date than the current day.</li>\n<li>Fixed a bug where the all day checkbox was not respected for\noccurrence includes if the select dates date picker was used.</li>\n<li>Fixed a bug occurrences that lasted more than one day were being\nlumped into a select date widget and only respected the starting day\nwhen editing an entry with include dates.</li>\n<li>Fixed a bug where flexible Date parsing (ex: start_date="8 months\nago") wouldn''t work when alternate language files were loaded.</li>\n<li>Fixed a bug where the {event_first_date} variable would output the\nincorrect time.</li>\n<li>Fixed a bug where the end_by_date dropdown would appear\nincorrectly in some instances in EE 2.x.</li>\n<li>Depricated the {event_start_time}, {event_start_year},\n{event_start_month}, {event_start_day}, {event_start_hour},\n{event_start_minute} variables in favor of {event_start_date\nformat=""}.</li>\n<li>Depricated the {event_end_time}, {event_end_year},\n{event_end_month}, {event_end_day}, {event_end_hour},\n{event_end_minute} variables in favor of {event_end_date\nformat=""}.</li>\n<li>Depricated the {occurrence_start_time}, {occurrence_start_year},\n{occurrence_start_month}, {occurrence_start_day} variables in\nfavor of {occurrence_start_date format=""}.</li>\n<li>Depricated the {occurrence_end_time}, {occurrence_end_year},\n{occurrence_end_month}, {occurrence_end_day} variables in favor\nof {occurrence_end_date format=""}.</li>\n</ul>\n\n<p><a name="v1.5.1"></a></p>\n\n<h2>Version 1.5.1 (November 3, 2010)</h2>\n\n<ul>\n<li>Added new "calendar_delete_events" extension hook for Calendar to\nbetter handle deleting of event data.</li>\n<li>Modified the channel/weblog default limit to be "500" instead of\n"100" for sites with a larger amount of events.</li>\n<li>Fixed a bug where saving Preferences in the Calendar module CP would\nerase the default Calendar channels/weblogs from the prefs.\n<strong>NOTE:</strong> If you changed the channel/weblog shortnames, you MUST\nchange them back to defaults (Calendars: calendar_calendars,\nEvents: calendar_events) BEFORE you upgrade so the upgrade script\ncan fix it for you. You can change them back afterwards.</li>\n<li>Fixed a bug where ICS input into a Calendar entry would trigger\nerrors for calendar entries in EE 2.x Publish page.</li>\n<li>Fixed a bug where the dynamic="" parameter was defaulting to ON\ninstead of OFF.</li>\n<li>Fixed a bug where the Occurrences area in the Calendar module CP was\ntriggering a PHP error in some cases.</li>\n</ul>\n\n<p><a name="v1.5.0"></a></p>\n\n<h2>Version 1.5.0 (October 28, 2010)</h2>\n\n<ul>\n<li>Added a "calendar_submit" class to the list of things that, upon\nclick, can trigger Calendar''s JS to kick into action for saving\nentries in the SAEF. Just add class="calendar_submit" to a submit\nbutton or whatever. Useful for when name="submit" is used by some\nother script on the page.</li>\n<li>Added the {event_first_date} variable to the Calendar:Cal tag.</li>\n<li>Added ability to use "not " in calendar_id and calendar_name\nparameters in the Calendar:Calendars tag.</li>\n<li>Added {if calendar_no_results} conditional (to replace\n''no_results'') to all template tags to avoid variable collisions.</li>\n<li>Added {if edited_occurrence} conditional to Calendar:Cal tag, which\nevaluates to TRUE if the event occurrence has been edited. Also\npaired this with a subsequent {event_parent_id} to parse the\nparent event entry ID.</li>\n<li>Added include_jqui="off" parameter to {exp:calendar:datepicker_js}\nand {exp:calendar:datepicker_css} tags to stop Calendar''s jQuery UI\nand CSS from loading in the event you have another instance of\njQuery UI loading.</li>\n<li>Updated Calendar to support jQuery 1.4.2 and jQuery UI 1.8.4.</li>\n<li>Modified Calendar to look at the weblog ID of the special\n"Calendars" and "Events" weblogs instead of short_name.</li>\n<li>Modified the Calendar UI to contain a checkbox option for events\nwith custom edited occurrences that lets the user delete them all\nautomatically if they make DATE changes to an event (rather than\nhave those occurrences be orphaned).</li>\n<li>Modified dynamic="" parameter to now default to "off" in the\nCalendar:Cal tag.</li>\n<li>Fixed a bug that caused modified occurrences to be wiped out if the\nparent entry was edited.</li>\n<li>Fixed a bug where the {occurrence_start_time} and\n{occurrence_end_time} variables (without formatting parameters)\noutputted a date in YMD format rather than a 24-hour time.</li>\n<li>Fixed a bug where events with multiple rules applying to the same\nday would only have one of those rules actually applied each day.</li>\n<li>Fixed a bug where all-day events didn''t display correctly in the\nabsence of an {events} tag pair in the Calendar:Cal tag.</li>\n<li>Fixed a bug where specifying more than one calendar in the\ncalendar_name="" parameter would behave as though no calendar name\nhad been specified.</li>\n<li>Fixed a bug where the word "tomorrow" as a date parameter might be\nparsed incorrectly.</li>\n<li>Fixed a bug where if a calendar with a {display_each_month}\nvariable pair did not end on the last day of the month, the last\nmonth''s {month} variables would be set to the previous month.</li>\n<li>Fixed a bug where some icon images in the CP were referencing an\nincorrect URL path.</li>\n<li>Fixed a bug that caused all day events to not be counted for the\npurposes of variables like {month_event_total}.</li>\n<li>Fixed a bug where the event_limit="" parameter incorrectly sort the\nevent array before applying the limit.</li>\n<li>Fixed a bug where a multi-day, repeating event that spans across two\nor more months will not display after the initial occurrence in some\ncircumstances.</li>\n<li>Fixed a bug in the Calendar:Events tag where no results may be\nreturned in cases where start and end date parameters are not\nprovided.</li>\n<li>Fixed a bug where the {event_duration_minutes} variable would\noutput "0" instead of expected minutes.</li>\n<li>Fixed a bug where %U date variable formatting character did not work\nin date variables.</li>\n<li>Fixed a bug where literal newline indicators (&#92;n) in incoming ICS\nfiles were being trimmed to "n", rather than being treated as actual\nnewlines.</li>\n<li>Fixed a bug where carriage returns (&#92;r) in incoming ICS files were\nresulting in newlines in incoming data where there shouldn''t have\nbeen newlines.</li>\n<li>Fixed a JS bug where fiddling with one rule''s "End" settings would\naffect other rules'' "End" settings as well.</li>\n<li>Fixed a bug where the {time} variable with date formatting did not\nparse.</li>\n<li>Fixed a bug with Calendar:Week tag where the output of the {week}\nvariable was often incorrect.</li>\n<li>Fixed a bug where Calendar would have some theme issue if the EE\ninstall was inside a subdirectory.</li>\n<li>Fixed a bug where when using an alternate language on your site, and\nusing the Calendar SAEF Form, the words in the UI on additional\nrules are incorrectly translated.</li>\n<li>Fixed a bug where the {week_event_count} and {week_event_total}\nvariables did not parse.</li>\n<li>Fixed a bug where clicking on the label for the "All Day Event"\ncheckbox could check/uncheck the wrong rule''s checkbox.</li>\n</ul>\n\n<p><a name="v1.0.4"></a></p>\n\n<h2>Version 1.0.4 (May 24, 2010)</h2>\n\n<ul>\n<li>Fixed a bug where {day_is_today} wasn''t always true on the current\nday when using the Mini, Week, Day, and Month tags.</li>\n<li>Fixed a bug where events with a stop_by rule and over 100\noccurrences would be truncated at the 100th occurrence thanks to an\nincorrectly set last_date value in the DB.</li>\n<li>Fixed a bug where the dynamic="on" parameter did not work.</li>\n<li>Fixed a couple bugs that sometimes prevented the enable="" parameter\nfrom working correctly.</li>\n<li>Fixed a bug where the {event_last_date} variable could cause PHP\nerrors to be displayed.</li>\n<li>Fixed a bug where PHP errors would display when using the iCalendar\nexport feature.</li>\n<li>Fixed a bug where the calendar_name="" parameter was not working\nproperly in the Calendars tag.</li>\n<li>Fixed a bug where the date_range_start= and date_range_end=\nparameters did not work with " ...ago" in the timeframes.</li>\n<li>Fixed a bug where the specifying Time in date range parameters had\nno effect on the Cal and Events tags.</li>\n<li>Fixed a bug where dates that didn''t fall within the proscribed range\nwere being added to an event object''s dates array.</li>\n<li>Fixed a bug where the status="" parameter would not work with "not"\nsyntax.</li>\n</ul>\n\n<p><a name="v1.0.3"></a></p>\n\n<h2>Version 1.0.3 (May 13, 2010)</h2>\n\n<ul>\n<li>Added event_limit="" parameter to Cal, Day, Today, Week, Month, and\nMini tags. Limits the number of events that will be displayed.\nDefaults to no limit.</li>\n<li>Added the {event_first_date} date variable to Calendar:Events tag.</li>\n<li>Modified the {rule_days_of_week} and {rule_days_of_month}\nvariable pairs to output the full day of the week (ex "Monday"), and\nday of month (ex: "15") rather than a shorthand value.</li>\n<li>Modified Calendar to play nicer with data for other addons such as\nPlaya. Added {calendar_ignore_title} and\n{calendar_ignore_url_title} variables for use in these\ncircumstances, which display the equivelant of {title} and\n{url_title}.</li>\n<li>Fixed a bug where the first_day_of_week="" parameter was not\nworking in the Calendar:Cal tag.</li>\n<li>Fixed a bug where some extensions could cause\nsubmit_new_entry_end to run without a valid entry ID, causing\nblank events.</li>\n<li>Fixed a bug where two or more multi-day events would be merged into\na single rule if their start and end times were the same.</li>\n<li>Fixed a bug where rule data would sometimes not display correctly\nafter Quick Save.</li>\n<li>Fixed a bug where repeating events that spanned across years (ex:\nDecember 31 - January 1) would sometimes not display in the latter\nyear.</li>\n<li>Fixed a bug where events that start before 10am would sometimes not\nshow up in the Calendar:Cal tag.</li>\n<li>Fixed a bug where specifying multiple statuses in the Calendar:Cal\ntag would result in no results being returned.</li>\n<li>Fixed a bug where the {event_start_hour}, {event_start_minute},\n{event_end_hour}, {event_end_minute} variables would not parse\nin the Calendar:Events tag.</li>\n<li>Fixed a bug where PHP would display when using the iCalendar export\nfeature.</li>\n</ul>\n\n<p><a name="v1.0.2"></a></p>\n\n<h2>Version 1.0.2 (April 19, 2010)</h2>\n\n<ul>\n<li>Added support for Quick Save in the EE CP publish/edit form.</li>\n<li>Added a "date format" preference for customizing the date as\ndisplayed in the datepicker.</li>\n<li>Added event deletion capabilities to Events tab in module CP.</li>\n<li>Added event_limit="" and event_offset="" parameters to\nexp:calendar:events.</li>\n<li>Changed how EE''s Extentions class is called (requires Bridge\n1.0.3+).</li>\n<li>Removed a couple leftover references to \\$TMPL.</li>\n<li>Fixed a bug where a masked CP path (i.e. not index.php) caused\nproblems.</li>\n<li>Fixed a bug where in certain circumstances the month data returned\nby exp:calendar:cal would be off by one month.</li>\n<li>Fixed a bug in iCalendar parsing where an over-enthusiastic\nfind/replace had mangled some variable names.</li>\n</ul>\n\n<p><a name="v1.0.1"></a></p>\n\n<h2>Version 1.0.1 (April 13, 2010)</h2>\n\n<ul>\n<li>Added a feature where changing an event''s calendar back to "Select a\nCalendar" will delete that event''s calendar data.</li>\n<li>Modified Flow UI CSS to stop the Sites dropdown menu from hiding\nbehind Flow UI elements in MSM installs.</li>\n<li>Modified how "multi-day" is defined in the code so that late-night\nevents (i.e. 11:00pm - 12:30am) are treated correctly.</li>\n<li>Changed the default timezone for new calendars to UTC.</li>\n<li>Improved time and timezone handling in icalendar import process.</li>\n<li>Improved date caching for improved performance.</li>\n<li>Fixed a bug where the show_years="" parameter did not work.</li>\n<li>Fixed a bug where editing an event that didn''t have calendar/date\ndetails set would throw a MySQL error.</li>\n<li>Fixed a JS bug that led to rules not being removed correctly in some\ncircumstances.</li>\n<li>Fixed a bug where an extra event occurrence might be output if a\nrule''s first occurrence comes after the start date of the rule.</li>\n<li>Fixed a bug where related events weren''t parsing correctly inside\nthe {events}{/events} variable pair.</li>\n<li>Fixed a JS bug that allowed an event to be submitted with only\nexclude rules.</li>\n</ul>\n\n<p><a name="v1.0.0"></a></p>\n\n<h2>Version 1.0.0 (April 9, 2010)</h2>\n\n<ul>\n<li>Initial release.</li>\n</ul>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(26, 1, 4, 'channel_form', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Using with Channel Form | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Using with Channel Form</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li class="current"><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>If you wish to allow users to submit and edit events on the front end templates of your site, you can do so using the\n<a href="http://ellislab.com/expressionengine/user-guide/add-ons/channel/channel_form/index.html">Channel Form</a> tag. Just make sure that your page calls jQuery and jQuery UI javascript files in order for the Calendar widget to work properly.</p>\n\n<p><a name="creating_events"></a></p>\n\n<h2>Creating Events</h2>\n\n<p>Below is a complete example that will allow your users to submit events\nthrough the front end:</p>\n\n<pre class="brush: html;">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Add an Event to the Calendar&lt;/title&gt;\n        &lt;script type="text/javascript" \n            src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"&gt;&lt;/script&gt;\n        &lt;script type="text/javascript"\n            src="/themes/third_party/calendar/js/jquery-ui.custom.min.js"&gt;&lt;/script&gt;\n        {exp:calendar:datepicker_js}\n        {exp:calendar:datepicker_css}\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;div id="calendar_saef"&gt;\n            {exp:channel:form channel="calendar_events" return="calendar/event/ENTRY_ID"}\n                &lt;p&gt;\n                    &lt;label&gt;Title:&lt;/label&gt;&lt;br /&gt;\n                    &lt;input type="text" name="title" /&gt;\n                &lt;/p&gt;\n                {exp:calendar:date_widget}\n                &lt;p&gt;\n                    &lt;label&gt;Summary:&lt;/label&gt;&lt;br /&gt;\n                    &lt;textarea name="event_summary"&gt;&lt;/textarea&gt;\n                &lt;/p&gt;\n                &lt;p&gt;\n                    &lt;label&gt;Location:&lt;/label&gt;&lt;br /&gt;\n                    &lt;input type="text" name="event_location" /&gt;\n                &lt;/p&gt;\n                &lt;p&gt;\n                    &lt;input type="submit" name="submit" value="Submit" /&gt;\n                &lt;/p&gt;\n            {/exp:channel:form}\n        &lt;/div&gt;\n    &lt;/body&gt;\n&lt;/html&gt;\n</pre>\n\n<p><a name="editing_events"></a></p>\n\n<h2>Editing Events</h2>\n\n<p>Below is a complete example that will allow your users to edit events\nthrough the front end:</p>\n\n<pre class="brush: html;">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Edit an Event in the Calendar&lt;/title&gt;\n        &lt;script type="text/javascript"\n            src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"&gt;&lt;/script&gt;\n        &lt;script type="text/javascript"\n            src="/themes/third_party/calendar/js/jquery-ui.custom.min.js"&gt;&lt;/script&gt;\n        {exp:calendar:datepicker_js}\n        {exp:calendar:datepicker_css}\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;div id="calendar_saef"&gt;\n           {exp:channel:form\n                channel="calendar_events"\n                entry_id="{segment_3}"\n                return="calendar/event/{segment_3}/updated"}\n            &lt;p&gt;\n                &lt;label&gt;Title:&lt;/label&gt;&lt;br /&gt;\n                &lt;input type="text" name="title" value="{title}" /&gt;\n            &lt;/p&gt;\n            {exp:calendar:date_widget event_id="{segment_3}"}\n            &lt;p&gt;\n                &lt;label&gt;Summary:&lt;/label&gt;&lt;br /&gt;\n                &lt;textarea name="event_summary"&gt;{event_summary}&lt;/textarea&gt;\n            &lt;/p&gt;\n            &lt;p&gt;\n                &lt;label&gt;Location:&lt;/label&gt;&lt;br /&gt;\n                &lt;input type="text" name="event_location" value="{event_location}" /&gt;\n            &lt;/p&gt;\n            &lt;p&gt;\n                &lt;input type="submit" name="submit" value="Update" /&gt;\n            &lt;/p&gt;\n            {/exp:channel:form}\n        &lt;/div&gt;\n    &lt;/body&gt;\n&lt;/html&gt;\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0);
INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`) VALUES
(27, 1, 4, 'control_panel', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Control Panel | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Control Panel</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li class="current"><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The Calendar module Control Panel area allows you to view calendars,\nevents and occurrences, as well as adjust preferences.</p>\n\n<ul>\n<li><a href="#calendars">Calendars</a></li>\n<li><a href="#events">Events</a></li>\n<li><a href="#permissions">Permissions</a></li>\n<li><a href="#preferences">Preferences</a></li>\n<li><a href="#demo_templates">Demo Templates</a></li>\n<li><a href="#documentation">Documentation</a></li>\n</ul>\n\n<p><a name="calendars"></a></p>\n\n<h2>Calendars</h2>\n\n<p>This tab displays a list of all existing Calendars you''ve created with\nthe Calendar module. Calendars are just channel entries - to create a\nnew one, just create a new channel entry in the Calendar: Calendars\nchannel.</p>\n\n<p><a href="images/calendar_cp_1.jpg"><img src="images/calendar_cp_1.jpg" alt="" /></a></p>\n\n<p><a name="events"></a></p>\n\n<h2>Events</h2>\n\n<p>This tab displays a list of all existing events for your Calendars.\nEvents are just channel entries - to create a new one, just create a new\nchannel entry in the Calendar: Events channel. To edit one, use either\nthe Edit tab in the ExpressionEngine control panel, or click on an event\nin the Events list tab of the Calendar module CP area.</p>\n\n<p><a href="images/calendar_cp_2.jpg"><img src="images/calendar_cp_2.jpg" alt="" /></a></p>\n\n<p><a name="permissions"></a></p>\n\n<h2>Permissions</h2>\n\n<p>This tab allows you to control member group permissions for each\ncalendar and member group. For more information on permissions, please\nsee <a href="group_permissions.html">Group Permissions</a> documentation.</p>\n\n<p><a href="images/calendar_cp_4.jpg"><img src="images/calendar_cp_4.jpg" alt="" /></a></p>\n\n<p><a name="preferences"></a></p>\n\n<h2>Preferences</h2>\n\n<p>This tab allows you to control a variety of settings for your site in\nregards to Calendar data. You can modify which day is to be the first\nday of the week, the clock type (12/24 hour), timezone, and time\nformatting.</p>\n\n<p><a href="images/calendar_cp_3.jpg"><img src="images/calendar_cp_3.jpg" alt="" /></a></p>\n\n<p><a name="demo_templates"></a></p>\n\n<h2>Demo Templates</h2>\n\n<p>If you wish to load the demo templates for Calendar, go to this tab. Then just create a prefix name for the sample data such as <em>test&#95;</em> or <em>calendar&#95;</em>, and click the <strong>Install Demo Templates</strong> button.</p>\n\n<p><a name="documentation"></a></p>\n\n<h2>Documentation</h2>\n\n<p>All documentation is available on the Solspace site. This tab will take\nyou directly to the Solspace site documentation area.</p>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(28, 1, 4, 'cp_ui', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>CP Publish UI | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>CP Publish UI</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li class="current"><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>Both calendars and events for calendar are just glorified channel\nentries. You create them just like you would a regular entry, but\nthrough the designated <strong>Calendar: Calendars</strong> and <strong>Calendar: Events</strong>\nchannels. Just like regular channels, you can add/edit custom fields for\neach.</p>\n\n<p>The Calendar module contains a complex and powerful UI for the\nPublish/Edit page in the ExpressionEngine Control Panel. You can easily\ncreate very flexible repeating occurrences, as well as unlimited\nexceptions to the rules (include dates / exclude dates). Below are some\nscreenshots of it in use.</p>\n\n<p><a href="images/calendar_cppublish_1.jpg"><img src="images/calendar_cppublish_1_t.jpg" alt="" /></a>\n<a href="images/calendar_cppublish_2.jpg"><img src="images/calendar_cppublish_2_t.jpg" alt="" /></a>\n<a href="images/calendar_cppublish_3.jpg"><img src="images/calendar_cppublish_3_t.jpg" alt="" /></a></p>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(29, 1, 4, 'date', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Date | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Date</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li class="current"><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p><em>Calendar:Date</em> is useful for situations where you want to output\nformatted date data for any arbitrary date. So, you would typically use\nthis in these three circumstances:</p>\n\n<ol>\n<li>you need full date formatting for a some random date.</li>\n<li>you want to find out information about a date that falls relative to some other date.</li>\n<li>you need to turn date segments into a formattable date in your template (Calendar-related or not).</li>\n</ol>\n\n<p>The advantage is that you can\nformat the outgoing date however you please. Since this function uses\nCalendar’s powerful date parameters you can not only output absolute\ndates (ex: <strong>2010-04-15</strong>), you can also output relative dates (ex: "<strong>-2\nweeks begin</strong>"). Even better, using the <em>base_date=""</em> parameter, the dates\ncan be relative to ANY date, not just today.</p>\n\n<pre class="brush: html;">{exp:calendar:date} content {/exp:calendar:date} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>The following parameters are available for use:</p>\n\n<ul>\n<li><a href="#base_date">base_date</a></li>\n<li><a href="#output_date">output_date</a></li>\n</ul>\n\n<p><a name="base_date"></a></p>\n\n<h3>base_date=</h3>\n\n<pre class="brush: html;">base_date="2009-06-01" </pre>\n\n<p>The base date for relative date calculations. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and\neasy-to-use text date\nformatting</a>\napply to this parameter. Only relevant if the\n<a href="#output_date">output_date</a> parameter is set to a relative value (ex:\n<strong>-1 week</strong>). Default is equivalent to <strong>today @ now</strong>.</p>\n\n<p><a name="output_date"></a></p>\n\n<h3>output_date=</h3>\n\n<pre class="brush: html;">output_date="2010-06-last" </pre>\n\n<p>The date you want to display. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and easy-to-use text date\nformatting</a>\napply to this parameter. If the value is a relative date, the date will\nbe relative to the value of <a href="#base_date">base_date</a>.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>The following variables are available for use:</p>\n\n<ul>\n<li><a href="#date">date</a></li>\n<li><a href="#base_date_v">base_date</a></li>\n</ul>\n\n<p><a name="date"></a></p>\n\n<h3>date</h3>\n\n<pre class="brush: html;">{date format="%Y-%m-%d"} </pre>\n\n<p>The date as determined by the <a href="#output_date">output_date</a> parameter. If\nformat is not specified the format defaults to <em>%Y%m%d</em> (ex: <strong>20100415</strong>).</p>\n\n<p><a name="base_date"></a></p>\n\n<h3>base_date</h3>\n\n<pre class="brush: html;">{base_date format="%Y-%m-%d"} </pre>\n\n<p>The base date as set in the <a href="#base_date">base_date</a> parameter. If\nformat is not specified the format defaults to <em>%Y%m%d</em> (ex: <strong>20100415</strong>).</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p>The following example is how you would generate <strong>tomorrow</strong>‘s date:</p>\n\n<pre class="brush: html;">{exp:calendar:date\n    base_date="today"\n    output_date="tomorrow"\n}\n    &lt;p&gt;Weather forcast for Tomorrow ({date format="%F %j, %Y"})&lt;/p&gt;\n{/exp:calendar:date}\n</pre>\n\n<p>Or, <strong>1 year</strong> from <strong>tomorrow</strong>‘s date would be done like this:</p>\n\n<pre class="brush: html;">{exp:calendar:date\n    base_date="tomorrow"\n    output_date="1 year"\n}\n    &lt;p&gt;1 Year from Tomorrow would be {date format="%F %j, %Y"}.&lt;/p&gt;\n{/exp:calendar:date}\n</pre>\n\n<p>If you''ve ever needed to turn date segments in the URL into a formattable date in your template, this is the perfect tag to use (Calendar related or not):</p>\n\n<pre class="brush: html;">{exp:calendar:date\n    base_date="{segment_3}-{segment_4}-{segment_5}"\n    output_date="today"\n}\n    {date format="%F %j, %Y"}\n{/exp:calendar:date}\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(30, 1, 4, 'date_formatting', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Date Parameter Formatting | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Date Parameter Formatting</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li class="current"><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p><a name="date_formatting"></a></p>\n\n<h2>Date Formatting</h2>\n\n<p>In addition to standard EE date formatting, Calendar supports\neasy-to-use text format versions of dates for all parameters that accept\ndate values. Text dates are relative to today. So for example, you can\nspecify dates like this:</p>\n\n<ul>\n<li><strong>today</strong></li>\n<li><strong>tomorrow</strong></li>\n<li><strong>yesterday</strong></li>\n<li><strong>X day(s)</strong> (where X is a number of days greater than or equal to 1)</li>\n<li><strong>X week(s)</strong> (where X is a number of weeks greater than or equal to 1)</li>\n<li><strong>X month(s)</strong> (where X is a number of months greater than or equal to 1)</li>\n<li><strong>X year(s)</strong> (where X is a number of years greater than or equal to 1)</li>\n</ul>\n\n<p>So to display all events that fall within today’s date, up to 3 months in\nthe future, you can do something like this:</p>\n\n<pre class="brush: html;">date_range_start="today" date_range_end="3 months" </pre>\n\n<ul>\n<li>The word <strong>ago</strong> can also be appended to refer to dates in the past. For\nexample, <strong>1 week</strong> means one week from today, while <strong>1 week ago</strong> means\none week ago.</li>\n<li><strong>+5 days</strong> / <strong>-5 days</strong> (days, weeks, months, years / begin, end)\n\n<ul>\n<li>Preceding the number with <strong>+</strong> will look into the future, while\n<strong>-</strong> into the past.</li>\n<li>The number can be any integer.</li>\n<li>Any of days, weeks, months, or years can be provided.</li>\n<li>An optional <strong>begin</strong> or <strong>end</strong> suffix may be added for weeks,\nmonths, and years. Doing so will adjust the date to the first or last\nday of the week, month, or year.</li>\n</ul></li>\n</ul>\n\n<p>So to display all events that fall within today’s date, up to 5 days into the\nfuture, you can do something like this:</p>\n\n<pre class="brush: html;">date_range_start="today" date_range_end="+5 days" </pre>\n\n<ul>\n<li><strong>YYYYMMDD</strong></li>\n<li><strong>YYYY-MM-DD</strong></li>\n<li><strong>MM-DD-YYYY</strong></li>\n<li><strong>MM/DD/YYYY</strong></li>\n<li><strong>year-month-day</strong></li>\n<li>When using either <strong>YYYY-MM-DD</strong> or <strong>MM-DD-YYYY</strong>, you may replace one\nor more of the numeric values with the literal words <em>year</em>, <em>month</em>,\nand/or <em>day</em>. Calendar will then replace that word with the relevant\nvalue for the current date. Examples:\n\n<ul>\n<li><em>year-12-25</em> = Christmas Day in the current year.</li>\n<li><em>2004-month-15</em> = The fifteenth day of the current month in 2004.</li>\n</ul></li>\n<li>The literal value <em>year-month-day</em> is equivalent to “today”.</li>\n<li>You may use the word “last” instead of “day”. Doing so will set the\ndate to the final day of the relevant month. Examples:\n\n<ul>\n<li><em>2010-02-last</em> = February 28, 2010.</li>\n<li><em>2012-02-last</em> = February 29, 2010</li>\n<li><em>year-month-last</em> = The last day of the current month of the\ncurrent year.</li>\n</ul></li>\n</ul>\n\n<p><a name="time_formatting"></a></p>\n\n<h2>Time Formatting</h2>\n\n<p>Calendar takes a somewhat unconventional approach to Time Formatting.\nRather than specifying a date/time like this <em>YYYY-MM-DD HH:MM AM</em>, you\nactually need to specify it like this <em>YYYY-MM-DD @ HH:MM AM</em> (with\n<em>[space] @ [space]</em> seperating the date and the time). You can also call\nTimes in a variety of formats and easy-to-use text format versions. So\nfor example, you can specify dates like this:</p>\n\n<ul>\n<li><strong>@ now</strong></li>\n<li><strong>@ noon</strong></li>\n<li><strong>@ midnight</strong> (start of day, not end of day)</li>\n<li><strong>@ 0800</strong> (four digits, 24h time)</li>\n<li><strong>@ 16:00</strong> (24h time)</li>\n<li><strong>@ 8:00 am</strong> (am/pm time)</li>\n</ul>\n\n<p>So some complete formatting examples would look like:</p>\n\n<pre class="brush: html;">date_range_start="yesterday @ noon" date_range_end="today @ 5:00 pm" </pre>\n\n<pre class="brush: html;">date_range_start="today @ midnight" date_range_end="2 weeks @ 8:00 pm" </pre>\n\n<pre class="brush: html;">date_range_start="2010-02-01 @ 0800" date_range_end="2010-02-last @ 1600" </pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(31, 1, 4, 'day', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Day | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Day</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li class="current"><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:Day</em> loop outputs a one day calendar list showing a\nspecific days events. It''s a shortcut to using the complex\n<a href="calendar.html" title="Calendar:Cal Documentation">Calendar:Cal</a>\nfunction. Unlike most ExpressionEngine tags, the\n<strong>{exp:calendar:day}{/exp:calendar:day}</strong> tags alone will output a\npre-templated display. Using the parameters and variables below, you can\nfilter and format the results further. Defaults to displaying events for\ntoday.</p>\n\n<pre class="brush: html;">{exp:calendar:day} content {/exp:calendar:day} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#conditionals">Conditionals</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>The following parameters are available for use:</p>\n\n<ul>\n<li><a href="#site_id">site_id</a></li>\n<li><a href="#calendar_id">calendar_id</a></li>\n<li><a href="#calendar_name">calendar_name</a></li>\n<li><a href="#event_id">event_id</a></li>\n<li><a href="#event_name">event_name</a></li>\n<li><a href="#date_range_start">date_range_start</a></li>\n<li><a href="#enable">enable</a></li>\n</ul>\n\n<p><a name="site_id"></a></p>\n\n<h3>site_id=</h3>\n\n<pre class="brush: html;">site_id="1" </pre>\n\n<p>If using MSM, you can specify a Site ID in this parameter to filter\nentries down to that site.</p>\n\n<p><a name="calendar_id"></a></p>\n\n<h3>calendar_id=</h3>\n\n<pre class="brush: html;">calendar_id="1|3" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir entry ID(s). You can hardcode a calendar ID, pass it through an\nembed, or grab it from the URI. Seperate multiples with the pipe\ncharacter.</p>\n\n<p><a name="calendar_name"></a></p>\n\n<h3>calendar_name=</h3>\n\n<pre class="brush: html;">calendar_name="soccer|baseball|dodgeball" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir short_names (entry url_title). You can hardcode a short_name,\npass it through an embed, or grab it from the URI. Seperate multiples\nwith the pipe character.</p>\n\n<p><a name="event_id"></a></p>\n\n<h3>event_id=</h3>\n\n<pre class="brush: html;">event_id="23|77" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nentry ID(s). You can hardcode an event ID, pass it through an embed, or\ngrab it from the URI. Seperate multiples with the pipe character.</p>\n\n<p><a name="event_name"></a></p>\n\n<h3>event_name=</h3>\n\n<pre class="brush: html;">event_name="best_event_evar|christmas|pie_day" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nshort_names (entry url_title). You can hardcode a short_name, pass it\nthrough an embed, or grab it from the URI. Seperate multiples with the\npipe character.</p>\n\n<p><a name="date_range_start"></a></p>\n\n<h3>date_range_start=</h3>\n\n<pre class="brush: html;">date_range_start="2010-01-31" </pre>\n\n<p>This parameter allows you to specify a specific day to display events\nfor. If this parameter is NOT specified, then the current day is\ndisplayed. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and easy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="enable"></a></p>\n\n<h3>enable=</h3>\n\n<pre class="brush: html;">enable="categories|category_fields|custom_fields|member_data|pagination|trackbacks" </pre>\n\n<p>By default, this function does not grab any advanced weblog data in\norder to improve performance. However, opposite to the EE Weblog\nModule''s\n<a href="http://expressionengine.com/docs/modules/weblog/parameters.html#par_disable" title="EE Weblog Module Documentation">disable</a>\nparameter, this parameter allows you to enable some or all of those\nfeatures when you need them. Seperate multiples with the pipe character.\nOptions are: categories, category_fields, custom_fields, member_data,\npagination, and trackbacks.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>Most of the <a href="events.html#variables" title="Calendar:Events Documentation">variables listed in\nCalendar:Events</a>\nare available for use here. Formatting variables are not needed as the\n<em>Calendar:Day</em> loop will do that for you. However, should you need to\nuse any, all relevant <a href="calendar.html#variables" title="Calendar:Cal Documentation">variables from\nCalendar:Cal</a>\n(prepended with day_) are available for use here.</p>\n\n<p><a name="conditionals"></a></p>\n\n<h2>Conditionals</h2>\n\n<p>Most of the <a href="events.html#conditionals" title="Calendar:Events Documentation">conditionals listed in\nCalendar:Events</a>\nare available for use here. Formatting conditionals are not needed as\nthe <em>Calendar:Day</em> loop will do that for you. However, should you need\nto use any, all relevant <a href="calendar.html#conditionals" title="Calendar:Cal Documentation">conditionals from\nCalendar:Cal</a>\n(prepended with day_) are available for use here.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p><a name="easy"></a></p>\n\n<h3>Easy</h3>\n\n<p>This single set of code will output a Daily list of events for you. This\nis thanks to the preloaded template pack included with Calendar. The\n<strong>{exp:calendar:day}{/exp:calendar:day}</strong> tags act almost like an\n<strong>{events}{/events}</strong> variable pair for formatting the events (see\n<a href="events.html">Calendar:Events Documentation</a> for list of\navailable variables and conditionals):</p>\n\n<pre class="brush: html;">{exp:calendar:day \n    {if segment_3}\n        date_range_start="{segment_3}-{segment_4}-{segment_5}"\n    {/if}\n    }\n    &lt;div class="event"&gt;\n        &lt;a href="{path=''calendar/events''}{event_id}/"&gt;\n            {event_title}\n        &lt;/a&gt;\n        {if event_all_day}\n            (All day!)\n        {if:else}\n            {event_start_date format="%g:%i%a"} -\n            {event_end_date format="%g:%i%a"}\n        {/if}\n    &lt;/div&gt;\n{/exp:calendar:day}\n</pre>\n\n<p><a name="moderate"></a></p>\n\n<h3>Moderate</h3>\n\n<p>If you’d like your Day calendar to have a little more information on it,\netc, have a look at this slightly more advanced code example:</p>\n\n<pre class="brush: html;">{exp:calendar:day\n    {if segment_3}\n        date_range_start="{segment_3}-{segment_4}-{segment_5}"\n    {/if}\n    }\n    &lt;div class="event"&gt;\n        &lt;div class="head"&gt;\n            &lt;h2&gt;\n                &lt;a href="{path=''calendar/events''}{event_id}/"&gt;\n                    {event_title}\n                &lt;/a&gt;\n            &lt;/h2&gt;\n            {if event_all_day}\n                &lt;p&gt;\n                    {event_start_date format="%Y-%m-%d"}\n                    {if event_end_date}\n                        - {event_end_date format="%Y-%m-%d"}\n                    {/if}\n                &lt;/p&gt;\n            {if:else}\n                &lt;p&gt;\n                    {event_start_date format="%Y-%m-%d %H:%i"}\n                    {if event_end_date}\n                        - {event_end_date format="%Y-%m-%d %H:%i"}\n                    {/if}\n                &lt;/p&gt;\n            {/if}\n            &lt;p&gt;\n                From calendar:\n                &lt;a href="{path=''calendar/calendars''}{event_calendar_id}/"&gt;\n                    {event_calendar_title}\n                &lt;/a&gt;\n            &lt;/p&gt;\n        &lt;/div&gt;\n        &lt;div class="body"&gt;\n            &lt;p&gt;\n                Details: {event_summary}&lt;br /&gt;      \n                Location: {event_location}\n            &lt;/p&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n{/exp:calendar:day}\n</pre>\n\n<p><a name="advanced"></a></p>\n\n<h3>Advanced</h3>\n\n<p>If you’re interested in working the code from scratch, you’ll need to\nuse the full <a href="calendar.html">Calendar:Cal</a> function to generate\nthe code:</p>\n\n<pre class="brush: html;">{exp:calendar:cal \n    pad_short_weeks="n" \n    {if segment_3 == ''''}\n        date_range_start="today"\n        date_range_end="today"\n    {/if}\n    {if segment_3 != ''''}\n        date_range_start="{segment_3}-{segment_4}-{segment_5}"\n        date_range_end="{segment_3}-{segment_4}-{segment_5}"\n    {/if}\n    }\n    {display_each_day}\n        &lt;div class="header"&gt;\n            &lt;div style="float: left; width: 20%;"&gt;\n                &lt;a href="{path=''calendar/day''}{prev_day format="%Y/%m/%d"}/"&gt;\n                    Yesterday\n                &lt;/a&gt;\n            &lt;/div&gt;\n            &lt;div style="float: left; width: 60%; text-align: center;"&gt;\n                &lt;h1&gt;{date format="%l, %F %d, %Y"} ({day_event_total} events)&lt;/h1&gt;\n            &lt;/div&gt;\n            &lt;div style="float: right; text-align: right; width: 20%;"&gt;\n                &lt;a href="{path=''calendar/day''}{next_day format="%Y/%m/%d"}/"&gt;\n                    Tomorrow\n                &lt;/a&gt;\n            &lt;/div&gt;\n            &lt;br style="clear: both;" /&gt;\n        &lt;/div&gt;\n        {display_each_hour}\n            &lt;h2&gt;\n                {date format="%g:%i %a"} ({hour_event_total} events)\n            &lt;/h2&gt;\n            {events}\n            &lt;div class="event"&gt;\n                &lt;div class="head"&gt;\n                    &lt;h2&gt;\n                        &lt;a href="{path=''calendar/events''}{event_id}/"&gt;\n                            {event_title}\n                        &lt;/a&gt;\n                    &lt;/h2&gt; \n                {if event_all_day}\n                    &lt;p&gt;\n                        {event_start_date format="%Y-%m-%d"}\n                        {if event_end_date}\n                            - {event_end_date format="%Y-%m-%d"}\n                        {/if}\n                    &lt;/p&gt;\n                {if:else}\n                    &lt;p&gt;\n                        {event_start_date format="%Y-%m-%d %H:%i"}\n                        {if event_end_date}\n                            - {event_end_date format="%Y-%m-%d %H:%i"}\n                        {/if}\n                    &lt;/p&gt;\n                    &lt;p&gt;\n                        This event lasts {event_duration_days} days \n                        {event_duration_hours} hours \n                        {event_duration_minutes} minutes.\n                    &lt;/p&gt;\n                {/if}\n                    &lt;p&gt;\n                        From calendar:\n                        &lt;a href="{path=''calendar/calendars''}{event_calendar_id}/"&gt;\n                            {event_calendar_title}\n                        &lt;/a&gt;\n                    &lt;/p&gt;\n                &lt;/div&gt;\n                &lt;div class="body"&gt;\n                    &lt;p&gt;\n                        Details: {event_summary}&lt;br /&gt;\n                        Location: {event_location}\n                    &lt;/p&gt;\n                &lt;/div&gt;\n            &lt;/div&gt;\n            {/events}\n        {/display_each_hour}\n    {/display_each_day}\n{/exp:calendar:cal}\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0);
INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`) VALUES
(32, 1, 4, 'events', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Events | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Events</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li class="current"><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:Events</em> loop outputs information about events.</p>\n\n<pre class="brush: html;">{exp:calendar:events} content {/exp:calendar:events} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#variable_pairs">Variable Pairs</a></li>\n<li><a href="#conditionals">Conditionals</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>Most parameters available in the <em>Channel:Entries</em> loop are available\nhere. Additionally, these are also available:</p>\n\n<ul>\n<li><a href="#author_id">author_id</a></li>\n<li><a href="#site">site</a></li>\n<li><a href="#calendar_id">calendar_id</a></li>\n<li><a href="#calendar_name">calendar_name</a></li>\n<li><a href="#category">category</a></li>\n<li><a href="#dynamic">dynamic</a></li>\n<li><a href="#event_id">event_id</a></li>\n<li><a href="#event_name">event_name</a></li>\n<li><a href="#event_limit">event_limit</a></li>\n<li><a href="#event_offset">event_offset</a></li>\n<li><a href="#date_range_start">date_range_start</a></li>\n<li><a href="#date_range_end">date_range_end</a></li>\n<li><a href="#show_days">show_days</a></li>\n<li><a href="#show_weeks">show_weeks</a></li>\n<li><a href="#show_months">show_months</a></li>\n<li><a href="#show_years">show_years</a></li>\n<li><a href="#orderby">orderby</a></li>\n<li><a href="#paginate">paginate</a></li>\n</ul>\n\n<p><a name="author_id"></a></p>\n\n<h3>author_id=</h3>\n\n<pre class="brush: html;">author_id="{segment_3}" </pre>\n\n<p>Allows you to filter your event results by the member(s) that authored\nthem.</p>\n\n<p><a name="site"></a></p>\n\n<h3>site=</h3>\n\n<pre class="brush: html;">site="default_site" </pre>\n\n<p>If using MSM, you can specify a Site short name in this parameter to\nfilter entries down to that site.</p>\n\n<p><a name="calendar_id"></a></p>\n\n<h3>calendar_id=</h3>\n\n<pre class="brush: html;">calendar_id="1|3" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir entry ID(s). You can hardcode a calendar ID, pass it through an\nembed, or grab it from the URI. Seperate multiples with the pipe\ncharacter.</p>\n\n<p><a name="calendar_name"></a></p>\n\n<h3>calendar_name=</h3>\n\n<pre class="brush: html;">calendar_name="soccer|baseball|dodgeball" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir short_names (entry url_title). You can hardcode a short_name,\npass it through an embed, or grab it from the URI. Seperate multiples\nwith the pipe character.</p>\n\n<p><a name="category"></a></p>\n\n<h3>category=</h3>\n\n<pre class="brush: html;">category="12|15" </pre>\n\n<p>This parameter allows you to filter your results by events that belong\nto specific categories. You can specify a category ID or a category\nurl_title. You can hardcode the value, pass it through an embed, or\ngrab it from the URI. Seperate multiples with the pipe character.</p>\n\n<p><a name="dynamic"></a></p>\n\n<h3>dynamic=</h3>\n\n<pre class="brush: html;">dynamic="no" </pre>\n\n<p>This parameter allows you to enable/disable this template tag from\nlooking into the URI for entry ID''s or url titles. This is OFF by\ndefault. To enable, add this parameter and specify <strong>yes</strong>.</p>\n\n<p><a name="event_id"></a></p>\n\n<h3>event_id=</h3>\n\n<pre class="brush: html;">event_id="23|77" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nentry ID(s). You can hardcode an event ID, pass it through an embed, or\ngrab it from the URI. Seperate multiples with the pipe character.</p>\n\n<p><a name="event_name"></a></p>\n\n<h3>event_name=</h3>\n\n<pre class="brush: html;">event_name="best_event_evar|christmas|pie_day" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nshort_names (entry url_title). You can hardcode a short_name, pass it\nthrough an embed, or grab it from the URI. Seperate multiples with the\npipe character.</p>\n\n<p><a name="event_limit"></a></p>\n\n<h3>event_limit=</h3>\n\n<pre class="brush: html;">event_limit="5" </pre>\n\n<p>This parameter lets you limit the number of events and occurrences to be\ndisplayed.</p>\n\n<p><a name="event_offset"></a></p>\n\n<h3>event_offset=</h3>\n\n<pre class="brush: html;">event_offset="1" </pre>\n\n<p>This parameter lets you offset the results of events and occurrences\ndisplayed. For example, if you''d like the first result to be skipped\nfrom the results, specify a value of <strong>1</strong>.</p>\n\n<p><a name="date_range_start"></a></p>\n\n<h3>date_range_start=</h3>\n\n<pre class="brush: html;">date_range_start="2010-01-31 @ 8:00 AM" </pre>\n\n<p>Limits output to events on or after this date. If not specified, this\nvalue defaults to Today. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and easy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="date_range_end"></a></p>\n\n<h3>date_range_end=</h3>\n\n<pre class="brush: html;">date_range_end="2010-02-14 @ noon" </pre>\n\n<p>Limits output to events on or before this date. If not specified, this\nvalue defaults to Today. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and easy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="show_days"></a></p>\n\n<h3>show_days=</h3>\n\n<pre class="brush: html;">show_days="14" </pre>\n\n<p>Specifies the number of days to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. If set to a value like <strong>1</strong>, it will\nshow the remainder of today only (as opposed to a 24hr period). If set\nto a value like <strong>3</strong>, it will show remainder of today +2 days. Used in\nconjunction with either <a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="show_weeks"></a></p>\n\n<h3>show_weeks=</h3>\n\n<pre class="brush: html;">show_weeks="3" </pre>\n\n<p>Specifies the number of weeks to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. If set to a value like <strong>1</strong>, it will\nshow the remainder of the current week only (as opposed to a 7 day\nperiod). If set to a value like <strong>3</strong>, it will show the remainder of the\ncurrent week +2 weeks. This respects the\n<a href="#first_day_of_week">first_day_of_week</a> parameter. So if today is\n<em>Thursday, March 10</em>, and your <a href="#date_range_start">date_range_start</a>\nparameter is set to <strong>today</strong> and <em>show_weeks</em> parameter is set to <strong>1</strong>, it will show events from <em>Thursday, March 10</em> to <em>Saturday, March 12</em>. If you were to use the <a href="#date_range_end">date_range_end</a> parameter set to <strong>today</strong>\nand <em>show_weeks</em> parameter is set to <strong>1</strong>, it will show events from <em>Sunday,\nMarch 6</em> to <em>Thursday, March 10</em>. Used in conjunction with either\n<a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="show_months"></a></p>\n\n<h3>show_months=</h3>\n\n<pre class="brush: html;">show_months="6" </pre>\n\n<p>Specifies the number of months to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. If set to a value like <strong>1</strong>, it will\nshow the remainder of the current month only (as opposed to a 30/31 day\nperiod). If set to a value like <strong>3</strong>, it will show the remainder of the\ncurrent month +2 months. So if today is <em>March 11</em>, and your\n<a href="#date_range_start">date_range_start</a> parameter is set to <strong>today</strong> and\n<em>show_months</em> parameter is set to <strong>1</strong>, it will show events from <em>March 11</em> to <em>March 31</em>. If you were to use the <a href="#date_range_end">date_range_end</a>\nparameter set to <strong>today</strong> and <em>show_months</em> parameter is set to <strong>1</strong>, it will show events from <em>March 1</em> to <em>March 11</em>. Used in conjunction with either <a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="show_years"></a></p>\n\n<h3>show_years=</h3>\n\n<pre class="brush: html;">show_years="2" </pre>\n\n<p>Specifies the number of years to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. If set to a value like <strong>1</strong>, it will\nshow the remainder of the current year only (as opposed to a 365 day\nperiod). If set to a value like <strong>3</strong>, it will show the remainder of the\ncurrent year +2 years. So if today is <em>March 11, 2011</em>, and your\n<a href="#date_range_start">date_range_start</a> parameter is set to <strong>today</strong> and\n<em>show_years</em> parameter is set to <strong>1</strong>, it will show events from <em>March 11,\n2011</em> to <em>December 31, 2011</em>. If you were to use the\n<a href="#date_range_end">date_range_end</a> parameter set to <strong>today</strong> and\n<em>show_months</em> parameter is set to <strong>1</strong>, it will show events from <em>January 1,\n2011</em> to <em>March 11, 2011</em>. Used in conjunction with either\n<a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="orderby"></a></p>\n\n<h3>orderby=</h3>\n\n<pre class="brush: html;">orderby="event_start_date" </pre>\n\n<p>This parameter allows you to control the ordering of the event results.\nOptions are:</p>\n\n<ul>\n<li><strong>event_start_date</strong> (orders by DATE and TIME)</li>\n<li><strong>event_start_time</strong> (orders by the TIME only - ignores dates)</li>\n<li><strong>event_title</strong> (orders by TITLE of the event)</li>\n</ul>\n\n<p>Default is <strong>event_start_date</strong>. Use the <em>sort</em> parameter to control whether the results should be <strong>ascending</strong> or <strong>descending</strong>.</p>\n\n<p><a name="paginate"></a></p>\n\n<h3>paginate=</h3>\n\n<pre class="brush: html;">paginate="both" </pre>\n\n<p>This parameter allows you to control where the pagination will display.\nOptions are <strong>top</strong>, <strong>bottom</strong>, or <strong>both</strong>. Used in conjunction with the\n<a href="#paginate">paginate</a> variable pair.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>Most variables available in the <em>Channel:Entries</em> loop are available\nhere. Additionally, these are also available:</p>\n\n<ul>\n<li><a href="#event_calendar_title">event_calendar_title</a></li>\n<li><a href="#event_calendar_url_title">event_calendar_url_title</a></li>\n<li><a href="#event_calendar_id">event_calendar_id</a></li>\n<li><a href="#event_calendar_tz_offset">event_calendar_tz_offset</a></li>\n<li><a href="#event_calendar_ics_url">event_calendar_ics_url</a></li>\n<li><a href="#calendar_status">calendar_status</a></li>\n<li><a href="#calendar_author">calendar_author</a></li>\n<li><a href="#calendar_author_id">calendar_author_id</a></li>\n<li><a href="#event_title">event_title</a></li>\n<li><a href="#event_url_title">event_url_title</a></li>\n<li><a href="#event_id">event_id</a></li>\n<li><a href="#event_parent_id">event_parent_id</a></li>\n<li><a href="#event_status">event_status</a></li>\n<li><a href="#event_author">event_author</a></li>\n<li><a href="#event_author_id">event_author_id</a></li>\n<li><a href="#event_start_date">event_start_date</a></li>\n<li><a href="#event_end_date">event_end_date</a></li>\n<li><a href="#event_first_date">event_first_date</a></li>\n<li><a href="#event_last_date">event_last_date</a></li>\n<li><a href="#event_duration_days">event_duration_days</a></li>\n<li><a href="#event_duration_hours">event_duration_hours</a></li>\n<li><a href="#event_duration_minutes">event_duration_minutes</a></li>\n<li><a href="#event_timeframe_total">event_timeframe_total</a></li>\n<li><a href="#rule_type">rule_type</a></li>\n<li><a href="#rule_repeat_years">rule_repeat_years</a></li>\n<li><a href="#rule_repeat_months">rule_repeat_months</a></li>\n<li><a href="#rule_repeat_weeks">rule_repeat_weeks</a></li>\n<li><a href="#rule_repeat_days">rule_repeat_days</a></li>\n<li><a href="#rule_days_of_week">rule_days_of_week</a></li>\n<li><a href="#rule_relative_dow">rule_relative_dow</a></li>\n<li><a href="#rule_days_of_month">rule_days_of_month</a></li>\n<li><a href="#rule_months_of_year">rule_months_of_year</a></li>\n<li><a href="#rule_stop_by">rule_stop_by</a></li>\n<li><a href="#rule_stop_after">rule_stop_after</a></li>\n<li><a href="#rule_start_date">rule_start_date</a></li>\n<li><a href="#rule_end_date">rule_end_date</a></li>\n<li><a href="#calendar_ignore_title">calendar_ignore_title</a></li>\n<li><a href="#calendar_ignore_url_title">calendar_ignore_url_title</a></li>\n</ul>\n\n<p><a name="event_calendar_title"></a></p>\n\n<h3>event_calendar_title</h3>\n\n<pre class="brush: html;">{event_calendar_title} </pre>\n\n<p>This variable outputs the <strong>title</strong> of the calendar channel entry.</p>\n\n<p><a name="event_calendar_url_title"></a></p>\n\n<h3>event_calendar_url_title</h3>\n\n<pre class="brush: html;">{event_calendar_url_title} </pre>\n\n<p>This variable outputs the <strong>URL title</strong> of the calendar channel entry.</p>\n\n<p><a name="event_calendar_id"></a></p>\n\n<h3>event_calendar_id</h3>\n\n<pre class="brush: html;">{event_calendar_id} </pre>\n\n<p>This variable outputs the <strong>entry ID</strong> of the calendar channel entry.</p>\n\n<p><a name="event_calendar_tz_offset"></a></p>\n\n<h3>event_calendar_tz_offset</h3>\n\n<pre class="brush: html;">{event_calendar_tz_offset} </pre>\n\n<p>This variable outputs the timezone offset selected for the calendar.</p>\n\n<p><a name="event_calendar_ics_url"></a></p>\n\n<h3>event_calendar_ics_url</h3>\n\n<pre class="brush: html;">{event_calendar_ics_url} </pre>\n\n<p>This variable outputs the URL of ICS file(s) to be imported into this\ncalendar.</p>\n\n<p><a name="calendar_status"></a></p>\n\n<h3>calendar_status</h3>\n\n<pre class="brush: html;">{calendar_status} </pre>\n\n<p>This variable outputs the status of the calendar entry.</p>\n\n<p><a name="calendar_author"></a></p>\n\n<h3>calendar_author</h3>\n\n<pre class="brush: html;">{calendar_author} </pre>\n\n<p>This variable outputs the screen name of the author of the calendar\nentry.</p>\n\n<p><a name="calendar_author_id"></a></p>\n\n<h3>calendar_author_id</h3>\n\n<pre class="brush: html;">{calendar_author_id} </pre>\n\n<p>This variable outputs the member ID of the author of the calendar entry.</p>\n\n<p><a name="event_title"></a></p>\n\n<h3>event_title</h3>\n\n<pre class="brush: html;">{event_title} </pre>\n\n<p>This variable outputs the <strong>title</strong> of the event channel entry.</p>\n\n<p><a name="event_url_title"></a></p>\n\n<h3>event_url_title</h3>\n\n<pre class="brush: html;">{event_url_title} </pre>\n\n<p>This variable outputs the <strong>URL title</strong> of the event channel entry.</p>\n\n<p><a name="event_id"></a></p>\n\n<h3>event_id</h3>\n\n<pre class="brush: html;">{event_id} </pre>\n\n<p>This variable outputs the <strong>entry ID</strong> of the event channel entry.</p>\n\n<p><a name="event_parent_id"></a></p>\n\n<h3>event_parent_id</h3>\n\n<pre class="brush: html;">{event_parent_id} </pre>\n\n<p>If the given occurrence has been manually edited through the Calendar\nCP, this will parse to the event ID of the parent event. You would\nusually use this in conjunction with the <a href="#if_edited_occurrence">if\nedited_occurrence</a> conditional so you can\ngenerate a proper link to the parent event ID.</p>\n\n<p><a name="event_status"></a></p>\n\n<h3>event_status</h3>\n\n<pre class="brush: html;">{event_status} </pre>\n\n<p>This variable outputs the status of the event entry.</p>\n\n<p><a name="event_author"></a></p>\n\n<h3>event_author</h3>\n\n<pre class="brush: html;">{event_author} </pre>\n\n<p>This variable outputs the screen name of the author of the event entry.</p>\n\n<p><a name="event_author_id"></a></p>\n\n<h3>event_author_id</h3>\n\n<pre class="brush: html;">{event_author_id} </pre>\n\n<p>This variable outputs the member ID of the author of the event entry.</p>\n\n<p><a name="event_start_date"></a></p>\n\n<h3>event_start_date</h3>\n\n<pre class="brush: html;">{event_start_date format="%F %j, %Y"} </pre>\n\n<p>Displays the start date of the event, formatted using <a href="http://expressionengine.com/user_guide/templates/date_variable_formatting.html">EE-style format\ncharacters</a>.\nIf <em>format=""</em> is not specified, it will parse as <strong>YYYYMMDD</strong> (ex: <strong>20091231</strong>).</p>\n\n<p><a name="event_end_date"></a></p>\n\n<h3>event_end_date</h3>\n\n<pre class="brush: html;">{event_end_date format="%F %j, %Y"} </pre>\n\n<p>Displays the end date of the event, formatted using <a href="http://expressionengine.com/user_guide/templates/date_variable_formatting.html">EE-style format\ncharacters</a>.\nIf <em>format=""</em> is not specified, it will parse as <strong>YYYYMMDD</strong> (ex: <strong>20091231</strong>).</p>\n\n<p><a name="event_first_date"></a></p>\n\n<h3>event_first_date</h3>\n\n<pre class="brush: html;">{event_first_date format="%F %j, %Y"} </pre>\n\n<p>Displays the date of the very first occurrence of the event, formatted\nusing EE-style format characters. If <em>format=""</em> is not specified, it will parse as <strong>YYYYMMDD</strong> (ex: <strong>20091231</strong>).</p>\n\n<p><a name="event_last_date"></a></p>\n\n<h3>event_last_date</h3>\n\n<pre class="brush: html;">{event_last_date format="%F %j, %Y"} </pre>\n\n<p>Displays the date of the very last occurrence of the event, formatted\nusing EE-style format characters. If <em>format=""</em> is not specified, it will parse as <strong>YYYYMMDD</strong> (ex: <strong>20091231</strong>).</p>\n\n<p><a name="event_duration_days"></a></p>\n\n<h3>event_duration_days</h3>\n\n<pre class="brush: html;">{event_duration_days} </pre>\n\n<p>Displays the number of days the event lasts.</p>\n\n<p><a name="event_duration_hours"></a></p>\n\n<h3>event_duration_hours</h3>\n\n<pre class="brush: html;">{event_duration_hours} </pre>\n\n<p>Displays the number of hours the event lasts.</p>\n\n<p><a name="event_duration_minutes"></a></p>\n\n<h3>event_duration_minutes</h3>\n\n<pre class="brush: html;">{event_duration_minutes} </pre>\n\n<p>Displays the number of minutes the event lasts.</p>\n\n<p><a name="event_timeframe_total"></a></p>\n\n<h3>event_timeframe_total</h3>\n\n<pre class="brush: html;">{event_timeframe_total} </pre>\n\n<p>Displays the number of occurrences that happen within the specified\ndate/time range.</p>\n\n<p><a name="rule_type"></a></p>\n\n<h3>rule_type</h3>\n\n<pre class="brush: html;">{rule_type} </pre>\n\n<p>Displays whether the rule is an addition or subtraction from the\noccurrences (ex: <strong>+</strong> or <strong>-</strong>). Available only within the <a href="#rules">rules</a>\nvariable pair.</p>\n\n<p><a name="rule_repeat_years"></a></p>\n\n<h3>rule_repeat_years</h3>\n\n<pre class="brush: html;">{rule_repeat_years} </pre>\n\n<p>If the event repeats on a yearly interval, this variable displays the\nselected year(s) interval (ex: <strong>2</strong>). Available only within the\n<a href="#rules">rules</a> variable pair.</p>\n\n<p><a name="rule_repeat_months"></a></p>\n\n<h3>rule_repeat_months</h3>\n\n<pre class="brush: html;">{rule_repeat_months} </pre>\n\n<p>If the event repeats on a monthly interval, this variable displays the\nselected month(s) interval (ex: <strong>6</strong>). Available only within the\n<a href="#rules">rules</a> variable pair.</p>\n\n<p><a name="rule_repeat_weeks"></a></p>\n\n<h3>rule_repeat_weeks</h3>\n\n<pre class="brush: html;">{rule_repeat_weeks} </pre>\n\n<p>If the event repeats on a weekly interval, this variable displays the\nselected week(s) interval (ex: <strong>2</strong>). Available only within the\n<a href="#rules">rules</a> variable pair.</p>\n\n<p><a name="rule_repeat_days"></a></p>\n\n<h3>rule_repeat_days</h3>\n\n<pre class="brush: html;">{rule_repeat_days} </pre>\n\n<p>If the event repeats on a daily interval, this variable displays the\nselected day(s) interval (ex: <strong>5</strong>). Available only within the\n<a href="#rules">rules</a> variable pair.</p>\n\n<p><a name="rule_days_of_week"></a></p>\n\n<h3>rule_days_of_week</h3>\n\n<pre class="brush: html;">{rule_days_of_week backspace="2"}{day_of_week}, {/rule_days_of_week} </pre>\n\n<p>If the event repeats on specific days of the week, this variable and\nvariable pair displays the selected day(s) (ex: <strong>Monday, Thursday</strong>).\nAvailable only within the <a href="#rules">rules</a> variable pair.</p>\n\n<p><a name="rule_relative_dow"></a></p>\n\n<h3>rule_relative_dow</h3>\n\n<pre class="brush: html;">{rule_relative_dow backspace="2"}{relative_dow}, {/rule_relative_dow} </pre>\n\n<p>If the event repeats on specific relative days of the week, this\nvariable and variable pair displays the selected day(s) (ex: <strong>1, 3, 5</strong>).\nAvailable only within the <a href="#rules">rules</a> variable pair.</p>\n\n<p><a name="rule_days_of_month"></a></p>\n\n<h3>rule_days_of_month</h3>\n\n<pre class="brush: html;">{rule_days_of_month backspace="2"}{day_of_month}, {/rule_days_of_month} </pre>\n\n<p>If the event repeats on specific days of the month, this variable and\nvariable pair displays the selected day(s) (ex: <strong>7, 22</strong>). Available only\nwithin the <a href="#rules">rules</a> variable pair.</p>\n\n<p><a name="rule_months_of_year"></a></p>\n\n<h3>rule_months_of_year</h3>\n\n<pre class="brush: html;">{rule_months_of_year backspace="2"}{months_of_year}, {/rule_months_of_year} </pre>\n\n<p>If the event repeats on specific months of the year, this variable and\nvariable pair displays the selected month(s) (ex: <strong>04, 05, 06</strong>). Available\nonly within the <a href="#rules">rules</a> variable pair.</p>\n\n<p><a name="rule_stop_by"></a></p>\n\n<h3>rule_stop_by</h3>\n\n<pre class="brush: html;">{rule_stop_by format="%F %j, %Y"} </pre>\n\n<p>If set, displays the stop-by date of the event or series of occurrences,\nformatted using EE-style format characters. If <em>format=""</em> is not\nspecified, it will parse as <strong>YYYYMMDD</strong> (ex: <strong>20091231</strong>). Available only\nwithin the <a href="#rules">rules</a> variable pair.</p>\n\n<p><a name="rule_stop_after"></a></p>\n\n<h3>rule_stop_after</h3>\n\n<pre class="brush: html;">{rule_stop_after format="%F %j, %Y"} </pre>\n\n<p>If set, displays the number of occurrences the event was set (ex: 5).\nAvailable only within the <a href="#rules">rules</a> variable pair.</p>\n\n<p><a name="rule_start_date"></a></p>\n\n<h3>rule_start_date</h3>\n\n<pre class="brush: html;">{rule_start_date format="%F %j, %Y"} </pre>\n\n<p>Displays the start date of the rule for the event, formatted using\n<a href="http://expressionengine.com/user_guide/templates/date_variable_formatting.html">EE-style format\ncharacters</a>.</p>\n\n<p><a name="rule_end_date"></a></p>\n\n<h3>rule_end_date</h3>\n\n<pre class="brush: html;">{rule_end_date format="%F %j, %Y"} </pre>\n\n<p>Displays the end date of the rule for the event, formatted using\n<a href="http://expressionengine.com/user_guide/templates/date_variable_formatting.html">EE-style format\ncharacters</a>.</p>\n\n<p><a name="calendar_ignore_title"></a></p>\n\n<h3>calendar_ignore_title</h3>\n\n<pre class="brush: html;">{calendar_ignore_title} </pre>\n\n<p>Due to the way Calendar works, it can cause trouble when trying to parse\ndata with other addons (such as displaying related entries). By\nspecifying this variable, it''ll parse the equivelant of <strong>{title}</strong> and tell\nCalendar to leave the variable alone.</p>\n\n<p><a name="calendar_ignore_url_title"></a></p>\n\n<h3>calendar_ignore_url_title</h3>\n\n<pre class="brush: html;">{calendar_ignore_url_title} </pre>\n\n<p>Due to the way Calendar works, it can cause trouble when trying to parse\ndata with other addons (such as displaying related entries). By\nspecifying this variable, it''ll parse the equivelant of <strong>{url_title}</strong> and\ntell Calendar to leave the variable alone.</p>\n\n<p><a name="variable_pairs"></a></p>\n\n<h2>Variable Pairs</h2>\n\n<p>Most variable pairs available in the <em>Channel:Entries</em> loop are available\nhere. Additionally, these are also available:</p>\n\n<ul>\n<li><a href="#occurrences">occurrences</a></li>\n<li><a href="#rules">rules</a></li>\n<li><a href="#paginate_vp">paginate</a></li>\n</ul>\n\n<p><a name="occurrences"></a></p>\n\n<h3>occurrences</h3>\n\n<pre class="brush: html;">{occurrences}{/occurrences} </pre>\n\n<p>This variable pair is used to display details of each occurrence of an\nevent if it repeats. All\n<a href="occurrences.html#variables" title="Calendar:Occurrences Variables">variables</a>\nand\n<a href="occurrences.html#conditionals" title="Calendar:Occurrences Conditionals">conditionals</a>\nas available in\n<a href="occurrences.html" title="Calendar:Occurrences Documentation">Calendar:Occurrences</a>\nbecome available within this variable pair.</p>\n\n<p><a name="rules"></a></p>\n\n<h3>rules</h3>\n\n<pre class="brush: html;">{rules}{/rules} </pre>\n\n<p>This variable pair is used to display details of all rules for an event\nif it repeats. An additional set of variables become available within\nthis variable pair (<a href="index.html#rule_type">see above</a>).</p>\n\n<p><a name="paginate"></a></p>\n\n<h3>paginate</h3>\n\n<pre class="brush: html;">{paginate}Page {current_page} of {total_pages} pages &amp;nbsp; {pagination_links}{/paginate} </pre>\n\n<p>Pagination is available for this tag and works just like regular\npagination. Used in conjunction with the <a href="#paginate">paginate</a>\nparameter.</p>\n\n<p><a name="conditionals"></a></p>\n\n<h2>Conditionals</h2>\n\n<p>Most conditionals available in the <em>Channel:Entries</em> loop are available\nhere. Additionally, these are also available:</p>\n\n<ul>\n<li><a href="#if_calendar_no_results">if calendar_no_results</a></li>\n<li><a href="#if_edited_occurrence">if edited_occurrence</a></li>\n<li><a href="#if_event_recurs">if event_recurs</a></li>\n<li><a href="#if_event_all_day">if event_all_day</a></li>\n<li><a href="#if_event_multi_day">if event_multi_day</a></li>\n<li><a href="#if_event_has_rules">if event_has_rules</a></li>\n<li><a href="#if_event_first_day">if event_first_day</a></li>\n<li><a href="#if_event_last_day">if event_last_day</a></li>\n<li><a href="#if_event_never_ends">if event_never_ends</a></li>\n</ul>\n\n<p><a name="if_calendar_no_results"></a></p>\n\n<h3>if calendar_no_results</h3>\n\n<pre class="brush: html;">{if calendar_no_results}{/if} </pre>\n\n<p>Works just like the regular <strong>{if no_results}</strong> conditional - displays its\ncontents when there is no results for the given parameters.</p>\n\n<p><a name="if_edited_occurrence"></a></p>\n\n<h3>if edited_occurrence</h3>\n\n<pre class="brush: html;">{if edited_occurrence}{/if} </pre>\n\n<p>This conditional will display its contents if the given occurrence\nitself has been manually edited through the Calendar CP. You would\nusually use this in conjunction with the\n<a href="#event_parent_id">event_parent_id</a> variable so you can generate a\nproper link to the parent event ID.</p>\n\n<p><a name="if_event_recurs"></a></p>\n\n<h3>if event_recurs</h3>\n\n<pre class="brush: html;">{if event_recurs}{/if} </pre>\n\n<p>This conditional will displays it''s contents if the event recurs.</p>\n\n<p><a name="if_event_all_day"></a></p>\n\n<h3>if event_all_day</h3>\n\n<pre class="brush: html;">{if event_all_day}{/if} </pre>\n\n<p>This conditional will displays it''s contents if the event is an all day\nevent.</p>\n\n<p><a name="if_event_multi_day"></a></p>\n\n<h3>if event_multi_day</h3>\n\n<pre class="brush: html;">{if event_multi_day}{/if} </pre>\n\n<p>This conditional will displays it''s contents if the event occurs on\nmultiple days.</p>\n\n<p><a name="if_event_has_rules"></a></p>\n\n<h3>if event_has_rules</h3>\n\n<pre class="brush: html;">{if event_has_rules}{/if} </pre>\n\n<p>This conditional will displays it''s contents if the event has any\nrecurrence rules applied to it.</p>\n\n<p><a name="if_event_first_day"></a></p>\n\n<h3>if event_first_day</h3>\n\n<pre class="brush: html;">{if event_first_day}{/if} </pre>\n\n<p>This conditional will displays it''s contents if it''s the first day of\nthe event occurrence.</p>\n\n<p><a name="if_event_last_day"></a></p>\n\n<h3>if event_last_day</h3>\n\n<pre class="brush: html;">{if event_last_day}{/if} </pre>\n\n<p>This conditional will displays it''s contents if it''s the last day of the\nevent occurrence.</p>\n\n<p><a name="if_event_never_ends"></a></p>\n\n<h3>if event_never_ends</h3>\n\n<pre class="brush: html;">{if event_never_ends}{/if} </pre>\n\n<p>This conditional will displays it''s contents if the event repeats\nforever (no end date).</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p><a name="displaying_an_individual_event"></a></p>\n\n<h3>Displaying an Individual Event</h3>\n\n<p>The below code example is what you would use to display details about a\nspecific event. You would link to this template with the event ID from\nother Calendar pages, and then pull the event ID from the URI:</p>\n\n<pre class="brush: html;">{exp:calendar:events\n    orderby="title"\n    sort="asc"\n    event_id="{segment_3}"\n    date_range_start="today"\n    show_months="3"\n}\n\n    {if calendar_no_results}\n        No Results\n    {/if}\n    &lt;div class="event"&gt;\n        &lt;h2&gt;{event_title}&lt;/h2&gt;\n        &lt;p&gt;From Calendar:\n            &lt;a href="{path=''calendar/calendars''}/{event_calendar_id}/"&gt;\n                {event_calendar_title}\n            &lt;/a&gt;\n        &lt;/p&gt;\n        &lt;p&gt;Details:{event_summary}&lt;/p&gt;\n        &lt;p&gt;Location: {event_location}&lt;/p&gt;\n        &lt;h3&gt;Upcoming Occurrences in the next 3 months:&lt;/h3&gt;\n        &lt;ul&gt;\n            {occurrences}\n            &lt;li&gt;\n                &lt;a href="{path=''calendar/day''}/{occurrence_start_date format="%Y/%m/%d"}/"&gt;\n                {occurrence_start_date format="%l, %F %j, %Y at %g:%i%a"}\n                &lt;/a&gt; - {occurrence_end_date format="%l, %F %j, %Y at %g:%i%a"}\n            &lt;/li&gt;\n            {/occurrences}\n        &lt;/ul&gt;\n    &lt;/div&gt;\n    &lt;hr /&gt;\n{/exp:calendar:events}\n</pre>\n\n<p><a name="hardcoding_an_events_list_within_a_date_range"></a></p>\n\n<h3>Hardcoding an Events List within a Date Range</h3>\n\n<p>The below example code will generate you a simple list of events that\nhave occurrences within the next 3 months. Underneath each event details\nwill be a list of upcoming occurrences within the next 3 months.</p>\n\n<pre class="brush: html;">&lt;ul&gt;\n    {exp:calendar:events\n        orderby="title"\n        sort="asc"\n        date_range_start="today"\n        show_months="3"\n        dynamic="off"\n    }\n\n        {if calendar_no_results}\n            &lt;li&gt;No Results&lt;/li&gt;\n        {/if}\n        &lt;li&gt;\n            &lt;a href="{path=''calendar/events''}/{event_id}/"&gt;\n                &lt;b&gt;{event_title}&lt;/b&gt;\n            &lt;/a&gt;\n            from\n            &lt;a href="{path=''calendar/calendars''}/{event_calendar_id}/"&gt;\n                {event_calendar_title}\n            &lt;/a&gt;\n            &lt;br /&gt;\n            Upcoming Occurrences in the next 3 months:\n            &lt;ul&gt;\n                {occurrences}\n                &lt;li&gt;{occurrence_start_date format="%l, %F %j, %Y at %g:%i%a"}&lt;/li&gt;\n                {/occurrences}\n            &lt;/ul&gt;\n        &lt;/li&gt;\n    {/exp:calendar:events}\n&lt;/ul&gt;\n</pre>\n\n<p>The below example code will generate you a slightly more advanced list\nof events that have occurrences within the next 3 months. Underneath\neach event details will be a list of upcoming occurrences within the\nnext 3 months.</p>\n\n<pre class="brush: html;">{exp:calendar:events\n    orderby="title"\n    sort="asc"\n    date_range_start="today"\n    show_months="3"\n    dynamic="off"\n}\n\n    {if calendar_no_results}\n        No Results\n    {/if}\n\n    &lt;div class="event"&gt;\n        &lt;h2&gt;&lt;a href="{path=''calendar/events''}/{event_id}/"&gt;{event_title}&lt;/a&gt;&lt;/h2&gt;\n        &lt;p&gt;Starts:\n            &lt;a href="{path=''calendar/day''}/{event_start_date format="%Y/%m/%d"}/"&gt;\n                {event_start_date format="%l, %F %j, %Y"}\n            &lt;/a&gt;\n        &lt;/p&gt;\n        &lt;p&gt;From Calendar:\n            &lt;a href="{path=''calendar/calendars''}/{event_calendar_id}/"&gt;\n                {event_calendar_title}\n            &lt;/a&gt;\n        &lt;/p&gt;\n        &lt;p&gt;\n            This event lasts {event_duration_days} days,\n            {event_duration_hours} hours,\n            and {event_duration_minutes} minutes.\n        &lt;/p&gt;\n        &lt;p&gt;Details: {event_summary}&lt;/p&gt;\n        &lt;p&gt;Location: {event_location}&lt;/p&gt;\n        &lt;h3&gt;Upcoming Occurrences in the next 3 months:&lt;/h3&gt;\n        &lt;ul&gt;\n            {occurrences}\n            &lt;li&gt;&lt;a href="{path=''calendar/day''}/{occurrence_start_date format="%Y/%m/%d"}/"&gt;{occurrence_start_date format="%l, %F %j, %Y at %g:%i%a"}&lt;/a&gt; - {occurrence_end_date format="%l, %F %j, %Y at %g:%i%a"}&lt;/li&gt;\n            {/occurrences}\n        &lt;/ul&gt;\n    &lt;/div&gt;\n    &lt;hr /&gt;\n{/exp:calendar:events}\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0);
INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`) VALUES
(33, 1, 4, 'extension_hooks', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Extension Hooks | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Extension Hooks</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li class="current"><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<ul>\n<li><a href="#module_class">Calendar Module Class Hooks</a></li>\n<li><a href="#event_class">Calendar Event Class Hooks</a></li>\n<li><a href="#parameter_class">Calendar Parameter Class Hooks</a></li>\n<li><a href="#control_panel_class">Calendar Module Control Panel Class Hooks</a></li>\n</ul>\n\n<p><a name="module_class"></a></p>\n\n<h2>Calendar Module Class Hooks</h2>\n\n<p><strong>./mod.calendar.php</strong></p>\n\n<h3>calendar_calendars_channel_query</h3>\n\n<p>Manipulate the <strong>{exp:calendar:calendars}</strong> channel query before data is processed.</p>\n\n<pre class="brush: php;">$channel-&gt;query = ee()-&gt;extensions-&gt;call(\n    ''calendar_calendars_channel_query'',\n    $channel-&gt;query,\n    $calendar_array\n);\nif (ee()-&gt;extensions-&gt;end_script === TRUE) return;\n</pre>\n\n<h5>$channel->query</h5>\n\n<p>The channel query object. <strong>$channel->query->result</strong> has already been set at this point and is an array of results.</p>\n\n<h5>$calendar_array</h5>\n\n<p>An array of calendar info data for each calendar to be listed in <strong>{exp:calendar:calendars}</strong>.</p>\n\n<h5>Return: <strong>object</strong></h5>\n\n<p>You must return the <strong>$channel->query</strong> object. Remember to leave <strong>$channel->query->result</strong> as an array of results.</p>\n\n<h3>calendar_events_event_ids</h3>\n\n<p>Manipulate the event ID results for <strong>{exp:calendar:events}</strong> and <strong>{exp:calendar:occurrences}</strong></p>\n\n<pre class="brush: php;">$ids = ee()-&gt;extensions-&gt;call(\n    ''calendar_events_event_ids'',\n    $ids\n);\n</pre>\n\n<h5>$ids</h5>\n\n<p>An array of ID''s of channel entries for the events to be shown.</p>\n\n<h5>Return: <strong>array</strong></h5>\n\n<p>You must return an array of channel entry ID''s from the Calendar Events channel.</p>\n\n<h3>calendar_build_calendar_create_pagination</h3>\n\n<p>(Calendar 1.7.1+)</p>\n\n<p>Lets you manipulate the pagination data output for <strong>{exp:calendar:mini}</strong>, <strong>{exp:calendar:month}</strong>, <strong>{exp:calendar:week}</strong>, <strong>{exp:calendar:today}</strong>, <strong>{exp:calendar:day}</strong>,  and <strong>{exp:calendar:cal}</strong>.</p>\n\n<pre class="brush: php;">$pagination_data = ee()-&gt;extensions-&gt;call(\n    ''calendar_build_calendar_create_pagination'',\n    $this,\n    $pagination_data\n);\n</pre>\n\n<h5>$this</h5>\n\n<p>Instance of the Calendar object (<strong>mod.calendar.php</strong>).</p>\n\n<p><strong>$this->parent_method</strong> is a string which will notate which function is being called. e.g. <em>mini</em>, <em>cal</em>, etc.</p>\n\n<h5>$pagination_data</h5>\n\n<p>The <strong>$pagination_data</strong> array</p>\n\n<ul>\n<li><strong>paginate</strong>                 (boolean)   are we paginating?</li>\n<li><strong>page_next</strong>                (string)    next page URL</li>\n<li><strong>page_previous</strong>            (string)    previous page URL</li>\n<li><strong>pagination_page</strong>          (int)       pagination page from URL (e.g. 5,10,15)</li>\n<li><strong>current_page</strong>             (int)       current numeric page (e.g. 1,2,3)</li>\n<li><strong>pagination_links</strong>         (string)    {pagination_links} output</li>\n<li><strong>base_url</strong>                 (string)    base URL of pagination</li>\n<li><strong>total_pages</strong>              (int)       total pages</li>\n<li><strong>paginate_tagpair_data</strong>    (string)    the tagdata from {paginate} tag pair</li>\n<li><strong>page_count</strong>               (string)    {page_count} output.</li>\n</ul>\n\n<h5>Return: <strong>array</strong></h5>\n\n<p>You must return the <strong>$pagination_data</strong> array with all parameters included from above as their proper types.</p>\n\n<h3>calendar_events_channel_query</h3>\n\n<p>Manipulate the <strong>$channel->query</strong> object for <strong>{exp:calendar:events}</strong> and <strong>{exp:calendar:occurrences}</strong></p>\n\n<pre class="brush: php;">$channel-&gt;query = ee()-&gt;extensions-&gt;call(\n    ''calendar_events_channel_query'',\n    $channel-&gt;query,\n    $ids\n);\n</pre>\n\n<h5>$channel->query</h5>\n\n<p>The channel query object. <strong>$channel->query->result</strong> has already been set at this point and is an array of results from the <strong>$ids</strong> array sent.</p>\n\n<h5>$ids</h5>\n\n<p>An array of ID''s of channel entries for the events to be shown.</p>\n\n<h5>Return: <strong>object</strong></h5>\n\n<p>You must return the <strong>$channel->query</strong> object. Remember to leave <strong>$channel->query->result</strong> as an array of results.</p>\n\n<h3>calendar_events_create_pagination</h3>\n\n<p>(Calendar 1.7.1+)</p>\n\n<p>Lets you manipulate the pagination data output for <strong>{exp:calendar:events}</strong> and <strong>{exp:calendar:occurrences}</strong>.</p>\n\n<pre class="brush: php;">$pagination_data = ee()-&gt;extensions-&gt;call(\n    ''calendar_events_create_pagination'',\n    $this,\n    $pagination_data\n);\n</pre>\n\n<h5>$this</h5>\n\n<p>Instance of the Calendar object (<strong>mod.calendar.php</strong>).</p>\n\n<p><strong>$this->parent_method</strong> is a string which will notate which function is being called. e.g. <em>events</em> or <em>occurrences</em>.</p>\n\n<h5>$pagination_data</h5>\n\n<p>The <strong>$pagination_data</strong> array</p>\n\n<ul>\n<li><strong>paginate</strong>                 (boolean)   are we paginating?</li>\n<li><strong>page_next</strong>                (string)    current page URL</li>\n<li><strong>page_previous</strong>            (string)    previous page URL</li>\n<li><strong>pagination_page</strong>          (int)       pagination page from URL (e.g. 5,10,15)</li>\n<li><strong>current_page</strong>             (int)       current numeric page (e.g. 1,2,3)</li>\n<li><strong>pagination_links</strong>         (string)    {pagination_links} output</li>\n<li><strong>base_url</strong>                 (string)    base url of pagination</li>\n<li><strong>total_pages</strong>              (int)       total pages</li>\n<li><strong>paginate_tagpair_data</strong>    (string)    the tagdata from {paginate} tag pair</li>\n<li><strong>page_count</strong>               (string)    {page_count} output.</li>\n</ul>\n\n<h5>Return: <strong>array</strong></h5>\n\n<p>You must return the <strong>$pagination_data</strong> array with all parameters included from above as their proper types.</p>\n\n<p><a name="event_class"></a></p>\n\n<h2>Calendar Event Class Hooks</h2>\n\n<p><strong>./calendar.event.php</strong></p>\n\n<h3>calendar_event_end</h3>\n\n<p>Add additional processing after an event has been created.</p>\n\n<pre class="brush: php;">ee()-&gt;extensions-&gt;call(\n    ''calendar_event_end'',\n    $this\n);\n</pre>\n\n<h5>$this</h5>\n\n<p>Event object.</p>\n\n<p><a name="parameter_class"></a></p>\n\n<h2>Calendar Parameter Class Hooks</h2>\n\n<p><strong>./calendar.parameters.php</strong></p>\n\n<h3>calendar_parameters_valid_values</h3>\n\n<p>Allows you to modify valid values coming into the parameter checker.</p>\n\n<pre class="brush: php;">$valid_values = ee()-&gt;extensions-&gt;call(\n    ''calendar_parameters_valid_values'',\n    $valid_values\n);\nif (ee()-&gt;extensions-&gt;end_script === TRUE) return;\n</pre>\n\n<h5>$valid_values</h5>\n\n<p>A starting array of valid values for passed in params.</p>\n\n<pre class="brush: php;">$valid_values = array(\n    ''required''          =&gt; array(FALSE, TRUE),\n    ''type''              =&gt; array(\n        ''string'',\n        ''integer'',\n        ''number'',\n        ''date'',\n        ''time'',\n        ''bool''\n    ),\n    ''multi''             =&gt; array(FALSE, TRUE),\n    ''method''            =&gt; array(\n        ''tmpl'',\n        ''GET'',\n        ''POST'',\n        ''cookie''\n    ),\n    ''case_sensitive''    =&gt; array(FALSE, TRUE)\n);\n</pre>\n\n<h5>Returns: <strong>array</strong></h5>\n\n<p>Manipulated valid param array.</p>\n\n<h3>calendar_parameters_default_values</h3>\n\n<p>Allows you to modify default values coming into the parameter checker.</p>\n\n<pre class="brush: php;">$default = ee()-&gt;extensions-&gt;call(\n    ''calendar_parameters_default_values'',\n    $default\n);\nif (ee()-&gt;extensions-&gt;end_script === TRUE) return;\n</pre>\n\n<h5>$default</h5>\n\n<p>A starting array of valid values for passed in params.</p>\n\n<pre class="brush: php;">$default = array(\n    ''name''              =&gt; $name,\n    ''required''          =&gt; FALSE,\n    ''type''              =&gt; array(''string''),\n    ''default''           =&gt; '''',\n    ''multi''             =&gt; FALSE,\n    ''min_value''         =&gt; FALSE,\n    ''max_value''         =&gt; FALSE,\n    ''allowed_values''    =&gt; array(),\n    ''method''            =&gt; $this-&gt;choose_method($name),\n    ''case_sensitive''    =&gt; FALSE,\n    ''not''               =&gt; FALSE\n);\n</pre>\n\n<h5>Returns: <strong>array</strong></h5>\n\n<p>Manipulated default param array.</p>\n\n<h3>calendar_parameters_additional_method</h3>\n\n<p>Add an additional fetching method to the fetch_value method.</p>\n\n<h4>Note:</h4>\n\n<p>This will not override previously named fetch types of <em>tmpl</em>, <em>GET</em>, <em>POST</em>, <em>cookie</em> when the variable looked for is available in the passed array.</p>\n\n<p>For example, given the function called like so:</p>\n\n<pre class="brush: php;">$P = new Calendar_parameters();\n$value = $P-&gt;fetch_value(''my_variable'', ''POST'');\n</pre>\n\n<p>And given that <strong>$_POST[''my_variable'']</strong> is available, then the hook will not be called. However, if <strong>$_POST[''my_variable'']</strong> is not available, the hook will be called and give the extension a chance to provide a variable.</p>\n\n<p>This can be used to effectively give defaults in situations where an input is absolutely expected to be present or else a method will return 0 results.</p>\n\n<pre class="brush: php;">$value = ee()-&gt;extensions-&gt;call(\n    ''calendar_parameters_additional_method'',\n    $method,\n    $name\n);\n</pre>\n\n<h5>$method</h5>\n\n<p>The method that is being searched for the name. Default types available are: <em>tmpl</em>, <em>GET</em>, <em>POST</em>, <em>cookie</em>, where <em>tmpl</em> is looking for template tag parameters.</p>\n\n<h5>$name</h5>\n\n<p>The name of the value being searched for.</p>\n\n<h5>returns <strong>mixed</strong></h5>\n\n<p>You must return a value for this function. If you only wish to observe a missed value and not to return anything unless a certain criteria is met, return boolean <strong>FALSE</strong>.</p>\n\n<h3>calendar_parameters_additional_type_validation</h3>\n\n<pre class="brush: php;">return ee()-&gt;extensions-&gt;call(\n    ''calendar_parameters_additional_type_validation'',\n    $value,\n    $details\n);\n</pre>\n\n<p><a name="control_panel_class"></a></p>\n\n<h2>Calendar Module Control Panel Class Hooks</h2>\n\n<p><strong>./mcp.calendar.php</strong></p>\n\n<h3>calendar_delete_events</h3>\n\n<p>Perform additional actions before calendar entry deletion.</p>\n\n<pre class="brush: php;">$edata = ee()-&gt;extensions-&gt;call(\n    ''calendar_delete_events'',\n    $this\n);\nif (ee()-&gt;extensions-&gt;end_script === TRUE) return;\n</pre>\n\n<p>This is called expecting <strong>$_POST[''delete'']</strong> to be a numeric ID or an array of IDS of calendar events that is then sent to the <strong>Publish->delete_events()</strong> in ExpressionEngine 1.x or <strong>api_channel_entries->delete_entry()</strong> in ExpressionEngine 2.x.</p>\n\n<p>Once channel entries are deleted, any extra calendar event data and rules are deleted.</p>\n\n<h5>$this</h5>\n\n<p>The Calendar Module Control Panel object instance.</p>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(34, 1, 4, 'form', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Form | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Form</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p><strong>NOTE:</strong> These instructions are for ExpressionEngine 1.x usage only.\nFor ExpressionEngine 2.x usage, please refer to the <a href="channel_form.html">Calendar\nChannel Form usage documentation</a>.</p>\n\n<p>The <em>Calendar:Form</em> Stand-alone entry/edit form function allows your\nusers to add and edit events via the front end. It''s built on top of the\nnative EE <strong>Stand-Alone Entry Form</strong>, so it can do anything the EE SAEF can do and more. It also allows for editing event entries and provides easy variables for form name="" attributes.</p>\n\n<p>This function automatically adds hidden fields for entry_id and\nentry_date when editing events.</p>\n\n<p>When using something like AJAX or JS on your form, and the name="submit"\nattribute is used by some other script on the page, you can use the\n"calendar_submit" alternative class to the list of things that, upon\nclick, can trigger Calendar''s JS to kick into action for saving entries\nin the SAEF.</p>\n\n<pre class="brush: html;">{exp:calendar:form} content {/exp:calendar:form} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#form_fields">Form Fields</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>All parameters available in the native EE <strong>Stand-Alone Entry Form</strong>\nare available for use here. Additionally, these exist as well:</p>\n\n<ul>\n<li><a href="#site_id">site_id</a></li>\n<li><a href="#event_id">event_id</a></li>\n<li><a href="#event_name">event_name</a></li>\n<li><a href="#ignore_field">ignore_field</a></li>\n</ul>\n\n<p><a name="site_id"></a></p>\n\n<h3>site_id=</h3>\n\n<pre class="brush: html;">site_id="1" </pre>\n\n<p>If using MSM, you can specify a Site ID in this parameter to filter\nentries down to that site.</p>\n\n<p><a name="event_id"></a></p>\n\n<h3>event_id=</h3>\n\n<pre class="brush: html;">event_id="{segment_3}" </pre>\n\n<p>This parameter allows you to edit a specific event by specifying its\nentry ID. You can hardcode an event ID, pass it through an embed, or\ngrab it from the URI.</p>\n\n<p><a name="event_name"></a></p>\n\n<h3>event_name=</h3>\n\n<pre class="brush: html;">event_name="{segment_3}" </pre>\n\n<p>This parameter allows you to edit a specific event by specifying its\nshort_name (entry url_title). You can hardcode a short_name, pass it\nthrough an embed, or grab it from the URI.</p>\n\n<p><a name="ignore_field"></a></p>\n\n<h3>ignore_field=</h3>\n\n<pre class="brush: html;">ignore_field="field_name|another_field_name|etc" </pre>\n\n<p>This parameter was developed as a fix for <a href="http://pixelandtonic.com/fieldframe">Pixel &amp; Tonic''s\nFieldframe</a> fields. To get Calendar\nand Fieldframe to play nicely, specify into this parameter all\nFieldframe field short_names you wish to update, seperated by the pipe\ncharacter. Carry out your HTML form field coding as usual. If the form\nis for <strong>editing events</strong>, you''ll also need to then wrap the Fieldframe\nfields with the <a href="http://expressionengine.com/docs/modules/weblog/weblog_entries.html" title="EE Weblog:Entries Documentation">EE\nWeblog:Entries</a>\ntag. Once that''s done, your SAEF form should be compatible with\nFieldframe fields. See <a href="#fieldframe_edit">example here</a>.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>All variables available in the native EE <strong>Stand-Alone Entry Form</strong>\nare available for use here. Additionally, these exist as well:</p>\n\n<ul>\n<li><a href="#calendar_date_widget">calendar_date_widget</a></li>\n<li><a href="#v_CUSTOM_FIELD">CUSTOM_FIELD</a></li>\n<li><a href="#v_CUSTOM_FIELD_field_name">CUSTOM_FIELD_field_name</a></li>\n<li><a href="#v_CUSTOM_FIELD_format_name">CUSTOM_FIELD_format_name</a></li>\n<li><a href="#v_CUSTOM_FIELD_format_value">CUSTOM_FIELD_format_value</a></li>\n</ul>\n\n<p><a name="calendar_date_widget"></a></p>\n\n<h3>calendar_date_widget</h3>\n\n<pre class="brush: html;">{calendar_date_widget} </pre>\n\n<p>This variables adds a date-selector widget similar to the one in the\nPublish/Edit page of the ExpressionEngine control panel. Additionally,\nfor the Date Widget to work, you''ll need several JS and CSS files\ncalled. We''ve created a couple tags to help you out with this, so your\nHTML Head tags should look like this:</p>\n\n<pre class="brush: html;">&lt;head&gt;    &lt;script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"&gt;&lt;/script&gt;&lt;script type="text/javascript" src="/themes/calendar/js/jquery-ui.custom.min.js"&gt;&lt;/script&gt;{exp:calendar:datepicker_js}{exp:calendar:datepicker_css}&lt;/head&gt; </pre>\n\n<p>Additionally, you can supply the include_jqui="off" parameter to\n{exp:calendar:datepicker_js} and {exp:calendar:datepicker_css} tags to\nstop Calendar''s jQuery UI and CSS from loading in the event you have\nanother instance of jQuery UI loading.</p>\n\n<p><a name="custom_field"></a></p>\n\n<h3>CUSTOM_FIELD</h3>\n\n<pre class="brush: html;">{CUSTOM_FIELD} </pre>\n\n<p>All custom weblog fields are available for use. To parse your custom\nweblog field data, just specify the short_name of the field. So to\nconstruct these variables, simply use custom_weblog_field_short_name\n(Ex: description).</p>\n\n<p><a name="custom_field_field_name"></a></p>\n\n<h3>CUSTOM_FIELD_field_name</h3>\n\n<pre class="brush: html;">{CUSTOM_FIELD_field_name} </pre>\n\n<p>This variable outputs the field ID name of custom weblog fields for the\nname="" attribute in your form fields. Used in conjunction with the\n<a href="#CUSTOM_FIELD_field_name">CUSTOM_FIELD_field_name</a> form field.</p>\n\n<p>All custom weblog fields are available for use. To parse your custom\nweblog field ID names, append the variables with _field_name. So to\nconstruct these variables, simply use custom_weblog_field_short_name\n+ _field_name (Ex: description + _field_name =\ndescription_field_name - outputs field_id_26).</p>\n\n<p><a name="custom_field_format_name"></a></p>\n\n<h3>CUSTOM_FIELD_format_name</h3>\n\n<pre class="brush: html;">{CUSTOM_FIELD_format_name} </pre>\n\n<p>This variable outputs the field ID name of custom weblog formatting\nfields for the name="" attribute in your form fields. This controls the\nformatting for a specific field (ex: xhtml, br, none). Used in\nconjunction with the\n<a href="#v_CUSTOM_FIELD_format_value">CUSTOM_FIELD_format_value</a> variable\nand the <a href="#CUSTOM_FIELD_format_name">CUSTOM_FIELD_format_name</a> form\nfield.</p>\n\n<p>All custom weblog fields are available for use. To parse your custom\nweblog field ID format names, append the variables with _format_name.\nSo to construct these variables, simply use\ncustom_weblog_field_short_name + _format_name (Ex: description +\n_format_name = description_format_name - outputs field_ft_26).</p>\n\n<p><a name="custom_field_format_value"></a></p>\n\n<h3>CUSTOM_FIELD_format_value</h3>\n\n<pre class="brush: html;">{CUSTOM_FIELD_format_value} </pre>\n\n<p>This variable outputs the current format value of custom weblog fields\nin your form fields (ex: xhtml, br, none). Used in conjunction with the\n<a href="#v_CUSTOM_FIELD_format_name">CUSTOM_FIELD_format_name</a> variable and\nthe <a href="#CUSTOM_FIELD_format_name">CUSTOM_FIELD_format_name</a> form field.</p>\n\n<p>All custom weblog fields are available for use. To parse the current\nformatting for a custom weblog field, append the variables with\n_format_value. So to construct these variables, simply use\ncustom_weblog_field_short_name + _format_value (Ex: description +\n_format_value = description_format_value - outputs br).</p>\n\n<p><a name="form_fields"></a></p>\n\n<h2>Form Fields</h2>\n\n<p>All form fields available in the native EE <strong>Stand-Alone Entry Form</strong>\nare available for use here. Additionally, these exist as well:</p>\n\n<ul>\n<li><a href="#CUSTOM_FIELD_field_name">CUSTOM_FIELD_field_name</a></li>\n<li><a href="#CUSTOM_FIELD_format_name">CUSTOM_FIELD_format_name</a></li>\n</ul>\n\n<p><a name="custom_field_field_name"></a></p>\n\n<h3>CUSTOM_FIELD_field_name</h3>\n\n<pre class="brush: html;">&lt;input type="text" name="{CUSTOM_FIELD_field_name}" value="{CUSTOM_FIELD}" /&gt; </pre>\n\n<p>This form field displays existing data for an event when editing, and\nallows a user to update the value for a given field. Used in conjunction\nwith the <a href="#v_CUSTOM_FIELD_field_name">CUSTOM_FIELD_field_name</a>\nvariable.</p>\n\n<p><a name="custom_field_format_name"></a></p>\n\n<h3>CUSTOM_FIELD_format_name</h3>\n\n<pre class="brush: html;">&lt;input type="hidden" name="{CUSTOM_FIELD_format_name}" value="{CUSTOM_FIELD_format_value}" /&gt; </pre>\n\n<p>This form field displays existing formatting data of a custom field for\nan event when editing. Used in conjunction with the\n<a href="#v_CUSTOM_FIELD_format_name">CUSTOM_FIELD_format_name</a> and\n<a href="#v_CUSTOM_FIELD_format_value">CUSTOM_FIELD_format_value</a> variables.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p><a name="creating_events"></a></p>\n\n<h3>Creating Events</h3>\n\n<p>Below is a complete example that will allow your users to submit events\nvia the front end:</p>\n\n<pre class="brush: html;">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Add an Event to the Calendar&lt;/title&gt;\n        &lt;script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"&gt;&lt;/script&gt;\n        &lt;script type="text/javascript" src="/themes/calendar/js/jquery-ui.custom.min.js"&gt;&lt;/script&gt;\n        {exp:calendar:datepicker_js}\n        {exp:calendar:datepicker_css}\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;div id="calendar_saef"&gt;\n            {exp:calendar:form weblog="calendar_events" return="calendar/month"}\n                &lt;p&gt;&lt;label&gt;Title:&lt;/label&gt;&lt;br /&gt;\n                &lt;input type="text" name="title" value="{title}" size="80" /&gt;&lt;/p&gt;\n                {calendar_date_widget}\n                &lt;p&gt;&lt;label&gt;Summary:&lt;/label&gt;&lt;br /&gt;\n                &lt;textarea name="{event_summary_field_name}" rows="5" cols="65"&gt;{event_summary}&lt;/textarea&gt;\n                &lt;input type="hidden" name="{event_summary_format_name}" value="{event_summary_format_value}" /&gt;&lt;/p&gt;\n                &lt;p&gt;&lt;label&gt;Location:&lt;/label&gt;&lt;br /&gt;\n                &lt;input type="text" name="event_location_field_name" value="{event_location}" size="80" /&gt;&lt;/p&gt;\n                &lt;input type="hidden" name="{event_location_format_name}" value="{event_location_format_value}" /&gt;&lt;/p&gt;\n                &lt;p&gt;&lt;input type="submit" name="submit" value="Submit" /&gt;&lt;/p&gt;\n            {/exp:calendar:form}\n        &lt;/div&gt;\n    &lt;/body&gt;\n&lt;/html&gt;\n</pre>\n\n<p><a name="editing_events"></a></p>\n\n<h3>Editing Events</h3>\n\n<p>Below is a complete example that will allow your users to edit events\nvia the front end:</p>\n\n<pre class="brush: html;">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Edit an Event in the Calendar&lt;/title&gt;\n        &lt;script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"&gt;&lt;/script&gt;\n        &lt;script type="text/javascript" src="/themes/calendar/js/jquery-ui.custom.min.js"&gt;&lt;/script&gt;\n        {exp:calendar:datepicker_js}\n        {exp:calendar:datepicker_css}\n    &lt;/head&gt;\n    &lt;body&gt;\n\n        &lt;div id="calendar_saef"&gt;\n            {exp:calendar:form weblog="calendar_events" event_id="{segment_3}" return="calendar/month"}\n                &lt;p&gt;&lt;label&gt;Title:&lt;/label&gt;&lt;br /&gt;\n                &lt;input type="text" name="title" value="{title}" size="80" /&gt;&lt;/p&gt;\n                {calendar_date_widget}\n                &lt;p&gt;&lt;label&gt;Summary:&lt;/label&gt;&lt;br /&gt;\n                &lt;textarea name="{event_summary_field_name}" rows="5" cols="65"&gt;{event_summary}&lt;/textarea&gt;\n                &lt;input type="hidden" name="{event_summary_format_name}" value="{event_summary_format_value}" /&gt;&lt;/p&gt;\n                &lt;p&gt;&lt;label&gt;Location:&lt;/label&gt;&lt;br /&gt;\n                &lt;input type="text" name="event_location_field_name" value="{event_location}" size="80" /&gt;&lt;/p&gt;\n                &lt;input type="hidden" name="{event_location_format_name}" value="{event_location_format_value}" /&gt;&lt;/p&gt;\n                &lt;p&gt;&lt;input type="submit" name="submit" value="Submit" /&gt;&lt;/p&gt;\n            {/exp:calendar:form}\n        &lt;/div&gt;\n\n    &lt;/body&gt;\n&lt;/html&gt;\n</pre>\n\n<p><a name="editing_events_with_fieldframe_fields"></a></p>\n\n<h3>Editing Events with Fieldframe fields</h3>\n\n<p>Below is an example of how to implement the <a href="#ignore_field">Fieldframe\nfix</a> in your form so that Calendar and Fieldframe fields\nplay nicely together when editing events via the front end:</p>\n\n<pre class="brush: html;">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Edit an Event in the Calendar&lt;/title&gt;\n        &lt;script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"&gt;&lt;/script&gt;\n        &lt;script type="text/javascript" src="/themes/calendar/js/jquery-ui.custom.min.js"&gt;&lt;/script&gt;\n        {exp:calendar:datepicker_js}\n        {exp:calendar:datepicker_css}\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;div id="calendar_saef"&gt;\n            {exp:calendar:form weblog="calendar_events" event_id="{segment_3}" return="calendar/month" ignore_field="fieldframe_field_name|another_fieldframe_field_name"}\n                &lt;p&gt;&lt;label&gt;Title:&lt;/label&gt;&lt;br /&gt;\n                &lt;input type="text" name="title" value="{title}" size="80" /&gt;&lt;/p&gt;\n                {calendar_date_widget}\n                &lt;p&gt;&lt;label&gt;Summary:&lt;/label&gt;&lt;br /&gt;\n                &lt;textarea name="{event_summary_field_name}" rows="5" cols="65"&gt;{event_summary}&lt;/textarea&gt;\n                &lt;input type="hidden" name="{event_summary_format_name}" value="{event_summary_format_value}" /&gt;&lt;/p&gt;\n                &lt;p&gt;&lt;label&gt;Location:&lt;/label&gt;&lt;br /&gt;\n                &lt;input type="text" name="event_location_field_name" value="{event_location}" size="80" /&gt;&lt;/p&gt;\n                &lt;input type="hidden" name="{event_location_format_name}" value="{event_location_format_value}" /&gt;&lt;/p&gt;\n\n                {exp:weblog:entries entry_id="{segment_3}" limit="1"}\n                    &lt;p&gt;&lt;label&gt;Fieldframe Field:&lt;/label&gt;&lt;br /&gt;\n                    &lt;input type="text" name="fieldframe_field_name" value="{fieldframe_field_name}" size="80" /&gt;&lt;/p&gt;\n                    &lt;p&gt;&lt;label&gt;Another Fieldframe Field:&lt;/label&gt;&lt;br /&gt;\n                    &lt;input type="text" name="another_fieldframe_field_name" value="{another_fieldframe_field_name}" size="80" /&gt;&lt;/p&gt;\n                {/exp:weblog:entries}\n\n                &lt;p&gt;&lt;input type="submit" name="submit" value="Submit" /&gt;&lt;/p&gt;\n            {/exp:calendar:form}\n        &lt;/div&gt;\n    &lt;/body&gt;\n&lt;/html&gt;\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(35, 1, 4, 'getting_started', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Getting Started | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Getting Started</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li class="current"><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p><a name="choosing_the_right_calendar_tag_for_your_project"></a></p>\n\n<h2>Choosing the right Calendar tag for your project</h2>\n\n<p>Two of the main tags used in Calendar are <em>{exp:calendar:cal}</em> and\n<em>{exp:calendar:events}</em>. In many cases, these tags have very different\nroles and are often not interchangeable. Choosing one tag over the other\nwill depend on your project and how you want to display event\ninformation.</p>\n\n<p><a name="calendar"></a></p>\n\n<h3>Calendar:Cal</h3>\n\n<p>The <em>Calendar:Cal</em> tag is used when displaying events in <strong>chronological</strong>\norder. This is particularly important when there are multiple events and\noccurrences happening during a time period which may overlap as time\nprogresses. This tag is also used to create a calendar or visual\ncalendar table, or when looping through events by year, month, day and\nhour using the <strong>{display_each_year}</strong>, <strong>{display_each_month}</strong>,\n<strong>{display_each_day}</strong>, and <strong>{display_each_hour}</strong> variable pairs,\nrespectively.</p>\n\n<p><a name="calendar"></a></p>\n\n<h3>Calendar:Events</h3>\n\n<p>The <em>Calendar:Events</em> tag is closer in functionality to EE''s popular\n<em>Channel:Entries</em> tag. This tag loops through each event, one after the\nother, and can display data similar to the Channel Entries tag. Since\nthe tag loops through each event, one by one, overlapping events will\nnot always be in chronological order. For each event, the event''s\noccurrences can be displayed using the <strong>{occurrences}</strong> variable pair. The\n<strong>{occurrences}</strong> variable pair, however, cannot accept parameters.</p>\n\n<p><a name="calendar"></a></p>\n\n<h3>Calendar:Occurrences</h3>\n\n<p>The <em>Calendar:Occurrences</em> tag is a supplemental tag used to loop through\noccurrences tied to an event entry and is similar to the <strong>{occurrences}</strong>\ntag pair used in <em>Calendar:Events</em> tag. This tag has the ability to accept\nparameters (for example, <strong>occurrence_limit=""</strong>).</p>\n\n<p>The above explanation is summarized in the figure below.</p>\n\n<p><img src="images/calendar_cal_vs_events.png" alt="" /></p>\n\n<p><a name="conclusion"></a></p>\n\n<h3>Conclusion</h3>\n\n<p>In summary, for chronological event listings, for example a list of\nupcoming events, past events, daily/monthly events, or for building a\nflexible calendar table, <em>{exp:calendar:cal}</em> should be used. This tag is\nused in most cases.</p>\n\n<p>For event detail pages, such as for pages displaying an event summary\nand dates for that specific event (eg. "<strong>Rock concert on September 5,\n13th and 20th</strong>"), <em>{exp:calendar:events}</em> (with the <strong>{occurrences}</strong> variable pair or using <em>{exp:calendar:occurrences}</em> instead) should be used.</p>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 1),
(36, 1, 4, 'group_permissions', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Group Permissions | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Group Permissions</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li class="current"><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>Calendar contains member group permission controls, which\nincludes a Permission tab in the Calendar module CP and permissions\nblocks for Calendar events in the EE Edit page Publish area. Basically,\nwhat happens is that an admin can set which member groups have access to\ncreate, edit, and delete events for each calendar. Depending on the\nbehavior preference set, if you belong to a member group that does not\nhave access to a specific calendar, the event entries will either NOT\nshow up in the Edit list, or appear as locked and inaccessible.</p>\n\n<p><a name="setting_permissions"></a></p>\n\n<h2>Setting Permissions</h2>\n\n<p>Permissions can be set in the special fieldtype when creating and\nediting a calendar in the publish page in the EE CP. They can also be\nset in the Permissions tab in the Calendar control panel area. To first\nstart using permissions, you need to check off the Permissions Enabled\ncheckbox in the Permissions tab in the Calendar control panel area.\nPermissions can be set for each member group per calendar, or allow/deny\nfor all.</p>\n\n<p><a href="images/calendar_permissions.jpg"><img src="images/calendar_permissions.jpg" alt="" /></a></p>\n\n<p><a name="permission_behaviors"></a></p>\n\n<h2>Permission Behaviors</h2>\n\n<p>You can choose from 1 of 3 behaviours of how you want the Edit page in\nthe EE CP to appear for disallowed entries. The behavior set is what the\nuser will see for entries they do not have access to. Options are as\nfollows:</p>\n\n<ul>\n<li><strong>None</strong> - the disallowed user will still see event entries in the Edit\npage they do not have access to, but if they attempt to edit or\ndelete the entry, they will be given an error.</li>\n<li><strong>Search Filter</strong> - the disallowed user will NOT even see\nevent entries they do not have access to. They will be stripped\nentirely out of the Edit page as if they do not exist. If they\nsomehow attempt to load the entry manually, they will be given an\nerror.</li>\n<li><strong>Disable Link</strong> - the disallowed user will see all event entries in the\nEdit page, but the event entries they do not have access to will be\ngrayed out and the links will be disabled. If they somehow attempt\nto load the entry manually, they will be given an error.</li>\n</ul>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0);
INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`) VALUES
(37, 1, 4, 'icalendar', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>iCalendar | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>iCalendar</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li class="current"><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:iCalendar</em> tag is available for event exporting purposes. It outputs an <a href="http://www.ietf.org/rfc/rfc2445.txt">ICS (RFC-2445)</a> compatible file, which can then be imported into other programs such as <a href="http://www.google.com/calendar/">Google Calendar</a>, <a href="http://www.apple.com/osx/apps/#calendar">Apple Calendar</a>, <a href="http://office.microsoft.com/outlook/">Microsoft Outlook</a>, <a href="http://www.mozilla.org/projects/calendar/lightning/">Lightning</a>, etc.</p>\n\n<p>The iCalendar function contains preformatted info within it''s tags, so nothing is to go inbetween the <em>Calendar:iCalendar</em> tags, etc. When the template that contains this tag is accessed, the browser will instantly prompt the user to download a file.</p>\n\n<pre class="brush: html;">{exp:calendar:icalendar}{/exp:calendar:icalendar} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>All of the <a href="events.html#parameters">parameters listed in Calendar:Events</a>\nare available for use here. Additionally, the following parameter is available for use as well:</p>\n\n<ul>\n<li><a href="#summary_field">summary_field</a></li>\n</ul>\n\n<p><a name="summary_field"></a></p>\n\n<h3>summary_field=</h3>\n\n<pre class="brush: html;">summary_field="CUSTOM_FIELD_NAME" </pre>\n\n<p>This optional parameter allows you to specify which field to use instead of the <em>title</em> field to generate the event title for the ICS file.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p>The below code example is a complete example of how you would use the\niCalendar feature:</p>\n\n<pre class="brush: html;">{exp:calendar:icalendar\n    orderby="title"\n    sort="asc"\n    date_range_start="today"\n    show_months="3"\n    dynamic="off"\n}\n{/exp:calendar:icalendar} \n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(38, 1, 4, 'ics_update', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>ICS Update | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>ICS Update</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li class="current"><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:ICS_Update</em> tag provides a way to update your calendars’ imported iCalendar data at regular intervals. You can place it in a template that you are certain will be called within the time interval that you want the iCalendar data to be updated; you can place it on a dedicated page so you can trigger it manually; or you might even trigger automatically at certain intervals using a cron job.</p>\n\n<p>Note that the speed of this operation depends on the number of updates being performed, the speed of the servers hosting the remote files, and the size and complexity of those files. Keep those factors in mind when determining how and when you trigger an update.</p>\n\n<p>The ICS_Update function contains preformatted info within it''s tags, so nothing is to go inbetween the <em>Calendar:ICS_Update</em> tags, etc. When the template that contains this tag is accessed, the users browser will be held up until the update is complete.</p>\n\n<pre class="brush: html;">{exp:calendar:ics_update}{/exp:calendar:ics_update} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>The following parameters are available for use:</p>\n\n<ul>\n<li><a href="#site_id">site_id</a></li>\n<li><a href="#calendar_id">calendar_id</a></li>\n<li><a href="#calendar_name">calendar_name</a></li>\n<li><a href="#status">status</a></li>\n<li><a href="#time_range_start">time_range_start</a></li>\n<li><a href="#time_range_end">time_range_end</a></li>\n<li><a href="#minute_interval">minute_interval</a></li>\n<li><a href="#delete_missing">delete_missing</a></li>\n</ul>\n\n<p><a name="site_id"></a></p>\n\n<h3>site_id=</h3>\n\n<pre class="brush: html;">site_id="1" </pre>\n\n<p>If using MSM, you can specify a Site ID in this parameter to filter\nentries down to that site.</p>\n\n<p><a name="calendar_id"></a></p>\n\n<h3>calendar_id=</h3>\n\n<pre class="brush: html;">calendar_id="1|3" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir entry ID(s). You can hardcode a calendar ID, pass it through an\nembed, or grab it from the URI. Seperate multiples with the pipe\ncharacter.</p>\n\n<p><a name="calendar_name"></a></p>\n\n<h3>calendar_name=</h3>\n\n<pre class="brush: html;">calendar_name="soccer|baseball|dodgeball" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir short_names (entry url_title). You can hardcode a short_name,\npass it through an embed, or grab it from the URI. Seperate multiples\nwith the pipe character.</p>\n\n<p><a name="status"></a></p>\n\n<h3>status=</h3>\n\n<pre class="brush: html;">status="open|closed|pending" </pre>\n\n<p>Allows you to filter down to specific calendars based on their status.\nDefault value is open. Seperate multiples with the pipe character.</p>\n\n<p><a name="time_range_start"></a></p>\n\n<h3>time_range_start=</h3>\n\n<pre class="brush: html;">time_range_start="0300" </pre>\n\n<p>Allows you to set a time range of when you want updates to occur. The\nupdate will NOT occur BEFORE this time. Refer to <a href="date_formatting.html#time" title="Time Formatting Documentation">Time Formatting\nDocumentation</a>.\nThis time respects the Site''s time localization.</p>\n\n<p><a name="time_range_end"></a></p>\n\n<h3>time_range_end=</h3>\n\n<pre class="brush: html;">time_range_end="0500" </pre>\n\n<p>Allows you to set a time range of when you want updates to occur. The\nupdate will NOT occur AFTER this time. Refer to <a href="date_formatting.html#time" title="Time Formatting Documentation">Time Formatting\nDocumentation</a>.\nThis time respects the Site''s time localization.</p>\n\n<p><a name="minute_interval"></a></p>\n\n<h3>minute_interval=</h3>\n\n<pre class="brush: html;">minute_interval="60" </pre>\n\n<p>An integer number of minutes, indicating the minimum length of time\nbetween updates. Default value is <strong>60</strong> minutes.</p>\n\n<p><a name="delete_missing"></a></p>\n\n<h3>delete_missing=</h3>\n\n<pre class="brush: html;">delete_missing="yes" </pre>\n\n<p>Overrides the <em>ICS Update Default Delete Behavior</em> preference for deletion of missing events.</p>\n\n<p>By default, the <em>{exp:calendar:ics_update}</em> tag does not delete entries that it does not find when downloading the ICS file for updates.</p>\n\n<p>Setting this to <strong>yes</strong> will make the <em>{exp:calendar:ics_update}</em> tag delete previously imported entries not found in the current ICS file download.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p>The following example is complete for using the ICS Update feature. When\nthis template is accessed between the times of <strong>2am</strong> and <strong>5am</strong>, the\nspecified Calendar ID’s will update:</p>\n\n<pre class="brush: html;">{exp:calendar:ics_update\n    calendar_id="1|3"\n    time_range_start="0200"\n    time_range_end="0500"\n    minute_interval="60"\n}\n{/exp:calendar:ics_update}\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(39, 1, 4, 'index', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Index | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Index</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>ExpressionEngine users have clamored for a good calendar solution for\nyears, and now it''s here. The Solspace Calendar module is the first true\ncalendar module for EE.</p>\n\n<p>Tired of hacky workarounds to emulate calendar-like behavior in EE?\nThrow ''em out. The Calendar module offers up both power and simplicity,\ngiving you all kinds of options to satisfy your calendar needs. Need a\nsimple display of daily activities? It''s easy with Calendar. How about a\nmonthly calendar? No sweat. And what if you want to fully control every\ntable, div, and class that makes up the HTML that will become your\ncalendar? The Calendar module can do that, too.</p>\n\n<p>The Calendar module utilizes the power of EE''s native Channel\nmodule. Every calendar and every event you create can therefore feature\nas many custom fields and categories as you like. If you can do it to an\nentry in EE, you can do it to a calendar or event.</p>\n\n<p>Events in Calendar can recur using all kinds of customizable rules. Need\nweekly events? No problem. Got a book club that meets on the 3rd Tuesday\nof every month? Easy. How about a meeting on the first Monday, third\nWednesday, and fifth Tuesday, but never on the 1st, 15th, or 31st of the\nmonth? Yeah, Calendar can do that, too. (But you should really think\nabout simplifying your meeting schedules!)</p>\n\n<p>Last but not least, the Calendar module can even import and export ICS\ndata. That''s right, you can import from and export to other calendar\napplications like Google Calendar, iCal, Outlook, and more.</p>\n\n<p><strong>NOTE:</strong> If you have MSM (Multiple Site Manager) installed, Calendar\nwill currently only work on the primary Site.</p>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 13),
(40, 1, 4, 'installation_1.7.x', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Installation 1.7.x | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Installation 1.7.x</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<h2>Installation for Calendar 1.7.x on EE 1.x</h2>\n\n<p>These instructions are for installing Calendar 1.7.x on ExpressionEngine 1.x only. If you''re installing the latest version of Calendar, please refer to the applicable <a href="install_update.html#install">installation instructions</a>.</p>\n\n<p><a name="1"></a></p>\n\n<h3>1. Copy Add-on Files</h3>\n\n<p>This add-on requires that you use the Solspace Bridge software with\nExpressionEngine 1.x. It will be included with your download in a\nseparate folder. Additionally, Calendar includes the Code Pack module\nsoftware to install the Calendar Code Pack sample templates and data\n(optional). It will be included with your download in a separate folder.</p>\n\n<ul>\n<li>Within the <strong>/EE1/system/</strong> directory, copy the bridge folder into your\nsites’ <strong>./system/</strong> directory.</li>\n<li>Within the <strong>/EE1/system/modules/</strong> directory, copy all folders into\nyour sites’ <strong>./system/modules/</strong> directory.</li>\n<li>Within the <strong>/EE1/system/extensions/</strong> directory, copy all folders and\nfiles into your sites’ <strong>./system/extensions/</strong> directory.</li>\n<li>Within the <strong>/EE1/system/language/english/</strong> directory, copy the\n<strong>lang.calendar_code_pack.php</strong> file into your sites’\n<strong>./system/language/english/</strong> directory.</li>\n<li>Within the <strong>/EE1/themes/</strong> directory, copy all folders into your sites’\n<strong>./themes/</strong> directory.</li>\n</ul>\n\n<p><a name="2"></a></p>\n\n<h3>2. Installing the Add-On</h3>\n\n<ul>\n<li>Upon installation, Calendar creates two new weblogs (<em>Calendar:\nCalendars</em> and <em>Calendar: Events</em>) as well as two new custom weblog\nfield groups (<em>Calendar: Calendars</em> and <em>Calendar: Events</em>) with a few\nsample fields. These weblogs and field groups are tied in together\nwith Calendar.</li>\n<li>Go to the Modules tab in the ExpressionEngine Control Panel, find\n<em>Calendar</em> in the list, and click <strong>Install</strong>.</li>\n<li>Go to the Extensions Manager area in the ExpressionEngine Control\nPanel, and make sure the <a href="http://expressionengine.com/docs/cp/admin/utilities/extension_manager.html#jquery_extension">jQuery for the CP</a>\nextension exists and is enabled.</li>\n</ul>\n\n<p><a name="3"></a></p>\n\n<h3>3. Loading the Calendar Code Pack sample data (optional)</h3>\n\n<p>To make use of the Calendar Code Pack sample templates, you’ll need to\nmake sure the Code Pack module and Calendar Code Pack extension is\ninstalled:</p>\n\n<ul>\n<li>Go to the Extensions area in the ExpressionEngine Control Panel,\nfind <em>Calendar Code Pack</em> in the list, and click <strong>Enable</strong>.</li>\n<li>Go to the Modules tab in the ExpressionEngine Control Panel, find\n<em>Code Pack</em> in the list and make sure it is installed. If not, click\n<strong>Install</strong>. Then, click the link for <em>Code Pack</em>.</li>\n<li>In the list of available Code Packs, click <em>Calendar Code Pack</em>.</li>\n<li>Create a prefix name for the sample data such as <strong>test_</strong> or\n<strong>calendar_</strong>.</li>\n<li>Select the <em>Default</em> code pack and click the Submit button. The Code\nPack module will output sample templates and other data, all\nprefixed with the value you specified.</li>\n</ul>\n\n<p><a name="4"></a></p>\n\n<h3>4. Setup &amp; Configuring</h3>\n\n<ul>\n<li>To create your first calendar, select the <em>Calendar: Calendars</em> weblog\nfrom the Publish tab in the ExpressionEngine control panel. Each\ncalendar is actually just a glorified weblog entry. You can add more\nthis way, or edit existing ones as usual.</li>\n<li>To create your first event, select the <em>Calendar: Events</em> weblog from\nthe Publish tab in the ExpressionEngine control panel. Each event is\nactually just a glorified weblog entry that is related to a Calendar\nweblog entry.</li>\n<li>To adjust any settings in Calendar, click on the <em>Preferences</em> tab in\nthe <a href="control_panel.html" title="Control Panel Documentation">Control\nPanel</a>\narea and then modify as necessary.</li>\n<li>Please update the EE <a href="http://expressionengine.com/docs/cp/admin/utilities/extension_manager.html#jquery_extension">jQuery for the\nCP</a>\nextension to the latest versions of jQuery and jQuery UI for maximum\ncompatibility.</li>\n</ul>\n\n<p><a name="5"></a></p>\n\n<h3>5. Troubleshooting and Support</h3>\n\n<p>For Support and Troubleshooting, visit the <a href="http://www.solspace.com/forums/">Solspace Support\nForums</a>.</p>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(41, 1, 4, 'install_update', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Install / Update | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Install / Update</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li class="current"><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p><a name="install"></a></p>\n\n<h2>Installation</h2>\n\n<ol>\n<li>Within the <strong>/system/expressionengine/third_party/</strong> directory, copy the <em>calendar</em> folder into your sites <strong>./system/expressionengine/third_party/</strong> directory.</li>\n<li>Within the <strong>/themes/third_party/</strong> directory, copy the <em>calendar</em> folder into your sites <strong>./themes/third_party/</strong> directory.</li>\n<li>Go to the Modules area in the ExpressionEngine control panel, find <em>Calendar</em> in the list, and click <strong>Install</strong>.\n\n<ul>\n<li>Upon installation, Calendar creates two new channels (<em>Calendar: Calendars</em> and <em>Calendar: Events</em>) as well as two new custom channel field groups (<em>Calendar: Calendars</em> and <em>Calendar: Events</em>) with a few sample fields. These channels and field groups are tied in together with Calendar.</li>\n</ul></li>\n<li>Setup and configuring:\n\n<ul>\n<li>To create your first calendar, select the <em>Calendar: Calendars</em> channel from the Publish tab in the ExpressionEngine control panel. Each calendar is actually just a glorified channel entry. You can add more this way, or edit existing ones as usual.</li>\n<li>To create your first event, select the <em>Calendar: Events</em> channel from the Publish tab in the ExpressionEngine control panel. Each event is actually just a glorified channel entry that is related to a Calendar channel entry.</li>\n<li>To adjust any settings in Calendar, click on the <em>Preferences</em> tab in the <a href="control_panel.html">Control Panel</a> area and then modify as necessary.</li>\n<li>If you wish to install the demo templates, click on the <em>Demo Templates</em> tab inside the <a href="control_panel.html">Control Panel</a> area.</li>\n</ul></li>\n</ol>\n\n<p><a name="update"></a></p>\n\n<h2>Updating</h2>\n\n<ol>\n<li>Within your sites <strong>./system/expressionengine/third_party/</strong> directory, delete the <em>calendar</em> folder and upload the new one from the <strong>/system/expressionengine/third_party/</strong> directory in your download package.</li>\n<li>Within your sites <strong>./themes/third_party/</strong> directory, delete the <em>calendar</em> folder and upload the new one from the <strong>/themes/third_party/</strong> directory in your download package.</li>\n<li>Go to the Modules area in the ExpressionEngine control panel and click the <em>Run Module Updates</em> button.</li>\n</ol>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(42, 1, 4, 'mini', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Mini Calendar | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Mini Calendar</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li class="current"><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:Mini</em> loop outputs a one month mini calendar focused on a specific months events. It''s a shortcut to using the complex <a href="calendar.html" title="Calendar:Cal Documentation">Calendar:Cal</a> function. Unlike most ExpressionEngine tags, the <strong>{exp:calendar:mini}{/exp:calendar:mini}</strong> tags alone will output a pre-templated display. Using the parameters and variables below, you can filter and format the results further. Defaults to loading events for current month.</p>\n\n<pre class="brush: html;">{exp:calendar:mini} content {/exp:calendar:mini} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#conditionals">Conditionals</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>The following parameters are available for use:</p>\n\n<ul>\n<li><a href="#site_id">site_id</a></li>\n<li><a href="#calendar_id">calendar_id</a></li>\n<li><a href="#calendar_name">calendar_name</a></li>\n<li><a href="#event_id">event_id</a></li>\n<li><a href="#event_name">event_name</a></li>\n<li><a href="#date_range_start">date_range_start</a></li>\n<li><a href="#first_day_of_week">first_day_of_week</a></li>\n<li><a href="#enable">enable</a></li>\n</ul>\n\n<p><a name="site_id"></a></p>\n\n<h3>site_id=</h3>\n\n<pre class="brush: html;">site_id="1" </pre>\n\n<p>If using MSM, you can specify a Site ID in this parameter to filter\nentries down to that site.</p>\n\n<p><a name="calendar_id"></a></p>\n\n<h3>calendar_id=</h3>\n\n<pre class="brush: html;">calendar_id="1|3" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir entry ID(s). You can hardcode a calendar ID, pass it through an\nembed, or grab it from the URI. Seperate multiples with the pipe\ncharacter.</p>\n\n<p><a name="calendar_name"></a></p>\n\n<h3>calendar_name=</h3>\n\n<pre class="brush: html;">calendar_name="soccer|baseball|dodgeball" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir short_names (entry url_title). You can hardcode a short_name,\npass it through an embed, or grab it from the URI. Seperate multiples\nwith the pipe character.</p>\n\n<p><a name="event_id"></a></p>\n\n<h3>event_id=</h3>\n\n<pre class="brush: html;">event_id="23|77" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nentry ID(s). You can hardcode an event ID, pass it through an embed, or\ngrab it from the URI. Seperate multiples with the pipe character.</p>\n\n<p><a name="event_name"></a></p>\n\n<h3>event_name=</h3>\n\n<pre class="brush: html;">event_name="best_event_evar|christmas|pie_day" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nshort_names (entry url_title). You can hardcode a short_name, pass it\nthrough an embed, or grab it from the URI. Seperate multiples with the\npipe character.</p>\n\n<p><a name="date_range_start"></a></p>\n\n<h3>date_range_start=</h3>\n\n<pre class="brush: html;">date_range_start="2010-01-01" </pre>\n\n<p>This parameter allows you to specify a specific month to display events\nfor. If this parameter is NOT specified, then the current month is\ndisplayed. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and easy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="first_day_of_week"></a></p>\n\n<h3>first_day_of_week=</h3>\n\n<pre class="brush: html;">first_day_of_week="0" </pre>\n\n<p>By default, Calendar considers Sunday as the first day of the week. This\nparameter allows you to override that by specifying the numeric value of\na weekday (ex: Sunday = <strong>0</strong>, Monday = <strong>1</strong>, etc).</p>\n\n<p><a name="enable"></a></p>\n\n<h3>enable=</h3>\n\n<pre class="brush: html;">enable="categories|category_fields|custom_fields|member_data|pagination" </pre>\n\n<p>By default, this function does not grab any advanced channel data in order to improve performance. However, opposite to the EE Channel module''s <a href="http://ellislab.com/expressionengine/user-guide/add-ons/channel/channel_entries.html#disable" title="EE Channel module Documentation">disable</a> parameter, this parameter allows you to enable some or all of those features when you need them. Seperate multiples with the pipe character. Options are: <strong>categories</strong>, <strong>category_fields</strong>, <strong>custom_fields</strong>, <strong>member_data</strong> and <strong>pagination</strong>.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>Most of the <a href="events.html#variables" title="Calendar:Events Documentation">variables listed in Calendar:Events</a> are available for use here. Formatting variables are not needed as the <em>Calendar:Mini</em> loop will do that for you. However, should you need to use any, all relevant <a href="calendar.html#variables" title="Calendar:Cal Documentation">variables from Calendar:Cal</a> (prepended with <em>month_</em>) are available for use here.</p>\n\n<p><a name="conditionals"></a></p>\n\n<h2>Conditionals</h2>\n\n<p>Most of the <a href="events.html#conditionals" title="Calendar:Events Documentation">conditionals listed in Calendar:Events</a> are available for use here. Formatting conditionals are not needed as the <em>Calendar:Mini</em> loop will do that for you. However, should you need to use any, all relevant <a href="calendar.html#conditionals" title="Calendar:Cal Documentation">conditionals from Calendar:Cal</a> (prepended with <em>month_</em>) are available for use here.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p><a name="easy"></a></p>\n\n<h3>Easy</h3>\n\n<p>This single set of code will output a mini Calendar for you. This is thanks to the preloaded template pack included with Calendar. The <strong>{exp:calendar:mini}{/exp:calendar:mini}</strong> tags act almost like an <strong>{events}{/events}</strong> variable pair for formatting the events (see <a href="events.html">Calendar:Events Documentation</a> for list of available variables and conditionals):</p>\n\n<pre class="brush: html;">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Mini Calendar&lt;/title&gt;\n        &lt;link rel="stylesheet"\n            type="text/css"\n            href="/themes/third_party/calendar/templates/mini.css" /&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;div id="mc_wrap"&gt;\n            &lt;div id="mc_calendar"&gt;\n                {exp:calendar:mini}\n                {/exp:calendar:mini}\n            &lt;/div&gt;\n        &lt;/div&gt;\n    &lt;/body&gt;\n&lt;/html&gt;\n</pre>\n\n<p><a name="advanced"></a></p>\n\n<h3>Advanced</h3>\n\n<p>If you’re interested in working the code from scratch, you’ll need to\nuse the full <a href="calendar.html">Calendar:Cal</a> function to generate\nthe code:</p>\n\n<pre class="brush: html;">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Mini Calendar&lt;/title&gt;\n        &lt;link\n            rel="stylesheet"\n            type="text/css"\n            href="/themes/third_party/calendar/templates/mini.css" /&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n\n    &lt;div id="mc_wrap"&gt;\n        {exp:calendar:cal\n            {if segment_3 == ''''}\n                date_range_start="year-month-01"\n                date_range_end="year-month-last"\n            {/if}\n            {if segment_3 != ''''}\n                date_range_start="{segment_3}-{segment_4}-01"\n                date_range_end="{segment_3}-{segment_4}-last"\n            {/if}\n        }\n            &lt;div id="mc_calendar"&gt;\n                {display_each_month}\n                &lt;table&gt;\n                    &lt;thead&gt;\n                        &lt;tr&gt;\n                            &lt;th colspan="1"&gt;\n                                &lt;a\n                                    id="mc_prev_month"\n                                    class="icon left"\n                                    href="{path=''calendar/mini''}/{prev_month format="%Y/%m"}/"&gt;&amp;laquo;&lt;/a&gt;\n                            &lt;/th&gt;\n                            &lt;th colspan="5"&gt;\n                                &lt;a href="{path=''calendar/mini''}/{month format="%Y/%m"}/"&gt;\n                                    {date format="%F %Y"}\n                                &lt;/a&gt;\n                            &lt;/th&gt;\n                            &lt;th colspan="1"&gt;\n                                &lt;a\n                                    id="mc_next_month"\n                                    class="icon right"\n                                    href="{path=''calendar/mini''}/{next_month format="%Y/%m"}/"&gt;\n                                    &amp;raquo;\n                                &lt;/a&gt;\n                            &lt;/th&gt;\n                        &lt;/tr&gt;\n                        &lt;tr id="mc_days"&gt;\n                        {display_each_day_of_week}\n                            &lt;th class="{if day_of_week_is_weekend}weekend{/if} {if day_of_week_is_current}current{/if}"&gt;\n                                {day_of_week_one}\n                            &lt;/th&gt;\n                        {/display_each_day_of_week}\n                    &lt;/tr&gt;\n                &lt;/thead&gt;\n                &lt;tbody&gt;\n                    {display_each_week}\n                    &lt;tr&gt;\n                        {display_each_day}\n                        &lt;td cellpadding="0" cellspacing="0" class="\n                            {if day_in_current_month == FALSE}mc_pad{/if}\n                            {if day_event_total &gt; 0}has_events{/if}\n                            {if count == 7}selected{/if}\n                            {if day_is_today}today{/if}\n                            {if day_is_weekend}weekend{/if}\n                            {if day_is_weekday}weekday{/if}\n                        "&gt;&lt;div class="mc_date"&gt;{if day_in_current_month}\n\n                        {if day_event_total}&lt;a href="{path=''calendar/day''}/{date format="%Y/%m/%d"}/"&gt;{/if}\n                        {day}\n                        {if day_event_total}&lt;/a&gt;{/if}\n                        {if:else}\n                            &lt;strong class="middot"&gt;&amp;middot;&lt;/strong&gt;\n                        {/if}&lt;/div&gt;&lt;/td&gt;\n                        {/display_each_day}\n                    &lt;/tr&gt;\n                    {/display_each_week}\n                &lt;/tbody&gt;\n            &lt;/table&gt;\n            {/display_each_month}\n            &lt;/div&gt;\n        {/exp:calendar:cal}\n    &lt;/div&gt;\n\n    &lt;/body&gt;\n&lt;/html&gt;\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0);
INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`) VALUES
(43, 1, 4, 'month', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Month | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Month</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li class="current"><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:Month</em> loop outputs a one month calendar view showing a specific months events. It''s a shortcut to using the complex <a href="calendar.html" title="Calendar:Cal Documentation">Calendar:Cal</a> function. Unlike most ExpressionEngine tags, the <strong>{exp:calendar:month}{/exp:calendar:month}</strong> tags alone will output a pre-templated display. Using the parameters and variables below, you can filter and format the results further. Defaults to displaying events for current month.</p>\n\n<pre class="brush: html;">{exp:calendar:month} content {/exp:calendar:month} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#conditionals">Conditionals</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>The following parameters are available for use:</p>\n\n<ul>\n<li><a href="#site_id">site_id</a></li>\n<li><a href="#calendar_id">calendar_id</a></li>\n<li><a href="#calendar_name">calendar_name</a></li>\n<li><a href="#event_id">event_id</a></li>\n<li><a href="#event_name">event_name</a></li>\n<li><a href="#first_day_of_week">first_day_of_week</a></li>\n<li><a href="#date_range_start">date_range_start</a></li>\n<li><a href="#enable">enable</a></li>\n</ul>\n\n<p><a name="site_id"></a></p>\n\n<h3>site_id=</h3>\n\n<pre class="brush: html;">site_id="1" </pre>\n\n<p>If using MSM, you can specify a Site ID in this parameter to filter\nentries down to that site.</p>\n\n<p><a name="calendar_id"></a></p>\n\n<h3>calendar_id=</h3>\n\n<pre class="brush: html;">calendar_id="1|3" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir entry ID(s). You can hardcode a calendar ID, pass it through an\nembed, or grab it from the URI. Seperate multiples with the pipe\ncharacter.</p>\n\n<p><a name="calendar_name"></a></p>\n\n<h3>calendar_name=</h3>\n\n<pre class="brush: html;">calendar_name="soccer|baseball|dodgeball" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir short_names (entry url_title). You can hardcode a short_name,\npass it through an embed, or grab it from the URI. Seperate multiples\nwith the pipe character.</p>\n\n<p><a name="event_id"></a></p>\n\n<h3>event_id=</h3>\n\n<pre class="brush: html;">event_id="23|77" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nentry ID(s). You can hardcode an event ID, pass it through an embed, or\ngrab it from the URI. Seperate multiples with the pipe character.</p>\n\n<p><a name="event_name"></a></p>\n\n<h3>event_name=</h3>\n\n<pre class="brush: html;">event_name="best_event_evar|christmas|pie_day" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nshort_names (entry url_title). You can hardcode a short_name, pass it\nthrough an embed, or grab it from the URI. Seperate multiples with the\npipe character.</p>\n\n<p><a name="first_day_of_week"></a></p>\n\n<h3>first_day_of_week=</h3>\n\n<pre class="brush: html;">first_day_of_week="0" </pre>\n\n<p>By default, Calendar considers Sunday as the first day of the week. This\nparameter allows you to override that by specifying the numeric value of\na weekday (ex: Sunday = <strong>0</strong>, Monday = <strong>1</strong>, etc).</p>\n\n<p><a name="date_range_start"></a></p>\n\n<h3>date_range_start=</h3>\n\n<pre class="brush: html;">date_range_start="2010-01-01" </pre>\n\n<p>This parameter allows you to specify a specific month to display events\nfor. If this parameter is NOT specified, then the current month is\ndisplayed. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and easy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="enable"></a></p>\n\n<h3>enable=</h3>\n\n<pre class="brush: html;">enable="categories|category_fields|custom_fields|member_data|pagination" </pre>\n\n<p>By default, this function does not grab any advanced channel data in order to improve performance. However, opposite to the EE Channel module''s <a href="http://ellislab.com/expressionengine/user-guide/add-ons/channel/channel_entries.html#disable" title="EE Channel module Documentation">disable</a> parameter, this parameter allows you to enable some or all of those features when you need them. Seperate multiples with the pipe character. Options are: <strong>categories</strong>, <strong>category_fields</strong>, <strong>custom_fields</strong>, <strong>member_data</strong> and <strong>pagination</strong>.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>Most of the <a href="events.html#variables" title="Calendar:Events Documentation">variables listed in\nCalendar:Events</a>\nare available for use here. Formatting variables are not needed as the\n<em>Calendar:Month</em> loop will do that for you. However, should you need to\nuse any, all relevant <a href="calendar.html#variables" title="Calendar:Cal Documentation">variables from\nCalendar:Cal</a>\n(prepended with <em>month_</em>) are available for use here.</p>\n\n<p><a name="conditionals"></a></p>\n\n<h2>Conditionals</h2>\n\n<p>Most of the <a href="events.html#conditionals" title="Calendar:Events Documentation">conditionals listed in\nCalendar:Events</a>\nare available for use here. Formatting conditionals are not needed as\nthe <em>Calendar:Month</em> loop will do that for you. However, should you need\nto use any, all relevant <a href="calendar.html#conditionals" title="Calendar:Cal Documentation">conditionals from\nCalendar:Cal</a>\n(prepended with <em>month_</em>) are available for use here.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p><a name="easy"></a></p>\n\n<h3>Easy</h3>\n\n<p>This single set of code will output a monthly Calendar for you. This is\nthanks to the preloaded template pack included with Calendar. The\n<strong>{exp:calendar:month}{/exp:calendar:month}</strong> tags act almost like an\n<strong>{events}{/events}</strong> variable pair for formatting the events (see\n<a href="events.html">Calendar:Events Documentation</a> for list of\navailable variables and conditionals):</p>\n\n<pre class="brush: html;">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Month Calendar&lt;/title&gt;\n        &lt;link rel="stylesheet"\n            type="text/css"\n            href="/themes/third_party/calendar/templates/month.css" /&gt;\n        &lt;!--[if gte IE 7]&gt;\n        &lt;style type="text/css"&gt;\n            #fc_calendar .event { width: 137px; }\n        &lt;/style&gt;\n        &lt;![endif]--&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;div id="fc_calendar"&gt;\n            {exp:calendar:month\n                {if segment_3}\n                    date_range_start="{segment_3}-{segment_4}-01"\n                {/if}\n            }\n                &lt;a href="{path=''calendar/events''}/{event_id}/"&gt;\n                    {event_title}\n                &lt;/a&gt;\n            {/exp:calendar:month}\n        &lt;/div&gt;\n    &lt;/body&gt;\n&lt;/html&gt;\n</pre>\n\n<p><a name="moderate"></a></p>\n\n<h3>Moderate</h3>\n\n<p>If you’d like a little more control over the output of your Calendar so\nthat it includes times and accommodates for multi-day events, etc, you\nmight be interested in trying out the below example:</p>\n\n<pre class="brush: html;">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Month Calendar&lt;/title&gt;\n        &lt;link rel="stylesheet" type="text/css" href="/themes/third_party/calendar/templates/month.css" /&gt;\n        &lt;!--[if gte IE 7]&gt;\n        &lt;style type="text/css"&gt;\n            #fc_calendar .event { width: 137px; }\n        &lt;/style&gt;\n        &lt;![endif]--&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n\n    &lt;div id="fc_calendar"&gt;\n    {exp:calendar:month\n        {if segment_3}\n            date_range_start="{segment_3}-{segment_4}-01"\n        {/if}\n    }\n        &lt;div\n            class="\n                event\n                {if event_all_day}all_day{/if}\n                {if event_multi_day}multi_day{/if}\n                {if event_first_day}first_day{/if}\n                {if event_last_day}last_day{/if}\n                {if all_day_event_index_difference &gt; 0}\n                    index_difference_{all_day_event_index_difference}\n                {/if}\n            "&gt;\n         {if event_multi_day}\n            &lt;a href="{path=''calendar/events''}/{event_id}/"&gt;{event_title}&lt;/a&gt;\n            {if event_all_day == FALSE}\n                {if event_first_day}\n                    ({event_start_time}\n                {/if}\n                {if event_last_day}\n                    {event_end_time})\n                {/if}\n            {/if}\n        {if:else}\n            &lt;a href="{path=''calendar/events''}/{event_id}/"&gt;{event_title}&lt;/a&gt;\n            {if event_all_day == ''''}\n                (\n                    {event_start_date format="%g"}\n                    {if event_start_minute &gt; 0}\n                        :{event_start_minute}\n                    {/if}\n                    {if event_end_time != event_start_time &amp;&amp; event_end_time != ''00:00''}\n                        &amp;ndash;\n                        {event_end_date format="%g"}\n                        {if event_end_minute &gt; 0}\n                            :{event_end_minute}\n                        {/if}\n                        {event_end_date format="%a"}\n                    {if:else}\n                        {event_start_date format="%a"}\n                    {/if}\n                )\n            {/if}\n        {/if}\n        &lt;/div&gt;\n    {/exp:calendar:month}\n    &lt;/div&gt;\n\n    &lt;/body&gt;\n&lt;/html&gt;\n</pre>\n\n<p><a name="advanced"></a></p>\n\n<h3>Advanced</h3>\n\n<p>If you’re interested in working the code from scratch, you’ll need to\nuse the full <a href="calendar.html">Calendar:Cal</a> function to generate\nthe code:</p>\n\n<pre class="brush: html;">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Month Calendar&lt;/title&gt;\n        &lt;link rel="stylesheet" type="text/css" href="/themes/third_party/calendar/templates/month.css" /&gt;\n        &lt;!--[if gte IE 7]&gt;\n        &lt;style type="text/css"&gt;\n            #fc_calendar .event { width: 137px; }\n        &lt;/style&gt;\n        &lt;![endif]--&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;div id="fc_calendar"&gt;\n            {exp:calendar:cal\n            {if segment_3 == ''''}\n                date_range_start="year-month-01"\n                date_range_end="year-month-last"\n            {/if}\n            {if segment_3 != ""}\n                date_range_start="{segment_3}-{segment_4}-01"\n                date_range_end="{segment_3}-{segment_4}-last"\n            {/if}\n            }\n            {display_each_month}\n            &lt;table id="fc_outer"&gt;\n                &lt;thead&gt;\n                    &lt;tr id="month_year"&gt;\n                        &lt;th colspan="2"&gt;&amp;laquo;\n                            &lt;a href="{path=''calendar/month''}/{prev_month format="%Y/%m"}/"&gt;\n                                {prev_month format="%F"}\n                            &lt;/a&gt;\n                        &lt;/th&gt;\n                        &lt;th colspan="3"&gt;{date format="%F %Y"}&lt;/th&gt;\n                        &lt;th colspan="2"&gt;\n                            &lt;a href="{path=''calendar/month''}/{next_month format="%Y/%m"}/"&gt;\n                                {next_month format="%F"}\n                            &lt;/a&gt;\n                            &amp;raquo;\n                        &lt;/th&gt;\n                    &lt;/tr&gt;\n                &lt;/thead&gt;\n                &lt;tbody&gt;\n                    &lt;tr&gt;\n                        &lt;td colspan="7"&gt;\n                            &lt;div class="wrap"&gt;\n                                &lt;table id="fc_inner"&gt;\n                                    &lt;thead&gt;\n                                        &lt;tr id="days_of_week"&gt;\n                                            {display_each_day_of_week}\n                                            &lt;th class="day_of_week {day_of_week}"&gt;\n                                                {day_of_week}\n                                            &lt;/th&gt;\n                                            {/display_each_day_of_week}\n                                        &lt;/tr&gt;\n                                    &lt;/thead&gt;\n                                    &lt;tbody&gt;\n                                        {display_each_week}\n                                         &lt;tr&gt;\n                                            {display_each_day}\n                                            {if day_in_current_month}\n                                                &lt;td class="day_cell"&gt;\n                                                    &lt;div class="date"&gt;\n                                                        &lt;a class="num"\n                                                            href="{path=''calendar/day''}/{date format="%Y/%m/%d"}/"&gt;\n                                                            {date format="%j"}\n                                                        &lt;/a&gt;\n                                                    &lt;/div&gt;\n                                            {if:else}\n                                                &lt;td class="day_cell out_of_range"&gt;\n                                                    &lt;div class="date"&gt;\n                                                    &lt;span class="num"&gt;\n                                                        {date format="%j"}\n                                                    &lt;/span&gt;\n                                                &lt;/div&gt;\n                                            {/if}\n                                            {display_each_hour}\n                                                {events}\n                                                    &lt;div\n                                                      class="\n                                                        event {if event_all_day}all_day{/if}\n                                                        {if event_multi_day}multi_day{/if}\n                                                        {if event_first_day}first_day{/if}\n                                                        {if event_last_day}last_day{/if}\n                                                        {if all_day_event_index_difference &gt; 0}\n                                                            index_difference_{all_day_event_index_difference}\n                                                        {/if}\n                                                      "&gt;\n                                                    {if event_multi_day}\n                                                        {if event_all_day == FALSE}\n                                                            {if event_first_day}\n                                                                {event_start_time}\n                                                            {/if}\n                                                            {if event_last_day}\n                                                                {event_end_time}\n                                                            {/if}\n                                                        {/if}\n                                                        &lt;a href="{path=''calendar/events''}/{event_id}/"&gt;{event_title}&lt;/a&gt;\n                                                    {if:else}\n                                                        {if event_all_day == ''''}\n                                                            {event_start_date format="%g"}\n                                                            {if event_start_minute &gt; 0}\n                                                                :{event_start_minute}\n                                                            {/if}\n                                                            {if event_end_time != event_start_time &amp;&amp; event_end_time != ''00:00''}\n                                                                &amp;ndash;\n                                                                {event_end_date format="%g"}\n                                                                {if event_end_minute &gt; 0}\n                                                                    :{event_end_minute}\n                                                                {/if}\n                                                                {event_end_date format="%a"}\n                                                            {if:else}\n                                                                {event_start_date format="%a"}\n                                                            {/if}\n                                                        {/if}\n                                                         &lt;a href="{path=''calendar/events''}/{event_id}/"&gt;{event_title}&lt;/a&gt;\n                                                    {/if}\n                                                    &lt;/div&gt;\n                                                    {/events}\n                                                {/display_each_hour}\n                                            &lt;/td&gt;\n                                            {/display_each_day}\n                                        &lt;/tr&gt;\n                                        {/display_each_week}\n                                    &lt;/tbody&gt;\n                                &lt;/table&gt;\n                            &lt;/div&gt;\n                        &lt;/td&gt;\n                    &lt;/tr&gt;\n                &lt;/tbody&gt;\n            &lt;/table&gt;\n            {/display_each_month}\n            {/exp:calendar:cal}\n        &lt;/div&gt;\n    &lt;/body&gt;\n&lt;/html&gt;\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(44, 1, 4, 'month_list', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Month List | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Month List</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li class="current"><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:Month_List</em> loop outputs an archive list of months for the purpose of generating simple lists to link to Month calendars.</p>\n\n<pre class="brush: html;">{exp:calendar:month_list} content {/exp:calendar:month_list} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#conditionals">Conditionals</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>The following parameters are available for use:</p>\n\n<ul>\n<li><a href="#date_range_start">date_range_start</a></li>\n<li><a href="#date_range_end">date_range_end</a></li>\n<li><a href="#limit">limit</a></li>\n</ul>\n\n<p><a name="date_range_start"></a></p>\n\n<h3>date_range_start=</h3>\n\n<pre class="brush: html;">date_range_start="2009-06-01" </pre>\n\n<p>Limits output to months on or after this date. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and\neasy-to-use text date\nformatting</a>\napply to this parameter. Default value is <strong>year-01-01</strong>.</p>\n\n<p><a name="date_range_end"></a></p>\n\n<h3>date_range_end=</h3>\n\n<pre class="brush: html;">date_range_end="2010-06-last" </pre>\n\n<p>Limits output to months on or before this date. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and\neasy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="limit"></a></p>\n\n<h3>limit=</h3>\n\n<pre class="brush: html;">limit="18" </pre>\n\n<p>This parameter allows you to limit the amount of month results to be\ndisplayed in the list. Default is <strong>12</strong>.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>The following variables are available for use:</p>\n\n<ul>\n<li><a href="#month">month</a></li>\n<li><a href="#year">year</a></li>\n</ul>\n\n<p><a name="month"></a></p>\n\n<h3>month</h3>\n\n<pre class="brush: html;">{month format="%F, %Y"} </pre>\n\n<p>Displays the given month, formatted using EE-style format characters. If\n<em>format=""</em> is not specified, it will parse as <strong>MM</strong> (ex: <strong>03</strong>).</p>\n\n<p><a name="year"></a></p>\n\n<h3>year</h3>\n\n<pre class="brush: html;">{year format="%Y"} </pre>\n\n<p>Displays the given year, formatted using EE-style format characters. If\n<em>format=""</em> is not specified, it will parse as <strong>YYYY</strong> (ex: <strong>2009</strong>).</p>\n\n<p><a name="conditionals"></a></p>\n\n<h2>Conditionals</h2>\n\n<p>The following conditionals are available for use:</p>\n\n<ul>\n<li><a href="#if_is_current_month">if is_current_month</a></li>\n<li><a href="#if_is_not_current_month">if is_not_current_month</a></li>\n<li><a href="#if_is_current_year">if is_current_year</a></li>\n<li><a href="#if_is_not_current_year">if is_not_current_year</a></li>\n</ul>\n\n<p><a name="if_is_current_month"></a></p>\n\n<h3>if is_current_month</h3>\n\n<pre class="brush: html;">{if is_current_month}Current Month{/if} </pre>\n\n<p>If the month in the list of results is the current month, this\nconditional will display it''s contents.</p>\n\n<p><a name="if_is_not_current_month"></a></p>\n\n<h3>if is_not_current_month</h3>\n\n<pre class="brush: html;">{if is_not_current_month}NOT Current Month{/if} </pre>\n\n<p>If the month in the list of results is NOT the current month, this\nconditional will display it''s contents.</p>\n\n<p><a name="if_is_current_year"></a></p>\n\n<h3>if is_current_year</h3>\n\n<pre class="brush: html;">{if is_current_year}Current Year{/if} </pre>\n\n<p>If the month in the list of results is the current year, this\nconditional will display it''s contents.</p>\n\n<p><a name="if_is_not_current_year"></a></p>\n\n<h3>if is_not_current_year</h3>\n\n<pre class="brush: html;">{if is_not_current_year}NOT Current Year{/if} </pre>\n\n<p>If the month in the list of results is NOT the current year, this\nconditional will display it''s contents.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p>The following code will display a list of months during the period of\n<strong>January, 2009 - December, 2012</strong>:</p>\n\n<pre class="brush: html;">&lt;ul&gt;\n    {exp:calendar:month_list\n        date_range_start="2009-01-01"\n        date_range_end="2012-12-last"\n        limit="100"\n    }\n        &lt;li&gt;\n            &lt;a href="{path=''calendar/month''}/{month format="%Y/%m"}/"&gt;\n                {month format="%F, %Y"}\n            &lt;/a&gt;\n        &lt;/li&gt;\n    {/exp:calendar:month_list}\n&lt;/ul&gt;\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0);
INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`) VALUES
(45, 1, 4, 'occurrences', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Occurrences | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Occurrences</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li class="current"><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:Occurrences</em> loop outputs information about an events''\noccurrence(s).</p>\n\n<pre class="brush: html;">{exp:calendar:occurrences} content {/exp:calendar:occurrences} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#variable_pairs">Variable Pairs</a></li>\n<li><a href="#conditionals">Conditionals</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>Most parameters available in the <em>Channel:Entries</em> loop are available\nhere. Additionally, these are also available:</p>\n\n<ul>\n<li><a href="#event_id">event_id</a></li>\n<li><a href="#event_name">event_name</a></li>\n<li><a href="#occurrence_id">occurrence_id</a></li>\n<li><a href="#date_range_start">date_range_start</a></li>\n<li><a href="#date_range_end">date_range_end</a></li>\n<li><a href="#show_days">show_days</a></li>\n<li><a href="#show_weeks">show_weeks</a></li>\n<li><a href="#show_months">show_months</a></li>\n<li><a href="#show_years">show_years</a></li>\n<li><a href="#occurrences_limit">occurrences_limit</a></li>\n<li><a href="#occurrences_offset">occurrences_offset</a></li>\n<li><a href="#prior_occurrences_limit">prior_occurrences_limit</a></li>\n<li><a href="#upcoming_occurrences_limit">upcoming_occurrences_limit</a></li>\n<li><a href="#prior_exceptions_limit">prior_exceptions_limit</a></li>\n<li><a href="#upcoming_exceptions_limit">upcoming_exceptions_limit</a></li>\n<li><a href="#reverse">reverse</a></li>\n<li><a href="#paginate">paginate</a></li>\n</ul>\n\n<p><a name="event_id"></a></p>\n\n<h3>event_id=</h3>\n\n<pre class="brush: html;">event_id="25" </pre>\n\n<p>This parameter allows you to display occurrences for a specific event by\nspecifying an events entry ID. You can hardcode an event ID, pass it\nthrough an embed, or grab it from the URI. You can only specify a single\nevent ID.</p>\n\n<p><a name="event_name"></a></p>\n\n<h3>event_name=</h3>\n\n<pre class="brush: html;">event_name="dodgeball" </pre>\n\n<p>This parameter allows you to display occurrences for a specific event by\nspecifying an events url_title. You can hardcode an event url_title,\npass it through an embed, or grab it from the URI. You can only specify\na single event url_title.</p>\n\n<p><a name="occurrence_id"></a></p>\n\n<h3>occurrence_id=</h3>\n\n<pre class="brush: html;">occurrence_id="35|72|108" </pre>\n\n<p>This parameter allows you to display specific occurrences for an event\nby specifying their unique ID(s). You can hardcode an occurrence ID,\npass it through an embed, or grab it from the URI. Seperate multiples\nwith the pipe character.</p>\n\n<p><a name="date_range_start"></a></p>\n\n<h3>date_range_start=</h3>\n\n<pre class="brush: html;">date_range_start="2010-01-31 @ 8:00 am" </pre>\n\n<p>Limits output to occurrences on or after this date. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and\neasy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="date_range_end"></a></p>\n\n<h3>date_range_end=</h3>\n\n<pre class="brush: html;">date_range_end="2010-02-14 @ 10:00 pm" </pre>\n\n<p>Limits output to occurrences on or before this date. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and\neasy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="show_days"></a></p>\n\n<h3>show_days=</h3>\n\n<pre class="brush: html;">show_days="14" </pre>\n\n<p>Specifies the number of days to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. Default is <strong>28</strong>. Used in conjunction\nwith either <a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="show_weeks"></a></p>\n\n<h3>show_weeks=</h3>\n\n<pre class="brush: html;">show_weeks="3" </pre>\n\n<p>Specifies the number of weeks to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. Used in conjunction with either\n<a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="show_months"></a></p>\n\n<h3>show_months=</h3>\n\n<pre class="brush: html;">show_months="6" </pre>\n\n<p>Specifies the number of months to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. Used in conjunction with either\n<a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="show_years"></a></p>\n\n<h3>show_years=</h3>\n\n<pre class="brush: html;">show_years="2" </pre>\n\n<p>Specifies the number of years to show going forward from\n<a href="#date_range_start">date_range_start</a>, or backward from\n<a href="#date_range_end">date_range_end</a>. Used in conjunction with either\n<a href="#date_range_start">date_range_start</a> or\n<a href="#date_range_end">date_range_end</a> parameters, and used in place of the\none not used.</p>\n\n<p><a name="occurrences_limit"></a></p>\n\n<h3>occurrences_limit=</h3>\n\n<pre class="brush: html;">occurrences_limit="5" </pre>\n\n<p>This parameter limits the number of past and future occurrences to be\ndisplayed.</p>\n\n<p><a name="occurrences_offset"></a></p>\n\n<h3>occurrences_offset=</h3>\n\n<pre class="brush: html;">occurrences_offset="1" </pre>\n\n<p>This parameter lets you offset the results of occurrences displayed. For\nexample, if you''d like the first result to be skipped from the results,\nspecify a value of <strong>1</strong>.</p>\n\n<p><a name="prior_occurrences_limit"></a></p>\n\n<h3>prior_occurrences_limit=</h3>\n\n<pre class="brush: html;">prior_occurrences_limit="3" </pre>\n\n<p>This parameter limits the number of prior (before today) occurrences\nto be displayed. By default, no prior occurrences will be shown.</p>\n\n<p><a name="upcoming_occurrences_limit"></a></p>\n\n<h3>upcoming_occurrences_limit=</h3>\n\n<pre class="brush: html;">upcoming_occurrences_limit="10" </pre>\n\n<p>This parameter limits the number of upcoming (today and beyond)\noccurrences to be displayed. By default, <strong>10</strong> upcoming occurrences will be\nshown.</p>\n\n<p><a name="prior_exceptions_limit"></a></p>\n\n<h3>prior_exceptions_limit=</h3>\n\n<pre class="brush: html;">prior_exceptions_limit="2" </pre>\n\n<p>This parameter limits the number of prior (before today) exceptions to\nthe occurrences to be displayed.</p>\n\n<p><a name="upcoming_exceptions_limit"></a></p>\n\n<h3>upcoming_exceptions_limit=</h3>\n\n<pre class="brush: html;">upcoming_exceptions_limit="2" </pre>\n\n<p>This parameter limits the number of upcoming (today and beyond)\nexceptions to the occurrences to be displayed.</p>\n\n<p><a name="reverse"></a></p>\n\n<h3>reverse=</h3>\n\n<pre class="brush: html;">reverse="true" </pre>\n\n<p>This parameter allows you to reverse the display order of the results.\nThis is handy if you wish to display an ordered list of both prior and\nupcoming occurrences for an event.</p>\n\n<p><a name="paginate"></a></p>\n\n<h3>paginate=</h3>\n\n<pre class="brush: html;">paginate="both" </pre>\n\n<p>This parameter allows you to control where the pagination will display.\nOptions are top, bottom, or both. Used in conjunction with the\n<a href="#paginate">paginate</a> variable pair.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>Most variables available in the <em>Channel:Entries</em> loop are available\nhere. Additionally, these are also available:</p>\n\n<ul>\n<li><a href="#occurrence_title">occurrence_title</a></li>\n<li><a href="#occurrence_id">occurrence_id</a></li>\n<li><a href="#occurrence_event_id">occurrence_event_id</a></li>\n<li><a href="#occurrence_start_date">occurrence_start_date</a></li>\n<li><a href="#occurrence_end_date">occurrence_end_date</a></li>\n<li><a href="#occurrence_count">occurrence_count</a></li>\n<li><a href="#occurrence_total">occurrence_total</a></li>\n<li><a href="#occurrence_status">occurrence_status</a></li>\n<li><a href="#occurrence_author">occurrence_author</a></li>\n<li><a href="#occurrence_author_id">occurrence_author_id</a></li>\n<li><a href="#occurrence_duration_days">occurrence_duration_days</a></li>\n<li><a href="#occurrence_duration_hours">occurrence_duration_hours</a></li>\n<li><a href="#occurrence_duration_minutes">occurrence_duration_minutes</a></li>\n<li><a href="#occurrence_CUSTOM_FIELD">occurrence_CUSTOM_FIELD</a></li>\n</ul>\n\n<p><a name="occurrence_title"></a></p>\n\n<h3>occurrence_title</h3>\n\n<pre class="brush: html;">{occurrence_title} </pre>\n\n<p>This variable outputs the title of the main event entry that generates\nthis occurrence.</p>\n\n<p><a name="occurrence_id"></a></p>\n\n<h3>occurrence_id</h3>\n\n<pre class="brush: html;">{if occurrence_id}{occurrence_id}{if:else}{event_id}{/if} </pre>\n\n<p>This variable outputs the unique ID of the occurrence. This will only\ndisplay a value IF you''ve edited the specific occurrence in a series of\nevents.</p>\n\n<p><a name="occurrence_event_id"></a></p>\n\n<h3>occurrence_event_id</h3>\n\n<pre class="brush: html;">{if occurrence_title}{occurrence_title}{if:else}{event_title}{/if} </pre>\n\n<p>This variable outputs the unique ID of the main event entry that\ngenerates this occurrence. This will only display a value IF you''ve\nedited the specific occurrence in a series of events.</p>\n\n<p><a name="occurrence_start_date"></a></p>\n\n<h3>occurrence_start_date</h3>\n\n<pre class="brush: html;">{occurrence_start_date format="%F %j, %Y"} </pre>\n\n<p>Displays the start date of the occurrence, formatted using EE-style\nformat characters. If <em>format=""</em> is not specified, it will parse as\n<strong>YYYYMMDD</strong> (ex: <strong>20091231</strong>).</p>\n\n<p><a name="occurrence_end_date"></a></p>\n\n<h3>occurrence_end_date</h3>\n\n<pre class="brush: html;">{occurrence_end_date format="%F %j, %Y"} </pre>\n\n<p>Displays the end date of the occurrence, formatted using EE-style format\ncharacters. If <em>format=""</em> is not specified, it will parse as <strong>YYYYMMDD</strong>\n(ex: <strong>20091231</strong>).</p>\n\n<p><a name="occurrence_count"></a></p>\n\n<h3>occurrence_count</h3>\n\n<pre class="brush: html;">{occurrence_count} </pre>\n\n<p>This variable outputs the display order number for each event result in\nyour list.</p>\n\n<p><a name="occurrence_total"></a></p>\n\n<h3>occurrence_total</h3>\n\n<pre class="brush: html;">{occurrence_total} </pre>\n\n<p>This variable outputs the total amount of events outputted in your list.</p>\n\n<p><a name="occurrence_status"></a></p>\n\n<h3>occurrence_status</h3>\n\n<pre class="brush: html;">{occurrence_status} </pre>\n\n<p>This variable outputs the status of the occurrence.</p>\n\n<p><a name="occurrence_author"></a></p>\n\n<h3>occurrence_author</h3>\n\n<pre class="brush: html;">{occurrence_author} </pre>\n\n<p>This variable outputs the screen name of the author of the occurrence.</p>\n\n<p><a name="occurrence_author_id"></a></p>\n\n<h3>occurrence_author_id</h3>\n\n<pre class="brush: html;">{occurrence_author_id} </pre>\n\n<p>This variable outputs the member ID of the author of the occurrence.</p>\n\n<p><a name="occurrence_duration_days"></a></p>\n\n<h3>occurrence_duration_days</h3>\n\n<pre class="brush: html;">{occurrence_duration_days} </pre>\n\n<p>Displays the number of days the occurrence lasts.</p>\n\n<p><a name="occurrence_duration_hours"></a></p>\n\n<h3>occurrence_duration_hours</h3>\n\n<pre class="brush: html;">{occurrence_duration_hours} </pre>\n\n<p>Displays the number of hours the occurrence lasts.</p>\n\n<p><a name="occurrence_duration_minutes"></a></p>\n\n<h3>occurrence_duration_minutes</h3>\n\n<pre class="brush: html;">{occurrence_duration_minutes} </pre>\n\n<p>Displays the number of minutes the occurrence lasts.</p>\n\n<p><a name="occurrence_custom_field"></a></p>\n\n<h3>occurrence_CUSTOM_FIELD</h3>\n\n<pre class="brush: html;">{occurrence_CUSTOM_FIELD} </pre>\n\n<p>This variable outputs the title of the main event entry that generates\nthis occurrence.</p>\n\n<p>All of custom weblog fields are available for use. To parse your custom\nweblog fields, prepend the variables with <em>occurrence_</em>. So to construct\nthese variables, simply use <em>occurrence_</em> +\n<em>custom_channel_field_short_name</em> (Ex: <strong>occurrence_</strong> + <strong>description</strong> =\n<em>occurrence_description</em>).</p>\n\n<p><a name="variable_pairs"></a></p>\n\n<h2>Variable Pairs</h2>\n\n<p>The following variable pairs are available for use:</p>\n\n<ul>\n<li><a href="#paginate_vp">paginate</a></li>\n</ul>\n\n<p><a name="paginate"></a></p>\n\n<h3>paginate</h3>\n\n<pre class="brush: html;">{paginate\n    Page {current_page} of {total_pages} pages &amp;nbsp; {pagination_links}\n{/paginate}\n</pre>\n\n<p>Pagination is available for this tag and works just like regular\npagination. Used in conjunction with the <a href="#paginate">paginate</a>\nparameter.</p>\n\n<p><a name="conditionals"></a></p>\n\n<h2>Conditionals</h2>\n\n<p>Most conditionals available in the <em>Channel:Entries</em> loop are available\nhere. Additionally, these are also available:</p>\n\n<ul>\n<li><a href="#if_calendar_no_results">if calendar_no_results</a></li>\n<li><a href="#if_occurrence_recurs">if occurrence_recurs</a></li>\n<li><a href="#if_occurrence_all_day">if occurrence_all_day</a></li>\n<li><a href="#if_occurrence_multi_day">if occurrence_multi_day</a></li>\n</ul>\n\n<p><a name="if_calendar_no_results"></a></p>\n\n<h3>if calendar_no_results</h3>\n\n<pre class="brush: html;">{if calendar_no_results}{/if} </pre>\n\n<p>Works just like the regular <strong>{if no_results}</strong> conditional - displays its\ncontents when there is no results for the given parameters.</p>\n\n<p><a name="if_occurrence_recurs"></a></p>\n\n<h3>if occurrence_recurs</h3>\n\n<pre class="brush: html;">{if occurrence_recurs}{/if} </pre>\n\n<p>This conditional will displays it''s contents if the event recurs.</p>\n\n<p><a name="if_occurrence_all_day"></a></p>\n\n<h3>if occurrence_all_day</h3>\n\n<pre class="brush: html;">{if occurrence_all_day}{/if} </pre>\n\n<p>This conditional will displays it''s contents if the occurrence is an all\nday event.</p>\n\n<p><a name="if_occurrence_multi_day"></a></p>\n\n<h3>if occurrence_multi_day</h3>\n\n<pre class="brush: html;">{if occurrence_multi_day}{/if} </pre>\n\n<p>This conditional will displays it''s contents if the occurrence occurs on\nmultiple days.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p><a name="occurrences_for_a_specific_event"></a></p>\n\n<h3>Occurrences for a Specific Event</h3>\n\n<p>The following simple code example will display all occurrences from 1\nmonth ago up to 2 months into the future for a given event, if you have\nit’s entry ID in the 3rd segment of the URI:</p>\n\n<pre class="brush: html;">&lt;ul&gt;\n    {exp:calendar:occurrences\n        event_id="{segment_3}"\n        date_range_start="1 month ago"\n        date_range_end="2 months"\n    }\n    &lt;li&gt;\n        &lt;a href="{path=''calendar/occurrence''}/{occurrence_start_date format="%Y/%m/%d"}/"&gt;\n            {occurrence_start_date format="%l, %F %j, %Y at %g:%i%a"}\n        &lt;/a&gt;\n    &lt;/li&gt;\n    {/exp:calendar:occurrences}\n&lt;/ul&gt;\n</pre>\n\n<p><a name="list_multiple_event_occurrences"></a></p>\n\n<h3>List Multiple Event Occurrences (Hardcoded)</h3>\n\n<p>The following simple code example will display a list of occurrences\nfrom 1 month ago up to 2 months into the future for multiple events:</p>\n\n<pre class="brush: html;">&lt;ul&gt;\n    {exp:calendar:occurrences\n        date_range_start="1 month ago"\n        date_range_end="2 months"\n        dynamic="off"\n    }\n    &lt;li&gt;\n        &lt;a href="{path=''calendar/occurrence''}/{occurrence_start_date format="%Y/%m/%d"}/"&gt;\n            {event_title}\n        &lt;/a&gt;\n        ({occurrence_start_date format="%l, %F %j, %Y at %g:%i%a"})\n    &lt;/li&gt;\n    {/exp:calendar:occurrences}\n&lt;/ul&gt;\n</pre>\n\n<p><a name="list_multiple_event_occurrences"></a></p>\n\n<h3>List Multiple Event Occurrences (By Date - Dynamic)</h3>\n\n<p>The following code example will display a list of all occurrences on a\nspecific date for multiple events if you have the usual date segments in\nthe URI:</p>\n\n<pre class="brush: html;">&lt;ul&gt;\n    {exp:calendar:occurrences\n        date_range_start="{segment_3}-{segment_4}-{segment_5}"\n        date_range_end="{segment_3}-{segment_4}-{segment_5}"\n        dynamic="off"\n    }\n    &lt;li&gt;\n        &lt;a href="{path=''calendar/occurrence''}/{occurrence_start_date format="%Y/%m/%d"}/"&gt;\n            {event_title}\n        &lt;/a&gt;\n        ({occurrence_start_date format="%l, %F %j, %Y at %g:%i%a"})\n    &lt;/li&gt;\n    {/exp:calendar:occurrences}\n&lt;/ul&gt;\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(46, 1, 4, 'updates_1.7.x', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Updates 1.7.x | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Updates 1.7.x</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<h2>Updating for Calendar 1.7.x on EE 1.x</h2>\n\n<p>These instructions are for upgrading Calendar 1.7.x and earlier on ExpressionEngine 1.x only. If you''re upgrading to the latest version of Calendar (on EE2), please refer to the applicable <a href="install_update.html#update">updating instructions</a>.</p>\n\n<p><a name="1"></a></p>\n\n<h3>1. Copy Add-on Files</h3>\n\n<p>This add-on requires that you use the Solspace Bridge software with\nExpressionEngine 1.x. It is included with your download in a separate\nfolder. Additionally, Calendar includes the Code Pack module software to\ninstall the Calendar Code Pack sample templates and data (optional).</p>\n\n<ul>\n<li>Within the <strong>/EE1/system/</strong> directory, copy the <em>bridge</em> folder into your\nsites'' <strong>./system/</strong> directory.</li>\n<li>Within the <strong>/EE1/system/modules/</strong> directory, copy all folders into\nyour sites'' <strong>./system/modules/</strong> directory.</li>\n<li>Within the <strong>/EE1/system/extensions/</strong> directory, copy all folders and\nfiles into your sites'' <strong>./system/extensions/</strong> directory.</li>\n<li>Within the <strong>/EE1/system/language/english/</strong> directory, copy the\n<strong>lang.calendar_code_pack.php</strong> file into your sites''\n<strong>./system/language/english/</strong> directory.</li>\n<li>Within the <strong>/EE1/themes/</strong> directory, copy all folders into your sites\n<strong>./themes/</strong> directory.</li>\n</ul>\n\n<p><a name="2"></a></p>\n\n<h3>2. Updating the Add-On</h3>\n\n<ul>\n<li>Go to the Modules tab in the ExpressionEngine Control Panel and\nclick the link for <em>Calendar</em></li>\n<li>Click the <strong>Update</strong> link now displayed in the module''s control panel.</li>\n<li>If an update has been made to the Code Pack module, repeat the same\nsteps as above, but with the <em>Code Pack</em> module.</li>\n</ul>\n\n<p>If you''re installing the Calendar Code Pack for the first time, <a href="installation.html#code_pack_ee1">click\nhere for setup instructions</a>.</p>\n\n<p><a name="3"></a></p>\n\n<h3>3. Troubleshooting and Support</h3>\n\n<p>For Support and Troubleshooting, visit the <a href="http://www.solspace.com/forums/">Solspace Support\nForums</a>.</p>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(47, 1, 4, 'week', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Week | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Week</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li class="current"><a href="week.html">Week</a></li>\n<li><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:Week</em> loop outputs a one week calendar list showing a\nspecific weeks events. It''s a shortcut to using the complex\n<a href="calendar.html" title="Calendar:Cal Documentation">Calendar:Cal</a>\nfunction. Unlike most ExpressionEngine tags, the\n<strong>{exp:calendar:week}{/exp:calendar:week}</strong> tags alone will output a\npre-templated display. Using the parameters and variables below, you can\nfilter and format the results further. Defaults to displaying events for\ncurrent week.</p>\n\n<pre class="brush: html;">{exp:calendar:week} content {/exp:calendar:week} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#conditionals">Conditionals</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>The following parameters are available for use:</p>\n\n<ul>\n<li><a href="#site_id">site_id</a></li>\n<li><a href="#calendar_id">calendar_id</a></li>\n<li><a href="#calendar_name">calendar_name</a></li>\n<li><a href="#event_id">event_id</a></li>\n<li><a href="#event_name">event_name</a></li>\n<li><a href="#first_day_of_week">first_day_of_week</a></li>\n<li><a href="#date_range_start">date_range_start</a></li>\n<li><a href="#enable">enable</a></li>\n</ul>\n\n<p><a name="site_id"></a></p>\n\n<h3>site_id=</h3>\n\n<pre class="brush: html;">site_id="1" </pre>\n\n<p>If using MSM, you can specify a Site ID in this parameter to filter\nentries down to that site.</p>\n\n<p><a name="calendar_id"></a></p>\n\n<h3>calendar_id=</h3>\n\n<pre class="brush: html;">calendar_id="1|3" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir entry ID(s). You can hardcode a calendar ID, pass it through an\nembed, or grab it from the URI. Seperate multiples with the pipe\ncharacter.</p>\n\n<p><a name="calendar_name"></a></p>\n\n<h3>calendar_name=</h3>\n\n<pre class="brush: html;">calendar_name="soccer|baseball|dodgeball" </pre>\n\n<p>This parameter allows you to display specific calendars by specifying\ntheir short_names (entry url_title). You can hardcode a short_name,\npass it through an embed, or grab it from the URI. Seperate multiples\nwith the pipe character.</p>\n\n<p><a name="event_id"></a></p>\n\n<h3>event_id=</h3>\n\n<pre class="brush: html;">event_id="23|77" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nentry ID(s). You can hardcode an event ID, pass it through an embed, or\ngrab it from the URI. Seperate multiples with the pipe character.</p>\n\n<p><a name="event_name"></a></p>\n\n<h3>event_name=</h3>\n\n<pre class="brush: html;">event_name="best_event_evar|christmas|pie_day" </pre>\n\n<p>This parameter allows you to display specific events by specifying their\nshort_names (entry url_title). You can hardcode a short_name, pass it\nthrough an embed, or grab it from the URI. Seperate multiples with the\npipe character.</p>\n\n<p><a name="first_day_of_week"></a></p>\n\n<h3>first_day_of_week=</h3>\n\n<pre class="brush: html;">first_day_of_week="0" </pre>\n\n<p>By default, Calendar considers Sunday as the first day of the week. This\nparameter allows you to override that by specifying the numeric value of\na weekday (ex: Sunday = <strong>0</strong>, Monday = <strong>1</strong>, etc).</p>\n\n<p><a name="date_range_start"></a></p>\n\n<h3>date_range_start=</h3>\n\n<pre class="brush: html;">date_range_start="2010-01-31" </pre>\n\n<p>This parameter allows you to specify a specific week to display events\nfor. For weeks, you would normally specify the starting day of the week,\nso usually a Sunday. However, if you specify a weekday within a week\nrange, the Week function will load the week the day you specify is in.\nIf this parameter is NOT specified, then the current week is displayed.\nBoth <a href="date_formatting.html" title="Date Formatting Documentation">standard and easy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="enable"></a></p>\n\n<h3>enable=</h3>\n\n<pre class="brush: html;">enable="categories|category_fields|custom_fields|member_data|pagination" </pre>\n\n<p>By default, this function does not grab any advanced weblog data in\norder to improve performance. However, opposite to the EE Channel\nmodule''s\n<a href="http://ellislab.com/expressionengine/user-guide/modules/channel/channel_entries.html#disable" title="EE Channel module Documentation">disable</a>\nparameter, this parameter allows you to enable some or all of those\nfeatures when you need them. Seperate multiples with the pipe character.\nOptions are: <strong>categories</strong>, <strong>category_fields</strong>, <strong>custom_fields</strong>, <strong>member_data</strong> and <strong>pagination</strong>.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>Most of the <a href="events.html#variables" title="Calendar:Events Documentation">variables listed in\nCalendar:Events</a>\nare available for use here. Formatting variables are not needed as the\n<em>Calendar:Week</em> loop will do that for you. However, should you need to\nuse any, all relevant <a href="calendar.html#variables" title="Calendar:Cal Documentation">variables from\nCalendar:Cal</a>\n(prepended with <em>week_</em>) are available for use here.</p>\n\n<p><a name="conditionals"></a></p>\n\n<h2>Conditionals</h2>\n\n<p>Most of the <a href="events.html#conditionals" title="Calendar:Events Documentation">conditionals listed in\nCalendar:Events</a>\nare available for use here. Formatting conditionals are not needed as\nthe <em>Calendar:Week</em> loop will do that for you. However, should you need\nto use any, all relevant <a href="calendar.html#conditionals" title="Calendar:Cal Documentation">conditionals from\nCalendar:Cal</a>\n(prepended with <em>week_</em>) are available for use here.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p><a name="easy"></a></p>\n\n<h3>Easy</h3>\n\n<p>This single set of code will output a Weekly list of events for you.\nThis is thanks to the preloaded template pack included with Calendar.\nThe <strong>{exp:calendar:week}{/exp:calendar:week}</strong> tags act almost like an\n<strong>{events}{/events}</strong> variable pair for formatting the events (see\n<a href="events.html">Calendar:Events Documentation</a> for list of\navailable variables and conditionals):</p>\n\n<pre class="brush: html;">{exp:calendar:week\n    {if segment_3}\n        date_range_start="{segment_3}-{segment_4}-{segment_5}" \n        date_range_end="{segment_3}-{segment_4}-{segment_5}"\n    {/if}\n}\n    &lt;div class="event"&gt;\n        &lt;a href="{path=''calendar/events''}/{event_id}/"&gt;\n            {event_title}\n        &lt;/a&gt;\n        {if event_all_day}\n            (All day!)\n        {if:else}\n            {event_start_date format="%g:%i%a"} - \n            {event_end_date format="%g:%i%a"}\n        {/if}\n    &lt;/div&gt;\n{/exp:calendar:week}\n</pre>\n\n<p><a name="advanced"></a></p>\n\n<h3>Advanced</h3>\n\n<p>If you’re interested in working the code from scratch, you’ll need to\nuse the full <a href="calendar.html">Calendar:Cal</a> function to generate\nthe code:</p>\n\n<pre class="brush: html;">{exp:calendar:cal \n    enable="custom_fields" \n    pad_short_weeks="y" \n    {if segment_3 == ''''}\n        date_range_start="0 weeks begin"\n    {/if}\n    {if segment_3 != ''''}\n        date_range_start="{segment_3}-{segment_4}-{segment_5}"\n        date_range_end="{segment_3}-{segment_4}-{segment_5}"\n    {/if}\n}\n    {display_each_week}\n        &lt;div class="header"&gt;\n            &lt;div style="float: left; width: 20%;"&gt; \n                &lt;a href="{path=''calendar/week''}/{prev_week format="%Y/%m/%d"}/"&gt;Last Week&lt;/a&gt;\n            &lt;/div&gt;\n            &lt;div style="float: left; width: 60%; text-align: center;"&gt;\n                &lt;h1&gt;Week of {date format="%l, %F %d, %Y"}&lt;/h1&gt;\n            &lt;/div&gt;\n            &lt;div style="float: right; text-align: right; width: 20%;"&gt;\n                &lt;a href="{path=''calendar/week''}/{next_week format="%Y/%m/%d"}/"&gt;Next Week&lt;/a&gt;\n            &lt;/div&gt;\n            &lt;br style="clear: both;" /&gt;\n        &lt;/div&gt;\n        {display_each_day}\n        &lt;div class="day"&gt;\n            &lt;h2&gt;\n                &lt;a href="{path=''calendar/day''}/{date format="%Y/%m/%d"}/"&gt;\n                    {date format="%l, %F %j, %Y"}\n                &lt;/a&gt;\n            &lt;/h2&gt;\n            &lt;ul&gt;\n            {if day_event_total == 0}\n                &lt;li&gt;No events today.&lt;/li&gt;\n            {/if}\n            {events}\n                &lt;li class="event"&gt;\n                    &lt;a href="{path=''calendar/events''}/{event_id}/"&gt;\n                        {event_title}\n                    &lt;/a&gt;\n                    {if event_all_day}\n                        (All day!)\n                    {if:else}\n                        {event_start_date format="%g:%i%a"} - \n                        {event_end_date format="%g:%i%a"}\n                    {/if}            \n                &lt;/li&gt;         \n            {/events}\n            &lt;/ul&gt;\n        &lt;/div&gt;   \n        {/display_each_day}\n    {/display_each_week}\n{/exp:calendar:cal}\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0),
(48, 1, 4, 'year_list', 'y', 'webpage', '<!DOCTYPE html>\n<!--[if lt IE 7]>		<html class="no-js ie6"> <![endif]-->\n<!--[if IE 7]>			<html class="no-js ie7"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie8"> <![endif]-->\n<!--[if IE 8]>			<html class="no-js ie9"> <![endif]-->\n<!--[if gt IE 9]><!-->	<html class="no-js"> <!--<![endif]-->\n	<head lang="en">\n		<meta charset="utf-8" />\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n		<title>Year List | Calendar | Solspace Addon Documentation</title>\n		<meta name="description" content="" />\n		<meta name="copyright" content="(c) 2010 Copyright content: Copyright design: Solspace, Inc."/>\n		<meta name="viewport" content="width=device-width" />\n		<link rel="stylesheet" href="assets/css/normalize.css" />\n		<link rel="stylesheet" href="assets/css/main.css" />\n		<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox-1.3.4.css" />\n		<link href="assets/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />\n		<link href="assets/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />\n		<script src="assets/js/modernizr.min.js"></script>\n	</head>\n	<body>\n		<!--[if lt IE 8]>\n			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>\n		<![endif]-->\n\n		<header>\n			<div class="header-inner">\n				<div class="logo">\n					<img src="assets/images/logo.png" />\n				</div>\n\n				<div class="bread_crumbs">\n					<ul class="crumbs">\n						<li class="first"><a href="index.html">Calendar</a></li>\n						<li>Year List</li>\n					</ul>\n				</div>\n			</div>\n		</header>\n\n		<div class="content-wrapper">\n			<nav class="toc">\n				<ul>\n<li><a href="http://www.solspace.com/software/detail/calendar/">More Info | Purchase</a></li>\n<li><a href="change_log.html">Change Log</a></li>\n<li><a href="install_update.html">Install / Update</a></li>\n<li><a href="getting_started.html">Getting Started</a></li>\n<li><a href="control_panel.html">Control Panel</a></li>\n<li><a href="cp_ui.html">CP Publish UI</a></li>\n<li><a href="date_formatting.html">Date Parameter Formatting</a></li>\n<li><a href="group_permissions.html">Group Permissions</a></li>\n<li><a href="channel_form.html">Using with Channel Form</a></li>\n<li><p><a href="extension_hooks.html">Extension Hooks</a></p></li>\n<li class="template_tags"><h3>Template Tags</h3>\n\n<ul>\n<li><a href="calendar.html">Cal</a></li>\n<li><a href="calendars.html">Calendars</a></li>\n<li><a href="date.html">Date</a></li>\n<li><a href="day.html">Day</a></li>\n<li><a href="events.html">Events</a></li>\n<li><a href="icalendar.html">iCalendar</a></li>\n<li><a href="ics_update.html">ICS Update</a></li>\n<li><a href="mini.html">Mini Calendar</a></li>\n<li><a href="month.html">Month</a></li>\n<li><a href="month_list.html">Month List</a></li>\n<li><a href="occurrences.html">Occurrences</a></li>\n<li><a href="week.html">Week</a></li>\n<li class="current"><a href="year_list.html">Year List</a></li>\n</ul></li>\n<li><h3>Requirements</h3><div class="requirements">\n\n<ul>\n<li>EE 2.5.x - 2.8.x</li>\n<li>PHP 5.2+</li>\n<li>MySQL 5+</li>\n</ul></div></li>\n</ul>\n			</nav>\n\n			<article class="docs">\n				<p>The <em>Calendar:Year_List</em> loop outputs an archive list of years for the\npurpose of generating simple lists to link to Year calendars.</p>\n\n<pre class="brush: html;">{exp:calendar:year_list} content {/exp:calendar:year_list} </pre>\n\n<ul>\n<li><a href="#parameters">Parameters</a></li>\n<li><a href="#variables">Variables</a></li>\n<li><a href="#conditionals">Conditionals</a></li>\n<li><a href="#examples">Examples</a></li>\n</ul>\n\n<p><a name="parameters"></a></p>\n\n<h2>Parameters</h2>\n\n<p>The following parameters are available for use:</p>\n\n<ul>\n<li><a href="#date_range_start">date_range_start</a></li>\n<li><a href="#date_range_end">date_range_end</a></li>\n<li><a href="#limit">limit</a></li>\n</ul>\n\n<p><a name="date_range_start"></a></p>\n\n<h3>date_range_start=</h3>\n\n<pre class="brush: html;">date_range_start="2009-01-01" </pre>\n\n<p>Limits output to years on or after this date. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and\neasy-to-use text date\nformatting</a>\napply to this parameter. Default value is <strong>year-01-01</strong>.</p>\n\n<p><a name="date_range_end"></a></p>\n\n<h3>date_range_end=</h3>\n\n<pre class="brush: html;">date_range_end="2012-12-last" </pre>\n\n<p>Limits output to years on or before this date. Both <a href="date_formatting.html" title="Date Formatting Documentation">standard and\neasy-to-use text date\nformatting</a>\napply to this parameter.</p>\n\n<p><a name="limit"></a></p>\n\n<h3>limit=</h3>\n\n<pre class="brush: html;">limit="5" </pre>\n\n<p>This parameter allows you to limit the amount of year results to be\ndisplayed in the list. Default is <strong>100</strong>.</p>\n\n<p><a name="variables"></a></p>\n\n<h2>Variables</h2>\n\n<p>The following variables are available for use:</p>\n\n<ul>\n<li><a href="#year">year</a></li>\n</ul>\n\n<p><a name="year"></a></p>\n\n<h3>year</h3>\n\n<pre class="brush: html;">{year format="%Y"} </pre>\n\n<p>Displays the given year, formatted using EE-style format characters. If\n<em>format=""</em> is not specified, it will parse as <strong>YYYY</strong> (ex: <strong>2009</strong>).</p>\n\n<p><a name="conditionals"></a></p>\n\n<h2>Conditionals</h2>\n\n<p>The following conditionals are available for use:</p>\n\n<ul>\n<li><a href="#if_is_current_year">if is_current_year</a></li>\n<li><a href="#if_is_not_current_year">if is_not_current_year</a></li>\n</ul>\n\n<p><a name="if_is_current_year"></a></p>\n\n<h3>if is_current_year</h3>\n\n<pre class="brush: html;">{if is_current_year}Current Year{/if} </pre>\n\n<p>If the year in the list of results is the current year, this conditional\nwill display it''s contents.</p>\n\n<p><a name="if_is_not_current_year"></a></p>\n\n<h3>if is_not_current_year</h3>\n\n<pre class="brush: html;">{if is_not_current_year}NOT Current Year{/if} </pre>\n\n<p>If the year in the list of results is NOT the current year, this\nconditional will display it''s contents.</p>\n\n<p><a name="examples"></a></p>\n\n<h2>Examples</h2>\n\n<p>The following code will display a list of years during the period of\n2009 - 2012:</p>\n\n<pre class="brush: html;">&lt;ul&gt;\n{exp:calendar:year_list\n    date_range_start="2009-01-01"\n    date_range_end="2012-12-last"\n    limit="100"\n}\n    &lt;li&gt;\n        &lt;a href="{path=''calendar/year''}/{year format="%Y"}/"&gt;\n            {year format="%Y"}\n        &lt;/a&gt;\n    &lt;/li&gt;\n{/exp:calendar:year_list}\n&lt;/ul&gt;\n</pre>\n			</article>\n		</div>\n\n		<script src="assets/js/jquery.min.js"></script>\n		<script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shCore.js"></script>\n		<script src="assets/syntaxhighlighter/scripts/shAutoloader.js"></script>\n		<script src="assets/js/main.js"></script>\n	</body>\n</html>', NULL, 1398879556, 1, 'n', 0, '', 'n', 'n', 'o', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_template_groups`
--

CREATE TABLE IF NOT EXISTS `exp_template_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `group_order` int(3) unsigned NOT NULL,
  `is_site_default` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`),
  KEY `group_name_idx` (`group_name`),
  KEY `group_order_idx` (`group_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `exp_template_groups`
--

INSERT INTO `exp_template_groups` (`group_id`, `site_id`, `group_name`, `group_order`, `is_site_default`) VALUES
(1, 1, 'main', 1, 'y'),
(2, 1, 'calendar_inc', 2, 'n'),
(3, 1, 'calendar_main', 3, 'n'),
(4, 1, 'documentation', 4, 'n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_template_member_groups`
--

CREATE TABLE IF NOT EXISTS `exp_template_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `template_group_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`template_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_template_no_access`
--

CREATE TABLE IF NOT EXISTS `exp_template_no_access` (
  `template_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`template_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_template_routes`
--

CREATE TABLE IF NOT EXISTS `exp_template_routes` (
  `route_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(10) unsigned NOT NULL,
  `route` varchar(512) DEFAULT NULL,
  `route_parsed` varchar(512) DEFAULT NULL,
  `route_required` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`route_id`),
  KEY `template_id` (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_throttle`
--

CREATE TABLE IF NOT EXISTS `exp_throttle` (
  `throttle_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL,
  `locked_out` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`throttle_id`),
  KEY `ip_address` (`ip_address`),
  KEY `last_activity` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_upload_no_access`
--

CREATE TABLE IF NOT EXISTS `exp_upload_no_access` (
  `upload_id` int(6) unsigned NOT NULL,
  `upload_loc` varchar(3) NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`upload_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_upload_prefs`
--

CREATE TABLE IF NOT EXISTS `exp_upload_prefs` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `server_path` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL,
  `allowed_types` varchar(3) NOT NULL DEFAULT 'img',
  `max_size` varchar(16) DEFAULT NULL,
  `max_height` varchar(6) DEFAULT NULL,
  `max_width` varchar(6) DEFAULT NULL,
  `properties` varchar(120) DEFAULT NULL,
  `pre_format` varchar(120) DEFAULT NULL,
  `post_format` varchar(120) DEFAULT NULL,
  `file_properties` varchar(120) DEFAULT NULL,
  `file_pre_format` varchar(120) DEFAULT NULL,
  `file_post_format` varchar(120) DEFAULT NULL,
  `cat_group` varchar(255) DEFAULT NULL,
  `batch_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `exp_upload_prefs`
--

INSERT INTO `exp_upload_prefs` (`id`, `site_id`, `name`, `server_path`, `url`, `allowed_types`, `max_size`, `max_height`, `max_width`, `properties`, `pre_format`, `post_format`, `file_properties`, `file_pre_format`, `file_post_format`, `cat_group`, `batch_location`) VALUES
(1, 1, 'Fotos_problemas', 'C:\\wamp\\www\\gym\\fotos_problemas/', 'http://localhost/gym/fotos_problemas/', 'img', '', '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_user_activation_group`
--

CREATE TABLE IF NOT EXISTS `exp_user_activation_group` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `member_id` (`member_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_user_authors`
--

CREATE TABLE IF NOT EXISTS `exp_user_authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `principal` char(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_user_cache`
--

CREATE TABLE IF NOT EXISTS `exp_user_cache` (
  `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(150) NOT NULL DEFAULT '',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`cache_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_user_category_posts`
--

CREATE TABLE IF NOT EXISTS `exp_user_category_posts` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `member_id` (`member_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_user_keys`
--

CREATE TABLE IF NOT EXISTS `exp_user_keys` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(10) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `hash` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`key_id`),
  KEY `email` (`email`),
  KEY `hash` (`hash`),
  KEY `author_id` (`author_id`),
  KEY `member_id` (`member_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_user_params`
--

CREATE TABLE IF NOT EXISTS `exp_user_params` (
  `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(25) NOT NULL DEFAULT '',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`params_id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `exp_user_params`
--

INSERT INTO `exp_user_params` (`params_id`, `hash`, `entry_date`, `data`) VALUES
(1, 'clNKDkFGwveNwOLsSxdwuiJlb', 1398384763, 'a:10:{s:8:"group_id";s:0:"";s:6:"notify";s:0:"";s:20:"screen_name_override";s:0:"";s:16:"exclude_username";s:0:"";s:11:"require_key";s:0:"";s:15:"key_email_match";s:0:"";s:3:"key";s:0:"";s:13:"secure_action";s:2:"no";s:14:"admin_register";s:2:"no";s:8:"required";s:0:"";}'),
(2, 'hqDZesVAxHueJPCIIowRFkAvZ', 1398384971, 'a:10:{s:8:"group_id";s:1:"6";s:6:"notify";s:0:"";s:20:"screen_name_override";s:0:"";s:16:"exclude_username";s:0:"";s:11:"require_key";s:0:"";s:15:"key_email_match";s:0:"";s:3:"key";s:0:"";s:13:"secure_action";s:2:"no";s:14:"admin_register";s:2:"no";s:8:"required";s:0:"";}'),
(3, 'DTFuEXkNiNwSiSueHVeCwlGtP', 1398385835, 'a:10:{s:8:"group_id";s:1:"6";s:6:"notify";s:0:"";s:20:"screen_name_override";s:0:"";s:16:"exclude_username";s:0:"";s:11:"require_key";s:0:"";s:15:"key_email_match";s:0:"";s:3:"key";s:0:"";s:13:"secure_action";s:2:"no";s:14:"admin_register";s:2:"no";s:8:"required";s:0:"";}'),
(4, 'UwgOdjPLdDtTdeEdiJupTQPJY', 1398386324, 'a:10:{s:8:"group_id";s:1:"6";s:6:"notify";s:0:"";s:20:"screen_name_override";s:0:"";s:16:"exclude_username";s:0:"";s:11:"require_key";s:0:"";s:15:"key_email_match";s:0:"";s:3:"key";s:0:"";s:13:"secure_action";s:2:"no";s:14:"admin_register";s:2:"no";s:8:"required";s:0:"";}'),
(5, 'arNGyAckUXhLESvzdRPzHOCyp', 1398387397, 'a:10:{s:8:"group_id";s:1:"6";s:6:"notify";s:0:"";s:20:"screen_name_override";s:0:"";s:16:"exclude_username";s:0:"";s:11:"require_key";s:0:"";s:15:"key_email_match";s:0:"";s:3:"key";s:0:"";s:13:"secure_action";s:2:"no";s:14:"admin_register";s:2:"no";s:8:"required";s:0:"";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_user_preferences`
--

CREATE TABLE IF NOT EXISTS `exp_user_preferences` (
  `preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `preference_name` varchar(50) NOT NULL DEFAULT '',
  `preference_value` text,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`preference_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `exp_user_preferences`
--

INSERT INTO `exp_user_preferences` (`preference_id`, `preference_name`, `preference_value`, `site_id`) VALUES
(11, 'email_is_username', 'y', 1),
(12, 'screen_name_override', '', 1),
(13, 'category_groups', '', 1),
(14, 'welcome_email_subject', 'Welcome Email', 1),
(15, 'welcome_email_content', '', 1),
(16, 'user_forgot_username_message', '{screen_name},\n\nPer your request, we have emailed you your username for {site_name} located at {site_url}.\n\nUsername: {username}', 1),
(17, 'member_update_admin_notification_template', '', 1),
(18, 'member_update_admin_notification_emails', '', 1),
(19, 'key_expiration', '7', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_user_search`
--

CREATE TABLE IF NOT EXISTS `exp_user_search` (
  `search_id` varchar(32) NOT NULL DEFAULT '',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `search_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `categories` text,
  `member_ids` text,
  `fields` text,
  `cfields` text,
  `query` text,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_user_welcome_email_list`
--

CREATE TABLE IF NOT EXISTS `exp_user_welcome_email_list` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_sent` char(1) NOT NULL DEFAULT 'n',
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_whitelisted`
--

CREATE TABLE IF NOT EXISTS `exp_whitelisted` (
  `whitelisted_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `whitelisted_type` varchar(20) DEFAULT NULL,
  `whitelisted_value` longtext,
  PRIMARY KEY (`whitelisted_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_wikis`
--

CREATE TABLE IF NOT EXISTS `exp_wikis` (
  `wiki_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `wiki_label_name` varchar(100) NOT NULL,
  `wiki_short_name` varchar(50) NOT NULL,
  `wiki_text_format` varchar(50) NOT NULL,
  `wiki_html_format` varchar(10) NOT NULL,
  `wiki_upload_dir` int(3) unsigned NOT NULL DEFAULT '0',
  `wiki_admins` text,
  `wiki_users` text,
  `wiki_revision_limit` int(8) unsigned NOT NULL,
  `wiki_author_limit` int(5) unsigned NOT NULL,
  `wiki_moderation_emails` text,
  PRIMARY KEY (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_wiki_categories`
--

CREATE TABLE IF NOT EXISTS `exp_wiki_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wiki_id` int(8) unsigned NOT NULL,
  `cat_name` varchar(70) NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `cat_namespace` varchar(125) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_wiki_category_articles`
--

CREATE TABLE IF NOT EXISTS `exp_wiki_category_articles` (
  `page_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`page_id`,`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_wiki_namespaces`
--

CREATE TABLE IF NOT EXISTS `exp_wiki_namespaces` (
  `namespace_id` int(6) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(10) unsigned NOT NULL,
  `namespace_name` varchar(100) NOT NULL,
  `namespace_label` varchar(150) NOT NULL,
  `namespace_users` text,
  `namespace_admins` text,
  PRIMARY KEY (`namespace_id`),
  KEY `wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_wiki_page`
--

CREATE TABLE IF NOT EXISTS `exp_wiki_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wiki_id` int(3) unsigned NOT NULL,
  `page_name` varchar(100) NOT NULL,
  `page_namespace` varchar(125) NOT NULL DEFAULT '',
  `page_redirect` varchar(100) DEFAULT NULL,
  `page_locked` char(1) NOT NULL DEFAULT 'n',
  `page_moderated` char(1) NOT NULL DEFAULT 'n',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `last_revision_id` int(10) DEFAULT NULL,
  `has_categories` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`page_id`),
  KEY `wiki_id` (`wiki_id`),
  KEY `page_locked` (`page_locked`),
  KEY `page_moderated` (`page_moderated`),
  KEY `has_categories` (`has_categories`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_wiki_revisions`
--

CREATE TABLE IF NOT EXISTS `exp_wiki_revisions` (
  `revision_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `wiki_id` int(3) unsigned NOT NULL,
  `revision_date` int(10) unsigned NOT NULL,
  `revision_author` int(8) NOT NULL,
  `revision_notes` text NOT NULL,
  `revision_status` varchar(10) NOT NULL DEFAULT 'open',
  `page_content` mediumtext NOT NULL,
  PRIMARY KEY (`revision_id`),
  KEY `page_id` (`page_id`),
  KEY `wiki_id` (`wiki_id`),
  KEY `revision_author` (`revision_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_wiki_search`
--

CREATE TABLE IF NOT EXISTS `exp_wiki_search` (
  `wiki_search_id` varchar(32) NOT NULL,
  `search_date` int(10) NOT NULL,
  `wiki_search_query` text,
  `wiki_search_keywords` varchar(150) NOT NULL,
  PRIMARY KEY (`wiki_search_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_wiki_uploads`
--

CREATE TABLE IF NOT EXISTS `exp_wiki_uploads` (
  `wiki_upload_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wiki_id` int(3) unsigned NOT NULL,
  `file_name` varchar(60) NOT NULL,
  `file_hash` varchar(32) NOT NULL,
  `upload_summary` text,
  `upload_author` int(8) NOT NULL,
  `image_width` int(5) unsigned NOT NULL,
  `image_height` int(5) unsigned NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `file_size` int(10) unsigned NOT NULL DEFAULT '0',
  `upload_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wiki_upload_id`),
  KEY `wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
