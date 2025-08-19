-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7034
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para rigola
CREATE DATABASE IF NOT EXISTS `rigola` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `rigola`;

-- Volcando estructura para tabla rigola.abuse_reports
CREATE TABLE IF NOT EXISTS `abuse_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reporting_user_id` int(11) NOT NULL,
  `reported_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.abuse_reports: 0 rows
/*!40000 ALTER TABLE `abuse_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `abuse_reports` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.banners
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html_code` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla rigola.banners: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.blocked_user
CREATE TABLE IF NOT EXISTS `blocked_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `block_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.blocked_user: 0 rows
/*!40000 ALTER TABLE `blocked_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocked_user` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.bots
CREATE TABLE IF NOT EXISTS `bots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `gender` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `age` int(11) NOT NULL,
  `joining` datetime NOT NULL,
  `photo_id` varchar(255) NOT NULL,
  `enable` int(11) NOT NULL,
  `user_ids` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla rigola.bots: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.chats
CREATE TABLE IF NOT EXISTS `chats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `notify_status` int(11) NOT NULL,
  `message` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.chats: 0 rows
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla rigola.contacts: 0 rows
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.credithistory
CREATE TABLE IF NOT EXISTS `credithistory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `transaction_id` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=366 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.credithistory: 10 rows
/*!40000 ALTER TABLE `credithistory` DISABLE KEYS */;
INSERT INTO `credithistory` (`id`, `user_id`, `balance`, `amount`, `type`, `created_at`, `updated_at`, `transaction_id`) VALUES
	(356, 21105, 11, 5, 'app.userlogin', '2025-08-17 16:25:33', '2025-08-17 16:25:33', 'N/A'),
	(357, 21105, 16, 5, 'app.userlogin', '2025-08-17 16:26:31', '2025-08-17 16:26:31', 'N/A'),
	(358, 21105, 21, 5, 'app.userlogin', '2025-08-18 12:57:16', '2025-08-18 12:57:16', 'N/A'),
	(359, 21105, 26, 5, 'app.userlogin', '2025-08-18 13:57:51', '2025-08-18 13:57:51', 'N/A'),
	(360, 21105, 31, 5, 'app.userlogin', '2025-08-18 15:14:59', '2025-08-18 15:14:59', 'N/A'),
	(361, 21106, 11, 5, 'app.userlogin', '2025-08-19 10:31:12', '2025-08-19 10:31:12', 'N/A'),
	(362, 21105, 36, 5, 'app.userlogin', '2025-08-19 10:31:51', '2025-08-19 10:31:51', 'N/A'),
	(363, 21105, 41, 5, 'app.userlogin', '2025-08-19 11:39:09', '2025-08-19 11:39:09', 'N/A'),
	(364, 21105, 46, 5, 'app.userlogin', '2025-08-19 12:43:34', '2025-08-19 12:43:34', 'N/A'),
	(365, 21105, 51, 5, 'app.userlogin', '2025-08-19 13:45:41', '2025-08-19 13:45:41', 'N/A');
/*!40000 ALTER TABLE `credithistory` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.credits
CREATE TABLE IF NOT EXISTS `credits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21044 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.credits: 2 rows
/*!40000 ALTER TABLE `credits` DISABLE KEYS */;
INSERT INTO `credits` (`id`, `user_id`, `balance`, `created_at`, `updated_at`) VALUES
	(21042, 21105, 51, '2025-08-17 14:21:03', '2025-08-19 13:45:41'),
	(21043, 21106, 11, '2025-08-19 10:30:29', '2025-08-19 10:31:12');
/*!40000 ALTER TABLE `credits` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.czars
CREATE TABLE IF NOT EXISTS `czars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `last_ip` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla rigola.czars: 1 rows
/*!40000 ALTER TABLE `czars` DISABLE KEYS */;
INSERT INTO `czars` (`id`, `username`, `password`, `created_at`, `updated_at`, `last_login`, `last_ip`) VALUES
	(5, 'admin', '$2a$08$3ahZkyif19pORxaDdXeOhuwQPdf6DeRvVhf0seUDHW6.GtTyO7n9S', '2025-08-06 13:53:09', '2025-08-17 15:14:23', '2025-08-17 15:14:23', '192.168.1.1');
/*!40000 ALTER TABLE `czars` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.encounters
CREATE TABLE IF NOT EXISTS `encounters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.encounters: 0 rows
/*!40000 ALTER TABLE `encounters` DISABLE KEYS */;
/*!40000 ALTER TABLE `encounters` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.favorites
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user` int(10) unsigned NOT NULL,
  `to_user` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla rigola.favorites: 0 rows
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.gifts
CREATE TABLE IF NOT EXISTS `gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `icon_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla rigola.gifts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.interests
CREATE TABLE IF NOT EXISTS `interests` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla rigola.interests: 0 rows
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.interest_categories
CREATE TABLE IF NOT EXISTS `interest_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla rigola.interest_categories: 0 rows
/*!40000 ALTER TABLE `interest_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `interest_categories` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.meetme
CREATE TABLE IF NOT EXISTS `meetme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.meetme: 0 rows
/*!40000 ALTER TABLE `meetme` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetme` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `notify_status` int(11) NOT NULL,
  `type` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=377 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.notifications: 0 rows
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.packages
CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `credits` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.packages: 2 rows
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` (`id`, `credits`, `cost`, `created_at`, `updated_at`) VALUES
	(12, 50, 50, '2014-02-23 15:19:48', '2014-02-23 15:19:48'),
	(16, 10, 10, '2014-02-23 15:21:24', '2014-02-23 15:21:24');
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.photos
CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` float NOT NULL,
  `no_users` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.photos: 0 rows
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.photo_comments
CREATE TABLE IF NOT EXISTS `photo_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `album_id` int(11) unsigned NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla rigola.photo_comments: 0 rows
/*!40000 ALTER TABLE `photo_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo_comments` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.photo_rater
CREATE TABLE IF NOT EXISTS `photo_rater` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `photo_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.photo_rater: 0 rows
/*!40000 ALTER TABLE `photo_rater` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo_rater` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.profiles
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `relationshipstatus` int(11) NOT NULL DEFAULT 0,
  `bodytype` int(11) NOT NULL DEFAULT 0,
  `haircolor` int(11) NOT NULL DEFAULT 0,
  `eyecolor` int(11) NOT NULL DEFAULT 0,
  `living` int(11) NOT NULL DEFAULT 0,
  `smoking` int(11) NOT NULL DEFAULT 0,
  `drinking` int(11) NOT NULL DEFAULT 0,
  `education` int(11) NOT NULL DEFAULT 0,
  `children` int(11) NOT NULL DEFAULT 0,
  `aboutme` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interestedin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `popularity` int(11) NOT NULL,
  `whyamihere` int(11) NOT NULL,
  `preferred_gender` int(1) NOT NULL,
  `preferred_age` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21058 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.profiles: 2 rows
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` (`id`, `user_id`, `relationshipstatus`, `bodytype`, `haircolor`, `eyecolor`, `living`, `smoking`, `drinking`, `education`, `children`, `aboutme`, `interestedin`, `created_at`, `updated_at`, `popularity`, `whyamihere`, `preferred_gender`, `preferred_age`) VALUES
	(21056, 21105, 1, 4, 0, 0, 0, 0, 0, 0, 0, '', '', '2025-08-17 14:21:03', '2025-08-19 14:20:20', 0, 1, 2, 3),
	(21057, 21106, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2025-08-19 10:30:29', '2025-08-19 10:30:29', 0, 1, 2, 3);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.reward_packages
CREATE TABLE IF NOT EXISTS `reward_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `credits` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.reward_packages: ~7 rows (aproximadamente)
INSERT INTO `reward_packages` (`id`, `reason`, `credits`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'user.visit.profile', 20, 1, '0000-00-00 00:00:00', '2014-03-29 21:42:31'),
	(2, 'user.profile.visited', 10, 1, '0000-00-00 00:00:00', '2014-03-29 21:42:31'),
	(3, 'message.request.send', 10, 1, '0000-00-00 00:00:00', '2014-03-29 21:42:31'),
	(5, 'user.encounter.yes', 20, 1, '0000-00-00 00:00:00', '2014-03-29 21:42:31'),
	(6, 'album.photo.upload', 10, 1, '0000-00-00 00:00:00', '2014-03-29 21:42:31'),
	(7, 'profile.photo.upload', 15, 1, '0000-00-00 00:00:00', '2014-03-29 21:42:31'),
	(8, 'user.login', 5, 1, '0000-00-00 00:00:00', '2014-03-29 21:42:31');

-- Volcando estructura para tabla rigola.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  `data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.sessions: 12 rows
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `last_activity`, `data`, `user_id`) VALUES
	('it8H1xbAYmqVyuqpPAJ4qGl98XDgHaVG65FXz3NP', 1755612004, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"aTJnP9k4OLF3Skloyl52mw3g89xqyeRoAyZtWWG1";}', 0),
	('SVMZwGClfaesWYQ4GZNuumTPN8CrtRJVpclK7roj', 1755612731, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"RfEQHfV06ojBRublOh6lXKvm1ngsXxpGZn1Kmoly";}', 0),
	('5dq2cp6yZi7cvCCUhUVDrzYMvTheh1QHzEHmo5mJ', 1755612731, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"ZQiWxpGbXdEBS4H1xiNZBhkjdFR5SItU2z3Z8cK7";}', 0),
	('zoTXYoDIj5B960tYZ8emMYUDEgiCTnLQiC8vr1uJ', 1755610639, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"Wbj2FKun18kR91l0X8GTnKptW5xNOtmXFIHEibI0";}', 0),
	('bxnucZyPYOAO0oGxqLuBn9lbv0mJoUwP8wZdh43F', 1755612023, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"BarCi9nwNi1KHqVmf3Xfk7VkdJ93gvDGG2wLUsWI";}', 0),
	('sRxBEYhSbz1rcLqHmMsMqdkZUY4choEFJ5IBpRz0', 1755613478, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"3IW60YWResLfjuGZGcau9VTjR7xqz9NtFTEkQ2zx";}', 0),
	('LCiLG3da42rQ1PPbNTEvOAngm4BulmXlBw2rVfVR', 1755612983, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"3903n9xkxOUfqIVCKyymTQRVXPbVzU6dwbLGxAzW";}', 0),
	('GaKsRNPNpTULJncAvuf7cm5YnQG5XlRj0KVdCpSQ', 1755613818, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"EfS5iyal9UsSOOf8HOH7AoAdTvcsAdcDuQwuoV0O";}', 0),
	('KDAazB5b8NzFX7UrjpextxvFhPErIsDimM1cCxMd', 1755612703, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"fHbzLzkUaM29u67an3RtFSXUgbddBhwhA6IRQtpy";}', 0),
	('MVGcNb8r65Fnxj5cMT79uQ11Y4WELHxuFEHJ9NoK', 1755613073, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"MCRrpc8neyPHyVscNSU1hUpgStOTLQO2mVFYz1RY";}', 0),
	('20dOTfTv505zV6X8GyXkafp0uRCIb941GlvXlFig', 1755613216, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"7v0HARsQWyj1r1bVzQYCEERs4R4IAWIGy9lv52ck";}', 0),
	('7GXtl7oCmtkaRsctWfMdUxTZMXZkaVUZCVO0pEHo', 1755614063, 'a:5:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"sy474SVejr9L5MfT52ohADCNrudA14td6KMrsBGJ";s:20:"session_captcha_hash";s:60:"$2a$08$rEnrnzYoWWcbGf3l0IpFROYyuITtqJEF1ppo48KydMkuPTJyw624O";s:35:"laravel_auth_drivers_eloquent_login";i:21105;}', 21105);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.settings: 122 rows
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
	(4, 'language', 'en', '2013-09-07 15:50:28', '2013-12-09 02:09:55'),
	(5, 'title', 'Sentir Chat', '2013-09-07 16:12:40', '2025-08-06 13:53:09'),
	(8, 'fbid', '1448925048715437', '2013-10-02 13:00:47', '2025-08-08 11:10:45'),
	(9, 'fbsecret', 'lita1932*', '2013-10-02 13:00:47', '2025-08-08 11:10:45'),
	(10, 'defaultcredits', '6', '2013-10-02 13:28:21', '2014-02-23 15:21:43'),
	(11, 'isenabled', '-1', '2013-10-02 13:28:21', '2014-03-24 15:49:09'),
	(12, 'iscredits', '-1', '2013-10-02 13:32:59', '2014-03-24 15:49:09'),
	(13, 'isspotlight', '0', '2013-10-02 14:01:49', '2014-03-28 10:53:42'),
	(14, 'issuperpower', '0', '2013-10-02 14:01:49', '2014-03-28 10:53:42'),
	(15, 'theme', 'metronic', '2013-10-03 16:28:41', '2013-10-03 16:41:22'),
	(16, 'paypalusername', '', '2013-10-05 08:43:12', '2014-03-29 22:34:51'),
	(17, 'paypalidentitytoken', '', '2013-10-05 08:43:12', '2013-12-25 15:56:58'),
	(46, 'email_notification_disable_user', '1', '2013-11-06 23:59:16', '2014-03-28 12:16:43'),
	(22, 'encounters_without_pic', '-1', '2013-10-18 02:06:06', '2014-03-24 15:49:09'),
	(23, 'email_host', 'smtp.gmail.com', '2013-10-28 12:24:44', '2025-08-07 16:15:59'),
	(24, 'email_port', '465', '2013-10-28 12:24:44', '2025-08-17 13:44:08'),
	(25, 'email_username', 'rac1408@gmail.com', '2013-10-28 12:24:44', '2025-08-17 14:20:50'),
	(26, 'email_password', 'oqql zokx zbey zcom', '2013-10-28 12:24:44', '2025-08-07 16:15:59'),
	(27, 'email_encryption', 'ssl', '2013-10-28 12:24:44', '2013-10-28 12:24:44'),
	(28, 'email_notification_profile_visitor', '1', '2013-10-28 13:12:12', '2014-03-28 12:16:43'),
	(31, 'email_notification_meetme', '1', '2013-10-28 13:12:51', '2014-03-28 12:16:43'),
	(30, 'email_notification_message', '1', '2013-10-28 13:12:12', '2014-03-28 12:16:52'),
	(32, 'email_content_profile_visitor', '[from_username] just visited your profile.\r\n\r\nCheckout their profile -> [from_user_profile_link]', '2013-10-28 15:21:29', '2014-03-28 08:54:22'),
	(33, 'email_content_message', '[from_username] sent you a message!\r\n\r\n[message]', '2013-10-29 08:19:25', '2014-03-28 10:58:40'),
	(34, 'email_content_meetme', '[from_username] wants to meet you.\r\n\r\nThis is the profile  [from_user_profile_link]', '2013-10-29 08:19:31', '2014-03-28 09:47:35'),
	(35, 'email_content_forgot_password', '', '2013-10-29 08:19:38', '2013-10-29 08:19:38'),
	(36, 'email_content_email_verification', 'Verify your email\r\n\r\n[verification_no]', '2013-10-29 08:19:43', '2014-03-29 09:57:04'),
	(37, 'widget_profile_right_1', '', '2013-10-29 13:06:59', '2013-10-29 13:35:07'),
	(38, 'widget_profile_right_2', '', '2013-10-29 13:06:59', '2013-10-29 13:35:07'),
	(39, 'widget_profile_right_3', '', '2013-10-29 13:06:59', '2013-10-29 13:35:07'),
	(40, 'widget_encounter_right_1', '', '2013-10-29 13:06:59', '2013-10-29 13:47:37'),
	(41, 'widget_encounter_right_2', '', '2013-10-29 13:06:59', '2013-10-29 13:47:37'),
	(42, 'widget_above_spot_light', '', '2013-10-29 13:06:59', '2013-10-29 15:05:47'),
	(43, 'widget_below_left_side_menu', '', '2013-10-29 13:06:59', '2013-10-29 15:05:47'),
	(45, 'from_email', 'info@sentirchat.com', '2013-10-30 12:04:20', '2025-08-07 16:15:59'),
	(47, 'email_notification_delete_photo', '0', '2013-11-06 23:59:16', '2013-11-28 17:15:28'),
	(48, 'email_notification_delete_user', '1', '2013-11-07 00:26:07', '2014-03-28 12:16:43'),
	(49, 'email_notification_profile_visitor', '-1', '2013-11-07 04:29:56', '2014-03-24 15:49:09'),
	(50, 'email_notification_want_to_meet', '-1', '2013-11-07 04:29:56', '2014-03-24 15:49:09'),
	(51, 'email_notification_message', '-1', '2013-11-07 04:29:56', '2014-03-24 15:49:09'),
	(52, 'email_notification_profile_visitor', '-1', '2013-11-07 04:30:33', '2014-03-24 15:49:09'),
	(53, 'email_notification_want_to_meet', '-1', '2013-11-07 04:30:33', '2014-03-24 15:49:09'),
	(54, 'email_notification_message', '-1', '2013-11-07 04:30:33', '2014-03-24 15:49:09'),
	(55, 'email_notification_profile_visitor', '0', '2013-11-07 04:30:46', '2013-11-07 04:30:46'),
	(56, 'email_notification_message', '0', '2013-11-07 04:30:46', '2013-11-07 04:30:46'),
	(57, 'email_notification_want_to_meet', '0', '2013-11-07 04:30:46', '2013-11-07 04:30:46'),
	(58, 'email_notification_profile_visitor', '-1', '2013-11-07 04:32:05', '2014-03-24 15:49:09'),
	(59, 'email_notification_want_to_meet', '-1', '2013-11-07 04:32:05', '2014-03-24 15:49:09'),
	(60, 'email_notification_message', '-1', '2013-11-07 04:32:05', '2014-03-24 15:49:09'),
	(61, 'email_notification_profile_visitor', '0', '2013-11-07 04:32:09', '2013-11-07 04:32:09'),
	(62, 'email_notification_message', '-1', '2013-11-07 04:32:09', '2014-03-24 15:49:09'),
	(63, 'email_notification_want_to_meet', '-1', '2013-11-07 04:32:09', '2014-03-24 15:49:09'),
	(64, 'email_notification_profile_visitor', '-1', '2013-11-07 04:32:09', '2014-03-24 15:49:09'),
	(65, 'email_notification_want_to_meet', '-1', '2013-11-07 04:32:09', '2014-03-24 15:49:09'),
	(66, 'email_notification_message', '-1', '2013-11-07 04:32:09', '2014-03-24 15:49:09'),
	(67, 'email_notification_profile_visitor', '-1', '2013-11-07 04:32:18', '2014-03-24 15:49:09'),
	(68, 'email_notification_message', '-1', '2013-11-07 04:32:18', '2014-03-24 15:49:09'),
	(69, 'email_notification_want_to_meet', '0', '2013-11-07 04:32:18', '2013-11-07 04:32:18'),
	(70, 'email_notification_profile_visitor', '-1', '2013-11-07 04:32:18', '2014-03-24 15:49:09'),
	(71, 'email_notification_want_to_meet', '-1', '2013-11-07 04:32:18', '2014-03-24 15:49:09'),
	(72, 'email_notification_message', '-1', '2013-11-07 04:32:18', '2014-03-24 15:49:09'),
	(73, 'email_notification_send_message_request', '-1', '2013-11-07 06:36:27', '2014-03-24 15:49:09'),
	(74, 'email_notification_accept_message_request', '-1', '2013-11-07 06:36:27', '2014-03-24 15:49:09'),
	(75, 'isrewards', '1', '2013-11-07 11:57:32', '2014-03-28 10:54:37'),
	(76, 'istopup', '-1', '2013-11-07 12:35:40', '2014-03-24 15:49:09'),
	(78, 'encounters_min_album_pics', '0', '2013-11-17 09:38:29', '2013-11-17 09:38:29'),
	(79, 'photorater_min_photo_to_rate', '0', '2013-11-17 09:38:29', '2013-11-17 09:38:29'),
	(80, 'photorater_min_photo_to_get_rated', '-1', '2013-11-17 09:38:29', '2014-03-24 15:49:09'),
	(81, 'email_notification_comment_photo', '1', '2013-11-17 12:07:28', '2014-03-28 12:16:43'),
	(82, 'email_notification_rate_photo', '1', '2013-11-17 12:07:28', '2014-03-28 12:16:43'),
	(83, 'email_content_rate_photo', '[from_username] rated your photo', '2013-11-17 12:12:48', '2014-03-29 16:56:20'),
	(84, 'email_subject_rate_photo', 'Rated your photo', '2013-11-17 12:12:48', '2014-03-29 16:56:20'),
	(85, 'email_content_comment_photo', '', '2013-11-17 12:12:55', '2013-11-17 12:12:55'),
	(86, 'email_subject_comment_photo', '', '2013-11-17 12:12:55', '2013-11-17 12:12:55'),
	(104, 'search_engine_access', '0', '2013-12-25 15:52:17', '2014-02-22 13:05:41'),
	(87, 'email_content_delete_user', '', '2013-11-28 16:02:03', '2013-11-28 16:02:03'),
	(88, 'email_subject_delete_user', '', '2013-11-28 16:02:03', '2013-11-28 16:02:03'),
	(89, 'email_content_disable_user', '', '2013-11-28 16:09:26', '2013-11-28 16:09:26'),
	(90, 'email_subject_disable_user', '', '2013-11-28 16:09:26', '2013-11-28 16:09:26'),
	(91, 'email_subject_email_verification', 'Verify Your Email', '2013-11-28 17:00:47', '2014-03-29 09:57:04'),
	(92, 'email_subject_meetme', 'Someone wants to meet you', '2013-11-28 17:01:12', '2014-03-28 09:47:35'),
	(93, 'email_content_accept_message_request', '', '2013-11-28 17:01:17', '2013-11-28 17:01:17'),
	(94, 'email_subject_accept_message_request', '', '2013-11-28 17:01:17', '2013-11-28 17:01:17'),
	(95, 'email_subject_profile_visitor', 'Someone visited your profile', '2013-11-28 17:01:23', '2014-03-28 08:54:22'),
	(96, 'email_content_send_message_request', 'm', '2013-11-28 17:01:29', '2014-03-09 14:31:46'),
	(97, 'email_subject_send_message_request', '', '2013-11-28 17:01:29', '2013-11-28 17:01:29'),
	(98, 'email_content_delete_photo', '', '2013-11-28 17:08:45', '2013-11-28 17:08:45'),
	(99, 'email_subject_delete_photo', '', '2013-11-28 17:08:45', '2013-11-28 17:08:45'),
	(100, 'email_subject_forgot_password', '', '2013-11-28 17:14:57', '2013-11-28 17:14:57'),
	(102, 'meta_keywords', '', '2013-12-25 15:20:59', '2014-03-29 22:35:03'),
	(103, 'meta_description', '', '2013-12-25 15:20:59', '2013-12-25 15:56:58'),
	(118, 'favicon', '0', '2014-02-22 12:39:25', '2014-03-29 22:34:31'),
	(114, 'debug_mode', '-1', '2014-02-22 11:15:37', '2014-03-24 15:49:09'),
	(119, 'description', '', '2014-02-22 13:05:14', '2014-02-22 13:06:58'),
	(120, 'google_ua', '', '2014-02-23 16:13:16', '2014-02-23 16:13:21'),
	(121, 'spotlight_cost', '40', '2014-02-23 17:50:16', '2014-02-23 17:50:16'),
	(122, 'riseup_cost', '22', '2014-02-23 17:50:16', '2014-02-23 17:51:17'),
	(123, 'superpower_cost', '30', '2014-02-23 17:50:16', '2014-02-23 17:50:16'),
	(124, 'user_languages', '{"ar":1,"bg":1,"de":1,"en":1,"es":1,"fr":1,"he":1,"hu":1,"it":1,"pt":1,"ru":1}', '2014-03-09 09:08:37', '2025-08-06 13:53:12'),
	(125, 'default_language', 'es', '2014-03-09 00:00:00', '2025-08-06 14:44:29'),
	(126, 'facebook_share', '0', '2014-03-09 15:00:48', '2014-03-29 22:36:03'),
	(127, 'no_bot', '0', '2014-03-12 21:59:37', '2014-03-29 22:37:04'),
	(128, 'bot_gender', '0', '2014-03-12 21:59:37', '2014-03-29 22:37:04'),
	(129, 'banner_top_bar', '-1', '2014-03-24 15:49:01', '2014-03-24 15:56:51'),
	(130, 'banner_bottom_bar', '-1', '2014-03-24 15:49:01', '2014-03-24 15:49:01'),
	(131, 'banner_left_side_bar', '-1', '2014-03-24 15:49:01', '2014-03-24 15:49:01'),
	(141, 'email_notification_mutual_attraction', '1', '2014-03-28 12:16:43', '2014-03-28 12:16:43'),
	(138, 'email_content_add_contact', '[from_username] added you as contact', '2014-03-28 10:58:15', '2014-03-28 10:58:15'),
	(132, 'show_superpowers', '1', '2014-03-24 16:32:05', '2014-03-28 10:05:51'),
	(133, 'show_riseup_msg', '1', '2014-03-24 16:32:05', '2014-03-28 10:05:51'),
	(134, 'show_fb_invite', '1', '2014-03-24 16:32:05', '2014-03-28 10:05:51'),
	(135, 'show_photo_rater', '1', '2014-03-24 16:32:05', '2014-03-24 16:32:05'),
	(136, 'show_encounters', '1', '2014-03-24 16:32:05', '2014-03-24 16:32:05'),
	(137, 'frontbackgroundimage', '', '2014-03-27 20:54:25', '2014-03-29 22:37:12'),
	(139, 'email_subject_add_contact', 'Added you as contact', '2014-03-28 10:58:15', '2014-03-28 10:58:15'),
	(140, 'email_subject_message', 'Sent you a message', '2014-03-28 10:58:40', '2014-03-28 10:58:40'),
	(142, 'email_notification_add_contact', '1', '2014-03-28 12:16:43', '2014-03-28 12:16:43'),
	(143, 'email_notification_send_gift', '1', '2014-03-28 12:16:43', '2014-03-28 12:16:43'),
	(144, 'email_content_send_gift', '[from_username] sent you a gift!', '2014-03-29 17:14:58', '2014-03-29 17:14:58'),
	(145, 'email_subject_send_gift', 'You received a gift', '2014-03-29 17:14:58', '2014-03-29 17:14:58'),
	(146, 'email_content_mutual_attraction', '[from_username] wants to meet you too!!', '2014-03-29 18:44:00', '2014-03-29 18:44:00'),
	(147, 'email_subject_mutual_attraction', 'Mutual Attraction', '2014-03-29 18:45:59', '2014-03-29 18:45:59');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.spotlights
CREATE TABLE IF NOT EXISTS `spotlights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.spotlights: 0 rows
/*!40000 ALTER TABLE `spotlights` DISABLE KEYS */;
/*!40000 ALTER TABLE `spotlights` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.superpowers
CREATE TABLE IF NOT EXISTS `superpowers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla rigola.superpowers: 0 rows
/*!40000 ALTER TABLE `superpowers` DISABLE KEYS */;
/*!40000 ALTER TABLE `superpowers` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `photo_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `role` int(11) NOT NULL,
  `city` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `fb` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `verified` int(11) NOT NULL,
  `verification_no` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `language` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `profile_score` int(11) NOT NULL,
  `album_count` int(11) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.users: 2 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `name`, `password`, `gender`, `age`, `last_login`, `created_at`, `updated_at`, `photo_id`, `role`, `city`, `country`, `fb`, `verified`, `verification_no`, `language`, `profile_score`, `album_count`, `lat`, `lng`) VALUES
	(21106, 'rac1408@gmail.com', 'Raulin', '$2a$08$5m4gDA7rm9blAun1LUwIB.UvzdNbuMtth2kSRy/9gN.64ujjlwnzm', 1, 51, '2025-08-19 08:31:12', '2025-08-19 10:30:24', '2025-08-19 10:31:12', '0', 0, 'Cercedilla', 'España', NULL, 1, '68a452406d96e', '', 0, 0, 40.733452, -4.067572),
	(21105, 'raulcasanova@yahoo.com', 'Raul', '$2a$08$PqMTDmlnvFVJvIyuQ59Y9.tafMhBaVfcMzAMn22aw4vdX5AKnxU.W', 1, 51, '2025-08-19 14:20:20', '2025-08-17 14:21:02', '2025-08-19 14:20:20', '0', 0, 'Cercedilla', 'España', NULL, 1, '68a1e54e4afae', '', 1, 0, 40.733562, -4.067369);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.user_gifts
CREATE TABLE IF NOT EXISTS `user_gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla rigola.user_gifts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.user_interests
CREATE TABLE IF NOT EXISTS `user_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla rigola.user_interests: 0 rows
/*!40000 ALTER TABLE `user_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_interests` ENABLE KEYS */;

-- Volcando estructura para tabla rigola.user_settings
CREATE TABLE IF NOT EXISTS `user_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.user_settings: 20 rows
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
INSERT INTO `user_settings` (`id`, `user_id`, `name`, `value`, `created_at`, `updated_at`) VALUES
	(20, 21105, 'show_me_offline', '0', '2025-08-17 14:21:03', '2025-08-17 14:21:03'),
	(21, 21105, 'hide_from_search', '0', '2025-08-17 14:21:03', '2025-08-17 14:21:03'),
	(22, 21105, 'send_add_contact_email', '1', '2025-08-17 14:21:03', '2025-08-17 14:21:03'),
	(23, 21105, 'send_meet_me_email', '1', '2025-08-17 14:21:03', '2025-08-17 14:21:03'),
	(24, 21105, 'send_photo_commented_email', '1', '2025-08-17 14:21:03', '2025-08-17 14:21:03'),
	(25, 21105, 'send_photo_rated_email', '1', '2025-08-17 14:21:03', '2025-08-17 14:21:03'),
	(26, 21105, 'send_message_sent_email', '1', '2025-08-17 14:21:03', '2025-08-17 14:21:03'),
	(27, 21105, 'send_profile_visitor_email', '1', '2025-08-17 14:21:03', '2025-08-17 14:21:03'),
	(28, 21105, 'send_gift_sent_email', '1', '2025-08-17 14:21:03', '2025-08-17 14:21:03'),
	(29, 21105, 'send_mutual_attraction_email', '1', '2025-08-17 14:21:03', '2025-08-17 14:21:03'),
	(30, 21106, 'show_me_offline', '0', '2025-08-19 10:30:29', '2025-08-19 10:30:29'),
	(31, 21106, 'hide_from_search', '0', '2025-08-19 10:30:29', '2025-08-19 10:30:29'),
	(32, 21106, 'send_add_contact_email', '1', '2025-08-19 10:30:29', '2025-08-19 10:30:29'),
	(33, 21106, 'send_meet_me_email', '1', '2025-08-19 10:30:29', '2025-08-19 10:30:29'),
	(34, 21106, 'send_photo_commented_email', '1', '2025-08-19 10:30:29', '2025-08-19 10:30:29'),
	(35, 21106, 'send_photo_rated_email', '1', '2025-08-19 10:30:29', '2025-08-19 10:30:29'),
	(36, 21106, 'send_message_sent_email', '1', '2025-08-19 10:30:29', '2025-08-19 10:30:29'),
	(37, 21106, 'send_profile_visitor_email', '1', '2025-08-19 10:30:29', '2025-08-19 10:30:29'),
	(38, 21106, 'send_gift_sent_email', '1', '2025-08-19 10:30:29', '2025-08-19 10:30:29'),
	(39, 21106, 'send_mutual_attraction_email', '1', '2025-08-19 10:30:29', '2025-08-19 10:30:29');
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
