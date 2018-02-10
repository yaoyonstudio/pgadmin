/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : pink

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-02-09 18:34:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add postcate', '1', 'add_postcate');
INSERT INTO `auth_permission` VALUES ('2', 'Can change postcate', '1', 'change_postcate');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete postcate', '1', 'delete_postcate');
INSERT INTO `auth_permission` VALUES ('4', 'Can add post', '2', 'add_post');
INSERT INTO `auth_permission` VALUES ('5', 'Can change post', '2', 'change_post');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete post', '2', 'delete_post');
INSERT INTO `auth_permission` VALUES ('7', 'Can add log entry', '3', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('8', 'Can change log entry', '3', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete log entry', '3', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('10', 'Can add permission', '4', 'add_permission');
INSERT INTO `auth_permission` VALUES ('11', 'Can change permission', '4', 'change_permission');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete permission', '4', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('13', 'Can add group', '5', 'add_group');
INSERT INTO `auth_permission` VALUES ('14', 'Can change group', '5', 'change_group');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete group', '5', 'delete_group');
INSERT INTO `auth_permission` VALUES ('16', 'Can add user', '6', 'add_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can change user', '6', 'change_user');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete user', '6', 'delete_user');
INSERT INTO `auth_permission` VALUES ('19', 'Can add content type', '7', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can change content type', '7', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete content type', '7', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('22', 'Can add session', '8', 'add_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can change session', '8', 'change_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete session', '8', 'delete_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add comment', '9', 'add_comment');
INSERT INTO `auth_permission` VALUES ('26', 'Can change comment', '9', 'change_comment');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete comment', '9', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('28', 'Can add config', '10', 'add_config');
INSERT INTO `auth_permission` VALUES ('29', 'Can change config', '10', 'change_config');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete config', '10', 'delete_config');
INSERT INTO `auth_permission` VALUES ('31', 'Can add customer', '11', 'add_customer');
INSERT INTO `auth_permission` VALUES ('32', 'Can change customer', '11', 'change_customer');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete customer', '11', 'delete_customer');
INSERT INTO `auth_permission` VALUES ('34', 'Can add postimg', '12', 'add_postimg');
INSERT INTO `auth_permission` VALUES ('35', 'Can change postimg', '12', 'change_postimg');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete postimg', '12', 'delete_postimg');
INSERT INTO `auth_permission` VALUES ('37', 'Can add slide', '13', 'add_slide');
INSERT INTO `auth_permission` VALUES ('38', 'Can change slide', '13', 'change_slide');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete slide', '13', 'delete_slide');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('3', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('5', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('6', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'pinkgirl', 'comment');
INSERT INTO `django_content_type` VALUES ('10', 'pinkgirl', 'config');
INSERT INTO `django_content_type` VALUES ('11', 'pinkgirl', 'customer');
INSERT INTO `django_content_type` VALUES ('2', 'pinkgirl', 'post');
INSERT INTO `django_content_type` VALUES ('1', 'pinkgirl', 'postcate');
INSERT INTO `django_content_type` VALUES ('12', 'pinkgirl', 'postimg');
INSERT INTO `django_content_type` VALUES ('13', 'pinkgirl', 'slide');
INSERT INTO `django_content_type` VALUES ('8', 'sessions', 'session');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-02-09 09:58:54.546101');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-02-09 09:59:02.276155');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-02-09 09:59:04.216351');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-02-09 09:59:04.251914');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-02-09 09:59:05.467532');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-02-09 09:59:06.168449');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-02-09 09:59:07.220596');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-02-09 09:59:07.284640');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-02-09 09:59:08.008590');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-02-09 09:59:08.068892');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-02-09 09:59:08.148455');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2018-02-09 09:59:09.848826');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2018-02-09 09:59:10.453216');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2018-02-09 09:59:11.167152');
INSERT INTO `django_migrations` VALUES ('15', 'pinkgirl', '0001_initial', '2018-02-09 10:00:59.573206');
INSERT INTO `django_migrations` VALUES ('16', 'pinkgirl', '0002_auto_20180209_1803', '2018-02-09 10:03:49.097679');
INSERT INTO `django_migrations` VALUES ('17', 'pinkgirl', '0003_auto_20180209_1804', '2018-02-09 10:04:59.217377');
INSERT INTO `django_migrations` VALUES ('18', 'pinkgirl', '0004_auto_20180209_1808', '2018-02-09 10:08:31.491400');
INSERT INTO `django_migrations` VALUES ('19', 'pinkgirl', '0005_auto_20180209_1833', '2018-02-09 10:33:39.260217');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for `pinkgirl_comment`
-- ----------------------------
DROP TABLE IF EXISTS `pinkgirl_comment`;
CREATE TABLE `pinkgirl_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` longtext NOT NULL,
  `comment_isopen` varchar(1) NOT NULL,
  `comment_thumbup` int(11) NOT NULL,
  `comment_thumbdown` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pinkgirl_comment_customer_id_20f65764_fk_pinkgirl_customer_id` (`customer_id`),
  KEY `pinkgirl_comment_post_id_06230b93_fk_pinkgirl_post_id` (`post_id`),
  CONSTRAINT `pinkgirl_comment_customer_id_20f65764_fk_pinkgirl_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `pinkgirl_customer` (`id`),
  CONSTRAINT `pinkgirl_comment_post_id_06230b93_fk_pinkgirl_post_id` FOREIGN KEY (`post_id`) REFERENCES `pinkgirl_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pinkgirl_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `pinkgirl_config`
-- ----------------------------
DROP TABLE IF EXISTS `pinkgirl_config`;
CREATE TABLE `pinkgirl_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) NOT NULL,
  `config_value` longtext NOT NULL,
  `config_desc` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pinkgirl_config
-- ----------------------------

-- ----------------------------
-- Table structure for `pinkgirl_customer`
-- ----------------------------
DROP TABLE IF EXISTS `pinkgirl_customer`;
CREATE TABLE `pinkgirl_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(20) NOT NULL,
  `customer_firstname` varchar(20) NOT NULL,
  `customer_lastname` varchar(20) NOT NULL,
  `customer_nickname` varchar(20) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_avatar` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_token` varchar(255) NOT NULL,
  `customer_openid` varchar(255) NOT NULL,
  `customer_qq` varchar(20) NOT NULL,
  `customer_mobile` varchar(20) NOT NULL,
  `customer_active` varchar(1) NOT NULL,
  `customer_sex` varchar(1) NOT NULL,
  `customer_ip` varchar(30) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `create_birthday` date NOT NULL,
  `customer_lastlogin` datetime(6) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pinkgirl_customer
-- ----------------------------

-- ----------------------------
-- Table structure for `pinkgirl_post`
-- ----------------------------
DROP TABLE IF EXISTS `pinkgirl_post`;
CREATE TABLE `pinkgirl_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_description` longtext NOT NULL,
  `post_source` varchar(255) NOT NULL,
  `post_sourcelink` varchar(255) NOT NULL,
  `post_hits` int(11) NOT NULL,
  `post_thumbup` int(11) NOT NULL,
  `post_thumbdown` int(11) NOT NULL,
  `post_keywords` longtext NOT NULL,
  `post_content` longtext NOT NULL,
  `post_isopen` varchar(1) NOT NULL,
  `post_isrecommend` varchar(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `featuredimg_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pinkgirl_post_cate_id_b686c005_fk_pinkgirl_postcate_id` (`cate_id`),
  KEY `pinkgirl_post_author_id_7717677a_fk_auth_user_id` (`author_id`),
  KEY `pinkgirl_post_featuredimg_id_a07c5285_fk_pinkgirl_postimg_id` (`featuredimg_id`),
  CONSTRAINT `pinkgirl_post_author_id_7717677a_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `pinkgirl_post_cate_id_b686c005_fk_pinkgirl_postcate_id` FOREIGN KEY (`cate_id`) REFERENCES `pinkgirl_postcate` (`id`),
  CONSTRAINT `pinkgirl_post_featuredimg_id_a07c5285_fk_pinkgirl_postimg_id` FOREIGN KEY (`featuredimg_id`) REFERENCES `pinkgirl_postimg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pinkgirl_post
-- ----------------------------

-- ----------------------------
-- Table structure for `pinkgirl_postcate`
-- ----------------------------
DROP TABLE IF EXISTS `pinkgirl_postcate`;
CREATE TABLE `pinkgirl_postcate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_title` varchar(255) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pinkgirl_postcate_parent_id_id_cd39c1ec` (`parent_id`),
  KEY `pinkgirl_postcate_author_id_01986567_fk_auth_user_id` (`author_id`),
  CONSTRAINT `pinkgirl_postcate_author_id_01986567_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `pinkgirl_postcate_parent_id_84ab763f_fk_pinkgirl_postcate_id` FOREIGN KEY (`parent_id`) REFERENCES `pinkgirl_postcate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pinkgirl_postcate
-- ----------------------------

-- ----------------------------
-- Table structure for `pinkgirl_postimg`
-- ----------------------------
DROP TABLE IF EXISTS `pinkgirl_postimg`;
CREATE TABLE `pinkgirl_postimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_title` varchar(255) NOT NULL,
  `img_thumburl` varchar(255) NOT NULL,
  `img_commonurl` varchar(255) NOT NULL,
  `img_originurl` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pinkgirl_postimg_author_id_486374eb_fk_auth_user_id` (`author_id`),
  CONSTRAINT `pinkgirl_postimg_author_id_486374eb_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pinkgirl_postimg
-- ----------------------------

-- ----------------------------
-- Table structure for `pinkgirl_slide`
-- ----------------------------
DROP TABLE IF EXISTS `pinkgirl_slide`;
CREATE TABLE `pinkgirl_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_title` varchar(255) NOT NULL,
  `slide_link` varchar(255) NOT NULL,
  `slide_img` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pinkgirl_slide
-- ----------------------------
