/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : django

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-31 18:22:22
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add post', '7', 'add_post');
INSERT INTO `auth_permission` VALUES ('20', 'Can change post', '7', 'change_post');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete post', '7', 'delete_post');

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
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$36000$lzWEcCeNMNFI$wdVFHicEZfma2JkCFJ00S8sC99Tmu8/DEbW7itjUXLM=', '2017-12-05 02:26:48.533051', '1', 'yaoyon', '', '', 'yaoyonstudio@gmail.com', '1', '1', '2017-05-17 04:58:29.545151');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$36000$0PftHOQC3m85$SC7aZKLCBZcsHEDSMmlGSboplnUGOstOJj72iOMYJBM=', '2017-08-16 12:25:20.975461', '1', 'admin', '', '', 'ken@gmail.com', '1', '1', '2017-08-10 07:39:30.807721');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_post`
-- ----------------------------
DROP TABLE IF EXISTS `blog_post`;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(200) NOT NULL,
  `post_content` longtext NOT NULL,
  `post_publish` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_post
-- ----------------------------
INSERT INTO `blog_post` VALUES ('1', 'test', 'test11111', '2017-05-17 05:16:54.000000');
INSERT INTO `blog_post` VALUES ('2', 'post1', 'post1post1post1post1post1post1post1', '2017-05-17 07:39:04.000000');
INSERT INTO `blog_post` VALUES ('3', 'post2', 'post2post2post2post2post2', '2017-05-17 07:39:12.000000');
INSERT INTO `blog_post` VALUES ('4', 'post3', 'post3post3post3post3post3post3', '2017-05-17 07:39:18.000000');
INSERT INTO `blog_post` VALUES ('5', 'post4', 'post4post4post4post4post4', '2017-05-17 07:39:24.000000');
INSERT INTO `blog_post` VALUES ('6', 'post5', 'post5post5post5post5post5', '2017-05-17 07:39:31.000000');

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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2017-05-17 05:16:56.284063', '1', 'Post object', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2017-05-17 05:17:13.159534', '2', 'Post object', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2017-05-17 07:39:07.215868', '2', 'Post object', '2', '[{\"changed\": {\"fields\": [\"post_title\", \"post_content\", \"post_publish\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2017-05-17 07:39:13.547644', '3', 'Post object', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2017-05-17 07:39:19.931445', '4', 'Post object', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2017-05-17 07:39:25.338912', '5', 'Post object', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2017-05-17 07:39:32.347944', '6', 'Post object', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2017-08-14 02:11:06.043085', '1', 'Page object', '1', '[{\"added\": {}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('9', '2017-08-14 02:36:48.347458', '1', 'Page object', '2', '[{\"changed\": {\"fields\": [\"page_content\"]}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('10', '2017-08-14 03:01:18.844137', '1', 'Page object', '2', '[{\"changed\": {\"fields\": [\"page_content\"]}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('11', '2017-08-14 03:27:54.311731', '1', 'Page object', '2', '[{\"changed\": {\"fields\": [\"page_content\"]}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('12', '2017-08-14 07:15:44.487452', '1', '财经新闻', '1', '[{\"added\": {}}]', '9', '2');
INSERT INTO `django_admin_log` VALUES ('13', '2017-08-14 07:16:07.019991', '2', '科技新闻', '1', '[{\"added\": {}}]', '9', '2');
INSERT INTO `django_admin_log` VALUES ('14', '2017-08-14 07:45:10.115104', '1', '文章标题', '2', '[{\"changed\": {\"fields\": [\"cate\"]}}]', '10', '2');
INSERT INTO `django_admin_log` VALUES ('15', '2017-08-14 07:53:25.627449', '2', '这是一条科技新闻', '1', '[{\"added\": {}}]', '10', '2');
INSERT INTO `django_admin_log` VALUES ('16', '2017-08-14 08:35:52.020013', '1', '滑动图片1', '1', '[{\"added\": {}}]', '11', '2');
INSERT INTO `django_admin_log` VALUES ('17', '2017-08-14 08:37:01.311017', '2', '滑动图片2', '1', '[{\"added\": {}}]', '11', '2');
INSERT INTO `django_admin_log` VALUES ('18', '2017-08-14 09:24:21.778149', '3', '1111', '1', '[{\"added\": {}}]', '11', '2');
INSERT INTO `django_admin_log` VALUES ('19', '2017-08-14 10:19:07.794758', '5', '网站建设', '1', '[{\"added\": {}}]', '12', '2');
INSERT INTO `django_admin_log` VALUES ('20', '2017-08-14 10:19:39.814676', '6', '微信开发', '1', '[{\"added\": {}}]', '12', '2');
INSERT INTO `django_admin_log` VALUES ('21', '2017-08-14 10:20:25.313587', '7', 'APP制作', '1', '[{\"added\": {}}]', '12', '2');
INSERT INTO `django_admin_log` VALUES ('22', '2017-08-14 10:20:39.310354', '8', '运营推广', '1', '[{\"added\": {}}]', '12', '2');
INSERT INTO `django_admin_log` VALUES ('23', '2017-08-14 10:21:28.528734', '9', '特色跨栏1', '1', '[{\"added\": {}}]', '12', '2');
INSERT INTO `django_admin_log` VALUES ('24', '2017-08-14 10:21:40.022889', '10', '特色跨栏2', '1', '[{\"added\": {}}]', '12', '2');
INSERT INTO `django_admin_log` VALUES ('25', '2017-08-16 00:50:42.070284', '1', 'site_name', '1', '[{\"added\": {}}]', '13', '2');
INSERT INTO `django_admin_log` VALUES ('26', '2017-08-16 00:51:07.544427', '2', 'site_copyright', '1', '[{\"added\": {}}]', '13', '2');
INSERT INTO `django_admin_log` VALUES ('27', '2017-08-16 02:27:56.755679', '2', 'site_copyright', '2', '[{\"changed\": {\"fields\": [\"config_value\"]}}]', '13', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'blog', 'post');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'mysite', 'cate');
INSERT INTO `django_content_type` VALUES ('13', 'mysite', 'config');
INSERT INTO `django_content_type` VALUES ('12', 'mysite', 'featured');
INSERT INTO `django_content_type` VALUES ('14', 'mysite', 'menu');
INSERT INTO `django_content_type` VALUES ('8', 'mysite', 'page');
INSERT INTO `django_content_type` VALUES ('10', 'mysite', 'post');
INSERT INTO `django_content_type` VALUES ('11', 'mysite', 'slide');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-05-17 04:40:04.868236');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-05-17 04:40:10.778028');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-05-17 04:40:12.478861');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-05-17 04:40:12.516397');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-05-17 04:40:13.211892');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-05-17 04:40:13.792304');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-05-17 04:40:14.383765');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-05-17 04:40:14.417789');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-05-17 04:40:14.868147');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-05-17 04:40:14.903171');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-05-17 04:40:14.931190');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2017-05-17 04:40:15.500598');
INSERT INTO `django_migrations` VALUES ('13', 'sessions', '0001_initial', '2017-05-17 04:40:15.886872');
INSERT INTO `django_migrations` VALUES ('14', 'blog', '0001_initial', '2017-05-17 04:55:42.110188');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('8itaj94z15ma9exeq2rtigd1ak3i8og9', 'OGEwMWM3NmVhNTFiZWZmNjdiZjBlZDk5ZGUyMTA1NzRkOGNmYzBlMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzQ3ZGUxZmRhZTJhNzg0ODQyYThhZDRkZjY0NjhkZTBiYzk1YmQwIn0=', '2017-08-28 03:00:22.867681');
INSERT INTO `django_session` VALUES ('bzuesfmkgm8a99cmanf0dbvws6x6w64h', 'N2M1NTYwMzQ2NDdjNzg2MTQyOWJkMTQ2MmZkYjViNmYyMjQwYmVmNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhhMjk1YTVhM2QxOWI1NTVmMDk3ZTI0ZGU0ZmZmYmMyZmYyNTc0In0=', '2017-12-19 02:26:48.583077');
INSERT INTO `django_session` VALUES ('dnzarvm3jk4d30r98dcp013hf4z9u1ab', 'YzZkZjRhMjEzOTBkNzdkYTEyNTg3MzU2ZGNiODE5MDc1NmEwODM2Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWQ5ZDM3MGRhYTg5NTIyZTcyZmNiM2JjOTAzNWI0YjYyYmRmOGI1In0=', '2017-05-31 04:59:26.742830');
INSERT INTO `django_session` VALUES ('fua0m9f7zrwtnpbat47snxs6hlbtq8ih', 'OGEwMWM3NmVhNTFiZWZmNjdiZjBlZDk5ZGUyMTA1NzRkOGNmYzBlMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzQ3ZGUxZmRhZTJhNzg0ODQyYThhZDRkZjY0NjhkZTBiYzk1YmQwIn0=', '2017-08-24 07:40:33.192821');
INSERT INTO `django_session` VALUES ('jib35fybdzs78wd2h930etjmyl441d2k', 'OGEwMWM3NmVhNTFiZWZmNjdiZjBlZDk5ZGUyMTA1NzRkOGNmYzBlMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzQ3ZGUxZmRhZTJhNzg0ODQyYThhZDRkZjY0NjhkZTBiYzk1YmQwIn0=', '2017-08-30 12:25:21.017990');
INSERT INTO `django_session` VALUES ('quqtm1124xdl6og7awbg27w4jmx2iosw', 'OGEwMWM3NmVhNTFiZWZmNjdiZjBlZDk5ZGUyMTA1NzRkOGNmYzBlMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzQ3ZGUxZmRhZTJhNzg0ODQyYThhZDRkZjY0NjhkZTBiYzk1YmQwIn0=', '2017-08-30 00:50:08.607442');

-- ----------------------------
-- Table structure for `mysite_cate`
-- ----------------------------
DROP TABLE IF EXISTS `mysite_cate`;
CREATE TABLE `mysite_cate` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `cate_title` varchar(100) NOT NULL,
  `cate_name` varchar(100) DEFAULT NULL,
  `cate_desc` varchar(200) DEFAULT NULL,
  `cate_date` datetime DEFAULT NULL,
  `cate_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysite_cate
-- ----------------------------
INSERT INTO `mysite_cate` VALUES ('1', '财经新闻', 'finance', '财经新闻描述', '2017-08-14 07:15:24', '2017-08-14 07:15:24');
INSERT INTO `mysite_cate` VALUES ('2', '科技新闻', 'technology', '科技新闻描述', '2017-08-14 07:15:44', '2017-08-14 07:15:44');

-- ----------------------------
-- Table structure for `mysite_config`
-- ----------------------------
DROP TABLE IF EXISTS `mysite_config`;
CREATE TABLE `mysite_config` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `config_key` varchar(250) NOT NULL,
  `config_value` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysite_config
-- ----------------------------
INSERT INTO `mysite_config` VALUES ('1', 'site_name', 'Django Project');
INSERT INTO `mysite_config` VALUES ('2', 'site_copyright', '版权信息');

-- ----------------------------
-- Table structure for `mysite_featured`
-- ----------------------------
DROP TABLE IF EXISTS `mysite_featured`;
CREATE TABLE `mysite_featured` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `featured_title` varchar(250) DEFAULT NULL,
  `featured_src` varchar(250) NOT NULL,
  `featured_desc` varchar(250) DEFAULT NULL,
  `featured_link` varchar(250) DEFAULT NULL,
  `featured_type` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysite_featured
-- ----------------------------
INSERT INTO `mysite_featured` VALUES ('5', '网站建设', 'featured/2017/08/14/01_4rMfQEr.png', '专业网站建设', 'http://www.baidu.com', '1');
INSERT INTO `mysite_featured` VALUES ('6', '微信开发', 'featured/2017/08/14/02.png', '专业微信开发', 'http://www.baidu.com', '1');
INSERT INTO `mysite_featured` VALUES ('7', 'APP制作', 'featured/2017/08/14/03.png', '专业APP制作', 'http://www.baidu.com', '1');
INSERT INTO `mysite_featured` VALUES ('8', '运营推广', 'featured/2017/08/14/04.png', '专业运营推广', 'http://www.baidu.com', '1');
INSERT INTO `mysite_featured` VALUES ('9', '特色跨栏1', 'featured/2017/08/14/1-min.jpg', '特色跨栏11111', 'http://www.baidu.com', '2');
INSERT INTO `mysite_featured` VALUES ('10', '特色跨栏2', 'featured/2017/08/14/2-min.jpg', '特色跨栏22222', 'http://www.baidu.com', '2');

-- ----------------------------
-- Table structure for `mysite_menu`
-- ----------------------------
DROP TABLE IF EXISTS `mysite_menu`;
CREATE TABLE `mysite_menu` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(250) NOT NULL,
  `menu_link` varchar(250) NOT NULL,
  `menu_src` varchar(250) DEFAULT NULL,
  `menu_desc` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysite_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `mysite_page`
-- ----------------------------
DROP TABLE IF EXISTS `mysite_page`;
CREATE TABLE `mysite_page` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `page_author_id` int(10) DEFAULT NULL,
  `page_date` datetime DEFAULT NULL,
  `page_content` longtext,
  `page_title` text,
  `page_excerpt` text,
  `page_status` varchar(20) DEFAULT NULL,
  `page_name` varchar(200) DEFAULT NULL,
  `page_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysite_page
-- ----------------------------
INSERT INTO `mysite_page` VALUES ('1', '1', '2017-08-14 02:10:02', '<p>文章内容</p>\r\n\r\n<p>ok</p>\r\n\r\n<p><img alt=\"\" src=\"/media/uploads/2017/08/14/dingdong.jpg\" style=\"height:441px; width:440px\" /></p>\r\n\r\n<p>test</p>', '文章标题', '文章描述', '1', 'test', '2017-08-14 02:10:02');

-- ----------------------------
-- Table structure for `mysite_post`
-- ----------------------------
DROP TABLE IF EXISTS `mysite_post`;
CREATE TABLE `mysite_post` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author_id` int(10) DEFAULT NULL,
  `post_date` datetime DEFAULT NULL,
  `post_content` longtext,
  `post_title` text,
  `post_excerpt` text,
  `post_status` varchar(20) DEFAULT NULL,
  `post_recommend` varchar(20) DEFAULT NULL,
  `post_modified` datetime DEFAULT NULL,
  `cate_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysite_post
-- ----------------------------
INSERT INTO `mysite_post` VALUES ('1', '1', '2017-08-14 02:10:02', '<p>文章内容</p>\r\n\r\n<p>ok</p>\r\n\r\n<p><img alt=\"\" src=\"/media/uploads/2017/08/14/dingdong.jpg\" style=\"height:441px; width:440px\" /></p>\r\n\r\n<p>test</p>', '文章标题', '文章描述', '1', null, '2017-08-14 02:10:02', '1');
INSERT INTO `mysite_post` VALUES ('2', '1', '2017-08-14 07:52:38', '<p>这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻</p>\r\n\r\n<p><img alt=\"\" src=\"/media/uploads/2017/08/14/okimg.png\" style=\"height:124px; width:186px\" /></p>\r\n\r\n<p>这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻</p>', '这是一条科技新闻', '这是一条科技新闻这是一条科技新闻这是一条科技新闻这是一条科技新闻', '1', null, '2017-08-14 07:52:38', '2');

-- ----------------------------
-- Table structure for `mysite_slide`
-- ----------------------------
DROP TABLE IF EXISTS `mysite_slide`;
CREATE TABLE `mysite_slide` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_title` varchar(250) DEFAULT NULL,
  `slide_src` varchar(250) NOT NULL,
  `slide_link` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysite_slide
-- ----------------------------
INSERT INTO `mysite_slide` VALUES ('1', '滑动图片1', 'slides/2017/08/14/domo-wallpaper-1920x1080-wallpaper-1.jpg', 'http://www.baidu.com');
INSERT INTO `mysite_slide` VALUES ('2', '滑动图片2', 'slides/2017/08/14/mbuntu-linuxidc.com.jpg', 'http://www.test111111.com/');
INSERT INTO `mysite_slide` VALUES ('3', '1111', 'slides/2017/08/14/reactrouter1.jpg', 'http://www.test111111.com/');
