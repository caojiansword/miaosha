/*
Navicat MySQL Data Transfer

Source Server         : scm
Source Server Version : 50720
Source Host           : 192.9.200.137:3306
Source Database       : miaosha

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-04-12 18:39:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_title` varchar(255) DEFAULT NULL,
  `goods_img` varchar(2550) DEFAULT NULL,
  `goods_datail` varchar(255) DEFAULT NULL,
  `goods_price` double(10,2) DEFAULT NULL,
  `goods_stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '华为P20Pro', '华为手机', '/img/meta10.png', '华为手机今日促销，活动价仅1元', '1.00', '10');
INSERT INTO `goods` VALUES ('2', '小米6', '小米6手机', '/img/mi6.png', '小米6手机今日也促销啦', '1.00', '10');
INSERT INTO `goods` VALUES ('3', 'iphonex', '苹果XX', '/img/iphonex.png', '苹果6大促销啦，仅需1元', '1.00', '10');
INSERT INTO `goods` VALUES ('4', 'iphone8', '苹果8', '/img/iphone8.png', '苹果8大促销啦，仅需1元', '1.00', '10');

-- ----------------------------
-- Table structure for miaosha_goods
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_goods`;
CREATE TABLE `miaosha_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `stock_count` int(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `miaosha_price` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_goods
-- ----------------------------
INSERT INTO `miaosha_goods` VALUES ('1', '1', '8', '2018-12-24 17:20:33', '2018-12-25 16:20:43', null);
INSERT INTO `miaosha_goods` VALUES ('2', '2', '9', '2018-12-24 14:27:42', '2018-12-25 16:27:46', null);
INSERT INTO `miaosha_goods` VALUES ('3', '3', '9', '2018-12-24 14:27:58', '2018-12-24 19:28:02', null);
INSERT INTO `miaosha_goods` VALUES ('4', '4', '9', '2018-12-19 16:28:12', '2018-12-24 18:28:16', null);

-- ----------------------------
-- Table structure for miaosha_order
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_order`;
CREATE TABLE `miaosha_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` decimal(50,0) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_order
-- ----------------------------
INSERT INTO `miaosha_order` VALUES ('1', '17777809472', '2699', '1');
INSERT INTO `miaosha_order` VALUES ('2', '17777809472', '2700', '2');
INSERT INTO `miaosha_order` VALUES ('3', '18859026702', '2701', '1');
INSERT INTO `miaosha_order` VALUES ('4', '18859026702', '2702', '4');
INSERT INTO `miaosha_order` VALUES ('5', '18859026702', '2703', '3');

-- ----------------------------
-- Table structure for miaosha_user
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_user`;
CREATE TABLE `miaosha_user` (
  `id` decimal(14,0) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `head` varchar(255) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `login_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_user
-- ----------------------------
INSERT INTO `miaosha_user` VALUES ('17777809472', 'caojian', 'b7797cce01b4b131b433b6acf4add449', '1a2b3c4d', null, null, null, null);
INSERT INTO `miaosha_user` VALUES ('18859026702', '刘飞', 'b7797cce01b4b131b433b6acf4add449', '1a2b3c4d', null, null, null, null);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` decimal(65,0) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `delivery_addr_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_count` int(11) DEFAULT NULL,
  `goods_price` double(10,2) DEFAULT NULL,
  `order_channel` int(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `pay_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2704 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('2699', '17777809472', '1', null, '华为P20Pro', '1', null, '1', '0', '2018-12-24 16:51:19', null);
INSERT INTO `order_info` VALUES ('2700', '17777809472', '2', null, '小米6', '1', null, '1', '0', '2018-12-24 17:15:21', null);
INSERT INTO `order_info` VALUES ('2701', '18859026702', '1', null, '华为P20Pro', '1', null, '1', '0', '2018-12-24 17:27:15', null);
INSERT INTO `order_info` VALUES ('2702', '18859026702', '4', null, 'iphone8', '1', null, '1', '0', '2018-12-24 17:29:37', null);
INSERT INTO `order_info` VALUES ('2703', '18859026702', '3', null, 'iphonex', '1', null, '1', '0', '2018-12-24 18:00:46', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '222');
