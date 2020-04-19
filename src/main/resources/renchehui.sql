/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : renchehui

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2019-09-29 17:13:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL COMMENT '0：未开始\r\n            1：进行中\r\n            2：已结束',
  `summary` varchar(1000) DEFAULT NULL,
  `description` longtext,
  `link` varchar(1000) DEFAULT NULL,
  `begin_time` bigint(20) DEFAULT NULL,
  `end_time` bigint(20) DEFAULT '0',
  `channel_top` tinyint(4) DEFAULT NULL COMMENT '0：否\r\n            1：是',
  `home_top` tinyint(4) DEFAULT NULL COMMENT '0：否\r\n            1：是',
  `pv_count` int(11) DEFAULT NULL,
  `uv_count` int(11) DEFAULT NULL,
  `up_count` int(11) DEFAULT NULL,
  `fav_count` int(11) DEFAULT NULL,
  `publish_state` tinyint(4) DEFAULT NULL COMMENT '0：未发布\r\n            1：已发布\r\n            2：撤销发布',
  `create_uid` int(11) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `unpublish_uname` varchar(100) DEFAULT NULL,
  `unpublish_time` bigint(20) DEFAULT NULL,
  `seo_keywords` varchar(200) DEFAULT NULL,
  `sdk_path` varchar(1000) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `share_count` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `seo_description` longtext,
  `tags` varchar(1000) DEFAULT NULL,
  `cover_pic` varchar(1000) DEFAULT NULL,
  `cars` varchar(1000) DEFAULT NULL,
  `sdk_id` int(11) DEFAULT NULL,
  `sdk_title` varchar(100) DEFAULT NULL,
  `dealer` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('4', '爬山', null, null, null, null, '阿甘', 'www.hh.com', '1554393600000', '1556208000000', null, null, null, null, null, null, null, null, null, '个2', null, null, 'hh', null, null, null, null, null, null, '58ddaf00N9c28a921.jpg', null, null, null, null);

-- ----------------------------
-- Table structure for activity_car
-- ----------------------------
DROP TABLE IF EXISTS `activity_car`;
CREATE TABLE `activity_car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT NULL,
  `car_id` bigint(20) DEFAULT NULL COMMENT '对应car_model表的id字段',
  `enable` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_car
-- ----------------------------

-- ----------------------------
-- Table structure for activity_category
-- ----------------------------
DROP TABLE IF EXISTS `activity_category`;
CREATE TABLE `activity_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT NULL COMMENT '0：未删除\r\n            1：已删除',
  `create_time` bigint(20) DEFAULT NULL,
  `last_update_time` bigint(20) DEFAULT NULL,
  `use_count` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_category
-- ----------------------------

-- ----------------------------
-- Table structure for activity_channel
-- ----------------------------
DROP TABLE IF EXISTS `activity_channel`;
CREATE TABLE `activity_channel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT NULL COMMENT '0：未删除\r\n            1：已删除',
  `create_time` bigint(20) DEFAULT NULL,
  `last_update_time` bigint(20) DEFAULT NULL,
  `use_count` varchar(100) DEFAULT NULL,
  `sign` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_channel
-- ----------------------------

-- ----------------------------
-- Table structure for activity_dealer
-- ----------------------------
DROP TABLE IF EXISTS `activity_dealer`;
CREATE TABLE `activity_dealer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL COMMENT '对应car_model表的id字段',
  `dealer_province` varchar(255) DEFAULT NULL,
  `dealer_city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_dealer
-- ----------------------------

-- ----------------------------
-- Table structure for activity_interface
-- ----------------------------
DROP TABLE IF EXISTS `activity_interface`;
CREATE TABLE `activity_interface` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `interface_id` int(11) NOT NULL,
  `sdk_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_interface
-- ----------------------------

-- ----------------------------
-- Table structure for activity_key
-- ----------------------------
DROP TABLE IF EXISTS `activity_key`;
CREATE TABLE `activity_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL COMMENT '对应car_model表的id字段',
  `act_key` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_key
-- ----------------------------

-- ----------------------------
-- Table structure for activity_link
-- ----------------------------
DROP TABLE IF EXISTS `activity_link`;
CREATE TABLE `activity_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_link
-- ----------------------------

-- ----------------------------
-- Table structure for activity_pdata
-- ----------------------------
DROP TABLE IF EXISTS `activity_pdata`;
CREATE TABLE `activity_pdata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `province_name` varchar(100) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `extend_data` longtext,
  `create_time` bigint(20) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `brand_name` varchar(200) DEFAULT NULL,
  `make_id` int(11) DEFAULT NULL,
  `make_name` varchar(200) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `model_name` varchar(200) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `car_name` varchar(200) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '0' COMMENT '0：待处理\r\n            1：跟进中\r\n            2：战败\r\n            3：无效\r\n            4：成交',
  `state_update_uid` int(11) DEFAULT NULL,
  `state_update_time` bigint(20) DEFAULT NULL,
  `visitor_guid` varchar(50) DEFAULT NULL,
  `visit_ip` varchar(50) DEFAULT NULL,
  `dealer_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_pdata
-- ----------------------------

-- ----------------------------
-- Table structure for activity_tag
-- ----------------------------
DROP TABLE IF EXISTS `activity_tag`;
CREATE TABLE `activity_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL COMMENT '对应car_model表的id字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_tag
-- ----------------------------

-- ----------------------------
-- Table structure for admin_menu_auth
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu_auth`;
CREATE TABLE `admin_menu_auth` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `controller` varchar(50) DEFAULT NULL COMMENT '如果该菜单为一级菜单，那么parent_guid为NULL',
  `action` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `classname` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0：禁用\r\n            1：启用',
  `sort` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1：模块\r\n            2：菜单\r\n            3：权限',
  `parent_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu_auth
-- ----------------------------

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL COMMENT '0：未删除\r\n            1：已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `salt` varchar(128) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0：未启用\r\n            1：启用',
  `create_time` bigint(20) DEFAULT NULL,
  `is_super` tinyint(4) DEFAULT NULL COMMENT '0：普通管理员\r\n            1：超级管理员',
  `consumer` varchar(200) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `dept` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------

-- ----------------------------
-- Table structure for admin_user_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '如果该菜单为一级菜单，那么parent_guid为NULL',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `pid` int(11) DEFAULT '0' COMMENT '0：未删除\r\n            1：已删除',
  `areacode` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT '0：未启用\r\n            1：已启用',
  `source` varchar(500) DEFAULT NULL,
  `author` varchar(500) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `cover_pic` varchar(500) DEFAULT NULL,
  `thumb_pic` varchar(500) DEFAULT NULL,
  `tags` varchar(1000) DEFAULT NULL COMMENT '此字段为冗余字段，存放逗号分割的标签ID，用于便捷的进行资讯的筛选等操作，真正的资讯和标签的关联关系存放在article_tag表中',
  `content` longtext,
  `preview_url` varchar(500) DEFAULT NULL,
  `qrcode_url` varchar(500) DEFAULT NULL,
  `pv_count` int(11) DEFAULT NULL,
  `uv_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `fav_count` int(11) DEFAULT NULL,
  `share_count` int(11) DEFAULT NULL,
  `channel_top` tinyint(4) DEFAULT NULL,
  `home_top` tinyint(4) DEFAULT NULL,
  `create_uid` int(11) DEFAULT NULL COMMENT '如果是外部资源，那么该字段值为0',
  `create_uname` varchar(500) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `submit_uid` int(11) DEFAULT NULL,
  `submit_time` bigint(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '0：草稿；\r\n            1：等待内容审核；\r\n            2：内容审核通过；\r\n            3：内容审核退回；',
  `state_order` int(11) DEFAULT NULL COMMENT '该字段用于内容列表按照审核状态降序排列：\r\n            0：草稿；\r\n            1：内容审核通过；\r\n            2：等待内容审核；\r\n            3：内容审核退回；',
  `last_audit_uid` int(11) DEFAULT NULL,
  `last_audit_username` varchar(20) DEFAULT NULL,
  `last_audit_time` bigint(20) DEFAULT NULL COMMENT '仅当发布审核通过时才记录该时间',
  `last_reject_reason` varchar(200) DEFAULT NULL,
  `publish_state` tinyint(4) DEFAULT NULL COMMENT '0：未发布\r\n            1：已发布',
  `publish_uid` int(11) DEFAULT NULL,
  `publish_uname` varchar(200) DEFAULT NULL,
  `publish_time` bigint(20) DEFAULT NULL,
  `unpublish_uid` int(11) DEFAULT NULL,
  `unpublish_uname` varchar(200) DEFAULT NULL,
  `unpublish_time` bigint(20) DEFAULT NULL,
  `unpublish_reason` varchar(500) DEFAULT NULL,
  `last_update_uid` int(11) DEFAULT NULL,
  `last_update_uname` varchar(20) DEFAULT NULL,
  `last_update_time` bigint(20) DEFAULT NULL,
  `seo_keywords` varchar(200) DEFAULT NULL,
  `seo_description` varchar(200) DEFAULT NULL,
  `allow_up` tinyint(4) DEFAULT NULL COMMENT '0：不允许\r\n            1：允许',
  `allow_fav` tinyint(4) DEFAULT NULL COMMENT '0：不允许\r\n            1：允许',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '汽车', null, 'hao', '好的', 'hello', null, null, 'sum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1');
INSERT INTO `article` VALUES ('2', '汽车22', null, '好22', 'vue2', 'hello22', null, null, 'SUV2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1');
INSERT INTO `article` VALUES ('3', '很好', null, '不错', 'sdf', 'helllo', '58ddaf00N9c28a921.jpg', null, 'sum', 'sdfsdf', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1');

-- ----------------------------
-- Table structure for article_action
-- ----------------------------
DROP TABLE IF EXISTS `article_action`;
CREATE TABLE `article_action` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) DEFAULT NULL,
  `operator_uid` int(11) DEFAULT NULL COMMENT '0：未启用\r\n            1：已启用',
  `operator_username` varchar(50) DEFAULT NULL COMMENT '0：非默认摘要\r\n            1：默认摘要',
  `create_time` bigint(20) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `operate_type` tinyint(4) DEFAULT NULL COMMENT '1：新增\r\n            2：编辑\r\n            3：审核\r\n            4：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_action
-- ----------------------------

-- ----------------------------
-- Table structure for article_category
-- ----------------------------
DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '0：未启用\r\n            1：已启用',
  `is_deleted` tinyint(4) DEFAULT NULL COMMENT '0：未删除\r\n            1：已删除',
  `sort_num` int(11) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `last_update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_category
-- ----------------------------

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL COMMENT '0：未启用\r\n            1：已启用',
  `article_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_tag
-- ----------------------------

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) DEFAULT NULL,
  `brand_name` varchar(500) DEFAULT NULL,
  `make_id` int(11) DEFAULT NULL,
  `make_name` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `other_name` varchar(500) DEFAULT NULL COMMENT '0：未启用\r\n            1：已启用',
  `english_name` varchar(500) DEFAULT NULL,
  `country_class` int(11) DEFAULT NULL,
  `country_class_name` varchar(500) DEFAULT NULL,
  `body_form` int(11) DEFAULT NULL COMMENT '类似：SUV、MPV等',
  `body_form_name` varchar(500) DEFAULT NULL,
  `price_low` decimal(18,3) DEFAULT NULL,
  `price_high` decimal(18,3) DEFAULT NULL,
  `level` int(11) DEFAULT NULL COMMENT '0：其它\r\n            1：微型车\r\n            2：小型车\r\n            3：紧凑型车\r\n            4：中型车\r\n            5：中大型车\r\n            6：豪华车\r\n            7：SUV\r\n            8：MPV\r\n            9：跑车\r\n            10：概念车\r\n            11：面包车\r\n            12：皮卡\r\n            13：轻客\r\n            14：客车\r\n            15：卡车\r\n            16：轻卡\r\n            17：重卡',
  `level_name` varchar(500) DEFAULT NULL,
  `level_second` int(11) DEFAULT NULL COMMENT '0：其它\r\n            1：小型suv\r\n            2：紧凑型suv\r\n            3：中型suv\r\n            4：中大型suv\r\n            5：大型suv\r\n            6：微客\r\n            7：小客\r\n            8：中客\r\n            9：大客\r\n            10：微卡\r\n            11：轻卡\r\n            12：中卡\r\n            13：重卡',
  `level_second_name` varchar(500) DEFAULT NULL,
  `sale_status` tinyint(4) DEFAULT NULL,
  `all_spell` varchar(50) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `country_name` varchar(500) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `sync_time` bigint(20) DEFAULT NULL COMMENT '仅当发布审核通过时才记录该时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', null, null, '1', null, 'ben', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `car` VALUES ('2', null, null, '2', null, 'bmw', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for car_brand
-- ----------------------------
DROP TABLE IF EXISTS `car_brand`;
CREATE TABLE `car_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `other_name` varchar(500) DEFAULT NULL COMMENT '0：未启用\r\n            1：已启用',
  `english_name` varchar(500) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `logo_url` varchar(500) DEFAULT NULL,
  `logo_meaning` varchar(1000) DEFAULT NULL COMMENT '此字段为冗余字段，存放逗号分割的标签ID，用于便捷的进行资讯的筛选等操作，真正的资讯和标签的关联关系存放在article_tag表中',
  `first_char` varchar(5) DEFAULT NULL,
  `spell` varchar(50) DEFAULT NULL,
  `all_spell` varchar(50) DEFAULT NULL,
  `name_spell` varchar(50) DEFAULT NULL,
  `name_all_spell` varchar(50) DEFAULT NULL,
  `introduction` varchar(1000) DEFAULT NULL,
  `sale_status` tinyint(4) DEFAULT NULL,
  `is_enabled` tinyint(4) DEFAULT NULL,
  `is_removed` tinyint(4) DEFAULT NULL COMMENT '如果是外部资源，那么该字段值为0',
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `do_time` bigint(20) DEFAULT NULL COMMENT '0：草稿；\r\n            1：等待内容审核；\r\n            2：内容审核通过；\r\n            3：内容审核退回；',
  `sync_time` bigint(20) DEFAULT NULL COMMENT '仅当发布审核通过时才记录该时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_brand
-- ----------------------------

-- ----------------------------
-- Table structure for car_image
-- ----------------------------
DROP TABLE IF EXISTS `car_image`;
CREATE TABLE `car_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) DEFAULT NULL,
  `img_title` varchar(500) DEFAULT NULL,
  `img_type` int(11) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `sync_time` bigint(20) DEFAULT NULL COMMENT '仅当发布审核通过时才记录该时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_image
-- ----------------------------

-- ----------------------------
-- Table structure for car_make
-- ----------------------------
DROP TABLE IF EXISTS `car_make`;
CREATE TABLE `car_make` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) DEFAULT NULL,
  `brand_name` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `other_name` varchar(500) DEFAULT NULL COMMENT '0：未启用\r\n            1：已启用',
  `english_name` varchar(500) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `website` varchar(500) DEFAULT NULL,
  `logo_url` varchar(500) DEFAULT NULL,
  `spell` varchar(50) DEFAULT NULL,
  `introduction` varchar(1000) DEFAULT NULL,
  `is_enabled` tinyint(4) DEFAULT NULL,
  `is_removed` tinyint(4) DEFAULT NULL COMMENT '如果是外部资源，那么该字段值为0',
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `sync_time` bigint(20) DEFAULT NULL COMMENT '仅当发布审核通过时才记录该时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_make
-- ----------------------------
INSERT INTO `car_make` VALUES ('1', null, '奔驰', null, null, null, null, null, null, null, '58ddaef9Nad82c24a.jpg', null, null, null, null, null, null, null);
INSERT INTO `car_make` VALUES ('2', null, '宝马', null, null, null, null, null, null, null, '58ddaef9Nad82c24a.jpg', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for car_manufacturer
-- ----------------------------
DROP TABLE IF EXISTS `car_manufacturer`;
CREATE TABLE `car_manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(50) DEFAULT NULL,
  `make_id` int(11) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_manufacturer
-- ----------------------------
INSERT INTO `car_manufacturer` VALUES ('1', '中国', '1', null);
INSERT INTO `car_manufacturer` VALUES ('2', '天津', '2', null);

-- ----------------------------
-- Table structure for car_model
-- ----------------------------
DROP TABLE IF EXISTS `car_model`;
CREATE TABLE `car_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) DEFAULT NULL,
  `brand_name` varchar(500) DEFAULT NULL,
  `make_id` int(11) DEFAULT NULL,
  `make_name` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `other_name` varchar(500) DEFAULT NULL COMMENT '0：未启用\r\n            1：已启用',
  `english_name` varchar(500) DEFAULT NULL,
  `country_class` int(11) DEFAULT NULL,
  `country_class_name` varchar(500) DEFAULT NULL,
  `body_form` int(11) DEFAULT NULL COMMENT '类似：SUV、MPV等',
  `body_form_name` varchar(500) DEFAULT NULL,
  `price_low` decimal(18,3) DEFAULT NULL,
  `price_high` decimal(18,3) DEFAULT NULL,
  `level` int(11) DEFAULT NULL COMMENT '0：其它\r\n            1：微型车\r\n            2：小型车\r\n            3：紧凑型车\r\n            4：中型车\r\n            5：中大型车\r\n            6：豪华车\r\n            7：SUV\r\n            8：MPV\r\n            9：跑车\r\n            10：概念车\r\n            11：面包车\r\n            12：皮卡\r\n            13：轻客\r\n            14：客车\r\n            15：卡车\r\n            16：轻卡\r\n            17：重卡',
  `level_name` varchar(500) DEFAULT NULL,
  `level_second` int(11) DEFAULT NULL COMMENT '0：其它\r\n            1：小型suv\r\n            2：紧凑型suv\r\n            3：中型suv\r\n            4：中大型suv\r\n            5：大型suv\r\n            6：微客\r\n            7：小客\r\n            8：中客\r\n            9：大客\r\n            10：微卡\r\n            11：轻卡\r\n            12：中卡\r\n            13：重卡',
  `level_second_name` varchar(500) DEFAULT NULL,
  `sale_status` tinyint(4) DEFAULT NULL,
  `all_spell` varchar(50) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `country_name` varchar(500) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `sync_time` bigint(20) DEFAULT NULL COMMENT '仅当发布审核通过时才记录该时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_model
-- ----------------------------
INSERT INTO `car_model` VALUES ('1', null, null, '1', null, '奔驰LLL', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `car_model` VALUES ('2', null, null, '2', null, 'BMW', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for car_model_image
-- ----------------------------
DROP TABLE IF EXISTS `car_model_image`;
CREATE TABLE `car_model_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) DEFAULT NULL,
  `year` varchar(500) DEFAULT NULL,
  `mod_default` int(11) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `sync_time` bigint(20) DEFAULT NULL COMMENT '仅当发布审核通过时才记录该时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_model_image
-- ----------------------------

-- ----------------------------
-- Table structure for car_params
-- ----------------------------
DROP TABLE IF EXISTS `car_params`;
CREATE TABLE `car_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `param_name` varchar(50) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_params
-- ----------------------------
INSERT INTO `car_params` VALUES ('1', 'SUV1', '1', '1');
INSERT INTO `car_params` VALUES ('2', '呵呵', '2', '1');

-- ----------------------------
-- Table structure for car_param_type
-- ----------------------------
DROP TABLE IF EXISTS `car_param_type`;
CREATE TABLE `car_param_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_param_type
-- ----------------------------
INSERT INTO `car_param_type` VALUES ('1', '吉利', '1');
INSERT INTO `car_param_type` VALUES ('2', '哈哈2', '0');
INSERT INTO `car_param_type` VALUES ('3', '你好', '1');

-- ----------------------------
-- Table structure for car_select_list
-- ----------------------------
DROP TABLE IF EXISTS `car_select_list`;
CREATE TABLE `car_select_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `country` varchar(5) DEFAULT NULL,
  `car_type` varchar(16) DEFAULT NULL,
  `car_type_bak` tinyint(1) DEFAULT NULL,
  `msrp_min` decimal(6,2) DEFAULT NULL COMMENT '关联car_model表的ID字段',
  `msrp_max` decimal(6,2) DEFAULT NULL,
  `country_type` tinyint(1) DEFAULT NULL COMMENT '所属车系 ：自主1 日2 韩3 德4 美5 欧6',
  `country_std` tinyint(1) DEFAULT NULL,
  `space_std` decimal(10,8) DEFAULT NULL,
  `power_std` decimal(10,8) DEFAULT NULL,
  `comfort_std` decimal(10,8) DEFAULT NULL,
  `cost_std` decimal(10,8) DEFAULT NULL,
  `safe_std` decimal(10,8) DEFAULT NULL,
  `car_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_select_list
-- ----------------------------

-- ----------------------------
-- Table structure for choose_log
-- ----------------------------
DROP TABLE IF EXISTS `choose_log`;
CREATE TABLE `choose_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(255) DEFAULT NULL,
  `user_country` tinyint(4) DEFAULT NULL,
  `user_space` varchar(50) DEFAULT NULL,
  `user_power` varchar(50) DEFAULT NULL,
  `user_comfort` varchar(50) DEFAULT NULL COMMENT '关联car_model表的ID字段',
  `user_safe` varchar(50) DEFAULT NULL,
  `user_cost` varchar(50) DEFAULT NULL,
  `user_min` varchar(50) DEFAULT NULL,
  `user_max` varchar(50) DEFAULT NULL,
  `user_ptime` varchar(50) DEFAULT NULL,
  `user_car` varchar(50) DEFAULT NULL,
  `choose_car` varchar(50) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choose_log
-- ----------------------------

-- ----------------------------
-- Table structure for dict_answer
-- ----------------------------
DROP TABLE IF EXISTS `dict_answer`;
CREATE TABLE `dict_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weight_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `en_name` varchar(100) DEFAULT NULL,
  `adjust_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_answer
-- ----------------------------

-- ----------------------------
-- Table structure for dict_brand_point
-- ----------------------------
DROP TABLE IF EXISTS `dict_brand_point`;
CREATE TABLE `dict_brand_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) DEFAULT NULL COMMENT '关联car_brand表的ID字段',
  `name` varchar(100) DEFAULT NULL,
  `point` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_brand_point
-- ----------------------------

-- ----------------------------
-- Table structure for dict_country
-- ----------------------------
DROP TABLE IF EXISTS `dict_country`;
CREATE TABLE `dict_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `en_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_country
-- ----------------------------

-- ----------------------------
-- Table structure for dict_model
-- ----------------------------
DROP TABLE IF EXISTS `dict_model`;
CREATE TABLE `dict_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `model_name` varchar(100) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL COMMENT '关联car_model表的ID字段',
  `msrp_min` int(11) DEFAULT NULL,
  `space` tinyint(4) DEFAULT NULL,
  `power` tinyint(4) DEFAULT NULL,
  `comfort` tinyint(4) DEFAULT NULL,
  `cost` tinyint(4) DEFAULT NULL,
  `safety` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_model
-- ----------------------------

-- ----------------------------
-- Table structure for dict_weight
-- ----------------------------
DROP TABLE IF EXISTS `dict_weight`;
CREATE TABLE `dict_weight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `en_name` varchar(100) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_weight
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------

-- ----------------------------
-- Table structure for member_car
-- ----------------------------
DROP TABLE IF EXISTS `member_car`;
CREATE TABLE `member_car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `make_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `buy_year` int(11) DEFAULT NULL,
  `current_mileage` int(11) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1：已有座驾\r\n            2：期望座驾',
  `create_time` bigint(20) DEFAULT NULL,
  `last_update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_car
-- ----------------------------

-- ----------------------------
-- Table structure for member_fav
-- ----------------------------
DROP TABLE IF EXISTS `member_fav`;
CREATE TABLE `member_fav` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `fav_type` tinyint(4) DEFAULT NULL COMMENT '1：资讯\r\n            2：活动\r\n            3：车系',
  `content_id` bigint(20) DEFAULT NULL,
  `fav_time` bigint(20) DEFAULT NULL,
  `fav_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_fav
-- ----------------------------

-- ----------------------------
-- Table structure for member_login_log
-- ----------------------------
DROP TABLE IF EXISTS `member_login_log`;
CREATE TABLE `member_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `login_time` bigint(20) DEFAULT NULL,
  `is_first` tinyint(4) DEFAULT NULL COMMENT '0：不是首次登录\r\n            1：是首次登录',
  `login_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for member_point
-- ----------------------------
DROP TABLE IF EXISTS `member_point`;
CREATE TABLE `member_point` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_point
-- ----------------------------

-- ----------------------------
-- Table structure for member_profile
-- ----------------------------
DROP TABLE IF EXISTS `member_profile`;
CREATE TABLE `member_profile` (
  `member_id` bigint(20) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL COMMENT '0：全部\r\n            1：男\r\n            2：女',
  `level` int(11) DEFAULT NULL,
  `avatar_url` varchar(500) DEFAULT NULL,
  `mobile_code` varchar(10) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `register_time` bigint(20) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_profile
-- ----------------------------

-- ----------------------------
-- Table structure for member_profile_log
-- ----------------------------
DROP TABLE IF EXISTS `member_profile_log`;
CREATE TABLE `member_profile_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL COMMENT '0：全部\r\n            1：男\r\n            2：女',
  `level` int(11) DEFAULT NULL,
  `avatar_url` varchar(500) DEFAULT NULL,
  `mobile_code` varchar(10) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `register_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_profile_log
-- ----------------------------

-- ----------------------------
-- Table structure for member_tag
-- ----------------------------
DROP TABLE IF EXISTS `member_tag`;
CREATE TABLE `member_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_tag
-- ----------------------------

-- ----------------------------
-- Table structure for member_token
-- ----------------------------
DROP TABLE IF EXISTS `member_token`;
CREATE TABLE `member_token` (
  `member_id` bigint(20) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `expired_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_token
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `type` tinyint(4) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `is_schedule` int(11) DEFAULT NULL COMMENT '0：立即发送\r\n            1：定时发送',
  `schedule_time` bigint(20) DEFAULT NULL,
  `send_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '消息内容2', '1', 'www.msg.com', null, null, null);
INSERT INTO `message` VALUES ('2', '推送内容', '1', 'www.hh.com', null, null, null);

-- ----------------------------
-- Table structure for message_sendlog
-- ----------------------------
DROP TABLE IF EXISTS `message_sendlog`;
CREATE TABLE `message_sendlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_id` bigint(20) DEFAULT NULL,
  `send_time` bigint(20) DEFAULT NULL,
  `to_mid` bigint(20) DEFAULT NULL,
  `received` int(11) DEFAULT NULL COMMENT '0：未接收\r\n            1：已接收',
  `receive_time` bigint(20) DEFAULT NULL,
  `viewed` tinyint(4) DEFAULT NULL COMMENT '0：未阅读\r\n            1：已阅读',
  `view_time` bigint(20) DEFAULT NULL,
  `view_detail` tinyint(4) DEFAULT NULL,
  `view_detail_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_sendlog
-- ----------------------------

-- ----------------------------
-- Table structure for operate_log
-- ----------------------------
DROP TABLE IF EXISTS `operate_log`;
CREATE TABLE `operate_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operate_time` int(11) DEFAULT NULL,
  `operate_uid` int(11) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL COMMENT '0：未接收\r\n            1：已接收',
  `table_disname` varchar(50) DEFAULT NULL,
  `data_id` bigint(20) DEFAULT NULL COMMENT '0：未阅读\r\n            1：已阅读',
  `operate_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operate_log
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `description` longtext,
  `service` longtext,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '婴儿座椅', '<p><em><strong>都可以</strong></em></p>', '<p>随时退换</p>', null, null);
INSERT INTO `product` VALUES ('2', '电动汽车', '<p>不错</p>', '<p>24小时服务</p>', null, null);

-- ----------------------------
-- Table structure for product_car
-- ----------------------------
DROP TABLE IF EXISTS `product_car`;
CREATE TABLE `product_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_car
-- ----------------------------

-- ----------------------------
-- Table structure for product_car_activity
-- ----------------------------
DROP TABLE IF EXISTS `product_car_activity`;
CREATE TABLE `product_car_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_car_activity
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('MyScheduler', 'myTrigger_2', 'DEFAULT', '* * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('MyScheduler', 'myJob_2', 'DEFAULT', null, 'com.qf.job.MyJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400107363686564756C655F6A6F625F6B65797400957B226265616E4E616D65223A22746573745461736B222C2263726561746554696D65223A313535363234393832363236362C2263726F6E45787072657373696F6E223A222A202A202A202A202A203F222C226A6F624964223A322C226D6574686F644E616D65223A226A6F6231222C2272656D61726B223A22E4BBBBE58AA1E4B880E6B58BE8AF95222C22737461747573223A307D7800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('MyScheduler', 'myTrigger_2', 'DEFAULT', 'myJob_2', 'DEFAULT', null, '1556250079000', '1556250078000', '5', 'PAUSED', 'CRON', '1556249847000', '0', null, '0', '');

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('2', 'testTask', 'job1', null, '* * * * * ?', '1', '任务一测试', '2019-04-26 03:37:06');

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务日志';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sdk_interface
-- ----------------------------
DROP TABLE IF EXISTS `sdk_interface`;
CREATE TABLE `sdk_interface` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `inter_desc` varchar(2000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `success` varchar(2000) DEFAULT NULL,
  `error` varchar(2000) DEFAULT NULL,
  `request_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sdk_interface
-- ----------------------------

-- ----------------------------
-- Table structure for sdk_interface_info
-- ----------------------------
DROP TABLE IF EXISTS `sdk_interface_info`;
CREATE TABLE `sdk_interface_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `cars_id` varchar(255) DEFAULT NULL,
  `activity_key` varchar(200) DEFAULT NULL,
  `dealer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sdk_interface_info
-- ----------------------------

-- ----------------------------
-- Table structure for sdk_interface_parm
-- ----------------------------
DROP TABLE IF EXISTS `sdk_interface_parm`;
CREATE TABLE `sdk_interface_parm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interface_id` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `parm_name` varchar(50) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `is_required` int(1) DEFAULT NULL,
  `is_custom` int(1) DEFAULT NULL,
  `is_login` int(1) DEFAULT NULL,
  `activity_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sdk_interface_parm
-- ----------------------------

-- ----------------------------
-- Table structure for sdk_interface_type
-- ----------------------------
DROP TABLE IF EXISTS `sdk_interface_type`;
CREATE TABLE `sdk_interface_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` varchar(500) DEFAULT NULL,
  `interface_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sdk_interface_type
-- ----------------------------

-- ----------------------------
-- Table structure for sdk_interface_udparm
-- ----------------------------
DROP TABLE IF EXISTS `sdk_interface_udparm`;
CREATE TABLE `sdk_interface_udparm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `interface_id` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `parm_name` varchar(50) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '关联car_product表的ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sdk_interface_udparm
-- ----------------------------

-- ----------------------------
-- Table structure for sdk_temp
-- ----------------------------
DROP TABLE IF EXISTS `sdk_temp`;
CREATE TABLE `sdk_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `sdk_path` varchar(255) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `sdk_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sdk_temp
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '用户管理', 'sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'sys/role.html', null, '1', 'fa fa-user-secret', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'sys/menu.html', null, '1', 'fa fa-th-list', '3');
INSERT INTO `sys_menu` VALUES ('5', '30', 'SQL监控', 'druid/sql.html', null, '1', 'fa fa-bug', '4');
INSERT INTO `sys_menu` VALUES ('6', '30', '定时任务管理', 'schedule/job.html', null, '2', 'fa fa-tasks', '5');
INSERT INTO `sys_menu` VALUES ('7', '6', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '6', '新增', null, 'schedule:job:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '6', '修改', null, 'schedule:job:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '6', '删除', null, 'schedule:job:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '6', '暂停', null, 'schedule:job:pause', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '6', '恢复', null, 'schedule:job:resume', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '6', '立即执行', null, 'schedule:job:run', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '参数管理', 'sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-sun-o', '6');
INSERT INTO `sys_menu` VALUES ('30', '0', '监控管理', null, null, '0', 'fa fa-bug', '0');
INSERT INTO `sys_menu` VALUES ('31', '0', '资讯管理', null, null, '0', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('32', '31', '标签管理', 'tag/tag.html', null, '1', 'fa fa-bandcamp', '1');
INSERT INTO `sys_menu` VALUES ('33', '31', '咨询管理', 'article/article.html', null, '1', 'fa fa-book', '2');
INSERT INTO `sys_menu` VALUES ('34', '35', '品牌管理', 'car/carmake.html', null, '1', 'fa fa-car', '3');
INSERT INTO `sys_menu` VALUES ('35', '0', '车型库管理', null, null, '0', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('36', '0', '商品管理', null, null, '0', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('37', '0', '活动管理', null, null, '0', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('38', '0', '消息管理', null, null, '0', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('39', '38', '消息管理', 'message/message.html', null, '1', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('40', '37', '活动管理', 'activity/activity.html', null, '1', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('41', '36', '自有商品管理', 'product/productcar.html', null, '1', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('42', '35', '参数分类管理', 'car/carparamtype.html', null, '1', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('43', '35', '参数管理', 'car/carparams.html', null, '1', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('44', '35', '厂商管理', 'car/carmanufacturer.html', null, '1', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('45', '35', '车系管理', 'car/carmodel.html', null, '1', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('46', '35', '车款管理', 'car/car.html', null, '1', 'fa fa-car', '0');
INSERT INTO `sys_menu` VALUES ('47', '0', '统计管理', null, null, '0', 'fa fa-user-circle-o', '0');
INSERT INTO `sys_menu` VALUES ('48', '47', '标签折线图', 'echarts/line.html', null, '1', 'fa fa-bar-chart', '0');
INSERT INTO `sys_menu` VALUES ('49', '47', '标签柱状图', 'echarts/bar.html', null, '1', 'fa fa-bar-chart', '0');
INSERT INTO `sys_menu` VALUES ('50', '47', '标签饼图', 'echarts/pie.html', null, '1', 'fa fa-bar-chart', '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('5', '管理员', '', null, '2017-10-15 18:05:57');
INSERT INTO `sys_role` VALUES ('6', '测试人员', '', null, '2017-10-17 05:32:10');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('190', '5', '1');
INSERT INTO `sys_role_menu` VALUES ('191', '5', '2');
INSERT INTO `sys_role_menu` VALUES ('192', '5', '15');
INSERT INTO `sys_role_menu` VALUES ('193', '5', '16');
INSERT INTO `sys_role_menu` VALUES ('194', '5', '17');
INSERT INTO `sys_role_menu` VALUES ('195', '5', '18');
INSERT INTO `sys_role_menu` VALUES ('196', '5', '3');
INSERT INTO `sys_role_menu` VALUES ('197', '5', '19');
INSERT INTO `sys_role_menu` VALUES ('198', '5', '20');
INSERT INTO `sys_role_menu` VALUES ('199', '5', '21');
INSERT INTO `sys_role_menu` VALUES ('200', '5', '22');
INSERT INTO `sys_role_menu` VALUES ('201', '5', '4');
INSERT INTO `sys_role_menu` VALUES ('202', '5', '23');
INSERT INTO `sys_role_menu` VALUES ('203', '5', '24');
INSERT INTO `sys_role_menu` VALUES ('204', '5', '25');
INSERT INTO `sys_role_menu` VALUES ('205', '5', '26');
INSERT INTO `sys_role_menu` VALUES ('206', '5', '5');
INSERT INTO `sys_role_menu` VALUES ('207', '5', '6');
INSERT INTO `sys_role_menu` VALUES ('208', '5', '7');
INSERT INTO `sys_role_menu` VALUES ('209', '5', '8');
INSERT INTO `sys_role_menu` VALUES ('210', '5', '9');
INSERT INTO `sys_role_menu` VALUES ('211', '5', '10');
INSERT INTO `sys_role_menu` VALUES ('212', '5', '11');
INSERT INTO `sys_role_menu` VALUES ('213', '5', '12');
INSERT INTO `sys_role_menu` VALUES ('214', '5', '13');
INSERT INTO `sys_role_menu` VALUES ('215', '5', '14');
INSERT INTO `sys_role_menu` VALUES ('216', '5', '27');
INSERT INTO `sys_role_menu` VALUES ('217', '5', '29');
INSERT INTO `sys_role_menu` VALUES ('218', '5', '28');
INSERT INTO `sys_role_menu` VALUES ('225', '6', '1');
INSERT INTO `sys_role_menu` VALUES ('226', '6', '2');
INSERT INTO `sys_role_menu` VALUES ('227', '6', '15');
INSERT INTO `sys_role_menu` VALUES ('228', '6', '17');
INSERT INTO `sys_role_menu` VALUES ('229', '6', '18');
INSERT INTO `sys_role_menu` VALUES ('230', '6', '4');
INSERT INTO `sys_role_menu` VALUES ('231', '6', '23');
INSERT INTO `sys_role_menu` VALUES ('232', '6', '24');
INSERT INTO `sys_role_menu` VALUES ('233', '5', '30');
INSERT INTO `sys_role_menu` VALUES ('234', '5', '31');
INSERT INTO `sys_role_menu` VALUES ('235', '5', '32');
INSERT INTO `sys_role_menu` VALUES ('236', '5', '33');
INSERT INTO `sys_role_menu` VALUES ('237', '5', '34');
INSERT INTO `sys_role_menu` VALUES ('238', '5', '35');
INSERT INTO `sys_role_menu` VALUES ('239', '5', '36');
INSERT INTO `sys_role_menu` VALUES ('240', '5', '37');
INSERT INTO `sys_role_menu` VALUES ('241', '5', '38');
INSERT INTO `sys_role_menu` VALUES ('242', '5', '39');
INSERT INTO `sys_role_menu` VALUES ('243', '5', '40');
INSERT INTO `sys_role_menu` VALUES ('244', '5', '41');
INSERT INTO `sys_role_menu` VALUES ('245', '5', '42');
INSERT INTO `sys_role_menu` VALUES ('246', '5', '43');
INSERT INTO `sys_role_menu` VALUES ('247', '5', '44');
INSERT INTO `sys_role_menu` VALUES ('248', '5', '45');
INSERT INTO `sys_role_menu` VALUES ('249', '5', '46');
INSERT INTO `sys_role_menu` VALUES ('250', '5', '47');
INSERT INTO `sys_role_menu` VALUES ('251', '5', '48');
INSERT INTO `sys_role_menu` VALUES ('252', '5', '49');
INSERT INTO `sys_role_menu` VALUES ('253', '5', '50');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'df655ad8d3229f3269fad2a8bab59b6c', '100@qq.com', '13666666666', '1', null, '2017-06-01 15:33:20');
INSERT INTO `sys_user` VALUES ('2', 'guest', 'df655ad8d3229f3269fad2a8bab59b6c', 'guest@qq.com', '134', '1', null, '2019-04-18 13:53:14');
INSERT INTO `sys_user` VALUES ('3', 'test', 'df655ad8d3229f3269fad2a8bab59b6c', 'test@qq.com', '1399999', '1', null, '2019-04-18 13:53:47');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('67', '1', '5');
INSERT INTO `sys_user_role` VALUES ('68', '1', '6');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '0：未删除\r\n            1：已删除',
  `create_time` bigint(20) DEFAULT NULL,
  `last_update_time` bigint(20) DEFAULT NULL,
  `click_count` bigint(20) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '0：系统标签\r\n            1：用户标签',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', '车型投资报告', '0', null, null, '500', '1');
INSERT INTO `tag` VALUES ('2', 'SUV1', '0', null, null, '600', '1');
INSERT INTO `tag` VALUES ('3', '电动', '0', null, null, '800', '1');

-- ----------------------------
-- Table structure for tb_token
-- ----------------------------
DROP TABLE IF EXISTS `tb_token`;
CREATE TABLE `tb_token` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户Token';

-- ----------------------------
-- Records of tb_token
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'test', '13888888888', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2017-03-23 22:37:41');

-- ----------------------------
-- Table structure for visitor
-- ----------------------------
DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `visitor_guid` varchar(100) DEFAULT NULL,
  `first_visit_time` bigint(20) DEFAULT NULL,
  `entry_url` varchar(500) DEFAULT NULL COMMENT '0：不是首次登录\r\n            1：是首次登录',
  `visitor_ip` varchar(50) DEFAULT NULL,
  `visitor_device` varchar(200) DEFAULT NULL,
  `visitor_channel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visitor
-- ----------------------------

-- ----------------------------
-- Table structure for visit_log
-- ----------------------------
DROP TABLE IF EXISTS `visit_log`;
CREATE TABLE `visit_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `visitor_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `visit_url` varchar(500) DEFAULT NULL,
  `visit_ip` varchar(50) DEFAULT NULL COMMENT '0：不是首次登录\r\n            1：是首次登录',
  `visit_device` varchar(100) DEFAULT NULL,
  `visit_source` varchar(50) DEFAULT NULL,
  `enter_time` bigint(20) DEFAULT NULL,
  `exit_time` bigint(20) DEFAULT NULL,
  `stay` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visit_log
-- ----------------------------
