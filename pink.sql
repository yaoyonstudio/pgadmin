/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : pink

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-17 18:44:52
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `auth_permission` VALUES ('40', 'Can add 客户', '21', 'add_client');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 客户', '21', 'change_client');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 客户', '21', 'delete_client');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 文章评论', '22', 'add_comment');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 文章评论', '22', 'change_comment');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 文章评论', '22', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 配置', '17', 'add_config');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 配置', '17', 'change_config');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 配置', '17', 'delete_config');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 文章', '14', 'add_post');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 文章', '14', 'change_post');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 文章', '14', 'delete_post');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 文章类别', '15', 'add_postcate');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 文章类别', '15', 'change_postcate');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 文章类别', '15', 'delete_postcate');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 文章图片', '23', 'add_postimg');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 文章图片', '23', 'change_postimg');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 文章图片', '23', 'delete_postimg');
INSERT INTO `auth_permission` VALUES ('58', 'Can add 用户信息', '16', 'add_profile');
INSERT INTO `auth_permission` VALUES ('59', 'Can change 用户信息', '16', 'change_profile');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete 用户信息', '16', 'delete_profile');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 服务项目', '19', 'add_service');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 服务项目', '19', 'change_service');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 服务项目', '19', 'delete_service');
INSERT INTO `auth_permission` VALUES ('64', 'Can add 滑动图', '18', 'add_slide');
INSERT INTO `auth_permission` VALUES ('65', 'Can change 滑动图', '18', 'change_slide');
INSERT INTO `auth_permission` VALUES ('66', 'Can delete 滑动图', '18', 'delete_slide');
INSERT INTO `auth_permission` VALUES ('67', 'Can add 服务项目', '24', 'add_teamer');
INSERT INTO `auth_permission` VALUES ('68', 'Can change 服务项目', '24', 'change_teamer');
INSERT INTO `auth_permission` VALUES ('69', 'Can delete 服务项目', '24', 'delete_teamer');
INSERT INTO `auth_permission` VALUES ('70', 'Can add 时间轴', '20', 'add_timeline');
INSERT INTO `auth_permission` VALUES ('71', 'Can change 时间轴', '20', 'change_timeline');
INSERT INTO `auth_permission` VALUES ('72', 'Can delete 时间轴', '20', 'delete_timeline');

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
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$100000$zbSYfyJdQjvU$HDNI3sx7NRRthwZYKMeQMlwejVm4ezJwA4SlFEsutJY=', '2018-05-17 08:48:04.615243', '1', 'yaoyon', '', '', 'yaoyonstudio@gmail.com', '1', '1', '2018-02-11 01:00:00.358528');

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `django_admin_log` VALUES ('12', '2018-05-17 06:19:49.839114', '1', 'site_name', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2018-05-17 06:50:35.622424', '2', 'site_copyright', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2018-05-17 07:09:49.483472', '1', 'PC端网站', '1', '[{\"added\": {}}]', '19', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2018-05-17 07:10:20.296484', '2', '微信网站', '1', '[{\"added\": {}}]', '19', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2018-05-17 07:10:48.256483', '3', '微信小程序', '1', '[{\"added\": {}}]', '19', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2018-05-17 07:11:08.805474', '4', 'APP开发', '1', '[{\"added\": {}}]', '19', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2018-05-17 07:24:56.594515', '3', 'site_service_desc', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2018-05-17 07:43:06.393250', '1', '团队建立', '1', '[{\"added\": {}}]', '20', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2018-05-17 07:43:53.292253', '2', '公司成立', '1', '[{\"added\": {}}]', '20', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2018-05-17 07:44:32.833242', '1', '团队建立', '3', '', '20', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2018-05-17 07:44:44.607252', '2', '公司成立', '2', '[{\"changed\": {\"fields\": [\"timeline_img\", \"timeline_time\"]}}]', '20', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2018-05-17 07:45:24.589245', '3', '公司转型', '1', '[{\"added\": {}}]', '20', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2018-05-17 07:46:06.988251', '4', '成长', '1', '[{\"added\": {}}]', '20', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2018-05-17 07:46:38.646251', '5', '发展阶段', '1', '[{\"added\": {}}]', '20', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2018-05-17 08:03:28.398717', '4', 'site_about_desc', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2018-05-17 08:46:34.985205', '5', 'site_team_desc', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2018-05-17 08:57:26.279472', '1', '美国队长', '1', '[{\"added\": {}}]', '24', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2018-05-17 08:58:10.736462', '2', '惊奇队长', '1', '[{\"added\": {}}]', '24', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2018-05-17 09:00:22.072000', '3', '钢铁侠', '1', '[{\"added\": {}}]', '24', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2018-05-17 09:02:10.806223', '3', '雷神', '2', '[{\"changed\": {\"fields\": [\"Teamer_name\", \"Teamer_desc\"]}}]', '24', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2018-05-17 09:02:29.276212', '4', '钢铁侠', '1', '[{\"added\": {}}]', '24', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2018-05-17 09:03:13.249239', '5', '黑豹', '1', '[{\"added\": {}}]', '24', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2018-05-17 09:03:58.256214', '6', '绿巨人', '1', '[{\"added\": {}}]', '24', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2018-05-17 09:45:07.390703', '1', '中国电信', '1', '[{\"added\": {}}]', '21', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2018-05-17 09:46:00.376671', '2', '中国移动', '1', '[{\"added\": {}}]', '21', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2018-05-17 09:46:39.024670', '3', '中国联通', '1', '[{\"added\": {}}]', '21', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2018-05-17 09:47:07.290680', '4', '中国邮政', '1', '[{\"added\": {}}]', '21', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2018-05-17 09:47:33.482674', '5', 'VIVO智能手机', '1', '[{\"added\": {}}]', '21', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2018-05-17 09:48:00.208673', '6', '广东中天集团', '1', '[{\"added\": {}}]', '21', '1');
INSERT INTO `django_admin_log` VALUES ('41', '2018-05-17 09:48:36.187681', '7', '广汽三菱', '1', '[{\"added\": {}}]', '21', '1');
INSERT INTO `django_admin_log` VALUES ('42', '2018-05-17 09:49:00.740671', '8', '广发银行', '1', '[{\"added\": {}}]', '21', '1');
INSERT INTO `django_admin_log` VALUES ('43', '2018-05-17 09:55:25.932216', '6', 'site_contact_desc', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('44', '2018-05-17 10:40:53.729485', '7', 'site_qq', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('45', '2018-05-17 10:41:14.389501', '8', 'site_email', '1', '[{\"added\": {}}]', '17', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('3', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('5', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('6', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('21', 'mainsite', 'client');
INSERT INTO `django_content_type` VALUES ('22', 'mainsite', 'comment');
INSERT INTO `django_content_type` VALUES ('17', 'mainsite', 'config');
INSERT INTO `django_content_type` VALUES ('14', 'mainsite', 'post');
INSERT INTO `django_content_type` VALUES ('15', 'mainsite', 'postcate');
INSERT INTO `django_content_type` VALUES ('23', 'mainsite', 'postimg');
INSERT INTO `django_content_type` VALUES ('16', 'mainsite', 'profile');
INSERT INTO `django_content_type` VALUES ('19', 'mainsite', 'service');
INSERT INTO `django_content_type` VALUES ('18', 'mainsite', 'slide');
INSERT INTO `django_content_type` VALUES ('24', 'mainsite', 'teamer');
INSERT INTO `django_content_type` VALUES ('20', 'mainsite', 'timeline');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `django_migrations` VALUES ('20', 'mainsite', '0001_initial', '2018-05-17 07:38:55.848086');
INSERT INTO `django_migrations` VALUES ('21', 'mainsite', '0002_auto_20180517_1530', '2018-05-17 07:38:55.916073');
INSERT INTO `django_migrations` VALUES ('22', 'mainsite', '0003_auto_20180517_1540', '2018-05-17 07:40:33.827244');
INSERT INTO `django_migrations` VALUES ('23', 'mainsite', '0004_auto_20180517_1541', '2018-05-17 07:41:03.844727');

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
INSERT INTO `django_session` VALUES ('7g58y4afwc17i5ju6vovbjkkklxwz99n', 'ZWQ2YzA5ZGQ1ZjgwOGIyZjlkOTMxNWVkYmYxOTQyMzRkNjE2YmEzNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZWEwMDBjMzA1ZTUxYzI0YmEzMzVjZDFhZGIzMmQ2OTZiZWUyZTVhIn0=', '2018-05-31 08:48:04.649243');
INSERT INTO `django_session` VALUES ('evvkz17h92f3bc1ytoijw68mcn7w463c', 'OTI0NjUwOTU3OGE1YTA5ZmE3ZjE5ZWE0MDIzYzRjZjA2NDBmOTI5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDcxNjYzZjEwOTRhNTVhNmNlOTEzZGExN2Q4YTBmYjU1NTRkM2E5In0=', '2018-02-27 08:52:27.932885');
INSERT INTO `django_session` VALUES ('tdygb62x7ezpjypr6n5oa1nv35x0dze1', 'OTI0NjUwOTU3OGE1YTA5ZmE3ZjE5ZWE0MDIzYzRjZjA2NDBmOTI5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDcxNjYzZjEwOTRhNTVhNmNlOTEzZGExN2Q4YTBmYjU1NTRkM2E5In0=', '2018-02-25 01:00:16.195560');

-- ----------------------------
-- Table structure for `mainsite_client`
-- ----------------------------
DROP TABLE IF EXISTS `mainsite_client`;
CREATE TABLE `mainsite_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(255) NOT NULL,
  `client_site` varchar(255) DEFAULT NULL,
  `client_logo` varchar(255) NOT NULL,
  `client_desc` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_client
-- ----------------------------
INSERT INTO `mainsite_client` VALUES ('1', '中国电信', 'http://www.189.cn/', 'c1.jpg', '中国电信', '2018-05-17 09:45:07.374669', '2018-05-17 09:45:07.374669');
INSERT INTO `mainsite_client` VALUES ('2', '中国移动', 'http://www.10086.cn/', 'c2.jpg', '中国移动', '2018-05-17 09:46:00.361670', '2018-05-17 09:46:00.361670');
INSERT INTO `mainsite_client` VALUES ('3', '中国联通', 'http://www.10010.com/', 'c3.jpg', '中国联通', '2018-05-17 09:46:39.013670', '2018-05-17 09:46:39.013670');
INSERT INTO `mainsite_client` VALUES ('4', '中国邮政', 'http://www.chinapost.com.cn/', 'c4.jpg', '中国邮政', '2018-05-17 09:47:07.278670', '2018-05-17 09:47:07.278670');
INSERT INTO `mainsite_client` VALUES ('5', 'VIVO智能手机', 'http://www.vivo.com.cn/', 'c5.jpg', 'VIVO智能手机', '2018-05-17 09:47:33.467681', '2018-05-17 09:47:33.467681');
INSERT INTO `mainsite_client` VALUES ('6', '广东中天集团', 'http://www.ceggd.com/', 'c6.jpg', '广东中天集团', '2018-05-17 09:48:00.193669', '2018-05-17 09:48:00.193669');
INSERT INTO `mainsite_client` VALUES ('7', '广汽三菱', 'http://www.gmmc.com.cn/', 'c7.jpg', '广汽三菱', '2018-05-17 09:48:36.174670', '2018-05-17 09:48:36.174670');
INSERT INTO `mainsite_client` VALUES ('8', '广发银行', 'http://www.cgbchina.com.cn/', 'c8.jpg', '广发银行', '2018-05-17 09:49:00.733678', '2018-05-17 09:49:00.733678');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_config
-- ----------------------------
INSERT INTO `mainsite_config` VALUES ('1', 'site_name', 'Django测试站', '站点名称', '2018-05-17 06:19:49.796106', '2018-05-17 06:19:49.796106');
INSERT INTO `mainsite_config` VALUES ('2', 'site_copyright', 'django测试站版权所有 2017-2018', '站点版权', '2018-05-17 06:50:35.606425', '2018-05-17 06:50:35.606425');
INSERT INTO `mainsite_config` VALUES ('3', 'site_service_desc', '专注定制，只想为您提供更丰满的羽翼', '服务描述', '2018-05-17 07:24:56.575526', '2018-05-17 07:24:56.575526');
INSERT INTO `mainsite_config` VALUES ('4', 'site_about_desc', '公司发展历程', '公司发展历程', '2018-05-17 08:03:28.379736', '2018-05-17 08:03:28.379736');
INSERT INTO `mainsite_config` VALUES ('5', 'site_team_desc', '海阔凭鱼跃，天高任鸟飞', '团队描述', '2018-05-17 08:46:34.954197', '2018-05-17 08:46:34.954197');
INSERT INTO `mainsite_config` VALUES ('6', 'site_contact_desc', '欢迎垂询', '联系描述', '2018-05-17 09:55:25.923206', '2018-05-17 09:55:25.923206');
INSERT INTO `mainsite_config` VALUES ('7', 'site_qq', '1603351395', 'QQ', '2018-05-17 10:40:53.711514', '2018-05-17 10:40:53.711514');
INSERT INTO `mainsite_config` VALUES ('8', 'site_email', '1603351395@qq.com', 'email', '2018-05-17 10:41:14.366486', '2018-05-17 10:41:14.366486');

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
-- Table structure for `mainsite_service`
-- ----------------------------
DROP TABLE IF EXISTS `mainsite_service`;
CREATE TABLE `mainsite_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_title` varchar(255) NOT NULL,
  `service_desc` varchar(255) NOT NULL,
  `service_img` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_service
-- ----------------------------
INSERT INTO `mainsite_service` VALUES ('1', 'PC端网站', 'PC网站，作为电脑设备访问的主要入口。虽然手机分流了大部分流量，但PC网站依旧占据着非常重要地位。', 'tech_icon4.png', '2018-05-17 07:09:49.461485', '2018-05-17 07:09:49.461485');
INSERT INTO `mainsite_service` VALUES ('2', '微信网站', '微信网站，随着智能手机的普及，移动网络的迭代，手机抢占了大部分流量，而作为手机必装的微信，2016微信用户数已达到8.9亿，预计2020年覆盖全国14亿。', 'tech_icon2.png', '2018-05-17 07:10:20.276484', '2018-05-17 07:10:20.276484');
INSERT INTO `mainsite_service` VALUES ('3', '微信小程序', '微信网站，随着智能手机的普及，移动网络的迭代，手机抢占了大部分流量，而作为手机必装的微信，2016微信用户数已达到8.9亿，预计2020年覆盖全国14亿。', 'tech_icon3.png', '2018-05-17 07:10:48.237472', '2018-05-17 07:10:48.237472');
INSERT INTO `mainsite_service` VALUES ('4', 'APP开发', 'APP产品开发，随着移动互联网的迅猛发展，移动设备硬件配置也在不断优化提升，智能手机的能力越来越强，为移动APP开发创造了更为优越的硬件条件。', 'tech_icon5.png', '2018-05-17 07:11:08.796473', '2018-05-17 07:11:08.796473');

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

-- ----------------------------
-- Table structure for `mainsite_teamer`
-- ----------------------------
DROP TABLE IF EXISTS `mainsite_teamer`;
CREATE TABLE `mainsite_teamer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Teamer_name` varchar(255) NOT NULL,
  `Teamer_position` varchar(255) NOT NULL,
  `Teamer_desc` varchar(255) NOT NULL,
  `Teamer_avatar` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_teamer
-- ----------------------------
INSERT INTO `mainsite_teamer` VALUES ('1', '美国队长', '开发总监', '斯蒂夫·罗杰斯被注射了超级士兵的血清并被用紫外线照射轰击，终于拥有了人类可能拥有的最完美躯体。接着他接受了身体和战术上的训练。三个月后，他得到了作为“美国队长”的第一份任务，带着坚不可摧的盾牌和深谙战术的头脑，他投入了与邪恶势力的斗争，捍卫自由，并成为了超级英雄团体“复仇者”的领导者', '1_A5V8eMF.jpg', '2018-05-17 08:57:26.264461', '2018-05-17 08:57:26.264461');
INSERT INTO `mainsite_teamer` VALUES ('2', '惊奇队长', '产品经理', '现任惊奇队长是初代惊奇女士（Ms. Marvel）卡罗尔·丹弗斯（Carol Danvers），在初代惊奇队长（Captain Marvel）迈-威尔（Mar-Vell）的故乡克里帝国（Kree）被克里人的宇宙能量束击中，从而获得了惊人的超能力，并成为惊奇女士，之后在迈-威尔死后接替他成为惊奇队长。', '2_Jozmuex.jpg', '2018-05-17 08:58:10.711472', '2018-05-17 08:58:10.711472');
INSERT INTO `mainsite_teamer` VALUES ('3', '雷神', '后端开发工程师', '雷神托尔是著名的雷电之神，名字即“轰鸣者”的意思，诸神中最具怪力的神，以巨大铁槌作战。托尔的勇敢善战在诸神与巨人间是非常有名的，托尔的力量相当巨大。', '3_4kaIuq3.jpg', '2018-05-17 09:02:10.785230', '2018-05-17 09:02:10.785230');
INSERT INTO `mainsite_teamer` VALUES ('4', '钢铁侠', '前端开发工程师', '钢铁侠拥有赋予他超人力量，超人耐力，飞行能力与多种武器的动力装甲。', '4_45BFEB7.jpg', '2018-05-17 09:02:29.255223', '2018-05-17 09:02:29.255223');
INSERT INTO `mainsite_teamer` VALUES ('5', '黑豹', '设计师', '黑豹（Black Panther）是对非洲国家瓦坎达守护者的的传统称呼，每代瓦坎达守护者几乎都是王室成员。特查拉（T\'Challa）是目前的守护者，也是复仇者联盟成员之一。', '5.jpg', '2018-05-17 09:03:13.234223', '2018-05-17 09:03:13.234223');
INSERT INTO `mainsite_teamer` VALUES ('6', '绿巨人', '测试师', '绿巨人是一位天才核物理学博士、世界著名的物理学家，在一次意外中被自己制造出的伽玛炸弹（Gamma Bomb）的放射线大量辐射，身体产生异变，后每当他情绪激动心跳加速的时候就会变成名为浩克的绿色怪物。', '6_uLpZqBv.jpg', '2018-05-17 09:03:58.246218', '2018-05-17 09:03:58.246218');

-- ----------------------------
-- Table structure for `mainsite_timeline`
-- ----------------------------
DROP TABLE IF EXISTS `mainsite_timeline`;
CREATE TABLE `mainsite_timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeline_title` varchar(255) NOT NULL,
  `timeline_desc` varchar(255) NOT NULL,
  `timeline_img` varchar(255) NOT NULL,
  `timeline_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_timeline
-- ----------------------------
INSERT INTO `mainsite_timeline` VALUES ('2', '公司成立', '公司成立，东莞市天高网络科技有限公司正式成立，创始团队6人', '1_LXgtd33.jpg', '2014-09-15');
INSERT INTO `mainsite_timeline` VALUES ('3', '公司转型', '公司转型，以技术开发为主营业务，同时进行自有产品研发，推出第一个自有产品-微信第三方平台，主要帮助线下门店实现微信营销推广，创始团队8人', '2_9O6keaY.jpg', '2015-11-09');
INSERT INTO `mainsite_timeline` VALUES ('4', '成长', '公司以技术投资“e展地”（后更名为e场地），平台为PC、手机网站、混合APP三端合一。截止2017年11月01号已上线运营1年零3个月', '3_f6Oosia.jpg', '2016-06-17');
INSERT INTO `mainsite_timeline` VALUES ('5', '发展阶段', '公司以技术投资“团居”（后更名为易团居），平台为微信网站、原生APP两端合一。截止2017年11月01号已上线运营1个月', '4.jpg', '2017-01-01');
