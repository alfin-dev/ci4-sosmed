-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.3.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6446
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table clonefb.tposts
CREATE TABLE IF NOT EXISTS `tposts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(20) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `tposts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table clonefb.tposts: ~20 rows (approximately)
DELETE FROM `tposts`;
INSERT INTO `tposts` (`id`, `userid`, `text`, `created_at`, `updated_at`, `img`, `vid`) VALUES
	(34, 1, 'coba posting', NULL, NULL, NULL, NULL),
	(35, 1, 'coba posting sekali lagi', NULL, NULL, NULL, NULL),
	(36, 2, 'coba post alfin 2', NULL, NULL, NULL, NULL),
	(37, 2, 'asdww', NULL, NULL, NULL, NULL),
	(38, 2, 'coba post alfin 2', NULL, NULL, '', NULL),
	(46, 1, 'gambar', NULL, NULL, '/upload/img/Certificate.jpg', NULL),
	(47, 1, 'gambar 2', NULL, NULL, '/upload/img/Certificate.jpg', NULL),
	(48, 1, 'gambar 23', NULL, NULL, '/upload/img/young-man-runner-tying-shoelaces.jpg', NULL),
	(49, 1, 'gambar 233', NULL, NULL, '/upload/img/Certificate.jpg', NULL),
	(50, 1, 'video', NULL, NULL, '', '/upload/vid/koi.mp4'),
	(51, 1, 'video 2', NULL, NULL, '', ''),
	(52, 1, 'video2', NULL, NULL, '', NULL),
	(53, 1, 'video22', NULL, NULL, '', '/upload/vid/koi.mp4'),
	(54, 1, '', NULL, NULL, '', '/upload/vid/koi.mp4'),
	(55, 1, '', NULL, NULL, '/upload/img/1.jpg', ''),
	(56, 1, 'coba post alfin 2 update', '2022-03-06 19:33:20', NULL, '', ''),
	(57, 1, 'coba post alfin 222', '2022-03-06 19:36:07', NULL, '', ''),
	(58, 1, 'coba post alfin 2', '2022-03-06 19:39:35', NULL, '', ''),
	(59, 1, 'coba posting', '2022-03-06 19:41:52', NULL, '', ''),
	(60, 1, 'coba post alfin 2 2222', '2022-03-07 02:17:55', NULL, '', '');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
