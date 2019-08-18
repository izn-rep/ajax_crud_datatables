/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : crud

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-11-15 20:19:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for disposisi
-- ----------------------------
DROP TABLE IF EXISTS `disposisi`;
CREATE TABLE `disposisi` (
  `id_disposisi` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat` int(11) NOT NULL,
  `disposisi1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disposisi2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of disposisi
-- ----------------------------

-- ----------------------------
-- Table structure for eksternal
-- ----------------------------
DROP TABLE IF EXISTS `eksternal`;
CREATE TABLE `eksternal` (
  `id_eksternal` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_eksternal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_eksternal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of eksternal
-- ----------------------------

-- ----------------------------
-- Table structure for kirim
-- ----------------------------
DROP TABLE IF EXISTS `kirim`;
CREATE TABLE `kirim` (
  `id_kirim` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tujuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approval_need` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `catatan` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `revisi` int(11) NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_kirim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of kirim
-- ----------------------------

-- ----------------------------
-- Table structure for klasifikasi
-- ----------------------------
DROP TABLE IF EXISTS `klasifikasi`;
CREATE TABLE `klasifikasi` (
  `id_klasifikasi` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_klasifikasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `klasifikasi` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_klasifikasi`),
  UNIQUE KEY `klasifikasi_kode_klasifikasi_unique` (`kode_klasifikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of klasifikasi
-- ----------------------------

-- ----------------------------
-- Table structure for komentar
-- ----------------------------
DROP TABLE IF EXISTS `komentar`;
CREATE TABLE `komentar` (
  `id_komentar` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_kirim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_surat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `komentar` text COLLATE utf8_unicode_ci NOT NULL,
  `komenter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persetujuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_komentar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of komentar
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2016_05_23_064336_create_klasifikasis_table', '1');
INSERT INTO `migrations` VALUES ('2016_05_23_064400_create_persetujuans_table', '1');
INSERT INTO `migrations` VALUES ('2016_05_23_064435_create_surats_table', '1');
INSERT INTO `migrations` VALUES ('2016_05_23_064521_create_kirims_table', '1');
INSERT INTO `migrations` VALUES ('2016_05_25_015025_create_komentars_table', '1');
INSERT INTO `migrations` VALUES ('2016_05_25_031537_create_statuses_table', '1');
INSERT INTO `migrations` VALUES ('2016_05_27_020747_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('2016_05_31_044709_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2016_06_07_094437_create_tujuan_eksternals_table', '1');
INSERT INTO `migrations` VALUES ('2016_06_22_044714_create_disposisis_table', '1');
INSERT INTO `migrations` VALUES ('2016_06_29_024637_create_scans_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for persetujuan
-- ----------------------------
DROP TABLE IF EXISTS `persetujuan`;
CREATE TABLE `persetujuan` (
  `id_persetujuan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_persetujuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persetujuan` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_persetujuan`),
  UNIQUE KEY `persetujuan_kode_persetujuan_unique` (`kode_persetujuan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of persetujuan
-- ----------------------------

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of persons
-- ----------------------------
INSERT INTO `persons` VALUES ('1', 'Airi', 'Satou', 'female', 'Tokyo', '1964-03-04');
INSERT INTO `persons` VALUES ('2', 'Garrett', 'Winters', 'male', 'Tokyo', '1988-09-02');
INSERT INTO `persons` VALUES ('3', 'John', 'Doe', 'male', 'Kansas', '1972-11-02');
INSERT INTO `persons` VALUES ('4', 'Tatyana', 'Fitzpatrick', 'male', 'London', '1989-01-01');
INSERT INTO `persons` VALUES ('5', 'Quinn', 'Flynn', 'male', 'Edinburgh', '1977-03-24');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id_role` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_role`),
  UNIQUE KEY `role_role_unique` (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for scan
-- ----------------------------
DROP TABLE IF EXISTS `scan`;
CREATE TABLE `scan` (
  `id_scan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_kirim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_scan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_scan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of scan
-- ----------------------------

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id_status` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_status`),
  UNIQUE KEY `status_kode_status_unique` (`kode_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of status
-- ----------------------------

-- ----------------------------
-- Table structure for surat
-- ----------------------------
DROP TABLE IF EXISTS `surat`;
CREATE TABLE `surat` (
  `id_surat` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `klasifikasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nomor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eksternal` int(11) NOT NULL,
  `follow_up` int(11) NOT NULL,
  `auto_save` int(11) NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_surat`),
  UNIQUE KEY `surat_nomor_unique` (`nomor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of surat
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `divisi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n_role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n_divisi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
