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
CREATE DATABASE IF NOT EXISTS `rigola` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `rigola`;

-- Volcando estructura para tabla rigola.abuse_reports
CREATE TABLE IF NOT EXISTS `abuse_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) NOT NULL,
  `reporting_user_id` int(11) NOT NULL,
  `reported_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.abuse_reports: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.blocked_user: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.bots
CREATE TABLE IF NOT EXISTS `bots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `age` int(11) NOT NULL,
  `joining` datetime NOT NULL,
  `photo_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enable` int(11) NOT NULL,
  `user_ids` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.bots: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.chats
CREATE TABLE IF NOT EXISTS `chats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `notify_status` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.chats: ~6 rows (aproximadamente)
INSERT INTO `chats` (`id`, `from_user`, `to_user`, `contact_id`, `notify_status`, `message`, `created_at`, `updated_at`) VALUES
	(95, 21152, 21153, 4, 1, 'ff😘', '2025-10-10 19:51:57', '2025-10-10 19:54:03'),
	(140, 21152, 21153, 4, 1, '😂', '2025-10-11 15:11:42', '2025-10-12 13:33:52'),
	(141, 21152, 21153, 4, 1, 'ttt', '2025-10-11 15:24:35', '2025-10-12 13:33:52'),
	(142, 21154, 21152, 5, 1, 'holaaa', '2025-10-12 13:24:52', '2025-10-12 13:32:45'),
	(143, 21154, 21153, 6, 1, 'que tal', '2025-10-12 13:26:43', '2025-10-12 13:34:37'),
	(144, 21154, 21152, 5, 1, '😂', '2025-10-12 13:30:57', '2025-10-12 13:32:45'),
	(145, 21152, 21153, 4, 1, 'bien y tù ?', '2025-10-12 13:32:28', '2025-10-12 13:33:52'),
	(146, 21153, 21152, 4, 1, 'aquì estamos', '2025-10-12 13:34:10', '2025-10-12 13:40:56'),
	(147, 21153, 21154, 6, 1, 'muy bien 👍', '2025-10-12 13:38:31', '2025-10-12 13:42:21'),
	(148, 21153, 21152, 4, 0, 'Hacemos un quiqu ?i 🥰😋😍😘', '2025-10-12 14:18:40', '2025-10-12 14:18:40');

-- Volcando estructura para tabla rigola.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.contacts: ~6 rows (aproximadamente)
INSERT INTO `contacts` (`id`, `user_id`, `contact`, `created_at`, `updated_at`) VALUES
	(1, 21148, 21147, '2025-10-09 14:46:09', '2025-10-09 14:46:09'),
	(2, 21149, 21148, '2025-10-10 16:10:52', '2025-10-10 16:10:52'),
	(3, 21149, 21147, '2025-10-10 16:16:47', '2025-10-10 16:16:47'),
	(4, 21153, 21152, '2025-10-10 19:51:00', '2025-10-10 19:51:00'),
	(5, 21154, 21152, '2025-10-12 13:23:13', '2025-10-12 13:23:13'),
	(6, 21154, 21153, '2025-10-12 13:25:08', '2025-10-12 13:25:08');

-- Volcando estructura para tabla rigola.credithistory
CREATE TABLE IF NOT EXISTS `credithistory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `transaction_id` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.credithistory: ~178 rows (aproximadamente)
INSERT INTO `credithistory` (`id`, `user_id`, `balance`, `amount`, `type`, `created_at`, `updated_at`, `transaction_id`) VALUES
	(1, 21147, 11, 5, 'app.userlogin', '2025-10-09 13:51:39', '2025-10-09 13:51:39', 'N/A'),
	(2, 21147, 16, 5, 'app.userlogin', '2025-10-09 14:26:35', '2025-10-09 14:26:35', 'N/A'),
	(3, 21147, 21, 5, 'app.userlogin', '2025-10-09 14:27:04', '2025-10-09 14:27:04', 'N/A'),
	(4, 21147, 36, 15, 'app.userprofileupload', '2025-10-09 14:27:23', '2025-10-09 14:27:23', 'N/A'),
	(5, 21147, 46, 10, 'app.useralbumupload', '2025-10-09 14:27:23', '2025-10-09 14:27:23', 'N/A'),
	(6, 21148, 11, 5, 'app.userlogin', '2025-10-09 14:28:24', '2025-10-09 14:28:24', 'N/A'),
	(7, 21148, 16, 5, 'app.userlogin', '2025-10-09 14:28:44', '2025-10-09 14:28:44', 'N/A'),
	(8, 21148, 31, 15, 'app.userprofileupload', '2025-10-09 14:28:59', '2025-10-09 14:28:59', 'N/A'),
	(9, 21148, 41, 10, 'app.useralbumupload', '2025-10-09 14:28:59', '2025-10-09 14:28:59', 'N/A'),
	(10, 21148, 46, 5, 'app.userlogin', '2025-10-09 14:41:26', '2025-10-09 14:41:26', 'N/A'),
	(11, 21148, 56, 10, 'app.usercontactadded', '2025-10-09 14:46:10', '2025-10-09 14:46:10', 'N/A'),
	(12, 21147, 51, 5, 'app.userlogin', '2025-10-09 14:52:58', '2025-10-09 14:52:58', 'N/A'),
	(13, 21148, 61, 5, 'app.userlogin', '2025-10-09 15:00:08', '2025-10-09 15:00:08', 'N/A'),
	(14, 21148, 66, 5, 'app.userlogin', '2025-10-09 15:10:50', '2025-10-09 15:10:50', 'N/A'),
	(15, 21147, 56, 5, 'app.userlogin', '2025-10-09 15:11:51', '2025-10-09 15:11:51', 'N/A'),
	(16, 21147, 61, 5, 'app.userlogin', '2025-10-09 15:14:25', '2025-10-09 15:14:25', 'N/A'),
	(17, 21148, 71, 5, 'app.userlogin', '2025-10-09 15:15:36', '2025-10-09 15:15:36', 'N/A'),
	(18, 21148, 76, 5, 'app.userlogin', '2025-10-09 15:21:18', '2025-10-09 15:21:18', 'N/A'),
	(19, 21148, 81, 5, 'app.userlogin', '2025-10-09 15:22:39', '2025-10-09 15:22:39', 'N/A'),
	(20, 21148, 86, 5, 'app.userlogin', '2025-10-09 15:28:09', '2025-10-09 15:28:09', 'N/A'),
	(21, 21148, 91, 5, 'app.userlogin', '2025-10-09 15:36:12', '2025-10-09 15:36:12', 'N/A'),
	(22, 21148, 96, 5, 'app.userlogin', '2025-10-09 15:45:27', '2025-10-09 15:45:27', 'N/A'),
	(23, 21147, 66, 5, 'app.userlogin', '2025-10-09 15:46:24', '2025-10-09 15:46:24', 'N/A'),
	(24, 21147, 71, 5, 'app.userlogin', '2025-10-09 15:48:23', '2025-10-09 15:48:23', 'N/A'),
	(25, 21147, 76, 5, 'app.userlogin', '2025-10-09 15:50:31', '2025-10-09 15:50:31', 'N/A'),
	(26, 21147, 81, 5, 'app.userlogin', '2025-10-09 15:51:14', '2025-10-09 15:51:14', 'N/A'),
	(27, 21148, 101, 5, 'app.userlogin', '2025-10-09 15:53:56', '2025-10-09 15:53:56', 'N/A'),
	(28, 21147, 86, 5, 'app.userlogin', '2025-10-09 16:05:09', '2025-10-09 16:05:09', 'N/A'),
	(29, 21147, 91, 5, 'app.userlogin', '2025-10-09 16:11:20', '2025-10-09 16:11:20', 'N/A'),
	(30, 21147, 96, 5, 'app.userlogin', '2025-10-09 16:24:10', '2025-10-09 16:24:10', 'N/A'),
	(31, 21147, 101, 5, 'app.userlogin', '2025-10-09 16:25:20', '2025-10-09 16:25:20', 'N/A'),
	(32, 21147, 106, 5, 'app.userlogin', '2025-10-09 16:26:08', '2025-10-09 16:26:08', 'N/A'),
	(33, 21147, 111, 5, 'app.userlogin', '2025-10-09 16:26:54', '2025-10-09 16:26:54', 'N/A'),
	(34, 21147, 116, 5, 'app.userlogin', '2025-10-09 16:30:20', '2025-10-09 16:30:20', 'N/A'),
	(35, 21147, 121, 5, 'app.userlogin', '2025-10-09 16:31:34', '2025-10-09 16:31:34', 'N/A'),
	(36, 21147, 126, 5, 'app.userlogin', '2025-10-09 16:35:05', '2025-10-09 16:35:05', 'N/A'),
	(37, 21147, 131, 5, 'app.userlogin', '2025-10-09 16:53:27', '2025-10-09 16:53:27', 'N/A'),
	(38, 21147, 136, 5, 'app.userlogin', '2025-10-09 16:57:28', '2025-10-09 16:57:28', 'N/A'),
	(39, 21147, 141, 5, 'app.userlogin', '2025-10-09 17:00:08', '2025-10-09 17:00:08', 'N/A'),
	(40, 21147, 146, 5, 'app.userlogin', '2025-10-09 17:01:55', '2025-10-09 17:01:55', 'N/A'),
	(41, 21147, 151, 5, 'app.userlogin', '2025-10-09 17:03:14', '2025-10-09 17:03:14', 'N/A'),
	(42, 21147, 156, 5, 'app.userlogin', '2025-10-09 17:04:11', '2025-10-09 17:04:11', 'N/A'),
	(43, 21147, 161, 5, 'app.userlogin', '2025-10-09 17:05:12', '2025-10-09 17:05:12', 'N/A'),
	(44, 21147, 166, 5, 'app.userlogin', '2025-10-09 17:22:58', '2025-10-09 17:22:58', 'N/A'),
	(45, 21147, 171, 5, 'app.userlogin', '2025-10-09 17:49:10', '2025-10-09 17:49:10', 'N/A'),
	(46, 21147, 176, 5, 'app.userlogin', '2025-10-09 17:50:12', '2025-10-09 17:50:12', 'N/A'),
	(47, 21147, 181, 5, 'app.userlogin', '2025-10-09 17:55:46', '2025-10-09 17:55:46', 'N/A'),
	(48, 21147, 186, 5, 'app.userlogin', '2025-10-09 17:57:03', '2025-10-09 17:57:03', 'N/A'),
	(49, 21147, 191, 5, 'app.userlogin', '2025-10-09 17:58:38', '2025-10-09 17:58:38', 'N/A'),
	(50, 21147, 196, 5, 'app.userlogin', '2025-10-09 18:00:33', '2025-10-09 18:00:33', 'N/A'),
	(51, 21147, 201, 5, 'app.userlogin', '2025-10-09 18:01:11', '2025-10-09 18:01:11', 'N/A'),
	(52, 21147, 206, 5, 'app.userlogin', '2025-10-09 18:03:26', '2025-10-09 18:03:26', 'N/A'),
	(53, 21147, 211, 5, 'app.userlogin', '2025-10-09 18:04:45', '2025-10-09 18:04:45', 'N/A'),
	(54, 21147, 216, 5, 'app.userlogin', '2025-10-09 18:10:48', '2025-10-09 18:10:48', 'N/A'),
	(55, 21147, 221, 5, 'app.userlogin', '2025-10-09 18:12:16', '2025-10-09 18:12:16', 'N/A'),
	(56, 21147, 226, 5, 'app.userlogin', '2025-10-09 18:14:37', '2025-10-09 18:14:37', 'N/A'),
	(57, 21147, 231, 5, 'app.userlogin', '2025-10-09 18:16:21', '2025-10-09 18:16:21', 'N/A'),
	(58, 21147, 236, 5, 'app.userlogin', '2025-10-09 18:54:25', '2025-10-09 18:54:25', 'N/A'),
	(59, 21147, 241, 5, 'app.userlogin', '2025-10-09 18:56:51', '2025-10-09 18:56:51', 'N/A'),
	(60, 21147, 246, 5, 'app.userlogin', '2025-10-09 19:04:28', '2025-10-09 19:04:28', 'N/A'),
	(61, 21147, 251, 5, 'app.userlogin', '2025-10-09 19:12:01', '2025-10-09 19:12:01', 'N/A'),
	(62, 21147, 256, 5, 'app.userlogin', '2025-10-09 19:21:12', '2025-10-09 19:21:12', 'N/A'),
	(63, 21147, 261, 5, 'app.userlogin', '2025-10-09 19:23:55', '2025-10-09 19:23:55', 'N/A'),
	(64, 21147, 266, 5, 'app.userlogin', '2025-10-09 19:27:23', '2025-10-09 19:27:23', 'N/A'),
	(65, 21147, 271, 5, 'app.userlogin', '2025-10-09 19:30:19', '2025-10-09 19:30:19', 'N/A'),
	(66, 21147, 276, 5, 'app.userlogin', '2025-10-09 19:31:41', '2025-10-09 19:31:41', 'N/A'),
	(67, 21147, 281, 5, 'app.userlogin', '2025-10-09 19:33:08', '2025-10-09 19:33:08', 'N/A'),
	(68, 21147, 286, 5, 'app.userlogin', '2025-10-09 19:48:15', '2025-10-09 19:48:15', 'N/A'),
	(69, 21147, 291, 5, 'app.userlogin', '2025-10-09 19:49:13', '2025-10-09 19:49:13', 'N/A'),
	(70, 21147, 296, 5, 'app.userlogin', '2025-10-09 19:53:49', '2025-10-09 19:53:49', 'N/A'),
	(71, 21147, 301, 5, 'app.userlogin', '2025-10-09 19:54:28', '2025-10-09 19:54:28', 'N/A'),
	(72, 21147, 306, 5, 'app.userlogin', '2025-10-09 19:56:04', '2025-10-09 19:56:04', 'N/A'),
	(73, 21147, 311, 5, 'app.userlogin', '2025-10-09 20:01:21', '2025-10-09 20:01:21', 'N/A'),
	(74, 21147, 316, 5, 'app.userlogin', '2025-10-09 20:05:05', '2025-10-09 20:05:05', 'N/A'),
	(75, 21147, 321, 5, 'app.userlogin', '2025-10-09 20:09:44', '2025-10-09 20:09:44', 'N/A'),
	(76, 21147, 326, 5, 'app.userlogin', '2025-10-09 20:15:30', '2025-10-09 20:15:30', 'N/A'),
	(77, 21147, 331, 5, 'app.userlogin', '2025-10-09 20:19:38', '2025-10-09 20:19:38', 'N/A'),
	(78, 21147, 336, 5, 'app.userlogin', '2025-10-09 20:23:27', '2025-10-09 20:23:27', 'N/A'),
	(79, 21147, 341, 5, 'app.userlogin', '2025-10-09 20:37:13', '2025-10-09 20:37:13', 'N/A'),
	(80, 21148, 106, 5, 'app.userlogin', '2025-10-09 20:49:08', '2025-10-09 20:49:08', 'N/A'),
	(81, 21148, 111, 5, 'app.userlogin', '2025-10-09 20:55:04', '2025-10-09 20:55:04', 'N/A'),
	(82, 21147, 346, 5, 'app.userlogin', '2025-10-10 09:20:02', '2025-10-10 09:20:02', 'N/A'),
	(83, 21147, 351, 5, 'app.userlogin', '2025-10-10 09:30:46', '2025-10-10 09:30:46', 'N/A'),
	(84, 21148, 116, 5, 'app.userlogin', '2025-10-10 09:40:35', '2025-10-10 09:40:35', 'N/A'),
	(85, 21148, 121, 5, 'app.userlogin', '2025-10-10 09:50:14', '2025-10-10 09:50:14', 'N/A'),
	(86, 21148, 126, 5, 'app.userlogin', '2025-10-10 10:07:21', '2025-10-10 10:07:21', 'N/A'),
	(87, 21148, 131, 5, 'app.userlogin', '2025-10-10 10:08:32', '2025-10-10 10:08:32', 'N/A'),
	(88, 21147, 356, 5, 'app.userlogin', '2025-10-10 10:09:10', '2025-10-10 10:09:10', 'N/A'),
	(89, 21147, 361, 5, 'app.userlogin', '2025-10-10 10:15:07', '2025-10-10 10:15:07', 'N/A'),
	(90, 21148, 136, 5, 'app.userlogin', '2025-10-10 10:21:15', '2025-10-10 10:21:15', 'N/A'),
	(91, 21147, 366, 5, 'app.userlogin', '2025-10-10 10:24:50', '2025-10-10 10:24:50', 'N/A'),
	(92, 21148, 141, 5, 'app.userlogin', '2025-10-10 10:57:43', '2025-10-10 10:57:43', 'N/A'),
	(93, 21148, 146, 5, 'app.userlogin', '2025-10-10 11:03:38', '2025-10-10 11:03:38', 'N/A'),
	(94, 21148, 151, 5, 'app.userlogin', '2025-10-10 11:05:40', '2025-10-10 11:05:40', 'N/A'),
	(95, 21147, 371, 5, 'app.userlogin', '2025-10-10 11:06:20', '2025-10-10 11:06:20', 'N/A'),
	(96, 21148, 156, 5, 'app.userlogin', '2025-10-10 11:19:47', '2025-10-10 11:19:47', 'N/A'),
	(97, 21148, 161, 5, 'app.userlogin', '2025-10-10 11:25:08', '2025-10-10 11:25:08', 'N/A'),
	(98, 21148, 166, 5, 'app.userlogin', '2025-10-10 11:28:28', '2025-10-10 11:28:28', 'N/A'),
	(99, 21148, 171, 5, 'app.userlogin', '2025-10-10 11:41:26', '2025-10-10 11:41:26', 'N/A'),
	(100, 21148, 176, 5, 'app.userlogin', '2025-10-10 11:44:57', '2025-10-10 11:44:57', 'N/A'),
	(101, 21148, 181, 5, 'app.userlogin', '2025-10-10 11:48:52', '2025-10-10 11:48:52', 'N/A'),
	(102, 21148, 186, 5, 'app.userlogin', '2025-10-10 11:51:17', '2025-10-10 11:51:17', 'N/A'),
	(103, 21148, 191, 5, 'app.userlogin', '2025-10-10 11:52:39', '2025-10-10 11:52:39', 'N/A'),
	(104, 21148, 196, 5, 'app.userlogin', '2025-10-10 12:09:09', '2025-10-10 12:09:09', 'N/A'),
	(105, 21147, 376, 5, 'app.userlogin', '2025-10-10 12:11:07', '2025-10-10 12:11:07', 'N/A'),
	(106, 21148, 201, 5, 'app.userlogin', '2025-10-10 12:19:57', '2025-10-10 12:19:57', 'N/A'),
	(107, 21148, 206, 5, 'app.userlogin', '2025-10-10 12:23:50', '2025-10-10 12:23:50', 'N/A'),
	(108, 21147, 381, 5, 'app.userlogin', '2025-10-10 12:27:05', '2025-10-10 12:27:05', 'N/A'),
	(109, 21148, 211, 5, 'app.userlogin', '2025-10-10 12:50:43', '2025-10-10 12:50:43', 'N/A'),
	(110, 21148, 216, 5, 'app.userlogin', '2025-10-10 12:52:13', '2025-10-10 12:52:13', 'N/A'),
	(111, 21148, 221, 5, 'app.userlogin', '2025-10-10 12:54:39', '2025-10-10 12:54:39', 'N/A'),
	(112, 21147, 386, 5, 'app.userlogin', '2025-10-10 12:55:35', '2025-10-10 12:55:35', 'N/A'),
	(113, 21148, 226, 5, 'app.userlogin', '2025-10-10 12:59:33', '2025-10-10 12:59:33', 'N/A'),
	(114, 21148, 231, 5, 'app.userlogin', '2025-10-10 13:00:19', '2025-10-10 13:00:19', 'N/A'),
	(115, 21148, 236, 5, 'app.userlogin', '2025-10-10 13:01:02', '2025-10-10 13:01:02', 'N/A'),
	(116, 21147, 391, 5, 'app.userlogin', '2025-10-10 13:03:01', '2025-10-10 13:03:01', 'N/A'),
	(117, 21148, 241, 5, 'app.userlogin', '2025-10-10 13:06:04', '2025-10-10 13:06:04', 'N/A'),
	(118, 21147, 396, 5, 'app.userlogin', '2025-10-10 13:06:49', '2025-10-10 13:06:49', 'N/A'),
	(119, 21148, 246, 5, 'app.userlogin', '2025-10-10 13:16:58', '2025-10-10 13:16:58', 'N/A'),
	(120, 21148, 251, 5, 'app.userlogin', '2025-10-10 13:19:07', '2025-10-10 13:19:07', 'N/A'),
	(121, 21148, 256, 5, 'app.userlogin', '2025-10-10 13:24:37', '2025-10-10 13:24:37', 'N/A'),
	(122, 21148, 261, 5, 'app.userlogin', '2025-10-10 13:25:42', '2025-10-10 13:25:42', 'N/A'),
	(123, 21148, 266, 5, 'app.userlogin', '2025-10-10 13:27:34', '2025-10-10 13:27:34', 'N/A'),
	(124, 21148, 271, 5, 'app.userlogin', '2025-10-10 13:32:46', '2025-10-10 13:32:46', 'N/A'),
	(125, 21148, 276, 5, 'app.userlogin', '2025-10-10 13:34:39', '2025-10-10 13:34:39', 'N/A'),
	(126, 21148, 281, 5, 'app.userlogin', '2025-10-10 13:35:31', '2025-10-10 13:35:31', 'N/A'),
	(127, 21148, 286, 5, 'app.userlogin', '2025-10-10 13:39:20', '2025-10-10 13:39:20', 'N/A'),
	(128, 21148, 291, 5, 'app.userlogin', '2025-10-10 13:53:23', '2025-10-10 13:53:23', 'N/A'),
	(129, 21147, 401, 5, 'app.userlogin', '2025-10-10 14:00:21', '2025-10-10 14:00:21', 'N/A'),
	(130, 21148, 296, 5, 'app.userlogin', '2025-10-10 14:01:48', '2025-10-10 14:01:48', 'N/A'),
	(131, 21148, 301, 5, 'app.userlogin', '2025-10-10 14:03:36', '2025-10-10 14:03:36', 'N/A'),
	(132, 21147, 406, 5, 'app.userlogin', '2025-10-10 14:04:41', '2025-10-10 14:04:41', 'N/A'),
	(133, 21147, 411, 5, 'app.userlogin', '2025-10-10 14:06:26', '2025-10-10 14:06:26', 'N/A'),
	(134, 21147, 416, 5, 'app.userlogin', '2025-10-10 14:24:13', '2025-10-10 14:24:13', 'N/A'),
	(135, 21148, 306, 5, 'app.userlogin', '2025-10-10 14:24:45', '2025-10-10 14:24:45', 'N/A'),
	(136, 21148, 311, 5, 'app.userlogin', '2025-10-10 14:25:22', '2025-10-10 14:25:22', 'N/A'),
	(137, 21148, 316, 5, 'app.userlogin', '2025-10-10 14:25:50', '2025-10-10 14:25:50', 'N/A'),
	(138, 21148, 321, 5, 'app.userlogin', '2025-10-10 14:36:31', '2025-10-10 14:36:31', 'N/A'),
	(139, 21148, 326, 5, 'app.userlogin', '2025-10-10 14:38:58', '2025-10-10 14:38:58', 'N/A'),
	(140, 21148, 331, 5, 'app.userlogin', '2025-10-10 14:58:43', '2025-10-10 14:58:43', 'N/A'),
	(141, 21147, 421, 5, 'app.userlogin', '2025-10-10 14:59:11', '2025-10-10 14:59:11', 'N/A'),
	(142, 21148, 336, 5, 'app.userlogin', '2025-10-10 15:02:42', '2025-10-10 15:02:42', 'N/A'),
	(143, 21148, 341, 5, 'app.userlogin', '2025-10-10 15:05:54', '2025-10-10 15:05:54', 'N/A'),
	(144, 21147, 426, 5, 'app.userlogin', '2025-10-10 15:21:44', '2025-10-10 15:21:44', 'N/A'),
	(145, 21147, 431, 5, 'app.userlogin', '2025-10-10 15:24:27', '2025-10-10 15:24:27', 'N/A'),
	(146, 21147, 436, 5, 'app.userlogin', '2025-10-10 15:25:06', '2025-10-10 15:25:06', 'N/A'),
	(147, 21147, 441, 5, 'app.userlogin', '2025-10-10 15:27:52', '2025-10-10 15:27:52', 'N/A'),
	(148, 21147, 446, 5, 'app.userlogin', '2025-10-10 15:28:40', '2025-10-10 15:28:40', 'N/A'),
	(149, 21148, 346, 5, 'app.userlogin', '2025-10-10 15:31:04', '2025-10-10 15:31:04', 'N/A'),
	(150, 21148, 351, 5, 'app.userlogin', '2025-10-10 15:37:20', '2025-10-10 15:37:20', 'N/A'),
	(151, 21149, 11, 5, 'app.userlogin', '2025-10-10 16:08:40', '2025-10-10 16:08:40', 'N/A'),
	(152, 21149, 26, 15, 'app.userprofileupload', '2025-10-10 16:10:34', '2025-10-10 16:10:34', 'N/A'),
	(153, 21149, 36, 10, 'app.useralbumupload', '2025-10-10 16:10:34', '2025-10-10 16:10:34', 'N/A'),
	(154, 21149, 46, 10, 'app.usercontactadded', '2025-10-10 16:10:53', '2025-10-10 16:10:53', 'N/A'),
	(155, 21149, 51, 5, 'app.userlogin', '2025-10-10 16:13:29', '2025-10-10 16:13:29', 'N/A'),
	(156, 21149, 71, 20, 'app.userencounteryes', '2025-10-10 16:16:39', '2025-10-10 16:16:39', 'N/A'),
	(157, 21149, 81, 10, 'app.usercontactadded', '2025-10-10 16:16:48', '2025-10-10 16:16:48', 'N/A'),
	(158, 21148, 356, 5, 'app.userlogin', '2025-10-10 16:39:25', '2025-10-10 16:39:25', 'N/A'),
	(159, 21149, 86, 5, 'app.userlogin', '2025-10-10 16:42:05', '2025-10-10 16:42:05', 'N/A'),
	(160, 21148, 361, 5, 'app.userlogin', '2025-10-10 16:46:35', '2025-10-10 16:46:35', 'N/A'),
	(161, 21149, 91, 5, 'app.userlogin', '2025-10-10 16:51:32', '2025-10-10 16:51:32', 'N/A'),
	(162, 21148, 366, 5, 'app.userlogin', '2025-10-10 16:53:05', '2025-10-10 16:53:05', 'N/A'),
	(163, 21149, 96, 5, 'app.userlogin', '2025-10-10 16:53:33', '2025-10-10 16:53:33', 'N/A'),
	(164, 21147, 451, 5, 'app.userlogin', '2025-10-10 16:54:03', '2025-10-10 16:54:03', 'N/A'),
	(165, 21147, 456, 5, 'app.userlogin', '2025-10-10 16:54:23', '2025-10-10 16:54:23', 'N/A'),
	(166, 21147, 461, 5, 'app.userlogin', '2025-10-10 16:56:03', '2025-10-10 16:56:03', 'N/A'),
	(167, 21149, 61, 5, 'app.userlogin', '2025-10-10 17:24:00', '2025-10-10 17:24:00', 'N/A'),
	(168, 21149, 66, 5, 'app.userlogin', '2025-10-10 17:27:15', '2025-10-10 17:27:15', 'N/A'),
	(169, 21148, 371, 5, 'app.userlogin', '2025-10-10 17:27:35', '2025-10-10 17:27:35', 'N/A'),
	(170, 21148, 391, 20, 'app.userencounteryes', '2025-10-10 17:32:16', '2025-10-10 17:32:16', 'N/A'),
	(171, 21148, 411, 20, 'app.userencounteryes', '2025-10-10 17:32:17', '2025-10-10 17:32:17', 'N/A'),
	(172, 21148, 431, 20, 'app.uservisitingprofile', '2025-10-10 17:34:21', '2025-10-10 17:34:21', 'N/A'),
	(173, 21149, 76, 10, 'app.userprofileVisited', '2025-10-10 17:34:21', '2025-10-10 17:34:21', 'N/A'),
	(174, 21148, 436, 5, 'app.userlogin', '2025-10-10 17:40:20', '2025-10-10 17:40:20', 'N/A'),
	(175, 21148, 441, 5, 'app.userlogin', '2025-10-10 17:59:09', '2025-10-10 17:59:09', 'N/A'),
	(176, 21149, 81, 5, 'app.userlogin', '2025-10-10 18:00:06', '2025-10-10 18:00:06', 'N/A'),
	(177, 21148, 446, 5, 'app.userlogin', '2025-10-10 18:03:45', '2025-10-10 18:03:45', 'N/A'),
	(178, 21148, 451, 5, 'app.userlogin', '2025-10-10 18:08:08', '2025-10-10 18:08:08', 'N/A'),
	(179, 21152, 11, 5, 'app.userlogin', '2025-10-10 19:46:03', '2025-10-10 19:46:03', 'N/A'),
	(180, 21152, 26, 15, 'app.userprofileupload', '2025-10-10 19:47:15', '2025-10-10 19:47:15', 'N/A'),
	(181, 21152, 36, 10, 'app.useralbumupload', '2025-10-10 19:47:15', '2025-10-10 19:47:15', 'N/A'),
	(182, 21153, 11, 5, 'app.userlogin', '2025-10-10 19:50:49', '2025-10-10 19:50:49', 'N/A'),
	(183, 21153, 21, 10, 'app.usercontactadded', '2025-10-10 19:51:01', '2025-10-10 19:51:01', 'N/A'),
	(184, 21152, 41, 5, 'app.userlogin', '2025-10-10 19:51:41', '2025-10-10 19:51:41', 'N/A'),
	(185, 21153, 26, 5, 'app.userlogin', '2025-10-10 19:53:38', '2025-10-10 19:53:38', 'N/A'),
	(186, 21153, 41, 15, 'app.userprofileupload', '2025-10-10 19:53:56', '2025-10-10 19:53:56', 'N/A'),
	(187, 21153, 51, 10, 'app.useralbumupload', '2025-10-10 19:53:56', '2025-10-10 19:53:56', 'N/A'),
	(188, 21152, 46, 5, 'app.userlogin', '2025-10-10 19:55:10', '2025-10-10 19:55:10', 'N/A'),
	(189, 21153, 56, 5, 'app.userlogin', '2025-10-10 19:55:26', '2025-10-10 19:55:26', 'N/A'),
	(190, 21153, 61, 5, 'app.userlogin', '2025-10-10 20:08:35', '2025-10-10 20:08:35', 'N/A'),
	(191, 21153, 66, 5, 'app.userlogin', '2025-10-10 20:10:23', '2025-10-10 20:10:23', 'N/A'),
	(192, 21153, 71, 5, 'app.userlogin', '2025-10-10 20:33:59', '2025-10-10 20:33:59', 'N/A'),
	(193, 21153, 76, 5, 'app.userlogin', '2025-10-11 05:29:57', '2025-10-11 05:29:57', 'N/A'),
	(194, 21153, 81, 5, 'app.userlogin', '2025-10-11 06:13:03', '2025-10-11 06:13:03', 'N/A'),
	(195, 21153, 86, 5, 'app.userlogin', '2025-10-11 06:17:25', '2025-10-11 06:17:25', 'N/A'),
	(196, 21153, 91, 5, 'app.userlogin', '2025-10-11 06:19:32', '2025-10-11 06:19:32', 'N/A'),
	(197, 21152, 51, 5, 'app.userlogin', '2025-10-11 06:21:12', '2025-10-11 06:21:12', 'N/A'),
	(198, 21153, 96, 5, 'app.userlogin', '2025-10-11 06:26:27', '2025-10-11 06:26:27', 'N/A'),
	(199, 21153, 101, 5, 'app.userlogin', '2025-10-11 06:34:56', '2025-10-11 06:34:56', 'N/A'),
	(200, 21153, 106, 5, 'app.userlogin', '2025-10-11 07:40:17', '2025-10-11 07:40:17', 'N/A'),
	(201, 21152, 56, 5, 'app.userlogin', '2025-10-11 07:54:22', '2025-10-11 07:54:22', 'N/A'),
	(202, 21153, 111, 5, 'app.userlogin', '2025-10-11 08:16:16', '2025-10-11 08:16:16', 'N/A'),
	(203, 21153, 116, 5, 'app.userlogin', '2025-10-11 08:36:25', '2025-10-11 08:36:25', 'N/A'),
	(204, 21153, 121, 5, 'app.userlogin', '2025-10-11 08:53:40', '2025-10-11 08:53:40', 'N/A'),
	(205, 21153, 126, 5, 'app.userlogin', '2025-10-11 08:54:17', '2025-10-11 08:54:17', 'N/A'),
	(206, 21153, 131, 5, 'app.userlogin', '2025-10-11 08:55:34', '2025-10-11 08:55:34', 'N/A'),
	(207, 21153, 136, 5, 'app.userlogin', '2025-10-11 08:56:56', '2025-10-11 08:56:56', 'N/A'),
	(208, 21153, 141, 5, 'app.userlogin', '2025-10-11 08:59:00', '2025-10-11 08:59:00', 'N/A'),
	(209, 21153, 146, 5, 'app.userlogin', '2025-10-11 09:00:09', '2025-10-11 09:00:09', 'N/A'),
	(210, 21153, 151, 5, 'app.userlogin', '2025-10-11 09:01:21', '2025-10-11 09:01:21', 'N/A'),
	(211, 21153, 156, 5, 'app.userlogin', '2025-10-11 09:18:23', '2025-10-11 09:18:23', 'N/A'),
	(212, 21153, 161, 5, 'app.userlogin', '2025-10-11 09:21:15', '2025-10-11 09:21:15', 'N/A'),
	(213, 21153, 166, 5, 'app.userlogin', '2025-10-11 09:28:07', '2025-10-11 09:28:07', 'N/A'),
	(214, 21153, 171, 5, 'app.userlogin', '2025-10-11 09:30:34', '2025-10-11 09:30:34', 'N/A'),
	(215, 21153, 176, 5, 'app.userlogin', '2025-10-11 09:47:14', '2025-10-11 09:47:14', 'N/A'),
	(216, 21153, 181, 5, 'app.userlogin', '2025-10-11 09:56:31', '2025-10-11 09:56:31', 'N/A'),
	(217, 21152, 61, 5, 'app.userlogin', '2025-10-11 10:02:08', '2025-10-11 10:02:08', 'N/A'),
	(218, 21152, 66, 5, 'app.userlogin', '2025-10-11 11:50:39', '2025-10-11 11:50:39', 'N/A'),
	(219, 21153, 186, 5, 'app.userlogin', '2025-10-11 11:54:34', '2025-10-11 11:54:34', 'N/A'),
	(220, 21153, 191, 5, 'app.userlogin', '2025-10-11 11:59:28', '2025-10-11 11:59:28', 'N/A'),
	(221, 21152, 71, 5, 'app.userlogin', '2025-10-11 12:03:39', '2025-10-11 12:03:39', 'N/A'),
	(222, 21152, 76, 5, 'app.userlogin', '2025-10-11 12:07:58', '2025-10-11 12:07:58', 'N/A'),
	(223, 21152, 81, 5, 'app.userlogin', '2025-10-11 12:28:26', '2025-10-11 12:28:26', 'N/A'),
	(224, 21152, 86, 5, 'app.userlogin', '2025-10-11 12:33:19', '2025-10-11 12:33:19', 'N/A'),
	(225, 21152, 91, 5, 'app.userlogin', '2025-10-11 12:35:12', '2025-10-11 12:35:12', 'N/A'),
	(226, 21152, 96, 5, 'app.userlogin', '2025-10-11 12:38:54', '2025-10-11 12:38:54', 'N/A'),
	(227, 21152, 101, 5, 'app.userlogin', '2025-10-11 12:46:09', '2025-10-11 12:46:09', 'N/A'),
	(228, 21153, 196, 5, 'app.userlogin', '2025-10-11 13:01:46', '2025-10-11 13:01:46', 'N/A'),
	(229, 21153, 201, 5, 'app.userlogin', '2025-10-11 13:04:42', '2025-10-11 13:04:42', 'N/A'),
	(230, 21152, 106, 5, 'app.userlogin', '2025-10-11 13:06:49', '2025-10-11 13:06:49', 'N/A'),
	(231, 21152, 111, 5, 'app.userlogin', '2025-10-11 13:17:01', '2025-10-11 13:17:01', 'N/A'),
	(232, 21152, 116, 5, 'app.userlogin', '2025-10-11 13:30:02', '2025-10-11 13:30:02', 'N/A'),
	(233, 21152, 121, 5, 'app.userlogin', '2025-10-11 13:33:13', '2025-10-11 13:33:13', 'N/A'),
	(234, 21152, 126, 5, 'app.userlogin', '2025-10-11 13:34:51', '2025-10-11 13:34:51', 'N/A'),
	(235, 21152, 131, 5, 'app.userlogin', '2025-10-11 13:35:40', '2025-10-11 13:35:40', 'N/A'),
	(236, 21152, 136, 5, 'app.userlogin', '2025-10-11 13:36:24', '2025-10-11 13:36:24', 'N/A'),
	(237, 21152, 141, 5, 'app.userlogin', '2025-10-11 13:37:13', '2025-10-11 13:37:13', 'N/A'),
	(238, 21152, 146, 5, 'app.userlogin', '2025-10-11 15:11:24', '2025-10-11 15:11:24', 'N/A'),
	(239, 21152, 151, 5, 'app.userlogin', '2025-10-11 15:17:22', '2025-10-11 15:17:22', 'N/A'),
	(240, 21152, 156, 5, 'app.userlogin', '2025-10-11 15:24:05', '2025-10-11 15:24:05', 'N/A'),
	(241, 21154, 11, 5, 'app.userlogin', '2025-10-12 13:21:19', '2025-10-12 13:21:19', 'N/A'),
	(242, 21154, 26, 15, 'app.userprofileupload', '2025-10-12 13:22:13', '2025-10-12 13:22:13', 'N/A'),
	(243, 21154, 36, 10, 'app.useralbumupload', '2025-10-12 13:22:13', '2025-10-12 13:22:13', 'N/A'),
	(244, 21154, 41, 5, 'app.userlogin', '2025-10-12 13:23:05', '2025-10-12 13:23:05', 'N/A'),
	(245, 21154, 51, 10, 'app.usercontactadded', '2025-10-12 13:23:14', '2025-10-12 13:23:14', 'N/A'),
	(246, 21154, 61, 10, 'app.usercontactadded', '2025-10-12 13:25:09', '2025-10-12 13:25:09', 'N/A'),
	(247, 21152, 161, 5, 'app.userlogin', '2025-10-12 13:31:45', '2025-10-12 13:31:45', 'N/A'),
	(248, 21152, 166, 5, 'app.userlogin', '2025-10-12 13:33:23', '2025-10-12 13:33:23', 'N/A'),
	(249, 21153, 206, 5, 'app.userlogin', '2025-10-12 13:33:49', '2025-10-12 13:33:49', 'N/A'),
	(250, 21153, 211, 5, 'app.userlogin', '2025-10-12 13:38:51', '2025-10-12 13:38:51', 'N/A'),
	(251, 21152, 171, 5, 'app.userlogin', '2025-10-12 13:39:35', '2025-10-12 13:39:35', 'N/A'),
	(252, 21154, 66, 5, 'app.userlogin', '2025-10-12 13:41:53', '2025-10-12 13:41:53', 'N/A'),
	(253, 21153, 216, 5, 'app.userlogin', '2025-10-12 14:18:00', '2025-10-12 14:18:00', 'N/A');

-- Volcando estructura para tabla rigola.credits
CREATE TABLE IF NOT EXISTS `credits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21053 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.credits: ~8 rows (aproximadamente)
INSERT INTO `credits` (`id`, `user_id`, `balance`, `created_at`, `updated_at`) VALUES
	(21042, 21105, 286, '2025-08-17 14:21:03', '2025-10-02 14:51:32'),
	(21043, 21106, 1981, '2025-08-19 10:30:29', '2025-10-09 13:21:13'),
	(21044, 21107, 6, '2025-10-08 12:36:45', '2025-10-08 12:36:45'),
	(21045, 21146, 736, '2025-10-08 15:13:42', '2025-10-09 13:18:59'),
	(21046, 21147, 461, '2025-10-09 13:51:06', '2025-10-10 16:56:03'),
	(21047, 21148, 451, '2025-10-09 14:10:03', '2025-10-10 18:08:08'),
	(21048, 21149, 81, '2025-10-10 16:07:17', '2025-10-10 18:00:06'),
	(21049, 21151, 6, '2025-10-10 18:16:08', '2025-10-10 18:16:08'),
	(21050, 21152, 171, '2025-10-10 19:45:05', '2025-10-12 13:39:35'),
	(21051, 21153, 216, '2025-10-10 19:50:09', '2025-10-12 14:18:00'),
	(21052, 21154, 66, '2025-10-12 13:20:18', '2025-10-12 13:41:53');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.czars: ~0 rows (aproximadamente)
INSERT INTO `czars` (`id`, `username`, `password`, `created_at`, `updated_at`, `last_login`, `last_ip`) VALUES
	(5, 'admin', '$2a$08$3ahZkyif19pORxaDdXeOhuwQPdf6DeRvVhf0seUDHW6.GtTyO7n9S', '2025-08-06 13:53:09', '2025-08-17 15:14:23', '2025-08-17 15:14:23', '192.168.1.1');

-- Volcando estructura para tabla rigola.encounters
CREATE TABLE IF NOT EXISTS `encounters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.encounters: ~4 rows (aproximadamente)
INSERT INTO `encounters` (`id`, `from_user`, `to_user`, `status`, `created_at`, `updated_at`) VALUES
	(76, 21146, 21106, 1, '2025-10-08 16:26:07', '2025-10-08 16:26:07'),
	(77, 21149, 21147, 1, '2025-10-10 16:16:39', '2025-10-10 16:16:39'),
	(78, 21148, 21147, 1, '2025-10-10 17:32:16', '2025-10-10 17:32:16'),
	(79, 21148, 21149, 1, '2025-10-10 17:32:17', '2025-10-10 17:32:17');

-- Volcando estructura para tabla rigola.favorites
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user` int(10) unsigned NOT NULL,
  `to_user` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.favorites: ~2 rows (aproximadamente)
INSERT INTO `favorites` (`id`, `from_user`, `to_user`, `created_at`, `updated_at`) VALUES
	(12, 21146, 21106, '2025-10-08 17:21:36', '2025-10-08 17:21:36'),
	(13, 21148, 21149, '2025-10-10 17:32:04', '2025-10-10 17:32:04');

-- Volcando estructura para tabla rigola.gifts
CREATE TABLE IF NOT EXISTS `gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `icon_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.gifts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.interests
CREATE TABLE IF NOT EXISTS `interests` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.interests: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.interest_categories
CREATE TABLE IF NOT EXISTS `interest_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.interest_categories: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.meetme
CREATE TABLE IF NOT EXISTS `meetme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.meetme: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.notifications: ~16 rows (aproximadamente)
INSERT INTO `notifications` (`id`, `from_user`, `to_user`, `status`, `notify_status`, `type`, `created_at`, `updated_at`) VALUES
	(377, 21106, 21105, 1, 0, 'profilevisit', '2025-09-29 15:17:53', '2025-09-29 15:18:56'),
	(378, 21106, 21105, 1, 0, 'profilevisit', '2025-09-29 15:17:53', '2025-09-29 15:18:56'),
	(379, 21106, 21105, 1, 0, 'profilevisit', '2025-09-29 15:17:53', '2025-09-29 15:18:56'),
	(380, 21146, 21106, 1, 0, 'profilevisit', '2025-10-08 16:25:24', '2025-10-09 13:14:03'),
	(381, 21146, 21106, 1, 0, 'profilevisit', '2025-10-08 17:00:46', '2025-10-09 13:14:03'),
	(382, 21146, 21106, 1, 0, 'profilevisit', '2025-10-08 17:01:41', '2025-10-09 13:14:03'),
	(383, 21146, 21106, 1, 0, 'profilevisit', '2025-10-08 17:11:02', '2025-10-09 13:14:03'),
	(384, 21146, 21106, 1, 0, 'profilevisit', '2025-10-08 17:11:10', '2025-10-09 13:14:03'),
	(385, 21146, 21106, 1, 0, 'profilevisit', '2025-10-08 17:12:12', '2025-10-09 13:14:03'),
	(386, 21146, 21106, 1, 0, 'profilevisit', '2025-10-08 17:13:19', '2025-10-09 13:14:03'),
	(387, 21146, 21106, 1, 0, 'profilevisit', '2025-10-08 17:20:30', '2025-10-09 13:14:03'),
	(388, 21146, 21106, 1, 0, 'profilevisit', '2025-10-08 17:20:31', '2025-10-09 13:14:03'),
	(389, 21146, 21106, 1, 0, 'profilevisit', '2025-10-08 17:20:32', '2025-10-09 13:14:03'),
	(390, 21146, 21106, 1, 0, 'profilevisit', '2025-10-09 11:32:51', '2025-10-09 13:14:03'),
	(391, 21106, 21146, 0, 0, 'profilevisit', '2025-10-09 13:18:59', '2025-10-09 13:18:59'),
	(392, 21148, 21149, 0, 0, 'profilevisit', '2025-10-10 17:34:21', '2025-10-10 17:34:21');

-- Volcando estructura para tabla rigola.packages
CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `credits` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rigola.packages: ~2 rows (aproximadamente)
INSERT INTO `packages` (`id`, `credits`, `cost`, `created_at`, `updated_at`) VALUES
	(12, 50, 50, '2014-02-23 15:19:48', '2014-02-23 15:19:48'),
	(16, 10, 10, '2014-02-23 15:21:24', '2014-02-23 15:21:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.photos: ~0 rows (aproximadamente)
INSERT INTO `photos` (`id`, `photo_id`, `user_id`, `rating`, `no_users`, `created_at`, `updated_at`) VALUES
	(78, '21152128486368e962c1a7ab9', 21152, 0, 0, '2025-10-10 19:47:15', '2025-10-10 19:47:15'),
	(79, '211536316268e9645413980', 21153, 0, 0, '2025-10-10 19:53:56', '2025-10-10 19:53:56'),
	(80, '21154157853468ebab85055f3', 21154, 0, 0, '2025-10-12 13:22:13', '2025-10-12 13:22:13');

-- Volcando estructura para tabla rigola.photo_comments
CREATE TABLE IF NOT EXISTS `photo_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `album_id` int(11) unsigned NOT NULL,
  `message` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.photo_comments: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.photo_rater
CREATE TABLE IF NOT EXISTS `photo_rater` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `photo_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.photo_rater: ~0 rows (aproximadamente)

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
  `aboutme` varchar(255) NOT NULL,
  `interestedin` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `popularity` int(11) NOT NULL,
  `whyamihere` int(11) NOT NULL,
  `preferred_gender` int(1) NOT NULL,
  `preferred_age` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21067 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.profiles: ~4 rows (aproximadamente)
INSERT INTO `profiles` (`id`, `user_id`, `relationshipstatus`, `bodytype`, `haircolor`, `eyecolor`, `living`, `smoking`, `drinking`, `education`, `children`, `aboutme`, `interestedin`, `created_at`, `updated_at`, `popularity`, `whyamihere`, `preferred_gender`, `preferred_age`) VALUES
	(21060, 21147, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2025-10-09 13:51:06', '2025-10-10 16:56:16', 0, 1, 3, 3),
	(21061, 21148, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2025-10-09 14:10:03', '2025-10-09 14:10:03', 0, 1, 2, 3),
	(21062, 21149, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2025-10-10 16:07:17', '2025-10-10 16:16:33', 0, 1, 3, 3),
	(21063, 21151, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2025-10-10 18:16:08', '2025-10-10 18:16:08', 0, 1, 2, 3),
	(21064, 21152, 1, 4, 2, 2, 5, 1, 4, 4, 3, '', '', '2025-10-10 19:45:05', '2025-10-12 13:40:46', 0, 1, 3, 3),
	(21065, 21153, 1, 4, 2, 1, 5, 1, 4, 4, 2, '', '', '2025-10-10 19:50:09', '2025-10-12 13:39:22', 0, 1, 3, 3),
	(21066, 21154, 1, 4, 4, 4, 4, 4, 4, 2, 3, '', '', '2025-10-12 13:20:18', '2025-10-12 13:43:21', 0, 1, 3, 3);

-- Volcando estructura para tabla rigola.reward_packages
CREATE TABLE IF NOT EXISTS `reward_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `credits` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` varchar(40) NOT NULL,
  `last_activity` int(11) NOT NULL,
  `data` mediumtext NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.sessions: ~0 rows (aproximadamente)
INSERT INTO `sessions` (`id`, `last_activity`, `data`, `user_id`) VALUES
	('1z95WBANZkagcCqf8TUyINetHrXLPt9WT9JQt9My', 1760276315, 'a:6:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"IOJFiPyNEVRxkIL6togGUMg4QxK1mq5Tjksejyln";s:20:"session_captcha_hash";s:60:"$2a$08$cXQehLpF8Z663NrZU9OybuubrA7yfdPnEAdUjEeI/HrlalmQeii/S";s:35:"laravel_auth_drivers_eloquent_login";i:21153;s:14:"encounter_user";i:21152;}', 21153),
	('5n6qWvEEMzYVw3CS4PokBMotsvk5L0NILBTa8A7K', 1760278667, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"8wSkCILu6qBNPXheM0wPC22tXbUysTyR0x7bEIhT";}', 0),
	('7b4afIrzGF4ePpur8L5MatCRQ0JosLqiuydOXdXp', 1760278932, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"t3yv8czRBUWKSYCCPQAAMJGs3oTnj9hnaLc0s1Zi";}', 0),
	('7gozpeiHVo94SUI7iqdLx7MurW2QzPsMVhsTDmsT', 1760279593, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"uOgQQiUvChkNCvmVne1zICXA8LtjasbHgMr48qxS";}', 0),
	('dLWR1FxV4Dl69gcOwZGmJPTw6ja12mq7BdVlJvPT', 1760278666, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"1GaNNVA3oLC13G4BlSUKVwzI7HovLXgpd7MyIsK7";}', 0),
	('fmCtfh32nddLeGdyx8eQjNosMrOpAwL17XLuWTKb', 1760276497, 'a:7:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"dscjfSIvH5e0sRYOPnlmmroUpwlUIQzzMPnHiiMo";s:20:"session_captcha_hash";s:60:"$2a$08$S499NGTodipAL4mXpbkHkOIl8vnmxKEsIJFzvMONE2fUrsvSvYChm";s:35:"laravel_auth_drivers_eloquent_login";i:21152;s:14:"encounter_user";i:21153;s:10:"photo2rate";s:23:"211536316268e9645413980";}', 21152),
	('FS3oYWDatrCwgsp99yAWRgAMczDAGmP8NfVX0fvB', 1760276010, 'a:5:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"decmzQX3JEeEzkrv7jFUZobpnuV6x3eEmzL04iKX";s:20:"session_captcha_hash";s:60:"$2a$08$PZIW99JdDBb5oGR65tqKBOdyzXmGz.faHU03gQFLXGpxQsaqdxp2W";s:35:"laravel_auth_drivers_eloquent_login";i:21152;}', 21152),
	('ftRCAxw7hIVFmKTeM0HCoU2HleIyOWVq6IdwEMPu', 1760278752, 'a:5:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"w1FVd06MquzIZoRDQgmwU7nm1rHft7MdPmpE7szk";s:20:"session_captcha_hash";s:60:"$2a$08$NqoxdTixGYFtA/Irb7Iun.VisXJL3v20.UxHx45sH7pKVR.sV1gtC";s:35:"laravel_auth_drivers_eloquent_login";i:21153;}', 21153),
	('kok1244xmnJMM03lgFphu2RC6FXK3zWsfP6bhHDQ', 1760278666, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"iBJxqDrDbWk56qExrVu8NK3O1FgQrHFrhRIRcD8U";}', 0),
	('LR1EXMqfkHUk7TWCBwLnQBMb4C23ZDfcdISelMSq', 1760276109, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"r6KCOQbLTe5LfhwNqohBwGOZGwctMUS24MKR0awb";}', 0),
	('nX3JEyzAB9MIxxhLXZ0GJJ62KU1uwzvDNipMejL2', 1760278647, 'a:4:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"BAd4s9YcXGqH0aYlvQYUADgt4L72mztNnMbyIhiV";s:20:"session_captcha_hash";s:60:"$2a$08$x53eBxK4Wlbu5J1PyGQ1u.SFD2beqXJYVyI8JVEMQV0ZBILPi.ci.";}', 0),
	('QUM3VIyzI2FKki9IhbTDTGbBPtyTAtF4wJHiJ6Zb', 1760278611, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"zanndALprSX0OCxlfXHam5yuHR8Mrpm5CPI6LMeR";}', 0),
	('UQz4XzVuw8opzzJ7fl4K0Sdyb3BEjgrn3klapRRg', 1760276362, 'a:5:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"18UM1ZLKE8HuVls1uEjCv4LCdzFwDQkHkiaYYtWf";s:20:"session_captcha_hash";s:60:"$2a$08$jpSc448Id.MS/8FvXM/OUepP8N8VdPvCY8Zwr.EphR2FzPlHN2HbK";s:35:"laravel_auth_drivers_eloquent_login";i:21153;}', 21153),
	('ZKiNRpgfzzFfsdfreOscMj0WrPQQ2ibREIj6UQGX', 1760278634, 'a:6:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"VkyB30qY4VpN1ElhEBTi7wIkSVkgjDozeuz5vP1i";s:20:"session_captcha_hash";s:60:"$2a$08$3EbCRAahzsa5vAOoLaAINuDY0YE7FXqAcTRhoCROW8Q1BkWswFMXy";s:35:"laravel_auth_drivers_eloquent_login";i:21154;s:14:"encounter_user";i:21152;}', 21154);

-- Volcando estructura para tabla rigola.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `value` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.settings: ~122 rows (aproximadamente)
INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
	(4, 'language', 'es', '2013-09-07 15:50:28', '2013-12-09 02:09:55'),
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
	(22, 'encounters_without_pic', '-1', '2013-10-18 02:06:06', '2014-03-24 15:49:09'),
	(23, 'email_host', 'smtp.gmail.com', '2013-10-28 12:24:44', '2025-08-07 16:15:59'),
	(24, 'email_port', '465', '2013-10-28 12:24:44', '2025-08-17 13:44:08'),
	(25, 'email_username', 'rac1408@gmail.com', '2013-10-28 12:24:44', '2025-08-17 14:20:50'),
	(26, 'email_password', 'oqql zokx zbey zcom', '2013-10-28 12:24:44', '2025-08-07 16:15:59'),
	(27, 'email_encryption', 'ssl', '2013-10-28 12:24:44', '2013-10-28 12:24:44'),
	(28, 'email_notification_profile_visitor', '1', '2013-10-28 13:12:12', '2014-03-28 12:16:43'),
	(30, 'email_notification_message', '1', '2013-10-28 13:12:12', '2014-03-28 12:16:52'),
	(31, 'email_notification_meetme', '1', '2013-10-28 13:12:51', '2014-03-28 12:16:43'),
	(32, 'email_content_profile_visitor', '[from_username] Acabo de visitar tu perfil.\r\n\r\nCheckout their profile -> [from_user_profile_link]', '2013-10-28 15:21:29', '2014-03-28 08:54:22'),
	(33, 'email_content_message', '[from_username] Te envió un mensaje!\r\n\r\n[message]', '2013-10-29 08:19:25', '2014-03-28 10:58:40'),
	(34, 'email_content_meetme', '[from_username] quiere conocerte\r\n\r\nThis is the profile  [from_user_profile_link]', '2013-10-29 08:19:31', '2014-03-28 09:47:35'),
	(35, 'email_content_forgot_password', '', '2013-10-29 08:19:38', '2013-10-29 08:19:38'),
	(36, 'email_content_email_verification', 'Verifica tu email\r\n\r\n[verification_no]', '2013-10-29 08:19:43', '2014-03-29 09:57:04'),
	(37, 'widget_profile_right_1', '', '2013-10-29 13:06:59', '2013-10-29 13:35:07'),
	(38, 'widget_profile_right_2', '', '2013-10-29 13:06:59', '2013-10-29 13:35:07'),
	(39, 'widget_profile_right_3', '', '2013-10-29 13:06:59', '2013-10-29 13:35:07'),
	(40, 'widget_encounter_right_1', '', '2013-10-29 13:06:59', '2013-10-29 13:47:37'),
	(41, 'widget_encounter_right_2', '', '2013-10-29 13:06:59', '2013-10-29 13:47:37'),
	(42, 'widget_above_spot_light', '', '2013-10-29 13:06:59', '2013-10-29 15:05:47'),
	(43, 'widget_below_left_side_menu', '', '2013-10-29 13:06:59', '2013-10-29 15:05:47'),
	(45, 'from_email', 'info@sentirchat.com', '2013-10-30 12:04:20', '2025-08-07 16:15:59'),
	(46, 'email_notification_disable_user', '1', '2013-11-06 23:59:16', '2014-03-28 12:16:43'),
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
	(83, 'email_content_rate_photo', '[from_username] Calificó su foto', '2013-11-17 12:12:48', '2014-03-29 16:56:20'),
	(84, 'email_subject_rate_photo', 'Calificó su foto', '2013-11-17 12:12:48', '2014-03-29 16:56:20'),
	(85, 'email_content_comment_photo', '', '2013-11-17 12:12:55', '2013-11-17 12:12:55'),
	(86, 'email_subject_comment_photo', '', '2013-11-17 12:12:55', '2013-11-17 12:12:55'),
	(87, 'email_content_delete_user', '', '2013-11-28 16:02:03', '2013-11-28 16:02:03'),
	(88, 'email_subject_delete_user', '', '2013-11-28 16:02:03', '2013-11-28 16:02:03'),
	(89, 'email_content_disable_user', '', '2013-11-28 16:09:26', '2013-11-28 16:09:26'),
	(90, 'email_subject_disable_user', '', '2013-11-28 16:09:26', '2013-11-28 16:09:26'),
	(91, 'email_subject_email_verification', 'Verifica tur Email', '2013-11-28 17:00:47', '2014-03-29 09:57:04'),
	(92, 'email_subject_meetme', 'Alguien quiere conocerte', '2013-11-28 17:01:12', '2014-03-28 09:47:35'),
	(93, 'email_content_accept_message_request', '', '2013-11-28 17:01:17', '2013-11-28 17:01:17'),
	(94, 'email_subject_accept_message_request', '', '2013-11-28 17:01:17', '2013-11-28 17:01:17'),
	(95, 'email_subject_profile_visitor', 'Alguien visitó tu perfil', '2013-11-28 17:01:23', '2014-03-28 08:54:22'),
	(96, 'email_content_send_message_request', 'm', '2013-11-28 17:01:29', '2014-03-09 14:31:46'),
	(97, 'email_subject_send_message_request', '', '2013-11-28 17:01:29', '2013-11-28 17:01:29'),
	(98, 'email_content_delete_photo', '', '2013-11-28 17:08:45', '2013-11-28 17:08:45'),
	(99, 'email_subject_delete_photo', '', '2013-11-28 17:08:45', '2013-11-28 17:08:45'),
	(100, 'email_subject_forgot_password', '', '2013-11-28 17:14:57', '2013-11-28 17:14:57'),
	(102, 'meta_keywords', '', '2013-12-25 15:20:59', '2014-03-29 22:35:03'),
	(103, 'meta_description', '', '2013-12-25 15:20:59', '2013-12-25 15:56:58'),
	(104, 'search_engine_access', '0', '2013-12-25 15:52:17', '2014-02-22 13:05:41'),
	(114, 'debug_mode', '-1', '2014-02-22 11:15:37', '2014-03-24 15:49:09'),
	(118, 'favicon', '0', '2014-02-22 12:39:25', '2014-03-29 22:34:31'),
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
	(132, 'show_superpowers', '1', '2014-03-24 16:32:05', '2014-03-28 10:05:51'),
	(133, 'show_riseup_msg', '1', '2014-03-24 16:32:05', '2014-03-28 10:05:51'),
	(134, 'show_fb_invite', '1', '2014-03-24 16:32:05', '2014-03-28 10:05:51'),
	(135, 'show_photo_rater', '1', '2014-03-24 16:32:05', '2014-03-24 16:32:05'),
	(136, 'show_encounters', '1', '2014-03-24 16:32:05', '2014-03-24 16:32:05'),
	(137, 'frontbackgroundimage', '', '2014-03-27 20:54:25', '2014-03-29 22:37:12'),
	(138, 'email_content_add_contact', '[from_username] added you as contact', '2014-03-28 10:58:15', '2014-03-28 10:58:15'),
	(139, 'email_subject_add_contact', 'Te agregué como contacto', '2014-03-28 10:58:15', '2014-03-28 10:58:15'),
	(140, 'email_subject_message', 'Te envié un mensaje', '2014-03-28 10:58:40', '2014-03-28 10:58:40'),
	(141, 'email_notification_mutual_attraction', '1', '2014-03-28 12:16:43', '2014-03-28 12:16:43'),
	(142, 'email_notification_add_contact', '1', '2014-03-28 12:16:43', '2014-03-28 12:16:43'),
	(143, 'email_notification_send_gift', '1', '2014-03-28 12:16:43', '2014-03-28 12:16:43'),
	(144, 'email_content_send_gift', '[from_username] sent you a gift!', '2014-03-29 17:14:58', '2014-03-29 17:14:58'),
	(145, 'email_subject_send_gift', 'recibiste un regalo', '2014-03-29 17:14:58', '2014-03-29 17:14:58'),
	(146, 'email_content_mutual_attraction', '[from_username] ¡¡¡Quiere conocerte también!!!', '2014-03-29 18:44:00', '2014-03-29 18:44:00'),
	(147, 'email_subject_mutual_attraction', 'Atracción mutua', '2014-03-29 18:45:59', '2014-03-29 18:45:59');

-- Volcando estructura para tabla rigola.spotlights
CREATE TABLE IF NOT EXISTS `spotlights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.spotlights: ~1 rows (aproximadamente)
INSERT INTO `spotlights` (`id`, `user_id`, `rank`, `created_at`, `updated_at`) VALUES
	(8, 21149, 1, '2025-10-10 17:00:12', '2025-10-10 17:00:12');

-- Volcando estructura para tabla rigola.superpowers
CREATE TABLE IF NOT EXISTS `superpowers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.superpowers: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `photo_id` varchar(255) NOT NULL DEFAULT '0',
  `role` int(11) NOT NULL,
  `city` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `verified` int(11) NOT NULL,
  `verification_no` varchar(16) NOT NULL,
  `language` varchar(3) NOT NULL,
  `profile_score` int(11) NOT NULL,
  `album_count` int(11) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla rigola.users: ~3 rows (aproximadamente)
INSERT INTO `users` (`id`, `email`, `name`, `password`, `gender`, `age`, `last_login`, `created_at`, `updated_at`, `photo_id`, `role`, `city`, `country`, `fb`, `verified`, `verification_no`, `language`, `profile_score`, `album_count`, `lat`, `lng`) VALUES
	(21152, 'raulcasanova@yahoo.com', 'Raul', '$2a$08$jMEZ5oV2kyUbS/g5UG6kjuNpyq/yPRkjKH21BJSOosYQMyc.5hj7i', 1, 54, '2025-10-12 13:40:46', '2025-10-10 19:45:03', '2025-10-12 13:40:46', '21152128486368e962c1a7ab9', 0, 'Cercedilla', 'España', NULL, 1, '68e9623fcf91b', '', 9, 0, 40.733589, -4.067495),
	(21153, 'rac1408@gmail.com', 'Maria', '$2a$08$cVaC8yVWIkcreHuKAvXLEObXNxUUaGh5qjXDORH1DEIHMAr38dIJW', 2, 52, '2025-10-12 12:18:00', '2025-10-10 19:50:07', '2025-10-12 14:18:00', '211536316268e9645413980', 0, 'Cercedilla', 'España', NULL, 1, '68e9636fef195', '', 9, 0, 40.733513, -4.067540),
	(21154, 'mariaisabelpascualuli@gmail.com', 'Maria Isabel', '$2a$08$pCuB/ZZPi1qpLq7IkiPKJefA.dIF9Sj/tkjPfZ6iAmbE/3hQCrYvG', 2, 52, '2025-10-12 13:43:21', '2025-10-12 13:20:13', '2025-10-12 13:43:21', '21154157853468ebab85055f3', 0, 'Cercedilla', 'España', NULL, 1, '68ebab0d12f1e', '', 9, 0, 40.733517, -4.067530);

-- Volcando estructura para tabla rigola.user_gifts
CREATE TABLE IF NOT EXISTS `user_gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `message` mediumtext NOT NULL,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.user_gifts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.user_interests
CREATE TABLE IF NOT EXISTS `user_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.user_interests: ~0 rows (aproximadamente)

-- Volcando estructura para tabla rigola.user_settings
CREATE TABLE IF NOT EXISTS `user_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla rigola.user_settings: ~20 rows (aproximadamente)
INSERT INTO `user_settings` (`id`, `user_id`, `name`, `value`, `created_at`, `updated_at`) VALUES
	(1, 21152, 'show_me_offline', '0', '2025-10-10 19:45:05', '2025-10-10 19:45:05'),
	(2, 21152, 'hide_from_search', '0', '2025-10-10 19:45:05', '2025-10-10 19:45:05'),
	(3, 21152, 'send_add_contact_email', '1', '2025-10-10 19:45:05', '2025-10-10 19:45:05'),
	(4, 21152, 'send_meet_me_email', '1', '2025-10-10 19:45:05', '2025-10-10 19:45:05'),
	(5, 21152, 'send_photo_commented_email', '1', '2025-10-10 19:45:05', '2025-10-10 19:45:05'),
	(6, 21152, 'send_photo_rated_email', '1', '2025-10-10 19:45:05', '2025-10-10 19:45:05'),
	(7, 21152, 'send_message_sent_email', '1', '2025-10-10 19:45:05', '2025-10-10 19:45:05'),
	(8, 21152, 'send_profile_visitor_email', '1', '2025-10-10 19:45:05', '2025-10-10 19:45:05'),
	(9, 21152, 'send_gift_sent_email', '1', '2025-10-10 19:45:05', '2025-10-10 19:45:05'),
	(10, 21152, 'send_mutual_attraction_email', '1', '2025-10-10 19:45:05', '2025-10-10 19:45:05'),
	(11, 21153, 'show_me_offline', '0', '2025-10-10 19:50:09', '2025-10-10 19:50:09'),
	(12, 21153, 'hide_from_search', '0', '2025-10-10 19:50:09', '2025-10-10 19:50:09'),
	(13, 21153, 'send_add_contact_email', '1', '2025-10-10 19:50:09', '2025-10-10 19:50:09'),
	(14, 21153, 'send_meet_me_email', '1', '2025-10-10 19:50:09', '2025-10-10 19:50:09'),
	(15, 21153, 'send_photo_commented_email', '1', '2025-10-10 19:50:09', '2025-10-10 19:50:09'),
	(16, 21153, 'send_photo_rated_email', '1', '2025-10-10 19:50:09', '2025-10-10 19:50:09'),
	(17, 21153, 'send_message_sent_email', '1', '2025-10-10 19:50:09', '2025-10-10 19:50:09'),
	(18, 21153, 'send_profile_visitor_email', '1', '2025-10-10 19:50:09', '2025-10-10 19:50:09'),
	(19, 21153, 'send_gift_sent_email', '1', '2025-10-10 19:50:09', '2025-10-10 19:50:09'),
	(20, 21153, 'send_mutual_attraction_email', '1', '2025-10-10 19:50:09', '2025-10-10 19:50:09'),
	(21, 21154, 'show_me_offline', '0', '2025-10-12 13:20:18', '2025-10-12 13:20:18'),
	(22, 21154, 'hide_from_search', '0', '2025-10-12 13:20:18', '2025-10-12 13:20:18'),
	(23, 21154, 'send_add_contact_email', '1', '2025-10-12 13:20:18', '2025-10-12 13:20:18'),
	(24, 21154, 'send_meet_me_email', '1', '2025-10-12 13:20:18', '2025-10-12 13:20:18'),
	(25, 21154, 'send_photo_commented_email', '1', '2025-10-12 13:20:18', '2025-10-12 13:20:18'),
	(26, 21154, 'send_photo_rated_email', '1', '2025-10-12 13:20:18', '2025-10-12 13:20:18'),
	(27, 21154, 'send_message_sent_email', '1', '2025-10-12 13:20:18', '2025-10-12 13:20:18'),
	(28, 21154, 'send_profile_visitor_email', '1', '2025-10-12 13:20:18', '2025-10-12 13:20:18'),
	(29, 21154, 'send_gift_sent_email', '1', '2025-10-12 13:20:18', '2025-10-12 13:20:18'),
	(30, 21154, 'send_mutual_attraction_email', '1', '2025-10-12 13:20:18', '2025-10-12 13:20:18');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
