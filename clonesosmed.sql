/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : clonesosmed

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 01/04/2022 16:12:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_activation_attempts
-- ----------------------------
DROP TABLE IF EXISTS `auth_activation_attempts`;
CREATE TABLE `auth_activation_attempts`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_activation_attempts
-- ----------------------------

-- ----------------------------
-- Table structure for auth_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_groups`;
CREATE TABLE `auth_groups`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_groups_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_groups_permissions`;
CREATE TABLE `auth_groups_permissions`  (
  `group_id` int UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int UNSIGNED NOT NULL DEFAULT 0,
  INDEX `auth_groups_permissions_permission_id_foreign`(`permission_id` ASC) USING BTREE,
  INDEX `group_id_permission_id`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_groups_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_groups_users
-- ----------------------------
DROP TABLE IF EXISTS `auth_groups_users`;
CREATE TABLE `auth_groups_users`  (
  `group_id` int UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int UNSIGNED NOT NULL DEFAULT 0,
  INDEX `auth_groups_users_user_id_foreign`(`user_id` ASC) USING BTREE,
  INDEX `group_id_user_id`(`group_id` ASC, `user_id` ASC) USING BTREE,
  CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_groups_users
-- ----------------------------

-- ----------------------------
-- Table structure for auth_logins
-- ----------------------------
DROP TABLE IF EXISTS `auth_logins`;
CREATE TABLE `auth_logins`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int UNSIGNED NULL DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `email`(`email` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_logins
-- ----------------------------
INSERT INTO `auth_logins` VALUES (1, '::1', 'alfinkh98@gmail.com', 1, '2022-03-30 23:43:38', 0);
INSERT INTO `auth_logins` VALUES (2, '::1', 'alfinkh98@gmail.com', 1, '2022-03-30 23:44:16', 0);
INSERT INTO `auth_logins` VALUES (3, '::1', 'alfinkh98@gmail.com', 2, '2022-03-30 23:51:34', 0);
INSERT INTO `auth_logins` VALUES (4, '::1', 'alfinkh98@gmail.com', 3, '2022-03-30 23:53:33', 1);
INSERT INTO `auth_logins` VALUES (5, '::1', 'alfinkh98@gmail.com', 3, '2022-03-31 00:36:47', 1);
INSERT INTO `auth_logins` VALUES (6, '::1', 'alfinkh98@gmail.com', 3, '2022-03-31 01:28:04', 1);
INSERT INTO `auth_logins` VALUES (7, '::1', 'alfinkh98@gmail.com', 3, '2022-03-31 01:35:52', 1);
INSERT INTO `auth_logins` VALUES (8, '::1', 'alfin', NULL, '2022-03-31 02:32:26', 0);
INSERT INTO `auth_logins` VALUES (9, '::1', 'alfinkh98@gmail.com', 3, '2022-03-31 04:56:15', 1);
INSERT INTO `auth_logins` VALUES (10, '::1', 'alfinkh98@gmail.com', 3, '2022-03-31 09:25:46', 1);
INSERT INTO `auth_logins` VALUES (11, '::1', 'alfin', NULL, '2022-03-31 20:42:12', 0);
INSERT INTO `auth_logins` VALUES (12, '::1', 'alfinkh98@gmail.com', 3, '2022-03-31 20:42:22', 1);
INSERT INTO `auth_logins` VALUES (13, '::1', 'ily@gmail.com', 4, '2022-03-31 21:58:58', 1);
INSERT INTO `auth_logins` VALUES (14, '::1', 'ily123@gmail.com', 5, '2022-03-31 22:04:14', 1);
INSERT INTO `auth_logins` VALUES (15, '::1', 'alfinkh98@gmail.com', 3, '2022-03-31 22:08:16', 1);
INSERT INTO `auth_logins` VALUES (16, '::1', 'ilyas', NULL, '2022-03-31 22:09:17', 0);
INSERT INTO `auth_logins` VALUES (17, '::1', 'ily123@gmail.com', 5, '2022-03-31 22:09:24', 1);
INSERT INTO `auth_logins` VALUES (18, '::1', 'alfinkh98@gmail.com', 3, '2022-03-31 22:20:40', 1);
INSERT INTO `auth_logins` VALUES (19, '::1', 'ily123@gmail.com', 5, '2022-03-31 22:21:29', 1);
INSERT INTO `auth_logins` VALUES (20, '::1', 'ily123@gmail.com', 5, '2022-03-31 22:24:30', 1);
INSERT INTO `auth_logins` VALUES (21, '::1', 'alfinkh98@gmail.com', 3, '2022-03-31 22:25:15', 1);
INSERT INTO `auth_logins` VALUES (22, '::1', 'ily123@gmail.com', 5, '2022-03-31 22:26:49', 1);

-- ----------------------------
-- Table structure for auth_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_permissions`;
CREATE TABLE `auth_permissions`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_reset_attempts
-- ----------------------------
DROP TABLE IF EXISTS `auth_reset_attempts`;
CREATE TABLE `auth_reset_attempts`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_reset_attempts
-- ----------------------------

-- ----------------------------
-- Table structure for auth_tokens
-- ----------------------------
DROP TABLE IF EXISTS `auth_tokens`;
CREATE TABLE `auth_tokens`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `selector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashedValidator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `auth_tokens_user_id_foreign`(`user_id` ASC) USING BTREE,
  INDEX `selector`(`selector` ASC) USING BTREE,
  CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for auth_users_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_users_permissions`;
CREATE TABLE `auth_users_permissions`  (
  `user_id` int UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int UNSIGNED NOT NULL DEFAULT 0,
  INDEX `auth_users_permissions_permission_id_foreign`(`permission_id` ASC) USING BTREE,
  INDEX `user_id_permission_id`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_users_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for komentar
-- ----------------------------
DROP TABLE IF EXISTS `komentar`;
CREATE TABLE `komentar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL DEFAULT 0,
  `postid` int NOT NULL DEFAULT 0,
  `komentar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of komentar
-- ----------------------------
INSERT INTO `komentar` VALUES (1, 0, 21, 'asdasd', NULL);
INSERT INTO `komentar` VALUES (2, 3, 21, 'asdasd111', NULL);
INSERT INTO `komentar` VALUES (3, 3, 16, '11111111', NULL);
INSERT INTO `komentar` VALUES (4, 3, 21, 'dddddd', NULL);
INSERT INTO `komentar` VALUES (5, 3, 21, '', NULL);
INSERT INTO `komentar` VALUES (6, 3, 21, '22222', NULL);
INSERT INTO `komentar` VALUES (7, 3, 21, '333333', NULL);
INSERT INTO `komentar` VALUES (8, 3, 21, 'komentar', NULL);
INSERT INTO `komentar` VALUES (9, 3, 13, 'koi', NULL);
INSERT INTO `komentar` VALUES (10, 3, 16, 'dddddd', NULL);
INSERT INTO `komentar` VALUES (11, 5, 21, 'komentar ilyas', NULL);
INSERT INTO `komentar` VALUES (12, 5, 16, 'komentar test ilyas', NULL);
INSERT INTO `komentar` VALUES (13, 5, 15, 'komentar video', NULL);
INSERT INTO `komentar` VALUES (14, 5, 21, 'komentar', '2022-04-01 10:51:10');
INSERT INTO `komentar` VALUES (15, 5, 16, 'komentar', '2022-04-01 10:57:12');
INSERT INTO `komentar` VALUES (16, 5, 15, '333333', '2022-04-01 11:10:27');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `namespace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1648700981, 1);

-- ----------------------------
-- Table structure for tlike
-- ----------------------------
DROP TABLE IF EXISTS `tlike`;
CREATE TABLE `tlike`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int NOT NULL,
  `userid` int NULL DEFAULT NULL,
  `like` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tlike
-- ----------------------------
INSERT INTO `tlike` VALUES (19, 16, 5, 1);
INSERT INTO `tlike` VALUES (21, 16, 3, 1);
INSERT INTO `tlike` VALUES (22, 15, 5, 1);

-- ----------------------------
-- Table structure for tposts
-- ----------------------------
DROP TABLE IF EXISTS `tposts`;
CREATE TABLE `tposts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `vid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `like` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tposts
-- ----------------------------
INSERT INTO `tposts` VALUES (13, '3', 'koi', '2022-03-31 15:33:04', NULL, NULL, '1648715584_e9fa4d47b224573bb6b4.mp4', 1);
INSERT INTO `tposts` VALUES (14, '3', '', '2022-03-31 15:38:40', NULL, '1648715920_2bac735fc36848a235f2.png', NULL, 2);
INSERT INTO `tposts` VALUES (15, '3', '', '2022-03-31 15:39:00', NULL, NULL, '1648715940_f39b60b3747dd6a8ebac.mp4', NULL);
INSERT INTO `tposts` VALUES (16, '3', 'test upload', '2022-03-31 15:41:29', NULL, NULL, NULL, NULL);
INSERT INTO `tposts` VALUES (21, '3', 'test upload semua', '2022-03-31 16:55:40', NULL, '1648720540_4f536e8985778e6e44c9.png', '1648720540_d6a0061398ac5a2784e2.mp4', 12);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reset_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reset_at` datetime NULL DEFAULT NULL,
  `reset_expires` datetime NULL DEFAULT NULL,
  `activate_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (3, 'alfinkh98@gmail.com', 'alfin', '$2y$10$lRvhsPoCHs3Y0w2Aa49mUO.G9/z.pgChRHGHur9K2MrQXNdacstAy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-03-30 23:53:20', '2022-03-30 23:53:20', NULL);
INSERT INTO `users` VALUES (4, 'ily@gmail.com', 'yoga', '$2y$10$Xt/IZefF8UMmUUYqURT4behqyjAJQMeICTFZHDQIIegcvnYXHp26.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-03-31 21:58:49', '2022-03-31 21:58:49', NULL);
INSERT INTO `users` VALUES (5, 'ily123@gmail.com', 'ilyas', '$2y$10$sxiuS0b7GGhOvkIh.lKS5e0w1xBHgJ0T9aPH7Bby2QuhV8UVwjimO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-03-31 22:04:04', '2022-03-31 22:04:04', NULL);

SET FOREIGN_KEY_CHECKS = 1;
