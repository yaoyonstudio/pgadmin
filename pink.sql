/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : pink

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-06-01 17:29:36
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `auth_permission` VALUES ('73', 'Can add 客户信息', '25', 'add_customer');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 客户信息', '25', 'change_customer');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 客户信息', '25', 'delete_customer');
INSERT INTO `auth_permission` VALUES ('76', 'Can add 书籍分类', '26', 'add_bookcate');
INSERT INTO `auth_permission` VALUES ('77', 'Can change 书籍分类', '26', 'change_bookcate');
INSERT INTO `auth_permission` VALUES ('78', 'Can delete 书籍分类', '26', 'delete_bookcate');
INSERT INTO `auth_permission` VALUES ('79', 'Can add 作者信息', '27', 'add_author');
INSERT INTO `auth_permission` VALUES ('80', 'Can change 作者信息', '27', 'change_author');
INSERT INTO `auth_permission` VALUES ('81', 'Can delete 作者信息', '27', 'delete_author');
INSERT INTO `auth_permission` VALUES ('82', 'Can add 书籍信息', '28', 'add_book');
INSERT INTO `auth_permission` VALUES ('83', 'Can change 书籍信息', '28', 'change_book');
INSERT INTO `auth_permission` VALUES ('84', 'Can delete 书籍信息', '28', 'delete_book');
INSERT INTO `auth_permission` VALUES ('85', 'Can add 文章评论', '29', 'add_bookcomment');
INSERT INTO `auth_permission` VALUES ('86', 'Can change 文章评论', '29', 'change_bookcomment');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete 文章评论', '29', 'delete_bookcomment');
INSERT INTO `auth_permission` VALUES ('88', 'Can add 文章图片', '30', 'add_bookimg');
INSERT INTO `auth_permission` VALUES ('89', 'Can change 文章图片', '30', 'change_bookimg');
INSERT INTO `auth_permission` VALUES ('90', 'Can delete 文章图片', '30', 'delete_bookimg');
INSERT INTO `auth_permission` VALUES ('91', 'Can add cart', '31', 'add_cart');
INSERT INTO `auth_permission` VALUES ('92', 'Can change cart', '31', 'change_cart');
INSERT INTO `auth_permission` VALUES ('93', 'Can delete cart', '31', 'delete_cart');
INSERT INTO `auth_permission` VALUES ('94', 'Can add order', '32', 'add_order');
INSERT INTO `auth_permission` VALUES ('95', 'Can change order', '32', 'change_order');
INSERT INTO `auth_permission` VALUES ('96', 'Can delete order', '32', 'delete_order');
INSERT INTO `auth_permission` VALUES ('97', 'Can add 出版社信息', '33', 'add_publisher');
INSERT INTO `auth_permission` VALUES ('98', 'Can change 出版社信息', '33', 'change_publisher');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete 出版社信息', '33', 'delete_publisher');
INSERT INTO `auth_permission` VALUES ('100', 'Can add bookmark', '34', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('101', 'Can change bookmark', '34', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('102', 'Can delete bookmark', '34', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('103', 'Can add pinned application', '35', 'add_pinnedapplication');
INSERT INTO `auth_permission` VALUES ('104', 'Can change pinned application', '35', 'change_pinnedapplication');
INSERT INTO `auth_permission` VALUES ('105', 'Can delete pinned application', '35', 'delete_pinnedapplication');
INSERT INTO `auth_permission` VALUES ('106', 'Can add user dashboard module', '36', 'add_userdashboardmodule');
INSERT INTO `auth_permission` VALUES ('107', 'Can change user dashboard module', '36', 'change_userdashboardmodule');
INSERT INTO `auth_permission` VALUES ('108', 'Can delete user dashboard module', '36', 'delete_userdashboardmodule');

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
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$100000$zbSYfyJdQjvU$HDNI3sx7NRRthwZYKMeQMlwejVm4ezJwA4SlFEsutJY=', '2018-06-01 03:45:39.735543', '1', 'yaoyon', '', '', 'yaoyonstudio@gmail.com', '1', '1', '2018-02-11 01:00:00.358528');

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
-- Table structure for `bookstore_author`
-- ----------------------------
DROP TABLE IF EXISTS `bookstore_author`;
CREATE TABLE `bookstore_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(100) NOT NULL,
  `author_nickname` varchar(100) NOT NULL,
  `author_country` varchar(100) NOT NULL,
  `author_desc` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bookstore_author
-- ----------------------------
INSERT INTO `bookstore_author` VALUES ('1', '王小川', '王小川', '中国', '<p>王小川</p>', '2018-06-01 07:32:25.299650', '2018-06-01 07:32:25.299650');
INSERT INTO `bookstore_author` VALUES ('2', '唐亘', '唐亘', '中国', '<p>唐亘</p>', '2018-06-01 07:32:54.746026', '2018-06-01 07:32:54.746026');
INSERT INTO `bookstore_author` VALUES ('3', '余华', '余华', '中国', '<p>1960年4月出生，曾经从事过5年的牙医工作，1983年开始写作，主要作品有《活着》《许三观卖血记》《在细雨中呼喊》《兄弟》《第七天》等。作品已被翻译成35种语言，在美国、英国、法国、德国、意大利、西班牙、俄罗斯、日本等37个国家和地区出版。曾获意大利格林扎纳&middot;卡佛文学奖（1998年）,法国文学和艺术骑士勋章（2004年），法国国际信使外国小说奖（2008年），意大利朱塞佩&middot;阿切尔比国际文学奖（2014年）等。</p>', '2018-06-01 07:34:00.570738', '2018-06-01 07:34:00.570738');
INSERT INTO `bookstore_author` VALUES ('4', '崔庆才', '崔庆才', '中国', '<p>北京航空航天大学硕士，静觅博客（https://cuiqingcai.com/）博主，爬虫博文访问量已过百万，喜欢钻研，热爱生活，乐于分享。欢迎关注个人微信公众号&ldquo;进击的Coder&rdquo;。</p>', '2018-06-01 07:52:37.460638', '2018-06-01 07:52:37.460638');

-- ----------------------------
-- Table structure for `bookstore_book`
-- ----------------------------
DROP TABLE IF EXISTS `bookstore_book`;
CREATE TABLE `bookstore_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(250) NOT NULL,
  `book_isbn` varchar(50) NOT NULL,
  `book_version` varchar(10) DEFAULT NULL,
  `book_lang` varchar(100) DEFAULT NULL,
  `book_paper` varchar(100) DEFAULT NULL,
  `book_size` tinyint(1) NOT NULL,
  `book_packing` tinyint(1) NOT NULL,
  `book_able` tinyint(1) NOT NULL,
  `book_recommend` tinyint(1) NOT NULL,
  `book_publish_year` varchar(4) NOT NULL,
  `book_pages` int(10) unsigned DEFAULT NULL,
  `book_words` int(10) unsigned DEFAULT NULL,
  `book_desc` longtext,
  `book_content` longtext,
  `book_preface` longtext,
  `book_comments` longtext,
  `book_original_price` double NOT NULL,
  `book_sale_price` double NOT NULL,
  `book_sale_nums` int(10) unsigned DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookstore_book_author_id_c8c6315b_fk_bookstore_author_id` (`author_id`),
  KEY `bookstore_book_publisher_id_34399b82_fk_bookstore_publisher_id` (`publisher_id`),
  KEY `bookstore_book_cate_id_4dcb667b_fk_bookstore_bookcate_id` (`cate_id`),
  CONSTRAINT `bookstore_book_author_id_c8c6315b_fk_bookstore_author_id` FOREIGN KEY (`author_id`) REFERENCES `bookstore_author` (`id`),
  CONSTRAINT `bookstore_book_cate_id_4dcb667b_fk_bookstore_bookcate_id` FOREIGN KEY (`cate_id`) REFERENCES `bookstore_bookcate` (`id`),
  CONSTRAINT `bookstore_book_publisher_id_34399b82_fk_bookstore_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `bookstore_publisher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bookstore_book
-- ----------------------------
INSERT INTO `bookstore_book` VALUES ('1', '活着', '9787506365437', '3', '中文', '特种纸', '4', '1', '1', '1', '2017', '300', '20512', '<p>《活着（新版）》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵前去求药，却在途中被国民党抓去当壮丁。经过几番波折回到家里，才知道母亲早已去世，妻子家珍含辛茹苦地养大两个儿女。此后更加悲惨的命运一次又一次降临到福贵身上，他的妻子、儿女和孙子相继死去，最后只剩福贵和一头老牛相依为命，但老人依旧活着，仿佛比往日更加洒脱与坚强。</p>\r\n\r\n<p>《余华作品：活着》荣获意大利格林扎纳&middot;卡佛文学奖高奖项（1998年）、台湾《中国时报》10本好书奖（1994年）、香港&ldquo;博益&rdquo;15本好书奖（1994年）、第三届世界华文&ldquo;冰心文学奖&rdquo;（2002年），入选香港《亚洲周刊》评选的&ldquo;20世纪中文小说百年百强&rdquo;、中国百位批评家和文学编辑评选的&ldquo;20世纪90年代*有影响的10部作品&rdquo;。</p>', '<p>中文版自序</p>\r\n\r\n<p>活着</p>\r\n\r\n<p>外文版评论摘要</p>', '<p>中文版自序</p>\r\n\r\n<p>一位真正的作家永远只为内心写作，只有内心才会真实地告诉他，他的自私、他的高尚是多么突出。内心让他真实地了解自己，一旦了解了自己也就了解了世界。很多年前我就明白了这个原则，可是要捍卫这个原则必须付出艰辛的劳动和长时期的痛苦，因为内心并非时时刻刻都是敞开的，它更多的时候倒是封闭起来，于是只有写作、不停地写作才能使内心敞开，才能使自己置身于发现之中，就像日出的光芒照亮了黑暗，灵感这时候才会突然来到。长期以来，我的作品都是源于和现实的那一层紧张关系。我沉湎于想象之中，又被现实紧紧控制，我明确感受着自我的分裂，我无法使自己变得纯粹，我曾经希望自己成为一位童话作家，要不就是一位实实在在作品的拥有者，如果我能够成为这两者中的任何一个，我想我内心的痛苦将轻微很多，可是与此同时我的力量也会削弱很多。事实上我只能成为现在这样的作家，我始终为内心的需要而写作，理智代替不了我的写作，正因为此，我在很长一段时间里是一个愤怒和冷漠的作家。这不只是我个人面临的困难，几乎所有优秀的作家都处于和现实的紧张关系中，在他们笔下，只有当现实处于遥远状态时，他们作品中的现实才会闪闪发亮。应该看到，这过去的现实虽然充满了魅力，可它已经蒙上了一层虚幻的色彩，那里面塞满了个人想象和个人理解。真正的现实，也就是作家生活中的现实，是令人费解和难以相处的。作家要表达与之朝夕相处的现实，他常常会感到难以承受，蜂拥而来的真实几乎都在诉说着丑恶和阴险，怪就怪在这里，为什么丑恶的事物总是在身边，而美好的事物却远在海角。换句话说，人的友爱和同情往往只是作为情绪来到，而相反的事实则是伸手便可触及。正像一位诗人所表达的：人类无法忍受太多的真实。也有这样的作家，一生都在解决自我和现实的紧张关系，福克纳是一个成功的例子，他找到了一条温和的途径，他描写中间状态的事物，同时包容了美好和丑恶，他将美国南方的现实放到了历史和人文精神之中，这是真正意义上的文学现实，因为它连接了过去和将来。一些不成功的作家也在描写现实，可是他们笔下的现实说穿了只是一个环境，是固定的、死去的现实。他们看不到人是怎样走过来的，也看不到怎样走去。当他们在描写斤斤计较的人物时，我们会感到作家本人也在斤斤计较。这样的作家是在写实在的作品，而不是现实的作品。前面已经说过，我和现实关系紧张，说得严重一点，我一直是以敌对的态度看待现实。随着时间的推移，我内心的愤怒渐渐平息，我开始意识到一位真正的作家所寻找的是真理，是一种排斥道德判断的真理。作家的使命不是发泄，不是控诉或者揭露，他应该向人们展示高尚。这里所说的高尚不是那种单纯的美好，而是对一切事物理解之后的超然，对善和恶一视同仁，用同情的目光看待世界。正是在这样的心态下，我听到了一首美国民歌《老黑奴》，歌中那位老黑奴经历了一生的苦难，家人都先他而去，而他依然友好地对待这个世界，没有一句抱怨的话。这首歌深深地打动了我，我决定写下一篇这样的小说，就是这篇《活着》，写人对苦难的承受能力，对世界乐观的态度。写作过程让我明白，人是为活着本身而活着的，而不是为了活着之外的任何事物所活着。我感到自己写下了高尚的作品。</p>\r\n\r\n<p>海盐，一九九三年七月二十七日</p>', '<p>★这是真正意义上，让我觉得无话可说的小说。言语让我觉得自己苍白肤浅。</p>\r\n\r\n<p>&mdash;&mdash;读者评论</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>★第1次看的时候还是个学生，在宿舍里 ，躲在床上，大家沉默着看着这本书。最后始终忍不住，对面的女孩带着哭腔开始骂人，怎么可以这样，怎么可以这样？一抬头，大家的眼睛都是红的。</p>\r\n\r\n<p>&mdash;&mdash;读者评论</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>★最后的结束，其实作者也对我们昭示着生命的希望，无论这个生命正经历着怎样的悲苦？</p>\r\n\r\n<p>&mdash;&mdash;读者评论</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>★高中时看过，对我触动很大。然后就把余华的其他基本书都看了。感动。改变了我的人生观。</p>\r\n\r\n<p>&mdash;&mdash;读者评论</p>', '28', '26.8', '32156', '2018-06-01 07:42:05.123107', '2018-06-01 07:42:05.123107', '3', '6', '11');
INSERT INTO `bookstore_book` VALUES ('2', 'Python 3网络爬虫开发实战', '9787115480347', '1', '中文', null, '7', '1', '1', '1', '2018', null, null, '<p>本书介绍了如何利用Python 3开发网络爬虫，书中首先介绍了环境配置和基础知识，然后讨论了urllib、requests、正则表达式、Beautiful Soup、XPath、pyquery、数据存储、Ajax数据爬取等内容，接着通过多个案例介绍了不同场景下如何实现数据爬取，最后介绍了pyspider框架、Scrapy框架和分布式爬虫。</p>\r\n\r\n<p>本书适合Python程序员阅读。</p>', '<p>第1章　开发环境配置　　1</p>\r\n\r\n<p>1.1　Python 3的安装　　1</p>\r\n\r\n<p>1.1.1　Windows下的安装　　1</p>\r\n\r\n<p>1.1.2　Linux下的安装　　6</p>\r\n\r\n<p>1.1.3　Mac下的安装　　8</p>\r\n\r\n<p>1.2　请求库的安装　　10</p>\r\n\r\n<p>1.2.1　requests的安装　　10</p>\r\n\r\n<p>1.2.2　Selenium的安装　　11</p>\r\n\r\n<p>1.2.3　ChromeDriver的安装　　12</p>\r\n\r\n<p>1.2.4　GeckoDriver的安装　　15</p>\r\n\r\n<p>1.2.5　PhantomJS的安装　　17</p>\r\n\r\n<p>1.2.6　aiohttp的安装　　18</p>\r\n\r\n<p>1.3　解析库的安装　　19</p>\r\n\r\n<p>1.3.1　lxml的安装　　19</p>\r\n\r\n<p>1.3.2　Beautiful Soup的安装　　21</p>\r\n\r\n<p>1.3.3　pyquery的安装　　22</p>\r\n\r\n<p>1.3.4　tesserocr的安装　　22</p>\r\n\r\n<p>1.4　数据库的安装　　26</p>\r\n\r\n<p>1.4.1　MySQL的安装　　27</p>\r\n\r\n<p>1.4.2　MongoDB的安装　　29</p>\r\n\r\n<p>1.4.3　Redis的安装　　36</p>\r\n\r\n<p>1.5　存储库的安装　　39</p>\r\n\r\n<p>1.5.1　PyMySQL的安装　　39</p>\r\n\r\n<p>1.5.2　PyMongo的安装　　39</p>\r\n\r\n<p>1.5.3　redis-py的安装　　40</p>\r\n\r\n<p>1.5.4　RedisDump的安装　　40</p>\r\n\r\n<p>1.6　Web库的安装　　41</p>\r\n\r\n<p>1.6.1　Flask的安装　　41</p>\r\n\r\n<p>1.6.2　Tornado的安装　　42</p>\r\n\r\n<p>1.7　App爬取相关库的安装　　43</p>\r\n\r\n<p>1.7.1　Charles的安装　　44</p>\r\n\r\n<p>1.7.2　mitmproxy的安装　　50</p>\r\n\r\n<p>1.7.3　Appium的安装　　55</p>\r\n\r\n<p>1.8　爬虫框架的安装　　59</p>\r\n\r\n<p>1.8.1　pyspider的安装　　59</p>\r\n\r\n<p>1.8.2　Scrapy的安装　　61</p>\r\n\r\n<p>1.8.3　Scrapy-Splash的安装　　65</p>\r\n\r\n<p>1.8.4　Scrapy-Redis的安装　　66</p>\r\n\r\n<p>1.9　部署相关库的安装　　67</p>\r\n\r\n<p>1.9.1　Docker的安装　　67</p>\r\n\r\n<p>1.9.2　Scrapyd的安装　　71</p>\r\n\r\n<p>1.9.3　Scrapyd-Client的安装　　74</p>\r\n\r\n<p>1.9.4　Scrapyd API的安装　　75</p>\r\n\r\n<p>1.9.5　Scrapyrt的安装　　75</p>\r\n\r\n<p>1.9.6　Gerapy的安装　　76</p>\r\n\r\n<p>第2章　爬虫基础　　77</p>\r\n\r\n<p>2.1　HTTP基本原理　　77</p>\r\n\r\n<p>2.1.1　URI和URL　　77</p>\r\n\r\n<p>2.1.2　超文本　　78</p>\r\n\r\n<p>2.1.3　HTTP和HTTPS　　78</p>\r\n\r\n<p>2.1.4　HTTP请求过程　　80</p>\r\n\r\n<p>2.1.5　请求　　82</p>\r\n\r\n<p>2.1.6　响应　　84</p>\r\n\r\n<p>2.2　网页基础　　87</p>\r\n\r\n<p>2.2.1　网页的组成　　87</p>\r\n\r\n<p>2.2.2　网页的结构　　88</p>\r\n\r\n<p>2.2.3　节点树及节点间的关系　　90</p>\r\n\r\n<p>2.2.4　选择器　　91</p>\r\n\r\n<p>2.3　爬虫的基本原理　　93</p>\r\n\r\n<p>2.3.1　爬虫概述　　93</p>\r\n\r\n<p>2.3.2　能抓怎样的数据　　94</p>\r\n\r\n<p>2.3.3　JavaScript渲染页面　　94</p>\r\n\r\n<p>2.4　会话和Cookies　　95</p>\r\n\r\n<p>2.4.1　静态网页和动态网页　　95</p>\r\n\r\n<p>2.4.2　无状态HTTP　　96</p>\r\n\r\n<p>2.4.3　常见误区　　98</p>\r\n\r\n<p>2.5　代理的基本原理　　99</p>\r\n\r\n<p>2.5.1　基本原理　　99</p>\r\n\r\n<p>2.5.2　代理的作用　　99</p>\r\n\r\n<p>2.5.3　爬虫代理　　100</p>\r\n\r\n<p>2.5.4　代理分类　　100</p>\r\n\r\n<p>2.5.5　常见代理设置　　101</p>\r\n\r\n<p>第3章　基本库的使用　　102</p>\r\n\r\n<p>3.1　使用urllib　　102</p>\r\n\r\n<p>3.1.1　发送请求　　102</p>\r\n\r\n<p>3.1.2　处理异常　　112</p>\r\n\r\n<p>3.1.3　解析链接　　114</p>\r\n\r\n<p>3.1.4　分析Robots协议　　119</p>\r\n\r\n<p>3.2　使用requests　　122</p>\r\n\r\n<p>3.2.1　基本用法　　122</p>\r\n\r\n<p>3.2.2　高级用法　　130</p>\r\n\r\n<p>3.3　正则表达式　　139</p>\r\n\r\n<p>3.4　抓取猫眼电影排行　　150</p>\r\n\r\n<p>第4章　解析库的使用　　158</p>\r\n\r\n<p>4.1　使用XPath　　158</p>\r\n\r\n<p>4.2　使用Beautiful Soup　　168</p>\r\n\r\n<p>4.3　使用pyquery　　184</p>\r\n\r\n<p>第5章　数据存储　　197</p>\r\n\r\n<p>5.1　文件存储　　197</p>\r\n\r\n<p>5.1.1　TXT文本存储　　197</p>\r\n\r\n<p>5.1.2　JSON文件存储　　199</p>\r\n\r\n<p>5.1.3　CSV文件存储　　203</p>\r\n\r\n<p>5.2　关系型数据库存储　　207</p>\r\n\r\n<p>5.2.1　MySQL的存储　　207</p>\r\n\r\n<p>5.3　非关系型数据库存储　　213</p>\r\n\r\n<p>5.3.1　MongoDB存储　　214</p>\r\n\r\n<p>5.3.2　Redis存储　　221</p>\r\n\r\n<p>第6章　Ajax数据爬取　　232</p>\r\n\r\n<p>6.1　什么是Ajax　　232</p>\r\n\r\n<p>6.2　Ajax分析方法　　234</p>\r\n\r\n<p>6.3　Ajax结果提取　　238</p>\r\n\r\n<p>6.4　分析Ajax爬取今日头条街拍美图　　242</p>\r\n\r\n<p>第7章　动态渲染页面爬取　　249</p>\r\n\r\n<p>7.1　Selenium的使用　　249</p>\r\n\r\n<p>7.2　Splash的使用　　262</p>\r\n\r\n<p>7.3　Splash负载均衡配置　　286</p>\r\n\r\n<p>7.4　使用Selenium爬取淘宝商品　　289</p>\r\n\r\n<p>第8章　验证码的识别　　298</p>\r\n\r\n<p>8.1　图形验证码的识别　　298</p>\r\n\r\n<p>8.2　极验滑动验证码的识别　　301</p>\r\n\r\n<p>8.3　点触验证码的识别　　311</p>\r\n\r\n<p>8.4　微博宫格验证码的识别　　318</p>\r\n\r\n<p>第9章　代理的使用　　326</p>\r\n\r\n<p>9.1　代理的设置　　326</p>\r\n\r\n<p>9.2　代理池的维护　　333</p>\r\n\r\n<p>9.3　付费代理的使用　　347</p>\r\n\r\n<p>9.4　ADSL拨号代理　　351</p>\r\n\r\n<p>9.5　使用代理爬取微信公众号文章　　364</p>\r\n\r\n<p>第10章　模拟登录　　379</p>\r\n\r\n<p>10.1　模拟登录并爬取GitHub　　379</p>\r\n\r\n<p>10.2　Cookies池的搭建　　385</p>\r\n\r\n<p>第11章　App的爬取　　398</p>\r\n\r\n<p>11.1　Charles的使用　　398</p>\r\n\r\n<p>11.2　mitmproxy的使用　　405</p>\r\n\r\n<p>11.3　mitmdump爬取&ldquo;得到&rdquo;App电子书</p>\r\n\r\n<p>信息　　417</p>\r\n\r\n<p>11.4　Appium的基本使用　　423</p>\r\n\r\n<p>11.5　Appium爬取微信朋友圈　　433</p>\r\n\r\n<p>11.6　Appium+mitmdump爬取京东商品　　437</p>\r\n\r\n<p>第12章　pyspider框架的使用　　443</p>\r\n\r\n<p>12.1　pyspider框架介绍　　443</p>\r\n\r\n<p>12.2　pyspider的基本使用　　445</p>\r\n\r\n<p>12.3　pyspider用法详解　　459</p>\r\n\r\n<p>第13章　Scrapy框架的使用　　468</p>\r\n\r\n<p>13.1　Scrapy框架介绍　　468</p>\r\n\r\n<p>13.2　Scrapy入门　　470</p>\r\n\r\n<p>13.3　Selector的用法　　480</p>\r\n\r\n<p>13.4　Spider的用法　　486</p>\r\n\r\n<p>13.5　Downloader Middleware的用法　　487</p>\r\n\r\n<p>13.6　Spider Middleware的用法　　494</p>\r\n\r\n<p>13.7　Item Pipeline的用法　　496</p>\r\n\r\n<p>13.8　Scrapy对接Selenium　　506</p>\r\n\r\n<p>13.9　Scrapy对接Splash　　511</p>\r\n\r\n<p>13.10　Scrapy通用爬虫　　516</p>\r\n\r\n<p>13.11　Scrapyrt的使用　　533</p>\r\n\r\n<p>13.12　Scrapy对接Docker　　536</p>\r\n\r\n<p>13.13　Scrapy爬取新浪微博　　541</p>\r\n\r\n<p>第14章　分布式爬虫　　555</p>\r\n\r\n<p>14.1　分布式爬虫原理　　555</p>\r\n\r\n<p>14.2　Scrapy-Redis源码解析　　558</p>\r\n\r\n<p>14.3　Scrapy分布式实现　　564</p>\r\n\r\n<p>14.4　Bloom Filter的对接　　569</p>\r\n\r\n<p>第15章　分布式爬虫的部署　　577</p>\r\n\r\n<p>15.1　Scrapyd分布式部署　　577</p>\r\n\r\n<p>15.2　Scrapyd-Client的使用　　582</p>\r\n\r\n<p>15.3　Scrapyd对接Docker　　583</p>\r\n\r\n<p>15.4　Scrapyd批量部署　　586</p>\r\n\r\n<p>15.5　Gerapy分布式管理　　590</p>', '<p>前　　言</p>\r\n\r\n<p>为什么写这本书</p>\r\n\r\n<p>在这个大数据时代，尤其是人工智能浪潮兴起的时代，不论是工程领域还是研究领域，数据已经成为必不可少的一部分，而数据的获取很大程度上依赖于爬虫的爬取，所以爬虫也逐渐变得火爆起来。我是在2015年开始接触爬虫的，当时爬虫其实并没有这么火，我当时觉得能够把想要的数据抓取下来就是一件非常有成就感的事情，而且也可以顺便熟悉Python，一举两得。在学习期间，我将学到的内容做好总结，发表到博客上。随着我发表的内容越来越多，博客的浏览量也越来越多，很多读者对我的博文给予了肯定的评价，这也给我的爬虫学习之路增添了很多动力。在学习的过程中，困难其实还是非常多的，最早学习时使用的是Python 2，当时因为编码问题搞得焦头烂额。另外，那时候相关的中文资料还比较少，很多情况下还得自己慢慢去啃官方文档，走了不少弯路。随着学习的进行，我发现爬虫这部分内容涉及的知识点太多、太杂了。网页的结构、渲染方式不同，我们就得换不同的爬取方案来进行针对性的爬取。另外，网页信息的提取、爬取结果的保存也有五花八门的方案。随着移动互联网的兴起，App的爬取也成了一个热点，而为了提高爬取速度又需要考虑并行爬取、分布式爬取方面的内容，爬虫的通用性、易用性、架构都需要好好优化。这么多杂糅的知识点对于一个爬虫初学者来说，学习的挑战性会非常高，同时学习过程中大家或许也会走我之前走过的弯路，浪费很多时间。后来有一天，图灵的王编辑联系了我，问我有没有意向写一本爬虫方面的书，我听到之后充满了欣喜和期待，这样既能把自己学过的知识点做一个系统整理，又可以跟广大爬虫爱好者分享自己的学习经验，还可以出版自己的作品，于是我很快就答应约稿了。</p>\r\n\r\n<p>一开始觉得写书并不是一件那么难的事，后来真正写了才发现其中包含的艰辛。书相比博客来说，用词的严谨性要高很多，而且逻辑需要更加缜密，很多细节必须考虑得非常周全。前前后后写了大半年的时间，审稿和修改又花费了几个月的时间，一路走来甚是不易，不过最后看到书稿成型，觉得这一切都是值得的。在书中，我把我学习爬虫的很多经验都写了进去。环境配置是学习的第一步，环境配置不好，其他工作就没法开展，甚至可能很大程度上打击学习的积极性，所以我在第1章中着重介绍了环境的配置过程。而因为操作系统的不同，环境配置过程又各有不同，所以我把每个系统（Windows、Linux、Mac）的环境配置过程都亲自实践了一遍，并梳理记录下来，希望为各位读者在环境配置时多提供一些帮助。后面我又针对爬虫网站的不同情形分门别类地进行了说明，如Ajax分析爬取、动态渲染页面爬取、App爬取、使用代理爬取、模拟登录爬取等知识，每个知识点我都选取了一些典型案例来说明，以便于读者更好地理解整个过程和用法。为了提高代码编写和爬取的效率，还可以使用一些爬虫框架辅助爬取，所以本书后面又介绍了两个流行的爬虫框架的用法，最后又介绍了一些分布式爬虫及部署方面的知识。总体来说，本书根据我个人觉得比较理想的学习路径介绍了学习爬虫的相关知识，并通过一些实战案例帮助读者更好地理解其中的原理。</p>\r\n\r\n<p>本书内容</p>\r\n\r\n<p>本书一共分为15章，归纳如下。</p>\r\n\r\n<p>? 第1章介绍了本书所涉及的所有环境的配置详细流程，兼顾Windows、Linux、Mac三大平台。本章不用逐节阅读，需要的时候查阅即可。</p>\r\n\r\n<p>? 第2章介绍了学习爬虫之前需要了解的基础知识，如HTTP、爬虫、代理的基本原理、网页基本结构等内容，对爬虫没有任何了解的读者建议好好了解这一章的知识。</p>\r\n\r\n<p>? 第3章介绍了最基本的爬虫操作，一般学习爬虫都是从这一步学起的。这一章介绍了最基本的两个请求库（urllib和requests）和正则表达式的基本用法。学会了这一章，就可以掌握最基本的爬虫技术了。</p>\r\n\r\n<p>? 第4章介绍了页解析库的基本用法，包括Beautiful Soup、XPath、pyquery的基本使用方法，它们可以使得信息的提取更加方便、快捷，是爬虫必备利器。</p>\r\n\r\n<p>? 第5章介绍了数据存储的常见形式及存储操作，包括TXT、JSON、CSV各种文件的存储，以及关系型数据库MySQL和非关系型数据库MongoDB、Redis存储的基本存储操作。学会了这些内容，我们可以灵活方便地保存爬取下来的数据。</p>\r\n\r\n<p>? 第6章介绍了Ajax数据爬取的过程，一些网页的数据可能是通过Ajax请求API接口的方式加载的，用常规方法无法爬取，本章介绍了使用Ajax进行数据爬取的方法。</p>\r\n\r\n<p>? 第7章介绍了动态渲染页面的爬取，现在越来越多的网站内容是经过JavaScript渲染得到的，而原始HTML文本可能不包含任何有效内容，而且渲染过程可能涉及某些JavaScript加密算法，可以使用Selenium、Splash等工具来实现模拟浏览器进行数据爬取的方法。</p>\r\n\r\n<p>? 第8章介绍了验证码的相关处理方法。验证码是网站反爬虫的重要措施，我们可以通过本章了解到各类验证码的应对方案，包括图形验证码、极验验证码、点触验证码、微博宫格验证码的识别。</p>\r\n\r\n<p>? 第9章介绍了代理的使用方法，限制IP的访问也是网站反爬虫的重要措施。另外，我们也可以使用代理来伪装爬虫的真实IP，使用代理可以有效解决这个问题。通过本章，我们了解到代理的使用方法，还学习了代理池的维护方法，以及ADSL拨号代理的使用方法。</p>\r\n\r\n<p>? 第10章介绍了模拟登录爬取的方法，某些网站需要登录才可以看到需要的内容，这时就需要用爬虫模拟登录网站再进行爬取了。本章介绍了最基本的模拟登录方法以及维护一个Cookies池的方法。</p>\r\n\r\n<p>? 第11章介绍了App的爬取方法，包括基本的Charles、mitmproxy抓包软件的使用。此外，还介绍了mitmdump对接Python脚本进行实时抓取的方法，以及使用Appium完全模拟手机App的操作进行爬取的方法。</p>\r\n\r\n<p>? 第12章介绍了pyspider爬虫框架及用法，该框架简洁易用、功能强大，可以节省大量开发爬虫的时间。本章结合案例介绍了使用该框架进行爬虫开发的方法。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>? 第13章介绍了Scrapy爬虫框架及用法。Scrapy是目前使用最广泛的爬虫框架，本章介绍了它的基本架构、原理及各个组件的使用方法，另外还介绍了Scrapy通用化配置、对接Docker的一些方法。</p>\r\n\r\n<p>? 第14章介绍了分布式爬虫的基本原理及实现方法。为了提高爬取效率，分布式爬虫是必不可少的，本章介绍了使用Scrapy和Redis实现分布式爬虫的方法。</p>\r\n\r\n<p>? 第15章介绍了分布式爬虫的部署及管理方法。方便快速地完成爬虫的分布式部署，可以节省开发者大量的时间。本章结合Scrapy、Scrapyd、Docker、Gerapy等工具介绍了分布式爬虫部署和管理的实现。</p>\r\n\r\n<p>致谢</p>\r\n\r\n<p>感谢我的父母、导师，没有他们创造的环境，我不可能完成此书的写作。</p>\r\n\r\n<p>感谢我的女朋友李园，在我写书期间给了我很多的支持和鼓励。同时她还主导设计了本书的封面，正是她的理解和付出才使本书得以完善。</p>\r\n\r\n<p>感谢在我学习过程中与我探讨技术的各位朋友，特别感谢汪海洋先生在我初学爬虫过程中给我提供的指导，特别感谢崔弦毅、苟桃、时猛先生在我写书过程中为我提供的思路和建议。</p>\r\n\r\n<p>感谢为本书撰写推荐语的李舟军老师、宋睿华老师、梁斌老师、施水才老师（排名不分先后），感谢你们对本书的支持和推荐。</p>\r\n\r\n<p>感谢王军花、陈兴璐编辑，在书稿的审核过程中给我提供了非常多的建议，没有你们的策划和敦促，我也难以顺利完成此书。</p>\r\n\r\n<p>感谢为本书做出贡献的每一个人！</p>\r\n\r\n<p>相关资源</p>\r\n\r\n<p>本书中的所有代码都放在了GitHub（详见https://github.com/Python3WebSpider），书中每个实例对应的章节末也有说明。</p>\r\n\r\n<p>本人的个人博客也会更新爬虫相关文章，欢迎读者访问交流，博客地址：https://cuiqingcai.com/。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>崔庆才</p>\r\n\r\n<p>2018年1月</p>', '<p>专业评论：</p>\r\n\r\n<p>在互联网软件开发工程师的分类中，爬虫工程师是非常重要的。爬虫工作往往是一个公司核心业务开展的基础，数据抓取下来，才有后续的加工处理和最终展现。此时数据的抓取规模、稳定性、实时性、准确性就显得非常重要。早期的互联网充分开放互联，数据获取的难度很小。随着各大公司对数据资产日益看重，反爬水平也在不断提高，各种新技术不断给爬虫软件提出新的课题。本书作者对爬虫的各个领域都有深刻研究，书中探讨了Ajax数据的抓取、动态渲染页面的抓取、验证码识别、模拟登录等高级话题，同时也结合移动互联网的特点探讨了App的抓取等。更重要的是，本书提供了大量源码，可以帮助读者更好地理解相关内容。强烈推荐给各位技术爱好者阅读！</p>\r\n\r\n<p>&mdash;&mdash;梁斌，八友科技总经理</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>数据既是当今大数据分析的前提，也是各种人工智能应用场景的基础。得数据者得天下，会爬虫者走遍天下也不怕！一册在手，让小白到老司机都能有所收获！</p>\r\n\r\n<p>&mdash;&mdash;李舟军，北京航空航天大学教授，博士生导师</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>本书从爬虫入门到分布式抓取，详细介绍了爬虫技术的各个要点，并针对不同的场景提出了对应的解决方案。另外，书中通过大量的实例来帮助读者更好地学习爬虫技术，通俗易懂，干货满满。强烈推荐给大家！</p>\r\n\r\n<p>&mdash;&mdash;宋睿华，微软小冰首席科学家</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>有人说中国互联网的带宽全给各种爬虫占据了，这说明网络爬虫的重要性以及中国互联网数据封闭垄断的现状。爬是一种能力，爬是为了不爬。</p>\r\n\r\n<p>&mdash;&mdash;施水才，北京拓尔思信息技术股份有限公司总裁</p>', '99', '83.2', '452', '2018-06-01 07:53:27.569687', '2018-06-01 07:53:27.569687', '4', '1', '34');
INSERT INTO `bookstore_book` VALUES ('3', 'Python与量化投资：从基础到实战', '9787121338571', '1', '中文', '胶版纸', '7', '1', '1', '0', '2018', '420', '550000', '<p>本书主要讲解如何利用Python进行量化投资，包括对数据的获取、整理、分析挖掘、信号构建、策略构建、回测、策略分析等。本书也是利用Python进行数据分析的指南，有大量的关于数据处理分析的应用，并将重点介绍如何高效地利用Python解决投资策略问题。本书分为Python基础和量化投资两大部分：Python基础部分主要讲解Python软件的基础、各个重要模块及如何解决常见的数据分析问题；量化投资部分在Python基础部分的基础上，讲解如何使用优矿（uqer.io）回测平台实现主流策略及高级定制策略等。</p>\r\n\r\n<p>本书可作为专业金融从业者进行量化投资的工具书，也可作为金融领域的入门参考书。在本书中有大量的Python代码、Python量化策略的实现代码等，尤其是对于量化策略的实现代码，读者可直接自行修改并获得策略的历史回测结果，甚至可将代码直接实盘应用，进行投资。</p>', '<p>第1章 准备工作 1</p>\r\n\r\n<p>1.1 Python的安装与设置 1</p>\r\n\r\n<p>1.2 常见的Python库 2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>第2章 Python基础介绍 7</p>\r\n\r\n<p>2.1 Python学习准备 7</p>\r\n\r\n<p>2.2 Python语法基础 11</p>\r\n\r\n<p>2.2.1 常量与变量 11</p>\r\n\r\n<p>2.2.2 数与字符串 11</p>\r\n\r\n<p>2.2.3 数据类 15</p>\r\n\r\n<p>2.2.4 标识符 18</p>\r\n\r\n<p>2.2.5 对象 19</p>\r\n\r\n<p>2.2.6 行与缩进 20</p>\r\n\r\n<p>2.2.7 注释 22</p>\r\n\r\n<p>2.3 Python运算符与表达式 22</p>\r\n\r\n<p>2.3.1 算数运算符 22</p>\r\n\r\n<p>2.3.2 比较运算符 24</p>\r\n\r\n<p>2.3.3 逻辑运算符 25</p>\r\n\r\n<p>2.3.4 Python中的优先级 27</p>\r\n\r\n<p>2.4 Python中的控制流 27</p>\r\n\r\n<p>2.4.1 控制流的功能 28</p>\r\n\r\n<p>2.4.2 Python的三种控制流 29</p>\r\n\r\n<p>2.4.3 认识分支结构if 30</p>\r\n\r\n<p>2.4.4 认识循环结构for&hellip;in 32</p>\r\n\r\n<p>2.4.5 认识循环结构while 33</p>\r\n\r\n<p>2.4.6 break语句与continue语句 35</p>\r\n\r\n<p>2.5 Python函数 39</p>\r\n\r\n<p>2.5.1 认识函数 39</p>\r\n\r\n<p>2.5.2 形参与实参 40</p>\r\n\r\n<p>2.5.3 全局变量与局部变量 44</p>\r\n\r\n<p>2.5.4 对函数的调用与返回值 45</p>\r\n\r\n<p>2.5.5 文档字符串 46</p>\r\n\r\n<p>2.6 Python模块 47</p>\r\n\r\n<p>2.6.1 认识Python模块 47</p>\r\n\r\n<p>2.6.2 from&hellip;import详解 49</p>\r\n\r\n<p>2.6.3 认识__name__属性 50</p>\r\n\r\n<p>2.6.4 自定义模块 50</p>\r\n\r\n<p>2.6.5 dir()函数 51</p>\r\n\r\n<p>2.7 Python异常处理与文件操作 52</p>\r\n\r\n<p>2.7.1 Python异常处理 52</p>\r\n\r\n<p>2.7.2 异常的发生 55</p>\r\n\r\n<p>2.7.3 try&hellip;finally的使用 56</p>\r\n\r\n<p>2.7.4 文件操作 57</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>第3章 Python进阶 59</p>\r\n\r\n<p>3.1 NumPy的使用 59</p>\r\n\r\n<p>3.1.1 多维数组ndarray 59</p>\r\n\r\n<p>3.1.2 ndarray的数据类型 60</p>\r\n\r\n<p>3.1.3 数组索引、切片和赋值 61</p>\r\n\r\n<p>3.1.4 基本的数组运算 62</p>\r\n\r\n<p>3.1.5 随机数 63</p>\r\n\r\n<p>3.2 Pandas的使用 67</p>\r\n\r\n<p>3.2.1 Pandas的数据结构 68</p>\r\n\r\n<p>3.2.2 Pandas输出设置 70</p>\r\n\r\n<p>3.2.3 Pandas数据读取与写入 70</p>\r\n\r\n<p>3.2.4 数据集快速描述性统计分析 71</p>\r\n\r\n<p>3.2.5 根据已有的列建立新列 72</p>\r\n\r\n<p>3.2.6 DataFrame按多列排序 73</p>\r\n\r\n<p>3.2.7 DataFrame去重 73</p>\r\n\r\n<p>3.2.8 删除已有的列 74</p>\r\n\r\n<p>3.2.9 Pandas替换数据 75</p>\r\n\r\n<p>3.2.10 DataFrame重命名 75</p>\r\n\r\n<p>3.2.11 DataFrame切片与筛选 76</p>\r\n\r\n<p>3.2.12 连续型变量分组 78</p>\r\n\r\n<p>3.2.13 Pandas分组技术 79</p>\r\n\r\n<p>3.3 SciPy的初步使用 83</p>\r\n\r\n<p>3.3.1 回归分析 84</p>\r\n\r\n<p>3.3.2 插值 87</p>\r\n\r\n<p>3.3.3 正态性检验 89</p>\r\n\r\n<p>3.3.4 凸优化 93</p>\r\n\r\n<p>3.4 Matplotlib的使用 97</p>\r\n\r\n<p>3.5 Seaborn的使用 97</p>\r\n\r\n<p>3.5.1 主题管理 98</p>\r\n\r\n<p>3.5.2 调色板 101</p>\r\n\r\n<p>3.5.3 分布图 102</p>\r\n\r\n<p>3.5.4 回归图 104</p>\r\n\r\n<p>3.5.5 矩阵图 106</p>\r\n\r\n<p>3.5.6 结构网格图 108</p>\r\n\r\n<p>3.6 Scikit-Learn的初步使用 109</p>\r\n\r\n<p>3.6.1 Scikit-Learn学习准备 110</p>\r\n\r\n<p>3.6.2 常见的机器学习模型 111</p>\r\n\r\n<p>3.6.3 模型评价方法&mdash;&mdash;metric模块 120</p>\r\n\r\n<p>3.6.4 深度学习 124</p>\r\n\r\n<p>3.7 SQLAlchemy与常用数据库的连接 124</p>\r\n\r\n<p>3.7.1 连接数据库 125</p>\r\n\r\n<p>3.7.2 读取数据 126</p>\r\n\r\n<p>3.7.3 存储数据 126</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>第4章 常用数据的获取与整理 129</p>\r\n\r\n<p>4.1 金融数据类型 129</p>\r\n\r\n<p>4.2 金融数据的获取 131</p>\r\n\r\n<p>4.3 数据整理 135</p>\r\n\r\n<p>4.3.1 数据整合 135</p>\r\n\r\n<p>4.3.2 数据过滤 137</p>\r\n\r\n<p>4.3.3 数据探索与数据清洗 138</p>\r\n\r\n<p>4.3.4 数据转化 140</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>第5章 通联数据回测平台介绍 143</p>\r\n\r\n<p>5.1 回测平台函数与参数介绍 144</p>\r\n\r\n<p>5.1.1 设置回测参数 144</p>\r\n\r\n<p>5.1.2 accounts账户配置 154</p>\r\n\r\n<p>5.1.3 initialize（策略初始化环境） 160</p>\r\n\r\n<p>5.1.4 handle_data（策略运行逻辑） 160</p>\r\n\r\n<p>5.1.5 context（策略运行环境） 160</p>\r\n\r\n<p>5.2 股票模板实例 168</p>\r\n\r\n<p>5.3 期货模板实例 173</p>\r\n\r\n<p>5.4 策略回测详情 179</p>\r\n\r\n<p>5.5 策略的风险评价指标 181</p>\r\n\r\n<p>5.6 策略交易细节 184</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>第6章 常用的量化策略及其实现 187</p>\r\n\r\n<p>6.1 量化投资概述 187</p>\r\n\r\n<p>6.1.1 量化投资简介 187</p>\r\n\r\n<p>6.1.2 量化投资策略的类型 188</p>\r\n\r\n<p>6.1.3 量化研究的流程 189</p>\r\n\r\n<p>6.2 行业轮动理论及其投资策略 192</p>\r\n\r\n<p>6.2.1 行业轮动理论简介 192</p>\r\n\r\n<p>6.2.2 行业轮动的原因 192</p>\r\n\r\n<p>6.2.3 行业轮动投资策略 194</p>\r\n\r\n<p>6.3 市场中性Alpha策略 199</p>\r\n\r\n<p>6.3.1 市场中性Alpha策略介绍 199</p>\r\n\r\n<p>6.3.2 市场中性Alpha策略的思想和方法 200</p>\r\n\r\n<p>6.3.3 实例展示 201</p>\r\n\r\n<p>6.4 大师策略 206</p>\r\n\r\n<p>6.4.1 麦克&middot;欧希金斯绩优成分股投资法 207</p>\r\n\r\n<p>6.4.2 杰拉尔丁&middot;维斯蓝筹股投资法 211</p>\r\n\r\n<p>6.5 CTA策略 219</p>\r\n\r\n<p>6.5.1 趋势跟随策略 219</p>\r\n\r\n<p>6.5.2 均值回复策略 241</p>\r\n\r\n<p>6.5.3 CTA策略表现分析 253</p>\r\n\r\n<p>6.6 Smart Beta 258</p>\r\n\r\n<p>6.6.1 基于权重优化的Smart Beta 258</p>\r\n\r\n<p>6.6.2 基于风险因子的Smart Beta 268</p>\r\n\r\n<p>6.7 技术指标类策略 281</p>\r\n\r\n<p>6.7.1 AROON指标 281</p>\r\n\r\n<p>6.7.2 BOLL指标 285</p>\r\n\r\n<p>6.7.3 CCI指标 288</p>\r\n\r\n<p>6.7.4 CMO指标 293</p>\r\n\r\n<p>6.7.5 Chaikin Oscillator指标 295</p>\r\n\r\n<p>6.7.6 DMI指标 299</p>\r\n\r\n<p>6.7.7 优矿平台因子汇总 302</p>\r\n\r\n<p>6.8 资产配置 317</p>\r\n\r\n<p>6.8.1 有效边界 318</p>\r\n\r\n<p>6.8.2 Black-Litterman模型 335</p>\r\n\r\n<p>6.8.3 风险平价模型 349</p>\r\n\r\n<p>6.9 时间序列分析 358</p>\r\n\r\n<p>6.9.1 与时间序列分析相关的基础知识 358</p>\r\n\r\n<p>6.9.2 自回归（AR）模型 365</p>\r\n\r\n<p>6.9.3 滑动平均（MA）模型 372</p>\r\n\r\n<p>6.9.4 自回归滑动平均（ARMA）模型 376</p>\r\n\r\n<p>6.9.5 自回归差分滑动平均（ARIMA）模型 379</p>\r\n\r\n<p>6.10 组合优化器的使用 384</p>\r\n\r\n<p>6.10.1 优化器的概念 384</p>\r\n\r\n<p>6.10.2 优化器的API接口 386</p>\r\n\r\n<p>6.10.3 优化器实例 388</p>\r\n\r\n<p>6.11 期权策略：Greeks和隐含波动率微笑计算 392</p>\r\n\r\n<p>6.11.1 数据准备 392</p>\r\n\r\n<p>6.11.2 Greeks和隐含波动率计算 394</p>\r\n\r\n<p>6.11.3 隐含波动率微笑 401</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>第7章 量化投资十问十答 405</p>', '<p>前 言</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>为什么写作本书</p>\r\n\r\n<p>作为投资者，我们常听到的一句话是&ldquo;不要把鸡蛋放入同一个篮子中&rdquo;，可见分散投资可以降低风险，但如何选择不同的篮子、每个篮子放多少鸡蛋，便是见仁见智的事情了，量化投资就是解决这些问题的一种工具。</p>\r\n\r\n<p>而Python在1991年诞生，目前已成为非常受欢迎的动态编程语言，由于拥有海量的库，所以Python在各个领域都有广泛应用，在量化投资界采用Python进行科学计算、量化投资的势头也越来越猛。目前各种在线策略编程平台都支持Python语言，例如优矿、米筐、聚宽等，这也是我们选择Python进行量化投资的原因。</p>\r\n\r\n<p>目前市场上关于Python与量化投资的图书不少，但仔细研究后不难发现，很多图书都是顶着量化投资的噱头在讲Python的语言基础，其能提供的策略有限，并且大部分不提供回测平台，此类书籍中的策略往往为涨停股票可以买入、跌停股票可以卖出、停牌也可以交易，等等，这大大违背了A股市场的交易规则，难以获得准确的回测结果。</p>\r\n\r\n<p>鉴于以上情形，为了更好地推动量化投资在中国的普及与发展，我们编写了《Python与量化投资：从基础到实战》一书，本书兼顾了Python语言与量化策略的编写，既可以为不懂Python语言的读者提供零基础入门，也可以为有Python基础的读者提供量化策略建模参考。细心的读者不难发现，本书量化投资策略部分的介绍篇幅远大于Python语言的介绍篇幅，这也可看出我们出版本书的初心。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>如何使用本书</p>\r\n\r\n<p>如果您从未接触过Python或者任何其他编程语言，则建议您从第1章开始看起，对Python基础编程稍做了解；如果您已经是Python的忠实用户，则可以从第4章开始看起，直接使用优矿平台完成对策略的编写。关于Python基础部分的内容，您可自行安装、运行Python进行学习；关于量化投资部分的内容，您需要用到优矿在线量化平台，不安装Python也可以运行。</p>\r\n\r\n<p>本书的配套代码可以在http://books.hcquant.com下载。</p>\r\n\r\n<p>Python基础部分的示例代码的后缀名为.ipynb，是Jupyter Notebook文件，可以直接用Python打开运行；量化投资部分的示例代码的后缀名为.nb，需要上传到优矿的Notebook运行。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>本书讲了什么</p>\r\n\r\n<p>本书分为两大部分，共有7章，前3章为Python基础部分，可以帮助读者快速上手Python；后4章为量化投资部分，借助通联数据优矿平台进行数据处理与策略建立，将各种策略代码直接开源，并且对各种策略进行了介绍与点评，可谓本书的精华部分。</p>\r\n\r\n<p>第1章为准备工作，主要介绍Python的安装与常用的库，尤其是在量化投资领域会使用到的数据分析库。</p>\r\n\r\n<p>第2章介绍Python的基础操作，为后续讲解Python量化投资做准备，等于从零开始讲解，可在短时间内快速上手Python编程。</p>\r\n\r\n<p>第3章讲解Python的进阶内容，在第2章的基础上详细介绍NumPy、Pandas、SciPy、Seaborn、Scikit-Learn、SQLAlchemy等经典库，是对前两章的升华和应用。</p>\r\n\r\n<p>第4章讲解常用金融数据的获取与整理，包括数据整合、数据过滤、数据探索与清洗、数据转化，等等。</p>\r\n\r\n<p>第5章介绍通联数据回测平台，内容涉及回测平台函数参数介绍、股票/期货模板实例讲解、回测结果分析、风险评价指标与回测细节的注意事项。</p>\r\n\r\n<p>第6章讲解常见的量化策略及其实现，内容涉及行业轮动、市场中性Alpha、大师类策略、CTA策略、Smart Beta、技术指标类策略、资产配置、时间序列分析、组合优化器、期权策略等。代码全部公开，您可在短时间内使用我们的策略模板编写适合自己的策略。</p>\r\n\r\n<p>第7章给出了10道自问自答题目，可便于您在短时间内更好地了解量化投资，希望对您做投资有所帮助。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>读者支持及反馈</p>\r\n\r\n<p>本书提供了在线&ldquo;有问必答&rdquo;服务，可以扫描二维码填写相关信息，成为本书的认证读者，在优矿社区中发帖提问，我们会安排专门人员进行答疑，在第一时间解决关于本书的一切问题。</p>\r\n\r\n<p>我们随时欢迎您反馈信息，请告诉我们您对本书的评价，以及您喜欢本书的地方和不喜欢本书的地方。您的反馈对我们来说非常重要，这会帮助我们在后续的修订中完善现有的内容。请将您的反馈意见通过邮件service@hcquant.com发送给我们，并在邮件的标题中注明&ldquo;读者反馈&rdquo;字样。同时，您可以在优矿社区进行反馈（https://uqer.io/community/）。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>感谢</p>\r\n\r\n<p>本书在写作过程中得到了华创证券与通联数据优矿团队的大力支持，同时感谢陈杰、卢威、刘昺轶、秦玄晋、苏博、徐晟刚、王镇平、符哲君、彭亮在写作中的大力支持，我们将与您砥砺前行，共同见证中国量化投资的成长。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>勘误</p>\r\n\r\n<p>虽然我们已经尽力确保本书内容的准确性，但是错误仍可能出现，如果您发现本书的任何错误（文字或者代码错误），则请及时告知我们，我们将非常感激，并在修订时列出您的名字以表示感谢。您可以通过以下三种途径将本书中的错误告知我们。</p>\r\n\r\n<p>◎ 在books.hcquant.com网站上发布本书勘误。</p>\r\n\r\n<p>◎ 在优矿社区中直接发帖。</p>\r\n\r\n<p>◎ 发送邮件至service@hcquant.com。</p>\r\n\r\n<p>互联网上的盗版著作权侵害是在所有媒体中持续存在的问题，如果您在互联网上发现了对我们的著作有任何形式的非法复制，则请立刻告诉我们其地址或者网站的名字，以便我们进行补救。请通过service@hcquant.com联系我们，我们将非常感谢您的帮助。</p>', '<p>推荐序一</p>\r\n\r\n<p>很荣幸收到王小川博士的邀请，为其新书《Python与量化投资：从基础到实战》作序。王小川博士是华创证券研究所非常出色的分析师，在日常工作中非常乐于分享他的开发经验和心得。在本书出版之前，他已经出版了两本关于MATLAB的畅销书，我相信这一本介绍使用Python进行量化投资的新书，会推动相关领域的发展。</p>\r\n\r\n<p>在过去的几年中，在很多领域内基于创新类算法的应用场景和相关产品不断涌现，IT的推动作用已经从自动化延展到了智能化。在开源的大氛围下，算法的更新迭代速度不断加快，并在各个领域渗透和融合，专业化程度越来越高。</p>\r\n\r\n<p>在金融领域的量化投资、智能投顾、信用评级、新闻监控、舆情分析等多个方向上，目前已经大量使用了相关技术和算法，并且融合的程度在不断加深。与其他领域相比，金融领域的算法应用有其自身的特点：一是信息的来源多、部分数据非结构化；二是在不同的应用场景甚至策略之间，所适用算法的差异较大，例如投资交易的量化策略、智能投顾中的用户画像、新闻处理中的自然语言处理和大数据，都涉及了不同大类的算法；三是投资中各个影响因素之间的逻辑关系复杂化和模糊化；此外，很多金融问题不是单目标优化的，也不是封闭的信息集。</p>\r\n\r\n<p>展望未来，在金融科技的落地方向上，量化投资、大数据的Quantamental、精准画像、自然语言处理等依然会是焦点，势必吸引越来越多的关注及资源。量化投资和 Python 这两个词是当下的焦点，王小川博士平时的工作正是其交汇点。正如书名《Python与量化投资：从基础到实战》所表达的，本书包含了王小川博士在工作中的宝贵经验；在案例中描述的示例，正是本研究所金融工程的很多重要研究方向，例如常用的行业轮动、市场中性策略、多因子策略、CTA策略、期权策略、时间序列等。所以，本书对于了解量化开发的运用现状及掌握必备的开发能力而言，是非常有益的。</p>\r\n\r\n<p>考虑到众多读者可能没有Python基础，本书从零开始介绍Python语言，并且由浅入深、循序渐进。值得一提的是，与目前市场上的量化投资类图书不同，本书的最大特点是接地气、实用性强，并开源了全部的策略代码，读者可以自行运行和修改。</p>\r\n\r\n<p>本书还设置了读者互动网站，对于广大投资者提出的关于本书的疑问，可以在第一时间做出解答。本书可以帮助大家更好地了解量化、掌握方法及提升量化投资的能力，非常值得大家细读。</p>\r\n\r\n<p>&mdash;&mdash;华中炜 华创证券执委会委员、副总经理兼研究所所长</p>', '99', '89.2', '32', '2018-06-01 08:20:21.983308', '2018-06-01 08:20:21.983308', '1', '2', '36');

-- ----------------------------
-- Table structure for `bookstore_bookcate`
-- ----------------------------
DROP TABLE IF EXISTS `bookstore_bookcate`;
CREATE TABLE `bookstore_bookcate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookstore_bookcate_parent_id_9d6dcf92_fk_bookstore_bookcate_id` (`parent_id`),
  CONSTRAINT `bookstore_bookcate_parent_id_9d6dcf92_fk_bookstore_bookcate_id` FOREIGN KEY (`parent_id`) REFERENCES `bookstore_bookcate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bookstore_bookcate
-- ----------------------------
INSERT INTO `bookstore_bookcate` VALUES ('1', '文学综合', '2018-06-01 03:58:46.392156', '2018-06-01 03:58:46.392156', null);
INSERT INTO `bookstore_bookcate` VALUES ('2', '童书', '2018-06-01 03:58:50.679768', '2018-06-01 03:58:50.679768', null);
INSERT INTO `bookstore_bookcate` VALUES ('3', '教育', '2018-06-01 03:58:52.978432', '2018-06-01 03:58:52.978432', null);
INSERT INTO `bookstore_bookcate` VALUES ('4', '人文社科', '2018-06-01 03:58:55.216240', '2018-06-01 03:58:55.216240', null);
INSERT INTO `bookstore_bookcate` VALUES ('5', '经管综合', '2018-06-01 03:58:58.171181', '2018-06-01 03:58:58.171181', null);
INSERT INTO `bookstore_bookcate` VALUES ('6', '励志成功', '2018-06-01 03:59:02.057804', '2018-06-01 03:59:02.057804', null);
INSERT INTO `bookstore_bookcate` VALUES ('7', '生活', '2018-06-01 03:59:05.443495', '2018-06-01 03:59:05.443495', null);
INSERT INTO `bookstore_bookcate` VALUES ('8', '艺术', '2018-06-01 03:59:08.289906', '2018-06-01 03:59:08.289906', null);
INSERT INTO `bookstore_bookcate` VALUES ('9', '科技', '2018-06-01 03:59:10.770685', '2018-06-01 03:59:10.770685', null);
INSERT INTO `bookstore_bookcate` VALUES ('10', '计算机', '2018-06-01 03:59:14.137557', '2018-06-01 03:59:14.137557', null);
INSERT INTO `bookstore_bookcate` VALUES ('11', '小说', '2018-06-01 04:00:59.828748', '2018-06-01 04:00:59.829748', '1');
INSERT INTO `bookstore_bookcate` VALUES ('12', '文学', '2018-06-01 04:01:05.356436', '2018-06-01 04:01:05.356436', '1');
INSERT INTO `bookstore_bookcate` VALUES ('13', '传记', '2018-06-01 04:01:10.670285', '2018-06-01 04:01:10.670285', '1');
INSERT INTO `bookstore_bookcate` VALUES ('14', '科普百科', '2018-06-01 04:01:22.928994', '2018-06-01 04:01:22.928994', '2');
INSERT INTO `bookstore_bookcate` VALUES ('15', '儿童文学', '2018-06-01 04:01:30.483657', '2018-06-01 04:01:30.483657', '2');
INSERT INTO `bookstore_bookcate` VALUES ('16', '幼儿启蒙', '2018-06-01 04:01:58.433492', '2018-06-01 04:01:58.433492', '2');
INSERT INTO `bookstore_bookcate` VALUES ('17', '外语学习', '2018-06-01 04:02:14.379721', '2018-06-01 04:02:14.379721', '3');
INSERT INTO `bookstore_bookcate` VALUES ('18', '教材教辅', '2018-06-01 04:02:24.053098', '2018-06-01 04:02:24.053098', '3');
INSERT INTO `bookstore_bookcate` VALUES ('19', '传统文化', '2018-06-01 04:02:45.282038', '2018-06-01 04:02:45.282038', '4');
INSERT INTO `bookstore_bookcate` VALUES ('20', '哲学宗教', '2018-06-01 04:02:58.458984', '2018-06-01 04:02:58.458984', '4');
INSERT INTO `bookstore_bookcate` VALUES ('21', '社会科学', '2018-06-01 04:03:09.577161', '2018-06-01 04:03:09.577161', '4');
INSERT INTO `bookstore_bookcate` VALUES ('22', '管理', '2018-06-01 04:03:41.122124', '2018-06-01 04:03:41.122124', '5');
INSERT INTO `bookstore_bookcate` VALUES ('23', '经济', '2018-06-01 04:03:45.827190', '2018-06-01 04:03:45.827190', '5');
INSERT INTO `bookstore_bookcate` VALUES ('24', '投资', '2018-06-01 04:03:54.245331', '2018-06-01 04:03:54.245331', '5');
INSERT INTO `bookstore_bookcate` VALUES ('25', '心灵鸡汤', '2018-06-01 04:04:06.774607', '2018-06-01 04:04:06.774607', '6');
INSERT INTO `bookstore_bookcate` VALUES ('26', '社交', '2018-06-01 04:04:11.794982', '2018-06-01 04:04:11.794982', '6');
INSERT INTO `bookstore_bookcate` VALUES ('27', '孕产胎教', '2018-06-01 04:04:28.057094', '2018-06-01 04:04:28.057094', '7');
INSERT INTO `bookstore_bookcate` VALUES ('28', '美食', '2018-06-01 04:04:37.221796', '2018-06-01 04:04:37.221796', '7');
INSERT INTO `bookstore_bookcate` VALUES ('29', '家居', '2018-06-01 04:04:42.635532', '2018-06-01 04:04:42.635532', '7');
INSERT INTO `bookstore_bookcate` VALUES ('30', '书法', '2018-06-01 04:04:50.971669', '2018-06-01 04:04:50.971669', '8');
INSERT INTO `bookstore_bookcate` VALUES ('31', '绘画', '2018-06-01 04:04:56.170987', '2018-06-01 04:04:56.170987', '8');
INSERT INTO `bookstore_bookcate` VALUES ('32', '科普', '2018-06-01 04:05:05.634236', '2018-06-01 04:05:05.634236', '9');
INSERT INTO `bookstore_bookcate` VALUES ('33', '工业', '2018-06-01 04:05:11.338683', '2018-06-01 04:05:11.338683', '9');
INSERT INTO `bookstore_bookcate` VALUES ('34', '编程语言', '2018-06-01 04:05:22.860652', '2018-06-01 04:05:22.860652', '10');
INSERT INTO `bookstore_bookcate` VALUES ('35', '操作系统', '2018-06-01 04:05:32.299713', '2018-06-01 04:05:32.299713', '10');
INSERT INTO `bookstore_bookcate` VALUES ('36', '人工智能', '2018-06-01 04:05:38.036468', '2018-06-01 04:05:38.036468', '10');

-- ----------------------------
-- Table structure for `bookstore_bookcomment`
-- ----------------------------
DROP TABLE IF EXISTS `bookstore_bookcomment`;
CREATE TABLE `bookstore_bookcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookcomment_content` longtext NOT NULL,
  `bookcomment_isopen` tinyint(1) NOT NULL,
  `bookcomment_thumbup` int(11) NOT NULL,
  `bookcomment_thumbdown` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookstore_bookcomment_book_id_ebe5cc7c_fk_bookstore_book_id` (`book_id`),
  KEY `bookstore_bookcommen_customer_id_bceaf119_fk_bookstore` (`customer_id`),
  CONSTRAINT `bookstore_bookcommen_customer_id_bceaf119_fk_bookstore` FOREIGN KEY (`customer_id`) REFERENCES `bookstore_customer` (`id`),
  CONSTRAINT `bookstore_bookcomment_book_id_ebe5cc7c_fk_bookstore_book_id` FOREIGN KEY (`book_id`) REFERENCES `bookstore_book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bookstore_bookcomment
-- ----------------------------

-- ----------------------------
-- Table structure for `bookstore_bookimg`
-- ----------------------------
DROP TABLE IF EXISTS `bookstore_bookimg`;
CREATE TABLE `bookstore_bookimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookimg_title` varchar(255) DEFAULT NULL,
  `bookimg_img` varchar(255) DEFAULT NULL,
  `bookimg_thumburl` varchar(255) DEFAULT NULL,
  `bookimg_commonurl` varchar(255) DEFAULT NULL,
  `bookimg_originurl` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookstore_bookimg_book_id_91967989_fk_bookstore_book_id` (`book_id`),
  CONSTRAINT `bookstore_bookimg_book_id_91967989_fk_bookstore_book_id` FOREIGN KEY (`book_id`) REFERENCES `bookstore_book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bookstore_bookimg
-- ----------------------------

-- ----------------------------
-- Table structure for `bookstore_cart`
-- ----------------------------
DROP TABLE IF EXISTS `bookstore_cart`;
CREATE TABLE `bookstore_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nums` int(10) unsigned NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookstore_cart_book_id_88daba10_fk_bookstore_book_id` (`book_id`),
  KEY `bookstore_cart_customer_id_10c455bb_fk_bookstore_customer_id` (`customer_id`),
  CONSTRAINT `bookstore_cart_book_id_88daba10_fk_bookstore_book_id` FOREIGN KEY (`book_id`) REFERENCES `bookstore_book` (`id`),
  CONSTRAINT `bookstore_cart_customer_id_10c455bb_fk_bookstore_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `bookstore_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bookstore_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `bookstore_customer`
-- ----------------------------
DROP TABLE IF EXISTS `bookstore_customer`;
CREATE TABLE `bookstore_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
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
  CONSTRAINT `bookstore_customer_user_id_c4383d85_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bookstore_customer
-- ----------------------------

-- ----------------------------
-- Table structure for `bookstore_order`
-- ----------------------------
DROP TABLE IF EXISTS `bookstore_order`;
CREATE TABLE `bookstore_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookstore_order_customer_id_0271ade5_fk_bookstore_customer_id` (`customer_id`),
  CONSTRAINT `bookstore_order_customer_id_0271ade5_fk_bookstore_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `bookstore_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bookstore_order
-- ----------------------------

-- ----------------------------
-- Table structure for `bookstore_publisher`
-- ----------------------------
DROP TABLE IF EXISTS `bookstore_publisher`;
CREATE TABLE `bookstore_publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(100) NOT NULL,
  `publisher_logo` varchar(100) DEFAULT NULL,
  `publisher_desc` varchar(200) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bookstore_publisher
-- ----------------------------
INSERT INTO `bookstore_publisher` VALUES ('1', '人民邮电出版社', 'logo/2018/06/01/p1.png', '人民邮电出版社', '2018-06-01 07:06:41.987275', '2018-06-01 07:06:41.987275');
INSERT INTO `bookstore_publisher` VALUES ('2', '电子工业出版社', 'logo/2018/06/01/p2.jpg', '电子工业出版社', '2018-06-01 07:08:00.385950', '2018-06-01 07:08:00.385950');
INSERT INTO `bookstore_publisher` VALUES ('3', '中信出版集团', 'logo/2018/06/01/p3.jpg', '中信出版集团', '2018-06-01 07:08:09.564537', '2018-06-01 07:08:09.564537');
INSERT INTO `bookstore_publisher` VALUES ('4', '机械工业出版社', 'logo/2018/06/01/p4.jpg', '机械工业出版社', '2018-06-01 07:08:21.472717', '2018-06-01 07:08:21.472717');
INSERT INTO `bookstore_publisher` VALUES ('5', '时代华语出版社', 'logo/2018/06/01/p5.jpg', '时代华语出版社', '2018-06-01 07:08:34.463987', '2018-06-01 07:08:34.463987');
INSERT INTO `bookstore_publisher` VALUES ('6', '作家出版社', 'logo/2018/06/01/p6.jpg', '作家出版社', '2018-06-01 07:35:58.085164', '2018-06-01 07:35:58.085164');

-- ----------------------------
-- Table structure for `dashboard_userdashboardmodule`
-- ----------------------------
DROP TABLE IF EXISTS `dashboard_userdashboardmodule`;
CREATE TABLE `dashboard_userdashboardmodule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `app_label` varchar(255) DEFAULT NULL,
  `user` int(10) unsigned NOT NULL,
  `column` int(10) unsigned NOT NULL,
  `order` int(11) NOT NULL,
  `settings` longtext NOT NULL,
  `children` longtext NOT NULL,
  `collapsed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dashboard_userdashboardmodule
-- ----------------------------
INSERT INTO `dashboard_userdashboardmodule` VALUES ('1', 'Quick links', 'jet.dashboard.modules.LinkList', null, '1', '0', '0', '{\"draggable\": false, \"deletable\": false, \"collapsible\": false, \"layout\": \"inline\"}', '[{\"title\": \"Return to site\", \"url\": \"/\"}, {\"title\": \"\\u4fee\\u6539\\u5bc6\\u7801\", \"url\": \"/admin/password_change/\"}, {\"title\": \"\\u6ce8\\u9500\", \"url\": \"/admin/logout/\"}]', '0');
INSERT INTO `dashboard_userdashboardmodule` VALUES ('2', 'Applications', 'jet.dashboard.modules.AppList', null, '1', '1', '0', '{\"models\": null, \"exclude\": [\"auth.*\"]}', '', '0');
INSERT INTO `dashboard_userdashboardmodule` VALUES ('3', '管理', 'jet.dashboard.modules.AppList', null, '1', '2', '0', '{\"models\": [\"auth.*\"], \"exclude\": null}', '', '0');
INSERT INTO `dashboard_userdashboardmodule` VALUES ('4', 'Recent Actions', 'jet.dashboard.modules.RecentActions', null, '1', '0', '1', '{\"limit\": 10, \"include_list\": null, \"exclude_list\": null, \"user\": null}', '', '0');
INSERT INTO `dashboard_userdashboardmodule` VALUES ('5', 'Latest Django News', 'jet.dashboard.modules.Feed', null, '1', '1', '1', '{\"feed_url\": \"http://www.djangoproject.com/rss/weblog/\", \"limit\": 5}', '', '0');
INSERT INTO `dashboard_userdashboardmodule` VALUES ('6', 'Support', 'jet.dashboard.modules.LinkList', null, '1', '2', '1', '{\"draggable\": true, \"deletable\": true, \"collapsible\": true, \"layout\": \"stacked\"}', '[{\"title\": \"Django documentation\", \"url\": \"http://docs.djangoproject.com/\", \"external\": true}, {\"title\": \"Django \\\"django-users\\\" mailing list\", \"url\": \"http://groups.google.com/group/django-users\", \"external\": true}, {\"title\": \"Django irc channel\", \"url\": \"irc://irc.freenode.net/django\", \"external\": true}]', '0');
INSERT INTO `dashboard_userdashboardmodule` VALUES ('7', 'Application models', 'jet.dashboard.modules.ModelList', 'bookstore', '1', '0', '0', '{\"models\": [\"bookstore.*\"], \"exclude\": null}', '', '0');
INSERT INTO `dashboard_userdashboardmodule` VALUES ('8', 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'bookstore', '1', '1', '0', '{\"limit\": 10, \"include_list\": [\"bookstore.*\"], \"exclude_list\": null, \"user\": null}', '', '0');
INSERT INTO `dashboard_userdashboardmodule` VALUES ('9', 'Application models', 'jet.dashboard.modules.ModelList', 'mainsite', '1', '0', '0', '{\"models\": [\"mainsite.*\"], \"exclude\": null}', '', '0');
INSERT INTO `dashboard_userdashboardmodule` VALUES ('10', 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'mainsite', '1', '1', '0', '{\"limit\": 10, \"include_list\": [\"mainsite.*\"], \"exclude_list\": null, \"user\": null}', '', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `django_admin_log` VALUES ('46', '2018-05-18 06:28:21.373573', '1', 'slide1', '1', '[{\"added\": {}}]', '18', '1');
INSERT INTO `django_admin_log` VALUES ('47', '2018-05-18 06:28:43.589562', '2', 'slide2', '1', '[{\"added\": {}}]', '18', '1');
INSERT INTO `django_admin_log` VALUES ('48', '2018-05-18 06:29:00.722575', '3', 'slide3', '1', '[{\"added\": {}}]', '18', '1');
INSERT INTO `django_admin_log` VALUES ('49', '2018-05-18 06:29:15.072595', '4', 'slide4', '1', '[{\"added\": {}}]', '18', '1');
INSERT INTO `django_admin_log` VALUES ('50', '2018-05-18 06:29:32.263563', '5', 'slide5', '1', '[{\"added\": {}}]', '18', '1');
INSERT INTO `django_admin_log` VALUES ('51', '2018-05-31 03:47:56.468080', '5', '励志感悟', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('52', '2018-05-31 03:50:40.660258', '1', '于丹：生命来来往往，来日并不方长', '2', '[{\"changed\": {\"fields\": [\"cate\", \"featuredimg\", \"post_title\", \"post_keywords\", \"post_description\", \"post_isrecommend\", \"post_source\", \"post_sourcelink\", \"post_content\"]}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('53', '2018-06-01 03:58:46.852143', '1', '文学综合', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('54', '2018-06-01 03:58:50.682775', '2', '童书', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('55', '2018-06-01 03:58:52.990421', '3', '教育', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('56', '2018-06-01 03:58:55.232242', '4', '人文社科', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('57', '2018-06-01 03:58:58.182186', '5', '经管综合', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('58', '2018-06-01 03:59:02.073803', '6', '励志成功', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('59', '2018-06-01 03:59:05.457501', '7', '生活', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('60', '2018-06-01 03:59:08.298911', '8', '艺术', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('61', '2018-06-01 03:59:10.782696', '9', '科技', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('62', '2018-06-01 03:59:14.148563', '10', '计算机', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('63', '2018-06-01 04:00:59.848747', '11', '小说', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('64', '2018-06-01 04:01:05.367438', '12', '文学', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('65', '2018-06-01 04:01:10.682292', '13', '传记', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('66', '2018-06-01 04:01:22.949018', '14', '科普百科', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('67', '2018-06-01 04:01:30.497657', '15', '儿童文学', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('68', '2018-06-01 04:01:58.436494', '16', '幼儿启蒙', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('69', '2018-06-01 04:02:14.395719', '17', '外语学习', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('70', '2018-06-01 04:02:24.063098', '18', '教材教辅', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('71', '2018-06-01 04:02:45.299037', '19', '传统文化', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('72', '2018-06-01 04:02:58.477973', '20', '哲学宗教', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('73', '2018-06-01 04:03:09.594147', '21', '社会科学', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('74', '2018-06-01 04:03:41.124127', '22', '管理', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('75', '2018-06-01 04:03:45.843179', '23', '经济', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('76', '2018-06-01 04:03:54.259330', '24', '投资', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('77', '2018-06-01 04:04:06.792684', '25', '心灵鸡汤', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('78', '2018-06-01 04:04:11.809999', '26', '社交', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('79', '2018-06-01 04:04:28.076104', '27', '孕产胎教', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('80', '2018-06-01 04:04:37.240794', '28', '美食', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('81', '2018-06-01 04:04:42.651543', '29', '家居', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('82', '2018-06-01 04:04:50.984670', '30', '书法', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('83', '2018-06-01 04:04:56.183998', '31', '绘画', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('84', '2018-06-01 04:05:05.651226', '32', '科普', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('85', '2018-06-01 04:05:11.350686', '33', '工业', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('86', '2018-06-01 04:05:22.875641', '34', '编程语言', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('87', '2018-06-01 04:05:32.313711', '35', '操作系统', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('88', '2018-06-01 04:05:38.089565', '36', '人工智能', '1', '[{\"added\": {}}]', '26', '1');
INSERT INTO `django_admin_log` VALUES ('89', '2018-06-01 07:06:42.046278', '1', '人民邮电出版社', '1', '[{\"added\": {}}]', '33', '1');
INSERT INTO `django_admin_log` VALUES ('90', '2018-06-01 07:08:00.399947', '2', '电子工业出版社', '1', '[{\"added\": {}}]', '33', '1');
INSERT INTO `django_admin_log` VALUES ('91', '2018-06-01 07:08:09.575537', '3', '中信出版集团', '1', '[{\"added\": {}}]', '33', '1');
INSERT INTO `django_admin_log` VALUES ('92', '2018-06-01 07:08:21.483728', '4', '机械工业出版社', '1', '[{\"added\": {}}]', '33', '1');
INSERT INTO `django_admin_log` VALUES ('93', '2018-06-01 07:08:34.474985', '5', '时代华语出版社', '1', '[{\"added\": {}}]', '33', '1');
INSERT INTO `django_admin_log` VALUES ('94', '2018-06-01 07:32:25.316640', '1', '王小川', '1', '[{\"added\": {}}]', '27', '1');
INSERT INTO `django_admin_log` VALUES ('95', '2018-06-01 07:32:54.765026', '2', '唐亘', '1', '[{\"added\": {}}]', '27', '1');
INSERT INTO `django_admin_log` VALUES ('96', '2018-06-01 07:34:00.587734', '3', '余华', '1', '[{\"added\": {}}]', '27', '1');
INSERT INTO `django_admin_log` VALUES ('97', '2018-06-01 07:35:58.099165', '6', '作家出版社', '1', '[{\"added\": {}}]', '33', '1');
INSERT INTO `django_admin_log` VALUES ('98', '2018-06-01 07:42:05.181112', '1', '活着', '1', '[{\"added\": {}}]', '28', '1');
INSERT INTO `django_admin_log` VALUES ('99', '2018-06-01 07:52:37.487628', '4', '崔庆才', '1', '[{\"added\": {}}]', '27', '1');
INSERT INTO `django_admin_log` VALUES ('100', '2018-06-01 07:53:27.591687', '2', 'Python 3网络爬虫开发实战', '1', '[{\"added\": {}}]', '28', '1');
INSERT INTO `django_admin_log` VALUES ('101', '2018-06-01 08:20:22.093301', '3', 'Python与量化投资：从基础到实战', '1', '[{\"added\": {}}]', '28', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('3', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('5', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('6', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('27', 'bookstore', 'author');
INSERT INTO `django_content_type` VALUES ('28', 'bookstore', 'book');
INSERT INTO `django_content_type` VALUES ('26', 'bookstore', 'bookcate');
INSERT INTO `django_content_type` VALUES ('29', 'bookstore', 'bookcomment');
INSERT INTO `django_content_type` VALUES ('30', 'bookstore', 'bookimg');
INSERT INTO `django_content_type` VALUES ('31', 'bookstore', 'cart');
INSERT INTO `django_content_type` VALUES ('25', 'bookstore', 'customer');
INSERT INTO `django_content_type` VALUES ('32', 'bookstore', 'order');
INSERT INTO `django_content_type` VALUES ('33', 'bookstore', 'publisher');
INSERT INTO `django_content_type` VALUES ('7', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('36', 'dashboard', 'userdashboardmodule');
INSERT INTO `django_content_type` VALUES ('34', 'jet', 'bookmark');
INSERT INTO `django_content_type` VALUES ('35', 'jet', 'pinnedapplication');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `django_migrations` VALUES ('24', 'mainsite', '0005_auto_20180518_1424', '2018-05-18 06:25:04.842129');
INSERT INTO `django_migrations` VALUES ('27', 'bookstore', '0002_bookcate', '2018-06-01 02:17:34.379305');
INSERT INTO `django_migrations` VALUES ('29', 'bookstore', '0001_initial', '2018-06-01 02:36:03.257969');
INSERT INTO `django_migrations` VALUES ('30', 'bookstore', '0002_book_cate', '2018-06-01 02:37:17.203217');
INSERT INTO `django_migrations` VALUES ('31', 'bookstore', '0003_auto_20180601_1038', '2018-06-01 02:38:43.081858');
INSERT INTO `django_migrations` VALUES ('32', 'jet', '0001_initial', '2018-06-01 06:28:07.506004');
INSERT INTO `django_migrations` VALUES ('33', 'jet', '0002_delete_userdashboardmodule', '2018-06-01 06:28:07.676010');
INSERT INTO `django_migrations` VALUES ('34', 'dashboard', '0001_initial', '2018-06-01 06:29:55.165662');

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
INSERT INTO `django_session` VALUES ('7wab67eqnhyl5lmfvr77ff2srsupt9vz', 'ZWQ2YzA5ZGQ1ZjgwOGIyZjlkOTMxNWVkYmYxOTQyMzRkNjE2YmEzNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZWEwMDBjMzA1ZTUxYzI0YmEzMzVjZDFhZGIzMmQ2OTZiZWUyZTVhIn0=', '2018-06-15 03:45:39.786550');
INSERT INTO `django_session` VALUES ('dbc47qo5ew31awuzvjzqpf69nez1p41d', 'ZWQ2YzA5ZGQ1ZjgwOGIyZjlkOTMxNWVkYmYxOTQyMzRkNjE2YmEzNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZWEwMDBjMzA1ZTUxYzI0YmEzMzVjZDFhZGIzMmQ2OTZiZWUyZTVhIn0=', '2018-06-01 00:51:02.158243');
INSERT INTO `django_session` VALUES ('evvkz17h92f3bc1ytoijw68mcn7w463c', 'OTI0NjUwOTU3OGE1YTA5ZmE3ZjE5ZWE0MDIzYzRjZjA2NDBmOTI5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDcxNjYzZjEwOTRhNTVhNmNlOTEzZGExN2Q4YTBmYjU1NTRkM2E5In0=', '2018-02-27 08:52:27.932885');
INSERT INTO `django_session` VALUES ('tdygb62x7ezpjypr6n5oa1nv35x0dze1', 'OTI0NjUwOTU3OGE1YTA5ZmE3ZjE5ZWE0MDIzYzRjZjA2NDBmOTI5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDcxNjYzZjEwOTRhNTVhNmNlOTEzZGExN2Q4YTBmYjU1NTRkM2E5In0=', '2018-02-25 01:00:16.195560');

-- ----------------------------
-- Table structure for `jet_bookmark`
-- ----------------------------
DROP TABLE IF EXISTS `jet_bookmark`;
CREATE TABLE `jet_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user` int(10) unsigned NOT NULL,
  `date_add` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of jet_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for `jet_pinnedapplication`
-- ----------------------------
DROP TABLE IF EXISTS `jet_pinnedapplication`;
CREATE TABLE `jet_pinnedapplication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(255) NOT NULL,
  `user` int(10) unsigned NOT NULL,
  `date_add` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of jet_pinnedapplication
-- ----------------------------

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
INSERT INTO `mainsite_post` VALUES ('1', '', '于丹：生命来来往往，来日并不方长', '懂得珍惜，并不是与生俱来的能力。在长大的过程中，总有些猝不及防的变故让人扼腕喟叹：有时候，没有赶紧完成的心愿，一转眼就来不及了。', '网络', 'http://www.sameroad.cn/ydsmllww.html', '0', '0', '0', '于丹,生命', '<p>懂得珍惜，并不是与生俱来的能力。在长大的过程中，总有些猝不及防的变故让人扼腕喟叹：有时候，没有赶紧完成的心愿，一转眼就来不及了。</p>\r\n\r\n<p>刚在大学当班主任时，不小心把脚崴了，去宣武医院一检查，右踝两根骨头骨折了。</p>\r\n\r\n<p>骨科张主任带着医生来检查，对我说：&ldquo;可以用保守疗法，也可以开刀。用保守疗法，可以少受点儿罪，但会有后遗症，关节可能会松动。&rdquo;</p>\r\n\r\n<p>我说：&ldquo;那可不行，我左腿膝关节受过伤，就仗着这条右腿呢，您还是给我开刀吧。&rdquo;</p>\r\n\r\n<p>他有些诧异：&ldquo;我很少见过这么主动要求开刀的病人。但是，要开刀得排到下周了。&rdquo;</p>\r\n\r\n<p>我说：&ldquo;等到下周还得两三天，骨茬儿就不如现在了，争取今天就开吧。&rdquo;</p>\r\n\r\n<p>&ldquo;那谁签手术同意书?得等你家人来。&rdquo;</p>\r\n\r\n<p>&ldquo;不用，我自己签字。&rdquo;</p>\r\n\r\n<p>签完字后，张主任对医生说：&ldquo;这姑娘的手术我来做。&rdquo;</p>\r\n\r\n<p>他的手，细长而舒展，是我记忆中最漂亮的男人的手。</p>\r\n\r\n<p>我说：&ldquo;张主任，您的手不弹钢琴太可惜了。&rdquo;</p>\r\n\r\n<p>他笑：&ldquo;所以我拿手术刀。&rdquo;</p>\r\n\r\n<p>做手术时，麻药有些过量，张主任问：&ldquo;你还清醒吗?&rdquo;</p>\r\n\r\n<p>&ldquo;清醒。不信我给你背李白的诗。&rdquo;</p>\r\n\r\n<p>&ldquo;那就背《静夜思》吧。&rdquo;</p>\r\n\r\n<p>&ldquo;那怎么行!我背《蜀道难》!&rdquo;所有人都哭笑不得。</p>\r\n\r\n<p>术后那个星期是张主任值班，他每天来看我，和我闲聊几句。</p>\r\n\r\n<p>换药时，我惊讶地发现，刀口没有缝合痕迹，我问张主任：&ldquo;这是粘上的吗?&rdquo;</p>\r\n\r\n<p>张主任说：&ldquo;你这么活泼的一个人，我不能让你有一道难看的疤痕，就用羊肠线给你做的内缝合，伤口好了，线就被人体吸收了。我给你打了两枚钉子，可以让骨头长得像没断过一样。但你一年后要来找我，把钉子取出来。&rdquo;</p>\r\n\r\n<p>等到出院，我们已经成为朋友。他告诉我：&ldquo;你知道吗，我不是那周值班，我是调的班。那一周，表面上你是我的病人，其实跟你聊天时，你是我的医生，你的乐观的气场也是可以治病的。&rdquo;</p>\r\n\r\n<p>忙忙碌碌间3年过去了，他一直提醒我：&ldquo;得赶紧把钉子取出来。&rdquo;</p>\r\n\r\n<p>有一次他去我家聊天，说：&ldquo;下次我给你带一棵巴西木，屋里不能没有植物。&rdquo;</p>\r\n\r\n<p>我送他走后，忽然他又推开门，探身进来说了一句：&ldquo;你这次回来，我就给你取钉子，不然来不及了。&rdquo;</p>\r\n\r\n<p>可那段时间我一直在出差，我还寻思：&ldquo;有什么来不及的，钉子又不会长锈。&rdquo;</p>\r\n\r\n<p>当时，我父亲在宣武医院住院。4天后，我从南京回来，去医院看爸爸。我和爱人骑着自行车，很远就看见医院门口全是人，根本进不去，我们只好从后门进了医院。</p>\r\n\r\n<p>正是吃饭时间，爸爸欲言又止：&ldquo;我跟你说件事。&rdquo;</p>\r\n\r\n<p>妈妈马上打岔：&ldquo;你赶紧吃饭，孩子刚回来。&rdquo;</p>\r\n\r\n<p>后来爸爸又想停下来说话，妈妈说：&ldquo;你让孩子歇口气。&rdquo;</p>\r\n\r\n<p>再后来，爸爸没加铺垫，说：&ldquo;张主任殉职了。&rdquo;</p>\r\n\r\n<p>我蒙了：&ldquo;您说什么?&rdquo;</p>\r\n\r\n<p>爸爸说：&ldquo;医院门口都是送他的人。&rdquo;</p>\r\n\r\n<p>我震惊!继而想起他留给我的最后的话：&ldquo;你这次回来，我就给你取钉子，不然来不及了。&rdquo;</p>\r\n\r\n<p>出了医院，夕阳西下，不远处国华商场门口熙熙攘攘，在交错的车流中，我推着车站在马路中间，痛哭失声，车水马龙都在暮色里模糊不清。那一刻我明白了一个道理：来日方长并不长!</p>\r\n\r\n<p>我一直记得他的手，钢琴家一样的手，这双手，给我做了不留疤痕的缝合。因为他，我家里一直养着巴西木。</p>\r\n\r\n<p>就在张主任去世的那4天里，我出差去了南京。在那里，我得知了另一个人去世的消息。</p>\r\n\r\n<p>1993年，我写过一篇报告文学《中国公交忧思录》，为此走访了十几个城市考察公交系统，南京当时是全国公交系统的一个典范，所以我去的第一站是南京。</p>\r\n\r\n<p>那是夏天，南京像火炉一样炙热。我找到南京公交总公司，党委书记是一名复员军人，非常豪爽，晚饭一上桌就拉着我喝酒。两杯下去，我晕乎乎的，总经理耿耿进来了。儒雅的耿总和我握手：&ldquo;我叫耿耿。&rdquo;我趁着酒劲儿开了句玩笑：&ldquo;耿耿于怀的耿耿吗?&rdquo;他说：&ldquo;不，忠心耿耿的耿耿。&rdquo;</p>\r\n\r\n<p>耿总坐下来，拦住了给我敬酒的人们，静静地和我聊天。他说：&ldquo;明天我陪你去坐公交车。现在，南京市民出门，去任何地方倒两趟车都能到达，而且等车不超过5分钟。&rdquo;</p>\r\n\r\n<p>第二天，我和耿总在新街口开始坐公交车。熙熙攘攘的人群里，他说起自己和父亲最喜欢的陶渊明，那一刻，周围似乎安静清凉了许多。</p>\r\n\r\n<p>我们也去过一些很安静的地方，我问耿总：&ldquo;&lsquo;潮打空城寂寞回&rsquo;的那段石头城在哪里?&rdquo;开着一辆黑色桑塔纳的耿总就带着我到处寻找，最后找到了，那一段石头墙比千年之前更寂寞。</p>\r\n\r\n<p>耿总还带我去了好些有名的和无名的古迹，每走过一座门或者一座楼，他都念叨着历史、文学的典故。那一个盛夏，六朝金粉的古都沧海桑田的幻化，在一位长者的引领下，清晰地与我青春的记忆结缘。</p>\r\n\r\n<p>按计划，我应该在南京采访两天，结果却待了将近一个星期。我向耿总道别：&ldquo;必须走了，要不然采访行程全耽误了。&rdquo;</p>\r\n\r\n<p>耿总说：&ldquo;还有最后一个地方要带你去，南唐二主陵，很近。&rdquo;</p>\r\n\r\n<p>我从为赋新词强说愁的少女时代就爱抄李后主的词，但实在没时间，只好与耿总相约：下次直接去看南唐二主陵。</p>\r\n\r\n<p>那年春节，他打电话拜年：&ldquo;南唐二主陵还没看呢，今年咱们一定去。&rdquo;</p>\r\n\r\n<p>张主任去世的那几天，我出差去南京，一到宾馆就往公交公司总机打电话，找耿总。</p>\r\n\r\n<p>总机姑娘说：&ldquo;耿总不在了。&rdquo;</p>\r\n\r\n<p>&ldquo;耿总去哪儿了?&rdquo;</p>\r\n\r\n<p>她接得很快：&ldquo;耿总去世了。&rdquo;</p>\r\n\r\n<p>我呆住了：&ldquo;怎么会?!春节他还跟我通过电话呢!&rdquo;</p>\r\n\r\n<p>对方说：&ldquo;他刚刚走了一个星期，肺癌。&rdquo;</p>\r\n\r\n<p>直到现在，我都没去过南唐二主陵。</p>\r\n\r\n<p>很多时候，我们都以为来日方长，就如同嵇康在死前感慨：袁孝尼一直想学习《广陵散》，我以为来日方长，一直执意不肯教他，而今我这一走，《广陵散》从此绝矣。</p>\r\n\r\n<p><strong>生命来来往往，我们以为很牢靠的事情，在无常中可能一瞬间就永远消逝了;有些心愿一旦错过，可能就万劫不复，永不再来。</strong></p>\r\n\r\n<p><strong>什么才是真正的拥有?一念既起，拼尽心力当下完成，那一刻，才算是真正实在的拥有。</strong></p>', '1', '1', '2018-05-31 03:50:40.606255', '2018-05-31 03:50:40.606255', '1', '5');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_postcate
-- ----------------------------
INSERT INTO `mainsite_postcate` VALUES ('1', '科学', 'tech', '2018-02-11 01:01:40.779762', '2018-02-11 01:01:40.779762', '1', null);
INSERT INTO `mainsite_postcate` VALUES ('2', '文学', 'Literature', '2018-02-11 01:02:13.312371', '2018-02-11 01:02:13.313372', '1', null);
INSERT INTO `mainsite_postcate` VALUES ('3', '财经', 'finance', '2018-02-11 01:02:31.778078', '2018-02-11 01:02:31.778078', '1', null);
INSERT INTO `mainsite_postcate` VALUES ('4', '股票', 'stock', '2018-02-11 01:02:39.227653', '2018-02-11 01:02:39.227653', '1', '3');
INSERT INTO `mainsite_postcate` VALUES ('5', '励志感悟', 'lzgw', '2018-05-31 03:47:56.381091', '2018-05-31 03:47:56.381091', '1', null);

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
  `slide_isopen` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mainsite_slide
-- ----------------------------
INSERT INTO `mainsite_slide` VALUES ('1', 'slide1', 'https://www.baidu.com', 'slide1.jpg', '2018-05-18 06:28:21.356568', '2018-05-18 06:28:21.356568', '1');
INSERT INTO `mainsite_slide` VALUES ('2', 'slide2', 'https://www.qq.com', 'slide2.jpg', '2018-05-18 06:28:43.578564', '2018-05-18 06:28:43.578564', '1');
INSERT INTO `mainsite_slide` VALUES ('3', 'slide3', 'https://www.baidu.com', 'slide3.jpg', '2018-05-18 06:29:00.711566', '2018-05-18 06:29:00.711566', '1');
INSERT INTO `mainsite_slide` VALUES ('4', 'slide4', 'https://www.qq.com', 'slide4.jpg', '2018-05-18 06:29:15.059564', '2018-05-18 06:29:15.059564', '0');
INSERT INTO `mainsite_slide` VALUES ('5', 'slide5', 'https://www.baidu.com', 'slide5.jpg', '2018-05-18 06:29:32.242563', '2018-05-18 06:29:32.242563', '1');

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
