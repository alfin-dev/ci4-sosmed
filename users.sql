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

-- Dumping structure for table clonesosmed.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table clonesosmed.users: ~5 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(3, 'alfinkh98@gmail.com', 'alfin', '$2y$10$lRvhsPoCHs3Y0w2Aa49mUO.G9/z.pgChRHGHur9K2MrQXNdacstAy', '998d3cb07994f26f29221f12048fd8e0', NULL, '2022-04-19 03:52:12', NULL, NULL, NULL, 1, 0, '2022-03-30 23:53:20', '2022-04-19 02:52:12', NULL),
	(4, 'ily@gmail.com', 'yoga', '$2y$10$Xt/IZefF8UMmUUYqURT4behqyjAJQMeICTFZHDQIIegcvnYXHp26.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-03-31 21:58:49', '2022-03-31 21:58:49', NULL),
	(5, 'ily123@gmail.com', 'ilyas', '$2y$10$sxiuS0b7GGhOvkIh.lKS5e0w1xBHgJ0T9aPH7Bby2QuhV8UVwjimO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-03-31 22:04:04', '2022-03-31 22:04:04', NULL),
	(6, 'ily11115@gmail.com', 'alfin111', '$2y$10$z7PFY/Zkoi7ElNGmpbvyae4Z8LMvjEg2D2ruzGDC2PDEdfWc2wNea', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-04-21 23:04:34', '2022-04-21 23:04:34', NULL),
	(7, 'coba111@gmail.com', 'coba111', '$2y$10$DzB7GCZ2cDhPY3aQHG3mROD4gORkkA9irCauB1ZZbKPGO2QX/VKWC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-04-21 23:06:02', '2022-04-21 23:06:02', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
