/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : pink

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-02-14 11:43:05
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$100000$AAXSFXPvhGV9$XGlgjaWpSRYzRD4CTXB+eqbup2rUDmVs9Nd+hxmRGCg=', '2018-02-13 08:52:27.842879', '1', 'yaoyon', '', '', 'yaoyonstudio@gmail.com', '1', '1', '2018-02-11 01:00:00.358528');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2018-02-11 01:01:40.800791', '1', 'Postcate object (1)', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2018-02-11 01:02:13.333377', '2', '文学', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2018-02-11 01:02:31.791087', '3', '财经', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2018-02-11 01:02:39.241664', '4', '股票', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2018-02-11 01:03:40.320466', '1', '一个新文章', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2018-02-11 01:03:54.504855', '2', '测试另一个文章', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2018-02-12 07:32:42.323695', '3', '111111', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2018-02-12 07:32:53.139310', '4', '222222', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2018-02-12 07:33:04.971362', '5', '333333333', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2018-02-12 07:33:23.996495', '6', '44444444444444444', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2018-02-13 03:18:23.004961', '1', 'ken', '1', '[{\"added\": {}}]', '16', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('3', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('5', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('6', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('14', 'mainsite', 'post');
INSERT INTO `django_content_type` VALUES ('15', 'mainsite', 'postcate');
INSERT INTO `django_content_type` VALUES ('16', 'mainsite', 'profile');
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
INSERT INTO `django_session` VALUES ('evvkz17h92f3bc1ytoijw68mcn7w463c', 'OTI0NjUwOTU3OGE1YTA5ZmE3ZjE5ZWE0MDIzYzRjZjA2NDBmOTI5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDcxNjYzZjEwOTRhNTVhNmNlOTEzZGExN2Q4YTBmYjU1NTRkM2E5In0=', '2018-02-27 08:52:27.932885');
INSERT INTO `django_session` VALUES ('tdygb62x7ezpjypr6n5oa1nv35x0dze1', 'OTI0NjUwOTU3OGE1YTA5ZmE3ZjE5ZWE0MDIzYzRjZjA2NDBmOTI5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDcxNjYzZjEwOTRhNTVhNmNlOTEzZGExN2Q4YTBmYjU1NTRkM2E5In0=', '2018-02-25 01:00:16.195560');

-- ----------------------------
-- Table structure for `mainsite_comment`
-- ----------------------------
DROP TABLE IF EXISTS `mainsite_comment`;
CREATE TABLE `mainsite_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` longtext NOT NULL,
  `comment_isopen` tinyint(1) NOT NULL,
  `comment_thumbup` int(11) NOT NULL,
  `comment_thumbdown` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mainsite_comment_author_id_3806d459_fk_auth_user_id` (`author_id`),
  KEY `mainsite_comment_post_id_888ff927_fk_mainsite_post_id` (`post_id`),
  CONSTRAINT `mainsite_comment_author_id_3806d459_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `mainsite_comment_post_id_888ff927_fk_mainsite_post_id` FOREIGN KEY (`post_id`) REFERENCES `mainsite_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `mainsite_config`
-- ----------------------------
DROP TABLE IF EXISTS `mainsite_config`;
CREATE TABLE `mainsite_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) NOT NULL,
  `config_value` longtext NOT NULL,
  `config_desc` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_config
-- ----------------------------

-- ----------------------------
-- Table structure for `mainsite_post`
-- ----------------------------
DROP TABLE IF EXISTS `mainsite_post`;
CREATE TABLE `mainsite_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featuredimg` varchar(100) DEFAULT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_description` longtext,
  `post_source` varchar(255) DEFAULT NULL,
  `post_sourcelink` varchar(255) DEFAULT NULL,
  `post_hits` int(11) NOT NULL,
  `post_thumbup` int(11) NOT NULL,
  `post_thumbdown` int(11) NOT NULL,
  `post_keywords` varchar(255) DEFAULT NULL,
  `post_content` longtext NOT NULL,
  `post_isopen` tinyint(1) NOT NULL,
  `post_isrecommend` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mainsite_post_author_id_3d99e2aa_fk_auth_user_id` (`author_id`),
  KEY `mainsite_post_cate_id_7cadbfb4_fk_mainsite_postcate_id` (`cate_id`),
  CONSTRAINT `mainsite_post_author_id_3d99e2aa_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `mainsite_post_cate_id_7cadbfb4_fk_mainsite_postcate_id` FOREIGN KEY (`cate_id`) REFERENCES `mainsite_postcate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_post
-- ----------------------------
INSERT INTO `mainsite_post` VALUES ('1', 'featured/2018/02/11/80X80.jpg', '一个文章1', '一个文章1', '腾讯', 'http://www.qq.com', '0', '0', '0', '新文章', '<p>一个新文章一个新文章一个新文章一个新文章</p>', '1', '0', '2018-02-11 01:03:40.291452', '2018-02-11 01:03:40.291452', '1', '1');
INSERT INTO `mainsite_post` VALUES ('2', 'featured/2018/02/11/240X240.jpg', '一个文章2', '一个文章2', '新浪网', 'http://www.sina.com.cn', '0', '0', '0', '测试文章', '<p>测试文章测试文章</p>', '1', '0', '2018-02-11 01:03:54.486828', '2018-02-11 01:03:54.486828', '1', '2');
INSERT INTO `mainsite_post` VALUES ('3', 'featured/2018/02/12/60X60.jpg', '一个文章3', '一个文章3', '腾讯', 'http://www.qq.com', '0', '0', '0', '111111', '<p>111111</p>', '0', '0', '2018-02-12 07:32:42.234217', '2018-02-12 07:32:42.234217', '1', '3');
INSERT INTO `mainsite_post` VALUES ('4', 'featured/2018/02/12/180X180.jpg', '一个文章4', '一个文章4', '新浪网', 'http://www.qq.com', '0', '0', '0', '2222222222222', '<p>22222222</p>', '1', '0', '2018-02-12 07:32:53.123802', '2018-02-12 07:32:53.123802', '1', '2');
INSERT INTO `mainsite_post` VALUES ('5', 'featured/2018/02/12/240X240.jpg', '一个文章5', '一个文章5', '新浪网', 'http://www.qq.com', '0', '0', '0', '333333333333', '<p>3333333333333333333</p>', '1', '0', '2018-02-12 07:33:04.957785', '2018-02-12 07:33:04.957785', '1', '4');
INSERT INTO `mainsite_post` VALUES ('6', 'featured/2018/02/12/480X320.jpg', '一个文章6', '一个文章6', '新浪网', 'http://www.qq.com', '0', '0', '0', '44444444', '<p>44444444</p>', '1', '0', '2018-02-12 07:33:23.985987', '2018-02-12 07:33:23.985987', '1', '3');
INSERT INTO `mainsite_post` VALUES ('7', 'featured/2018/02/11/80X80.jpg', '一个文章7', '一个文章7', '腾讯', 'http://www.qq.com', '0', '0', '0', '新文章', '<p>一个新文章一个新文章一个新文章一个新文章</p>', '1', '0', '2018-02-11 01:03:40.291452', '2018-02-11 01:03:40.291452', '1', '1');
INSERT INTO `mainsite_post` VALUES ('8', 'featured/2018/02/11/240X240.jpg', '一个文章8', '一个文章8', '新浪网', 'http://www.sina.com.cn', '0', '0', '0', '测试文章', '<p>测试文章测试文章</p>', '1', '0', '2018-02-11 01:03:54.486828', '2018-02-11 01:03:54.486828', '1', '2');
INSERT INTO `mainsite_post` VALUES ('9', 'featured/2018/02/12/60X60.jpg', '一个文章9', '一个文章9', '腾讯', 'http://www.qq.com', '0', '0', '0', '111111', '<p>111111</p>', '0', '0', '2018-02-12 07:32:42.234217', '2018-02-12 07:32:42.234217', '1', '3');
INSERT INTO `mainsite_post` VALUES ('10', 'featured/2018/02/12/180X180.jpg', '一个文章10', '一个文章10', '新浪网', 'http://www.qq.com', '0', '0', '0', '2222222222222', '<p>22222222</p>', '1', '0', '2018-02-12 07:32:53.123802', '2018-02-12 07:32:53.123802', '1', '2');
INSERT INTO `mainsite_post` VALUES ('11', 'featured/2018/02/12/240X240.jpg', '一个文章11', '一个文章11', '新浪网', 'http://www.qq.com', '0', '0', '0', '333333333333', '<p>3333333333333333333</p>', '1', '0', '2018-02-12 07:33:04.957785', '2018-02-12 07:33:04.957785', '1', '4');
INSERT INTO `mainsite_post` VALUES ('12', 'featured/2018/02/12/480X320.jpg', '一个文章12', '一个文章12', '新浪网', 'http://www.qq.com', '0', '0', '0', '44444444', '<p>44444444</p>', '1', '0', '2018-02-12 07:33:23.985987', '2018-02-12 07:33:23.985987', '1', '3');
INSERT INTO `mainsite_post` VALUES ('13', 'featured/2018/02/11/80X80.jpg', '一个文章13', '一个文章13', '腾讯', 'http://www.qq.com', '0', '0', '0', '新文章', '<p>一个新文章一个新文章一个新文章一个新文章</p>', '1', '0', '2018-02-11 01:03:40.291452', '2018-02-11 01:03:40.291452', '1', '1');
INSERT INTO `mainsite_post` VALUES ('14', 'featured/2018/02/11/240X240.jpg', '一个文章14', '一个文章14', '新浪网', 'http://www.sina.com.cn', '0', '0', '0', '测试文章', '<p>测试文章测试文章</p>', '1', '0', '2018-02-11 01:03:54.486828', '2018-02-11 01:03:54.486828', '1', '2');
INSERT INTO `mainsite_post` VALUES ('15', 'featured/2018/02/12/60X60.jpg', '一个文章15', '一个文章15', '腾讯', 'http://www.qq.com', '0', '0', '0', '111111', '<p>111111</p>', '0', '0', '2018-02-12 07:32:42.234217', '2018-02-12 07:32:42.234217', '1', '3');
INSERT INTO `mainsite_post` VALUES ('16', 'featured/2018/02/12/180X180.jpg', '一个文章16', '一个文章16', '新浪网', 'http://www.qq.com', '0', '0', '0', '2222222222222', '<p>22222222</p>', '1', '0', '2018-02-12 07:32:53.123802', '2018-02-12 07:32:53.123802', '1', '2');
INSERT INTO `mainsite_post` VALUES ('17', 'featured/2018/02/12/240X240.jpg', '一个文章17', '一个文章17', '新浪网', 'http://www.qq.com', '0', '0', '0', '333333333333', '<p>3333333333333333333</p>', '1', '0', '2018-02-12 07:33:04.957785', '2018-02-12 07:33:04.957785', '1', '4');
INSERT INTO `mainsite_post` VALUES ('18', 'featured/2018/02/12/480X320.jpg', '一个文章18', '一个文章18', '新浪网', 'http://www.qq.com', '0', '0', '0', '44444444', '<p>44444444</p>', '1', '0', '2018-02-12 07:33:23.985987', '2018-02-12 07:33:23.985987', '1', '3');
INSERT INTO `mainsite_post` VALUES ('19', 'featured/2018/02/11/80X80.jpg', '一个文章19', '一个文章19', '腾讯', 'http://www.qq.com', '0', '0', '0', '新文章', '<p>一个新文章一个新文章一个新文章一个新文章</p>', '1', '0', '2018-02-11 01:03:40.291452', '2018-02-11 01:03:40.291452', '1', '1');
INSERT INTO `mainsite_post` VALUES ('20', 'featured/2018/02/11/240X240.jpg', '一个文章20', '一个文章20', '新浪网', 'http://www.sina.com.cn', '0', '0', '0', '测试文章', '<p>测试文章测试文章</p>', '1', '0', '2018-02-11 01:03:54.486828', '2018-02-11 01:03:54.486828', '1', '2');
INSERT INTO `mainsite_post` VALUES ('21', 'featured/2018/02/12/60X60.jpg', '一个文章21', '一个文章21', '腾讯', 'http://www.qq.com', '0', '0', '0', '111111', '<p>111111</p>', '0', '0', '2018-02-12 07:32:42.234217', '2018-02-12 07:32:42.234217', '1', '3');
INSERT INTO `mainsite_post` VALUES ('22', 'featured/2018/02/12/180X180.jpg', '一个文章22', '一个文章22', '新浪网', 'http://www.qq.com', '0', '0', '0', '2222222222222', '<p>22222222</p>', '1', '0', '2018-02-12 07:32:53.123802', '2018-02-12 07:32:53.123802', '1', '2');
INSERT INTO `mainsite_post` VALUES ('23', 'featured/2018/02/12/240X240.jpg', '一个文章23', '一个文章23', '新浪网', 'http://www.qq.com', '0', '0', '0', '333333333333', '<p>3333333333333333333</p>', '1', '0', '2018-02-12 07:33:04.957785', '2018-02-12 07:33:04.957785', '1', '4');
INSERT INTO `mainsite_post` VALUES ('24', 'featured/2018/02/12/480X320.jpg', '一个文章24', '一个文章24', '新浪网', 'http://www.qq.com', '0', '0', '0', '44444444', '<p>44444444</p>', '1', '0', '2018-02-12 07:33:23.985987', '2018-02-12 07:33:23.985987', '1', '3');
INSERT INTO `mainsite_post` VALUES ('25', 'featured/2018/02/11/80X80.jpg', '一个文章25', '一个文章25', '腾讯', 'http://www.qq.com', '0', '0', '0', '新文章', '<p>一个新文章一个新文章一个新文章一个新文章</p>', '1', '0', '2018-02-11 01:03:40.291452', '2018-02-11 01:03:40.291452', '1', '1');
INSERT INTO `mainsite_post` VALUES ('26', 'featured/2018/02/11/240X240.jpg', '一个文章26', '一个文章26', '新浪网', 'http://www.sina.com.cn', '0', '0', '0', '测试文章', '<p>测试文章测试文章</p>', '1', '0', '2018-02-11 01:03:54.486828', '2018-02-11 01:03:54.486828', '1', '2');
INSERT INTO `mainsite_post` VALUES ('27', 'featured/2018/02/12/60X60.jpg', '一个文章27', '一个文章27', '腾讯', 'http://www.qq.com', '0', '0', '0', '111111', '<p>111111</p>', '0', '0', '2018-02-12 07:32:42.234217', '2018-02-12 07:32:42.234217', '1', '3');
INSERT INTO `mainsite_post` VALUES ('28', 'featured/2018/02/12/180X180.jpg', '一个文章28', '一个文章28', '新浪网', 'http://www.qq.com', '0', '0', '0', '2222222222222', '<p>22222222</p>', '1', '0', '2018-02-12 07:32:53.123802', '2018-02-12 07:32:53.123802', '1', '2');
INSERT INTO `mainsite_post` VALUES ('29', 'featured/2018/02/12/240X240.jpg', '一个文章29', '一个文章29', '新浪网', 'http://www.qq.com', '0', '0', '0', '333333333333', '<p>3333333333333333333</p>', '1', '0', '2018-02-12 07:33:04.957785', '2018-02-12 07:33:04.957785', '1', '4');
INSERT INTO `mainsite_post` VALUES ('30', 'featured/2018/02/12/480X320.jpg', '一个文章30', '一个文章30', '新浪网', 'http://www.qq.com', '0', '0', '0', '44444444', '<p>44444444</p>', '1', '0', '2018-02-12 07:33:23.985987', '2018-02-12 07:33:23.985987', '1', '3');
INSERT INTO `mainsite_post` VALUES ('31', 'featured/2018/02/11/80X80.jpg', '一个文章31', '一个文章31', '腾讯', 'http://www.qq.com', '0', '0', '0', '新文章', '<p>一个新文章一个新文章一个新文章一个新文章</p>', '1', '0', '2018-02-11 01:03:40.291452', '2018-02-11 01:03:40.291452', '1', '1');
INSERT INTO `mainsite_post` VALUES ('32', 'featured/2018/02/11/240X240.jpg', '一个文章32', '一个文章32', '新浪网', 'http://www.sina.com.cn', '0', '0', '0', '测试文章', '<p>测试文章测试文章</p>', '1', '0', '2018-02-11 01:03:54.486828', '2018-02-11 01:03:54.486828', '1', '2');
INSERT INTO `mainsite_post` VALUES ('33', 'featured/2018/02/12/60X60.jpg', '一个文章33', '一个文章33', '腾讯', 'http://www.qq.com', '0', '0', '0', '111111', '<p>111111</p>', '0', '0', '2018-02-12 07:32:42.234217', '2018-02-12 07:32:42.234217', '1', '3');
INSERT INTO `mainsite_post` VALUES ('34', 'featured/2018/02/12/180X180.jpg', '一个文章34', '一个文章34', '新浪网', 'http://www.qq.com', '0', '0', '0', '2222222222222', '<p>22222222</p>', '1', '0', '2018-02-12 07:32:53.123802', '2018-02-12 07:32:53.123802', '1', '2');
INSERT INTO `mainsite_post` VALUES ('35', 'featured/2018/02/12/240X240.jpg', '一个文章35', '一个文章35', '新浪网', 'http://www.qq.com', '0', '0', '0', '333333333333', '<p>3333333333333333333</p>', '1', '0', '2018-02-12 07:33:04.957785', '2018-02-12 07:33:04.957785', '1', '4');
INSERT INTO `mainsite_post` VALUES ('36', 'featured/2018/02/12/480X320.jpg', '一个文章36', '一个文章36', '新浪网', 'http://www.qq.com', '0', '0', '0', '44444444', '<p>44444444</p>', '1', '0', '2018-02-12 07:33:23.985987', '2018-02-12 07:33:23.985987', '1', '3');
INSERT INTO `mainsite_post` VALUES ('37', 'featured/2018/02/11/80X80.jpg', '一个文章37', '一个文章37', '腾讯', 'http://www.qq.com', '0', '0', '0', '新文章', '<p>一个新文章一个新文章一个新文章一个新文章</p>', '1', '0', '2018-02-11 01:03:40.291452', '2018-02-11 01:03:40.291452', '1', '1');
INSERT INTO `mainsite_post` VALUES ('38', 'featured/2018/02/11/240X240.jpg', '一个文章38', '一个文章38', '新浪网', 'http://www.sina.com.cn', '0', '0', '0', '测试文章', '<p>测试文章测试文章</p>', '1', '0', '2018-02-11 01:03:54.486828', '2018-02-11 01:03:54.486828', '1', '2');
INSERT INTO `mainsite_post` VALUES ('39', 'featured/2018/02/12/60X60.jpg', '一个文章39', '一个文章39', '腾讯', 'http://www.qq.com', '0', '0', '0', '111111', '<p>111111</p>', '0', '0', '2018-02-12 07:32:42.234217', '2018-02-12 07:32:42.234217', '1', '3');
INSERT INTO `mainsite_post` VALUES ('40', 'featured/2018/02/12/180X180.jpg', '一个文章40', '一个文章40', '新浪网', 'http://www.qq.com', '0', '0', '0', '2222222222222', '<p>22222222</p>', '1', '0', '2018-02-12 07:32:53.123802', '2018-02-12 07:32:53.123802', '1', '2');
INSERT INTO `mainsite_post` VALUES ('41', 'featured/2018/02/12/240X240.jpg', '一个文章41', '一个文章41', '新浪网', 'http://www.qq.com', '0', '0', '0', '333333333333', '<p>3333333333333333333</p>', '1', '0', '2018-02-12 07:33:04.957785', '2018-02-12 07:33:04.957785', '1', '4');
INSERT INTO `mainsite_post` VALUES ('42', 'featured/2018/02/12/480X320.jpg', '一个文章42', '一个文章42', '新浪网', 'http://www.qq.com', '0', '0', '0', '44444444', '<p>44444444</p>', '1', '0', '2018-02-12 07:33:23.985987', '2018-02-12 07:33:23.985987', '1', '3');

-- ----------------------------
-- Table structure for `mainsite_postcate`
-- ----------------------------
DROP TABLE IF EXISTS `mainsite_postcate`;
CREATE TABLE `mainsite_postcate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_title` varchar(255) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mainsite_postcate_author_id_b83b03a2_fk_auth_user_id` (`author_id`),
  KEY `mainsite_postcate_parent_id_4978e7a0_fk_mainsite_postcate_id` (`parent_id`),
  CONSTRAINT `mainsite_postcate_author_id_b83b03a2_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `mainsite_postcate_parent_id_4978e7a0_fk_mainsite_postcate_id` FOREIGN KEY (`parent_id`) REFERENCES `mainsite_postcate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_postcate
-- ----------------------------
INSERT INTO `mainsite_postcate` VALUES ('1', '科学', 'tech', '2018-02-11 01:01:40.779762', '2018-02-11 01:01:40.779762', '1', null);
INSERT INTO `mainsite_postcate` VALUES ('2', '文学', 'Literature', '2018-02-11 01:02:13.312371', '2018-02-11 01:02:13.313372', '1', null);
INSERT INTO `mainsite_postcate` VALUES ('3', '财经', 'finance', '2018-02-11 01:02:31.778078', '2018-02-11 01:02:31.778078', '1', null);
INSERT INTO `mainsite_postcate` VALUES ('4', '股票', 'stock', '2018-02-11 01:02:39.227653', '2018-02-11 01:02:39.227653', '1', '3');

-- ----------------------------
-- Table structure for `mainsite_postimg`
-- ----------------------------
DROP TABLE IF EXISTS `mainsite_postimg`;
CREATE TABLE `mainsite_postimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `img_thumburl` varchar(255) DEFAULT NULL,
  `img_commonurl` varchar(255) DEFAULT NULL,
  `img_originurl` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mainsite_postimg_author_id_e44cc412_fk_auth_user_id` (`author_id`),
  CONSTRAINT `mainsite_postimg_author_id_e44cc412_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_postimg
-- ----------------------------

-- ----------------------------
-- Table structure for `mainsite_profile`
-- ----------------------------
DROP TABLE IF EXISTS `mainsite_profile`;
CREATE TABLE `mainsite_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `sex` tinyint(1) NOT NULL,
  `ip` char(39) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `mainsite_profile_user_id_1126090b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_profile
-- ----------------------------
INSERT INTO `mainsite_profile` VALUES ('1', 'ken', 'avatar.png', '东莞南城', null, null, '403749023', '13800138000', '1', null, '2018-02-08', '2018-02-13 03:18:22.991952', '2018-02-13 03:18:22.991952', '1');

-- ----------------------------
-- Table structure for `mainsite_slide`
-- ----------------------------
DROP TABLE IF EXISTS `mainsite_slide`;
CREATE TABLE `mainsite_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_title` varchar(255) NOT NULL,
  `slide_link` varchar(255) DEFAULT NULL,
  `slide_img` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_slide
-- ----------------------------
