/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-09-04 16:40:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body_email` varchar(32) NOT NULL,
  `body_password` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES ('1', 'admin@52codes.net', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for captchas
-- ----------------------------
DROP TABLE IF EXISTS `captchas`;
CREATE TABLE `captchas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body_mobile` varchar(11) NOT NULL,
  `body_code` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captchas
-- ----------------------------

-- ----------------------------
-- Table structure for day_executes
-- ----------------------------
DROP TABLE IF EXISTS `day_executes`;
CREATE TABLE `day_executes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '开始执行时间',
  `end` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '结束执行时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of day_executes
-- ----------------------------

-- ----------------------------
-- Table structure for day_execute_logs
-- ----------------------------
DROP TABLE IF EXISTS `day_execute_logs`;
CREATE TABLE `day_execute_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) DEFAULT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `remark` text,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of day_execute_logs
-- ----------------------------

-- ----------------------------
-- Table structure for feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body_content` text NOT NULL,
  `body_tool` varchar(20) NOT NULL,
  `body_number` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedbacks
-- ----------------------------

-- ----------------------------
-- Table structure for lines
-- ----------------------------
DROP TABLE IF EXISTS `lines`;
CREATE TABLE `lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_object` int(11) NOT NULL,
  `body_period` int(11) NOT NULL,
  `body_open` decimal(10,5) NOT NULL,
  `body_close` decimal(10,5) NOT NULL,
  `body_high` decimal(10,5) NOT NULL,
  `body_low` decimal(10,5) NOT NULL,
  `body_volume` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lines
-- ----------------------------
INSERT INTO `lines` VALUES ('1', '1', '60', '0.79511', '0.79511', '0.79511', '0.79511', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('2', '1', '300', '0.79511', '0.79511', '0.79511', '0.79511', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('3', '1', '900', '0.79511', '0.79511', '0.79511', '0.79511', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('4', '1', '1800', '0.79511', '0.79511', '0.79511', '0.79511', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('5', '1', '3600', '0.79511', '0.79511', '0.79511', '0.79511', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('6', '1', '86400', '0.79511', '0.79511', '0.79511', '0.79511', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('7', '1', '604800', '0.79511', '0.79511', '0.79511', '0.79511', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('8', '1', '2592000', '0.79511', '0.79511', '0.79511', '0.79511', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('9', '2', '60', '1.18982', '1.18982', '1.18982', '1.18982', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('10', '2', '300', '1.18982', '1.18982', '1.18982', '1.18982', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('11', '2', '900', '1.18982', '1.18982', '1.18982', '1.18982', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('12', '2', '1800', '1.18982', '1.18982', '1.18982', '1.18982', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('13', '2', '3600', '1.18982', '1.18982', '1.18982', '1.18982', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('14', '2', '86400', '1.18982', '1.18982', '1.18982', '1.18982', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `lines` VALUES ('15', '2', '604800', '1.18982', '1.18982', '1.18982', '1.18982', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('16', '2', '2592000', '1.18982', '1.18982', '1.18982', '1.18982', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('17', '3', '60', '1.29421', '1.29421', '1.29421', '1.29421', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('18', '3', '300', '1.29421', '1.29421', '1.29421', '1.29421', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('19', '3', '900', '1.29421', '1.29421', '1.29421', '1.29421', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('20', '3', '1800', '1.29421', '1.29421', '1.29421', '1.29421', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('21', '3', '3600', '1.29421', '1.29421', '1.29421', '1.29421', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('22', '3', '86400', '1.29421', '1.29421', '1.29421', '1.29421', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('23', '3', '604800', '1.29421', '1.29421', '1.29421', '1.29421', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('24', '3', '2592000', '1.29421', '1.29421', '1.29421', '1.29421', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('25', '4', '60', '141.69300', '141.69300', '141.69300', '141.69300', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('26', '4', '300', '141.69300', '141.69300', '141.69300', '141.69300', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('27', '4', '900', '141.69300', '141.69300', '141.69300', '141.69300', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('28', '4', '1800', '141.69300', '141.69300', '141.69300', '141.69300', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('29', '4', '3600', '141.69300', '141.69300', '141.69300', '141.69300', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('30', '4', '86400', '141.69300', '141.69300', '141.69300', '141.69300', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('31', '4', '604800', '141.69300', '141.69300', '141.69300', '141.69300', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('32', '4', '2592000', '141.69300', '141.69300', '141.69300', '141.69300', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('33', '5', '60', '109.47400', '109.47400', '109.47400', '109.47400', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('34', '5', '300', '109.47400', '109.47400', '109.47400', '109.47400', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `lines` VALUES ('35', '5', '900', '109.47400', '109.47400', '109.47400', '109.47400', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('36', '5', '1800', '109.47400', '109.47400', '109.47400', '109.47400', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('37', '5', '3600', '109.47400', '109.47400', '109.47400', '109.47400', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('38', '5', '86400', '109.47400', '109.47400', '109.47400', '109.47400', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('39', '5', '604800', '109.47400', '109.47400', '109.47400', '109.47400', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('40', '5', '2592000', '109.47400', '109.47400', '109.47400', '109.47400', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('41', '6', '60', '130.26300', '130.26300', '130.26300', '130.26300', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('42', '6', '300', '130.26300', '130.26300', '130.26300', '130.26300', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('43', '6', '900', '130.26300', '130.26300', '130.26300', '130.26300', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('44', '6', '1800', '130.26300', '130.26300', '130.26300', '130.26300', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('45', '6', '3600', '130.26300', '130.26300', '130.26300', '130.26300', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('46', '6', '86400', '130.26300', '130.26300', '130.26300', '130.26300', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('47', '6', '604800', '130.26300', '130.26300', '130.26300', '130.26300', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('48', '6', '2592000', '130.26300', '130.26300', '130.26300', '130.26300', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('49', '7', '60', '1337.43000', '1337.43000', '1337.43000', '1337.43000', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('50', '7', '300', '1337.43000', '1337.43000', '1337.43000', '1337.43000', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('51', '7', '900', '1337.43000', '1337.43000', '1337.43000', '1337.43000', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('52', '7', '1800', '1337.43000', '1337.43000', '1337.43000', '1337.43000', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('53', '7', '3600', '1337.43000', '1337.43000', '1337.43000', '1337.43000', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `lines` VALUES ('54', '7', '86400', '1337.43000', '1337.43000', '1337.43000', '1337.43000', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');
INSERT INTO `lines` VALUES ('55', '7', '604800', '1337.43000', '1337.43000', '1337.43000', '1337.43000', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');
INSERT INTO `lines` VALUES ('56', '7', '2592000', '1337.43000', '1337.43000', '1337.43000', '1337.43000', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');
INSERT INTO `lines` VALUES ('57', '8', '60', '17.83600', '17.83600', '17.83600', '17.83600', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');
INSERT INTO `lines` VALUES ('58', '8', '300', '17.83600', '17.83600', '17.83600', '17.83600', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');
INSERT INTO `lines` VALUES ('59', '8', '900', '17.83600', '17.83600', '17.83600', '17.83600', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');
INSERT INTO `lines` VALUES ('60', '8', '1800', '17.83600', '17.83600', '17.83600', '17.83600', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');
INSERT INTO `lines` VALUES ('61', '8', '3600', '17.83600', '17.83600', '17.83600', '17.83600', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');
INSERT INTO `lines` VALUES ('62', '8', '86400', '17.83600', '17.83600', '17.83600', '17.83600', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');
INSERT INTO `lines` VALUES ('63', '8', '604800', '17.83600', '17.83600', '17.83600', '17.83600', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');
INSERT INTO `lines` VALUES ('64', '8', '2592000', '17.83600', '17.83600', '17.83600', '17.83600', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------

-- ----------------------------
-- Table structure for month_executes
-- ----------------------------
DROP TABLE IF EXISTS `month_executes`;
CREATE TABLE `month_executes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '执行者',
  `start` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '开始执行时间',
  `end` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '结束执行时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of month_executes
-- ----------------------------

-- ----------------------------
-- Table structure for month_execute_logs
-- ----------------------------
DROP TABLE IF EXISTS `month_execute_logs`;
CREATE TABLE `month_execute_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) DEFAULT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `remark` text,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of month_execute_logs
-- ----------------------------

-- ----------------------------
-- Table structure for objects
-- ----------------------------
DROP TABLE IF EXISTS `objects`;
CREATE TABLE `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body_profit` decimal(8,2) NOT NULL DEFAULT '0.80',
  `body_rank` int(11) NOT NULL DEFAULT '0',
  `body_name` varchar(255) NOT NULL,
  `body_status` int(1) NOT NULL DEFAULT '1',
  `body_name_english` varchar(50) NOT NULL,
  `body_tag` varchar(255) NOT NULL,
  `body_tag_forex` varchar(20) NOT NULL,
  `body_price` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_previous` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_min` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_max` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_interval` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_decimal` int(1) NOT NULL DEFAULT '5',
  `body_price_repeat` int(11) NOT NULL DEFAULT '0',
  `is_disabled` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of objects
-- ----------------------------
INSERT INTO `objects` VALUES ('1', '0.80', '3', '澳元/美元', '1', 'AUDUSD', 'fx_saudusd', 'AUDUSD', '0.79511', '0.75842', '0.79511', '0.79511', '0.00000', '5', '0', '0', '2016-04-18 00:00:00', '2017-09-04 15:55:14');
INSERT INTO `objects` VALUES ('2', '0.80', '2', '欧元/美元', '1', 'EURUSD', 'fx_seurusd', 'EURUSD', '1.18982', '1.12033', '1.18982', '1.18982', '0.00000', '5', '0', '0', '2016-04-18 00:00:00', '2017-09-04 15:55:14');
INSERT INTO `objects` VALUES ('3', '0.80', '2', '英镑/美元', '1', 'GBPUSD', 'fx_sgbpusd', 'GBPUSD', '1.29421', '1.27332', '1.29421', '1.29421', '0.00000', '5', '0', '0', '2016-04-18 00:00:00', '2017-09-04 15:55:15');
INSERT INTO `objects` VALUES ('4', '0.80', '5', '英镑/日元', '1', 'GBPJPY', 'fx_sgbpjpy', 'GBPJPY', '141.69300', '140.34300', '141.69300', '141.69300', '0.00000', '3', '0', '0', '2016-04-18 00:00:00', '2017-09-04 15:55:15');
INSERT INTO `objects` VALUES ('5', '0.80', '5', '美元/日元', '1', 'USDJPY', 'fx_susdjpy', 'USDJPY', '109.47400', '110.21300', '109.47400', '109.47400', '0.00000', '3', '0', '0', '2016-04-18 00:00:00', '2017-09-04 15:55:15');
INSERT INTO `objects` VALUES ('6', '0.80', '5', '欧元/日元', '1', 'EURJPY', 'fx_seurjpy', 'EURJPY', '130.26300', '123.48200', '130.26300', '130.26300', '0.00000', '3', '0', '0', '2016-04-18 00:00:00', '2017-09-04 15:55:16');
INSERT INTO `objects` VALUES ('7', '0.80', '1', '黄金', '1', 'XAUUSD', 'hf_GC', 'XAUUSD', '1337.43000', '1267.94000', '1337.43000', '1337.43000', '0.00000', '2', '0', '0', '2016-05-17 00:00:00', '2017-09-04 15:55:16');
INSERT INTO `objects` VALUES ('8', '0.80', '1', '白银', '1', 'XAGUSD', 'hf_SI', 'XAGUSD', '17.83600', '16.94900', '17.83600', '17.83600', '0.00000', '3', '0', '0', '2016-05-17 00:00:00', '2017-09-04 15:55:17');
INSERT INTO `objects` VALUES ('9', '0.80', '0', '比特币', '1', 'BTCCNY', 'BTCCNY', 'BTCCNY', '19406.00000', '19410.00000', '19406.00000', '19406.00000', '0.00000', '1', '0', '0', '2016-04-18 00:00:00', '2017-06-14 15:05:55');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(15) NOT NULL,
  `id_object` int(11) NOT NULL,
  `body_price_buying` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_striked` decimal(10,5) DEFAULT '0.00000',
  `body_stake` decimal(8,2) NOT NULL DEFAULT '0.00',
  `body_bonus` decimal(8,2) NOT NULL DEFAULT '0.00',
  `body_direction` int(1) NOT NULL DEFAULT '0',
  `body_time` int(11) NOT NULL DEFAULT '60',
  `body_is_win` int(1) DEFAULT NULL,
  `body_is_draw` int(1) DEFAULT NULL,
  `body_is_controlled` int(1) NOT NULL DEFAULT '0',
  `times` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `striked_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for pay_requests
-- ----------------------------
DROP TABLE IF EXISTS `pay_requests`;
CREATE TABLE `pay_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(12) NOT NULL,
  `body_stake` int(5) NOT NULL,
  `body_gateway` varchar(32) NOT NULL,
  `body_transfer_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `processed_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_requests
-- ----------------------------

-- ----------------------------
-- Table structure for prices
-- ----------------------------
DROP TABLE IF EXISTS `prices`;
CREATE TABLE `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_object` int(11) NOT NULL,
  `body_price` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body_rank` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prices
-- ----------------------------
INSERT INTO `prices` VALUES ('1', '1', '0.79511', '2017-09-04 15:55:13', '0', '2017-09-04 15:55:13', '2017-09-04 15:55:13');
INSERT INTO `prices` VALUES ('2', '2', '1.18982', '2017-09-04 15:55:14', '0', '2017-09-04 15:55:14', '2017-09-04 15:55:14');
INSERT INTO `prices` VALUES ('3', '3', '1.29421', '2017-09-04 15:55:15', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `prices` VALUES ('4', '4', '141.69300', '2017-09-04 15:55:15', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `prices` VALUES ('5', '5', '109.47400', '2017-09-04 15:55:15', '0', '2017-09-04 15:55:15', '2017-09-04 15:55:15');
INSERT INTO `prices` VALUES ('6', '6', '130.26300', '2017-09-04 15:55:16', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `prices` VALUES ('7', '7', '1337.43000', '2017-09-04 15:55:16', '0', '2017-09-04 15:55:16', '2017-09-04 15:55:16');
INSERT INTO `prices` VALUES ('8', '8', '17.83600', '2017-09-04 15:55:17', '0', '2017-09-04 15:55:17', '2017-09-04 15:55:17');

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(15) NOT NULL DEFAULT '0',
  `id_payRequest` int(11) NOT NULL DEFAULT '0',
  `id_withdrawRequest` int(11) NOT NULL DEFAULT '0',
  `id_refer` varchar(15) NOT NULL DEFAULT '0',
  `id_order` int(11) NOT NULL DEFAULT '0',
  `body_name` varchar(255) NOT NULL,
  `body_direction` int(1) NOT NULL DEFAULT '0',
  `body_stake` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of records
-- ----------------------------

-- ----------------------------
-- Table structure for systems
-- ----------------------------
DROP TABLE IF EXISTS `systems`;
CREATE TABLE `systems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `convert_max` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `convert_min` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `agentnote` text COLLATE utf8_unicode_ci,
  `interest_rate` char(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of systems
-- ----------------------------
INSERT INTO `systems` VALUES ('1', '6.5', '6.3', '   各代理商，即日起，开盘时间由早上五点调整为六点，同时，下午休盘时间凌晨五点调整为二点，请大家广为告之。', '0.02');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_wechat` varchar(32) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_introducer` varchar(12) NOT NULL DEFAULT '0',
  `body_phone` varchar(11) NOT NULL DEFAULT '0',
  `body_balance` decimal(8,2) NOT NULL DEFAULT '0.00',
  `body_transactions` decimal(10,2) NOT NULL DEFAULT '0.00',
  `body_transactions_network` decimal(10,2) NOT NULL DEFAULT '0.00',
  `body_bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_disabled` int(1) NOT NULL DEFAULT '0',
  `grade` int(1) DEFAULT NULL,
  `rname` varchar(32) DEFAULT NULL,
  `idcard` varchar(32) DEFAULT NULL,
  `tjm` varchar(12) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '13337710406', 'e10adc3949ba59abbe56e057f20f883e', '0', '13337710406', '2796.00', '400.00', '0.00', '0.00', '0', '1', '测试', '1234567890', '123456', '2017-06-25 00:00:00', '2017-06-14 17:44:02');

-- ----------------------------
-- Table structure for withdraw_requests
-- ----------------------------
DROP TABLE IF EXISTS `withdraw_requests`;
CREATE TABLE `withdraw_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(15) NOT NULL,
  `body_stake` decimal(8,2) NOT NULL,
  `body_name` varchar(30) NOT NULL,
  `body_bank` varchar(255) NOT NULL,
  `body_deposit` varchar(255) NOT NULL,
  `body_number` varchar(30) NOT NULL,
  `body_transfer_number` varchar(255) NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `processed_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of withdraw_requests
-- ----------------------------
