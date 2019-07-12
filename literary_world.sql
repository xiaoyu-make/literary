/*
Navicat MySQL Data Transfer

Source Server         : xiaoyu
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : literary_world

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-07-12 21:28:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `aboutme`
-- ----------------------------
DROP TABLE IF EXISTS `aboutme`;
CREATE TABLE `aboutme` (
  `aboutMe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aboutme
-- ----------------------------
INSERT INTO `aboutme` VALUES ('第一次，当它本可进取时，却故作谦卑；\r\n\r\n第二次，当它在空虚时，用爱欲来填充；\r\n\r\n第三次，在困难和容易之间，它选择了容易；\r\n\r\n第四次，它犯了错，却借由别人也会犯错来宽慰自己；\r\n\r\n第五次，它自由软弱，却把它认为是生命的坚韧；\r\n\r\n第六次，当它鄙夷一张丑恶的嘴脸时，却不知那正是自己面具中的一副；\r\n\r\n第七次，它侧身于生活的污泥中，虽不甘心，却又畏首畏尾。\r\n\r\nThe first time when I saw her being meek that she might attain height.\r\nThe second time when I saw her limping ');

-- ----------------------------
-- Table structure for `about_me`
-- ----------------------------
DROP TABLE IF EXISTS `about_me`;
CREATE TABLE `about_me` (
  `id` varchar(50) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `daily_sentence` varchar(10) NOT NULL,
  `writing` varchar(10) NOT NULL,
  `my_production` varchar(10) NOT NULL,
  `my_collection` varchar(10) NOT NULL,
  `recent_reading` varchar(20) DEFAULT NULL,
  `my_news` varchar(10) NOT NULL,
  `my_sensibility` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `login_id` (`login_id`),
  CONSTRAINT `login_id` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about_me
-- ----------------------------

-- ----------------------------
-- Table structure for `chat`
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` varchar(50) NOT NULL,
  `my_friend` varchar(20) DEFAULT NULL,
  `stranger` varchar(20) DEFAULT NULL,
  `group_chat` varchar(20) DEFAULT NULL,
  `temporary_group` varchar(20) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `chatid` FOREIGN KEY (`id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat
-- ----------------------------

-- ----------------------------
-- Table structure for `classic_books`
-- ----------------------------
DROP TABLE IF EXISTS `classic_books`;
CREATE TABLE `classic_books` (
  `id` varchar(50) NOT NULL,
  `domestic` varchar(20) DEFAULT NULL,
  `abroad` varchar(20) DEFAULT NULL,
  `prose` varchar(20) DEFAULT NULL,
  `poetry` varchar(20) DEFAULT NULL,
  `famous_book` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classic_books
-- ----------------------------

-- ----------------------------
-- Table structure for `daily_sentence`
-- ----------------------------
DROP TABLE IF EXISTS `daily_sentence`;
CREATE TABLE `daily_sentence` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `daily_sentence` varchar(500) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daily_sentence
-- ----------------------------
INSERT INTO `daily_sentence` VALUES ('46', '1234', '2018-12-11 11:38:00');
INSERT INTO `daily_sentence` VALUES ('47', 'rtrt', '2018-12-11 11:38:24');
INSERT INTO `daily_sentence` VALUES ('48', 'retdfg', '2018-12-11 11:38:27');
INSERT INTO `daily_sentence` VALUES ('49', 'dfgdgfgf', '2018-12-11 11:38:31');
INSERT INTO `daily_sentence` VALUES ('50', 'dfgdfgcgfcgf', '2018-12-11 11:38:34');
INSERT INTO `daily_sentence` VALUES ('51', 'dddd', '2018-12-11 11:38:38');
INSERT INTO `daily_sentence` VALUES ('52', 'drrsd', '2018-12-11 11:38:42');
INSERT INTO `daily_sentence` VALUES ('53', 'rtyu', '2018-12-11 11:38:52');
INSERT INTO `daily_sentence` VALUES ('54', 'sdsgd', '2018-12-11 17:13:02');
INSERT INTO `daily_sentence` VALUES ('55', 'gsgsg', '2018-12-11 17:13:48');
INSERT INTO `daily_sentence` VALUES ('56', 'dfgdgf', '2018-12-11 17:14:32');
INSERT INTO `daily_sentence` VALUES ('57', 'xcxcx', '2018-12-11 17:15:21');
INSERT INTO `daily_sentence` VALUES ('58', '', '2018-12-11 17:15:29');
INSERT INTO `daily_sentence` VALUES ('59', 'fg', '2018-12-11 17:15:37');
INSERT INTO `daily_sentence` VALUES ('60', 'zx', '2018-12-11 17:16:48');
INSERT INTO `daily_sentence` VALUES ('61', 'sss', '2018-12-11 17:17:08');
INSERT INTO `daily_sentence` VALUES ('62', '', '2018-12-11 17:17:12');
INSERT INTO `daily_sentence` VALUES ('63', '', '2018-12-11 17:17:13');
INSERT INTO `daily_sentence` VALUES ('64', '', '2018-12-11 17:17:14');
INSERT INTO `daily_sentence` VALUES ('65', '', '2018-12-11 17:17:15');
INSERT INTO `daily_sentence` VALUES ('66', '', '2018-12-11 17:17:16');
INSERT INTO `daily_sentence` VALUES ('67', '', '2018-12-11 17:17:16');
INSERT INTO `daily_sentence` VALUES ('68', 'op', '2018-12-11 17:18:31');
INSERT INTO `daily_sentence` VALUES ('69', '123', '2018-12-11 17:22:29');
INSERT INTO `daily_sentence` VALUES ('70', '12333', '2018-12-11 18:20:19');
INSERT INTO `daily_sentence` VALUES ('71', '', '2018-12-11 18:20:50');
INSERT INTO `daily_sentence` VALUES ('72', '', '2018-12-11 18:20:52');
INSERT INTO `daily_sentence` VALUES ('73', '', '2018-12-11 18:20:53');
INSERT INTO `daily_sentence` VALUES ('74', '', '2018-12-11 18:20:53');
INSERT INTO `daily_sentence` VALUES ('75', '', '2018-12-11 18:20:54');
INSERT INTO `daily_sentence` VALUES ('76', '', '2018-12-11 18:20:54');
INSERT INTO `daily_sentence` VALUES ('77', '', '2018-12-11 18:20:54');
INSERT INTO `daily_sentence` VALUES ('78', '', '2018-12-11 18:20:54');
INSERT INTO `daily_sentence` VALUES ('79', '', '2018-12-11 18:22:36');
INSERT INTO `daily_sentence` VALUES ('80', '', '2018-12-11 18:22:46');
INSERT INTO `daily_sentence` VALUES ('81', '', '2018-12-11 18:22:50');
INSERT INTO `daily_sentence` VALUES ('82', '', '2018-12-11 18:23:05');
INSERT INTO `daily_sentence` VALUES ('83', '', '2018-12-11 18:23:10');
INSERT INTO `daily_sentence` VALUES ('84', '', '2018-12-11 18:23:10');
INSERT INTO `daily_sentence` VALUES ('85', '', '2018-12-11 18:23:11');
INSERT INTO `daily_sentence` VALUES ('86', '', '2018-12-11 18:23:11');
INSERT INTO `daily_sentence` VALUES ('87', '', '2018-12-11 18:23:11');
INSERT INTO `daily_sentence` VALUES ('88', '', '2018-12-11 18:23:11');
INSERT INTO `daily_sentence` VALUES ('89', '', '2018-12-11 18:23:12');
INSERT INTO `daily_sentence` VALUES ('90', '', '2018-12-11 18:23:12');
INSERT INTO `daily_sentence` VALUES ('91', '', '2018-12-11 18:23:12');
INSERT INTO `daily_sentence` VALUES ('92', '123', '2018-12-12 09:42:21');
INSERT INTO `daily_sentence` VALUES ('93', '456', '2018-12-12 09:43:12');
INSERT INTO `daily_sentence` VALUES ('94', '7890', '2018-12-12 11:22:52');
INSERT INTO `daily_sentence` VALUES ('95', 'qwert', '2018-12-12 11:23:07');
INSERT INTO `daily_sentence` VALUES ('96', 'asdrx', '2018-12-12 11:23:24');
INSERT INTO `daily_sentence` VALUES ('97', '123456', '2018-12-12 11:29:58');
INSERT INTO `daily_sentence` VALUES ('98', '', '2018-12-12 11:30:11');
INSERT INTO `daily_sentence` VALUES ('99', '789', '2018-12-12 11:30:42');
INSERT INTO `daily_sentence` VALUES ('100', '', '2018-12-12 11:30:48');
INSERT INTO `daily_sentence` VALUES ('101', '', '2018-12-12 11:30:51');
INSERT INTO `daily_sentence` VALUES ('102', '', '2018-12-12 11:30:54');
INSERT INTO `daily_sentence` VALUES ('103', '789654', '2018-12-12 11:32:26');
INSERT INTO `daily_sentence` VALUES ('104', 'ghjgjgj', '2018-12-12 11:33:05');
INSERT INTO `daily_sentence` VALUES ('105', '', '2018-12-12 11:33:08');
INSERT INTO `daily_sentence` VALUES ('106', '', '2018-12-12 11:33:09');
INSERT INTO `daily_sentence` VALUES ('107', '', '2018-12-12 11:33:10');
INSERT INTO `daily_sentence` VALUES ('108', '', '2018-12-12 11:33:10');
INSERT INTO `daily_sentence` VALUES ('109', '', '2018-12-12 11:33:10');
INSERT INTO `daily_sentence` VALUES ('110', '', '2018-12-12 11:33:10');
INSERT INTO `daily_sentence` VALUES ('111', '', '2018-12-12 11:33:10');
INSERT INTO `daily_sentence` VALUES ('112', 'jkjkjkj', '2018-12-12 11:49:53');
INSERT INTO `daily_sentence` VALUES ('113', 'pptg', '2018-12-12 11:51:12');
INSERT INTO `daily_sentence` VALUES ('114', 'pptv', '2018-12-12 13:42:18');
INSERT INTO `daily_sentence` VALUES ('115', '4568', '2018-12-12 13:42:47');
INSERT INTO `daily_sentence` VALUES ('116', '798', '2018-12-12 13:45:33');
INSERT INTO `daily_sentence` VALUES ('117', 'fgh', '2018-12-12 13:49:12');
INSERT INTO `daily_sentence` VALUES ('118', 'zxczcx', '2018-12-12 13:53:15');
INSERT INTO `daily_sentence` VALUES ('119', 'sfsdfsf', '2018-12-12 14:11:06');
INSERT INTO `daily_sentence` VALUES ('120', 'rtrtt', '2018-12-12 14:11:19');
INSERT INTO `daily_sentence` VALUES ('121', '12346', '2018-12-12 14:42:35');
INSERT INTO `daily_sentence` VALUES ('122', '654987', '2018-12-12 14:43:16');
INSERT INTO `daily_sentence` VALUES ('123', '156666', '2018-12-12 14:49:12');
INSERT INTO `daily_sentence` VALUES ('124', '564564', '2018-12-12 14:50:23');
INSERT INTO `daily_sentence` VALUES ('125', '213', '2018-12-12 14:52:31');
INSERT INTO `daily_sentence` VALUES ('126', '654623', '2018-12-12 15:04:27');
INSERT INTO `daily_sentence` VALUES ('127', 'XCV', '2018-12-12 15:04:56');
INSERT INTO `daily_sentence` VALUES ('128', 'poijk', '2018-12-12 15:05:48');
INSERT INTO `daily_sentence` VALUES ('129', 'drthj', '2018-12-12 15:06:19');
INSERT INTO `daily_sentence` VALUES ('130', '79856', '2018-12-12 15:11:49');
INSERT INTO `daily_sentence` VALUES ('131', 'hihij', '2018-12-12 15:12:29');
INSERT INTO `daily_sentence` VALUES ('132', 'ghgh', '2018-12-12 15:12:37');
INSERT INTO `daily_sentence` VALUES ('133', 'ddd', '2018-12-12 15:13:21');
INSERT INTO `daily_sentence` VALUES ('134', 'ssss', '2018-12-12 15:21:59');
INSERT INTO `daily_sentence` VALUES ('135', 'ssddd', '2018-12-12 15:22:12');
INSERT INTO `daily_sentence` VALUES ('136', 'xcxc', '2018-12-12 15:39:44');
INSERT INTO `daily_sentence` VALUES ('137', 'xxc', '2018-12-12 15:42:48');
INSERT INTO `daily_sentence` VALUES ('138', 'cv', '2018-12-12 15:43:09');
INSERT INTO `daily_sentence` VALUES ('139', 'df', '2018-12-12 15:46:45');
INSERT INTO `daily_sentence` VALUES ('140', 'ss', '2018-12-12 15:47:23');
INSERT INTO `daily_sentence` VALUES ('141', 'sss', '2018-12-12 15:47:33');
INSERT INTO `daily_sentence` VALUES ('142', 'sss', '2018-12-12 15:47:46');
INSERT INTO `daily_sentence` VALUES ('143', 'sssssss', '2018-12-12 15:48:22');
INSERT INTO `daily_sentence` VALUES ('144', 'sss', '2018-12-12 15:48:37');
INSERT INTO `daily_sentence` VALUES ('145', 'werq', '2018-12-12 15:48:59');
INSERT INTO `daily_sentence` VALUES ('146', 'ssss', '2018-12-12 15:49:21');
INSERT INTO `daily_sentence` VALUES ('147', 'qwe', '2018-12-12 15:49:51');
INSERT INTO `daily_sentence` VALUES ('148', 'sddf', '2018-12-12 16:14:04');
INSERT INTO `daily_sentence` VALUES ('149', 'sssss', '2018-12-12 16:14:33');
INSERT INTO `daily_sentence` VALUES ('150', 'ghhh', '2018-12-12 16:14:58');
INSERT INTO `daily_sentence` VALUES ('151', 'sssfxfxfcxcf', '2018-12-12 16:15:18');
INSERT INTO `daily_sentence` VALUES ('152', '12313', '2018-12-12 16:18:45');
INSERT INTO `daily_sentence` VALUES ('153', 'sss', '2018-12-12 16:19:03');
INSERT INTO `daily_sentence` VALUES ('154', 'sdsdf', '2018-12-12 16:19:16');
INSERT INTO `daily_sentence` VALUES ('155', 'ssss', '2018-12-12 16:19:56');
INSERT INTO `daily_sentence` VALUES ('156', 'qwsedrftyh', '2018-12-12 16:22:46');
INSERT INTO `daily_sentence` VALUES ('157', 'ssssf', '2018-12-12 16:28:02');
INSERT INTO `daily_sentence` VALUES ('158', 'fgg', '2018-12-12 16:28:13');
INSERT INTO `daily_sentence` VALUES ('159', 'hjhkjhk', '2018-12-12 16:45:39');
INSERT INTO `daily_sentence` VALUES ('160', 'xxc', '2018-12-12 16:46:05');
INSERT INTO `daily_sentence` VALUES ('161', 'yhjkj', '2018-12-12 16:47:01');
INSERT INTO `daily_sentence` VALUES ('162', '23aser', '2018-12-12 16:47:39');
INSERT INTO `daily_sentence` VALUES ('163', 'sss', '2018-12-12 16:48:39');
INSERT INTO `daily_sentence` VALUES ('164', 'esdfxdf', '2018-12-12 16:49:15');
INSERT INTO `daily_sentence` VALUES ('165', 'sssf', '2018-12-12 16:50:02');
INSERT INTO `daily_sentence` VALUES ('166', 'qwsdfghn', '2018-12-12 16:50:30');
INSERT INTO `daily_sentence` VALUES ('167', 'hvhvh', '2018-12-12 16:51:17');
INSERT INTO `daily_sentence` VALUES ('168', '8456', '2018-12-12 16:53:52');
INSERT INTO `daily_sentence` VALUES ('169', '123132', '2018-12-12 17:51:28');
INSERT INTO `daily_sentence` VALUES ('170', '12123', '2018-12-12 17:52:12');
INSERT INTO `daily_sentence` VALUES ('171', '12316355', '2018-12-12 17:52:32');
INSERT INTO `daily_sentence` VALUES ('172', '97856', '2018-12-12 17:52:57');
INSERT INTO `daily_sentence` VALUES ('173', 'yttuy', '2018-12-12 17:58:31');
INSERT INTO `daily_sentence` VALUES ('174', 'jhkjhk', '2018-12-12 17:59:18');
INSERT INTO `daily_sentence` VALUES ('175', '974646666', '2018-12-12 17:59:31');
INSERT INTO `daily_sentence` VALUES ('176', 'jhjhj', '2018-12-12 18:03:42');
INSERT INTO `daily_sentence` VALUES ('177', 'bnmbnmbm', '2018-12-12 18:04:11');
INSERT INTO `daily_sentence` VALUES ('178', 'fhgfghfhg', '2018-12-12 18:04:28');
INSERT INTO `daily_sentence` VALUES ('179', 'ffff', '2018-12-12 18:04:54');
INSERT INTO `daily_sentence` VALUES ('180', 'sssss', '2018-12-12 18:05:17');
INSERT INTO `daily_sentence` VALUES ('181', '6456', '2018-12-12 18:10:00');
INSERT INTO `daily_sentence` VALUES ('182', 'qwertyu', '2018-12-12 18:10:46');
INSERT INTO `daily_sentence` VALUES ('183', 'hguhghjbhj', '2018-12-12 18:11:23');
INSERT INTO `daily_sentence` VALUES ('184', 'vjbjbjh', '2018-12-12 18:13:52');
INSERT INTO `daily_sentence` VALUES ('185', 'xvcxvcxcv', '2018-12-12 18:14:34');
INSERT INTO `daily_sentence` VALUES ('186', 'iuhnijhk', '2018-12-12 18:16:11');
INSERT INTO `daily_sentence` VALUES ('187', 'hghh', '2018-12-12 18:16:47');
INSERT INTO `daily_sentence` VALUES ('188', 'hhkhjkh', '2018-12-12 18:17:33');
INSERT INTO `daily_sentence` VALUES ('189', 'xcvccvbhh h', '2018-12-12 18:17:50');
INSERT INTO `daily_sentence` VALUES ('190', 'hfghvhg', '2018-12-12 18:18:57');
INSERT INTO `daily_sentence` VALUES ('191', 'bjbjbk', '2018-12-12 18:19:17');
INSERT INTO `daily_sentence` VALUES ('192', 'gjkjk', '2018-12-12 18:19:53');
INSERT INTO `daily_sentence` VALUES ('193', 'gfygghjbjh', '2018-12-12 18:20:44');
INSERT INTO `daily_sentence` VALUES ('194', 'cvbcvbcvb', '2018-12-12 18:21:05');
INSERT INTO `daily_sentence` VALUES ('195', 'uhuihigi', '2018-12-12 18:21:47');
INSERT INTO `daily_sentence` VALUES ('196', 'xcvxcvxcv', '2018-12-12 18:22:01');
INSERT INTO `daily_sentence` VALUES ('197', 'sfdfxfgxg', '2018-12-12 18:22:12');
INSERT INTO `daily_sentence` VALUES ('198', 'gccg', '2018-12-12 18:23:06');
INSERT INTO `daily_sentence` VALUES ('199', 'GBJBJBJH', '2018-12-12 18:27:51');
INSERT INTO `daily_sentence` VALUES ('200', 'kjojo', '2018-12-12 18:32:07');
INSERT INTO `daily_sentence` VALUES ('201', 'fxxgxg', '2018-12-12 18:32:50');
INSERT INTO `daily_sentence` VALUES ('202', 'xcvxcvxcv', '2018-12-12 18:33:22');
INSERT INTO `daily_sentence` VALUES ('203', 'guguy', '2018-12-12 18:35:26');
INSERT INTO `daily_sentence` VALUES ('204', '123', '2018-12-13 09:18:16');
INSERT INTO `daily_sentence` VALUES ('205', '1233', '2018-12-13 09:18:39');
INSERT INTO `daily_sentence` VALUES ('206', '654', '2018-12-13 10:00:56');
INSERT INTO `daily_sentence` VALUES ('207', 'jgjgvjh', '2018-12-13 10:01:52');
INSERT INTO `daily_sentence` VALUES ('208', 'cxzcvxvc', '2018-12-13 10:02:11');
INSERT INTO `daily_sentence` VALUES ('209', 'ss', '2018-12-13 10:02:27');
INSERT INTO `daily_sentence` VALUES ('210', '444', '2018-12-13 10:03:45');
INSERT INTO `daily_sentence` VALUES ('211', '666', '2018-12-13 10:16:51');
INSERT INTO `daily_sentence` VALUES ('212', 'ihuhi', '2018-12-13 10:17:38');
INSERT INTO `daily_sentence` VALUES ('213', 'ljkjl', '2018-12-13 10:21:08');
INSERT INTO `daily_sentence` VALUES ('214', '132', '2018-12-13 10:22:05');
INSERT INTO `daily_sentence` VALUES ('215', 'vbbv', '2018-12-13 10:23:25');
INSERT INTO `daily_sentence` VALUES ('216', 'vbv', '2018-12-13 10:23:46');
INSERT INTO `daily_sentence` VALUES ('217', 'vgfg', '2018-12-13 10:23:55');
INSERT INTO `daily_sentence` VALUES ('218', 'zxzx', '2018-12-13 10:24:05');
INSERT INTO `daily_sentence` VALUES ('219', 'jjj', '2018-12-13 10:24:31');
INSERT INTO `daily_sentence` VALUES ('220', 'llll', '2018-12-13 10:26:27');
INSERT INTO `daily_sentence` VALUES ('221', 'ddddd', '2018-12-13 10:30:31');
INSERT INTO `daily_sentence` VALUES ('222', 'ssss', '2018-12-13 10:31:10');
INSERT INTO `daily_sentence` VALUES ('223', 'jjkjk', '2018-12-13 10:32:48');
INSERT INTO `daily_sentence` VALUES ('224', 'jjjj', '2018-12-13 10:33:29');
INSERT INTO `daily_sentence` VALUES ('225', 'dfdf', '2018-12-13 10:57:15');
INSERT INTO `daily_sentence` VALUES ('226', 'fdfdfd', '2018-12-13 10:59:15');
INSERT INTO `daily_sentence` VALUES ('227', '1234556', '2018-12-13 11:57:09');
INSERT INTO `daily_sentence` VALUES ('228', 'xfsdf', '2018-12-13 13:55:50');
INSERT INTO `daily_sentence` VALUES ('229', 'aaaaa', '2018-12-13 13:56:42');
INSERT INTO `daily_sentence` VALUES ('230', 'zxzxzczc', '2018-12-13 13:58:47');
INSERT INTO `daily_sentence` VALUES ('231', 'ssss', '2018-12-13 14:00:45');
INSERT INTO `daily_sentence` VALUES ('232', 'ssss', '2018-12-13 14:01:13');
INSERT INTO `daily_sentence` VALUES ('233', 'sss', '2018-12-13 14:01:26');
INSERT INTO `daily_sentence` VALUES ('234', 'aaqw', '2018-12-13 14:01:43');
INSERT INTO `daily_sentence` VALUES ('235', 'ddsd', '2018-12-13 14:03:29');
INSERT INTO `daily_sentence` VALUES ('236', 'ssssss', '2018-12-13 14:03:46');
INSERT INTO `daily_sentence` VALUES ('237', 'szzz', '2018-12-13 14:04:25');
INSERT INTO `daily_sentence` VALUES ('238', 'ssd', '2018-12-13 14:06:42');
INSERT INTO `daily_sentence` VALUES ('239', 'ssaw', '2018-12-13 14:07:12');
INSERT INTO `daily_sentence` VALUES ('240', 'sssssssss', '2018-12-13 14:07:39');
INSERT INTO `daily_sentence` VALUES ('241', 'ad', '2018-12-13 14:08:43');
INSERT INTO `daily_sentence` VALUES ('242', 'sssssd', '2018-12-13 14:09:57');
INSERT INTO `daily_sentence` VALUES ('243', '12qww', '2018-12-13 14:11:45');
INSERT INTO `daily_sentence` VALUES ('244', '1234', '2018-12-13 14:12:19');
INSERT INTO `daily_sentence` VALUES ('245', 'fg', '2018-12-13 14:16:59');
INSERT INTO `daily_sentence` VALUES ('246', '4523', '2018-12-13 15:13:05');
INSERT INTO `daily_sentence` VALUES ('247', 'fgfgf', '2018-12-13 15:27:51');
INSERT INTO `daily_sentence` VALUES ('248', 'ddfffff', '2018-12-13 15:32:08');
INSERT INTO `daily_sentence` VALUES ('249', 'drdrddrdr', '2018-12-13 15:33:18');
INSERT INTO `daily_sentence` VALUES ('250', '9875', '2018-12-13 15:33:33');
INSERT INTO `daily_sentence` VALUES ('251', 'dfdf', '2018-12-13 16:01:11');
INSERT INTO `daily_sentence` VALUES ('252', 'fgfg', '2018-12-13 16:01:44');
INSERT INTO `daily_sentence` VALUES ('253', 'sss', '2018-12-13 16:02:58');
INSERT INTO `daily_sentence` VALUES ('254', 'xcc', '2018-12-13 16:04:39');
INSERT INTO `daily_sentence` VALUES ('255', 'hjjjj', '2018-12-13 16:06:24');
INSERT INTO `daily_sentence` VALUES ('256', 'sssss', '2018-12-13 16:08:13');
INSERT INTO `daily_sentence` VALUES ('257', 'fgdfdg', '2018-12-13 16:12:25');
INSERT INTO `daily_sentence` VALUES ('258', 'sssss', '2018-12-13 16:13:04');
INSERT INTO `daily_sentence` VALUES ('259', 'zxxf', '2018-12-13 16:14:59');
INSERT INTO `daily_sentence` VALUES ('260', 'dfrt', '2018-12-13 16:15:28');
INSERT INTO `daily_sentence` VALUES ('261', 'dyfygh', '2018-12-13 16:18:34');
INSERT INTO `daily_sentence` VALUES ('262', 'ssxvcxv', '2018-12-13 16:19:34');
INSERT INTO `daily_sentence` VALUES ('263', 'sssss', '2018-12-13 16:23:43');
INSERT INTO `daily_sentence` VALUES ('264', 'xcxcxc', '2018-12-13 16:33:09');
INSERT INTO `daily_sentence` VALUES ('265', 'zxzxc', '2018-12-13 16:35:35');
INSERT INTO `daily_sentence` VALUES ('266', 'bnbnmbmn', '2018-12-13 16:35:55');
INSERT INTO `daily_sentence` VALUES ('267', 'dtyfg', '2018-12-13 16:38:04');
INSERT INTO `daily_sentence` VALUES ('268', 'ssss', '2018-12-13 16:38:57');
INSERT INTO `daily_sentence` VALUES ('269', 'xfxff', '2018-12-13 16:40:45');
INSERT INTO `daily_sentence` VALUES ('270', 'ssss', '2018-12-13 16:41:08');
INSERT INTO `daily_sentence` VALUES ('271', 'ihjhk', '2018-12-13 17:24:56');
INSERT INTO `daily_sentence` VALUES ('272', 'dszdf', '2018-12-13 17:25:25');
INSERT INTO `daily_sentence` VALUES ('273', 'sssss', '2018-12-13 17:26:08');
INSERT INTO `daily_sentence` VALUES ('274', 'dfgcgf', '2018-12-13 17:27:33');
INSERT INTO `daily_sentence` VALUES ('275', 'cfcfcf', '2018-12-13 17:43:15');
INSERT INTO `daily_sentence` VALUES ('276', 'sddffg', '2018-12-13 17:44:11');
INSERT INTO `daily_sentence` VALUES ('277', 'ssss', '2018-12-13 17:44:53');
INSERT INTO `daily_sentence` VALUES ('278', 'qwertyu', '2018-12-13 17:45:20');
INSERT INTO `daily_sentence` VALUES ('279', 'xcg', '2018-12-13 17:45:59');
INSERT INTO `daily_sentence` VALUES ('280', 'hjkhkj', '2018-12-13 17:46:37');
INSERT INTO `daily_sentence` VALUES ('281', 'cvvbcb', '2018-12-13 17:47:03');
INSERT INTO `daily_sentence` VALUES ('282', 'gdgfgf', '2018-12-13 17:48:10');
INSERT INTO `daily_sentence` VALUES ('283', 'zxccv', '2018-12-13 17:49:02');
INSERT INTO `daily_sentence` VALUES ('284', 'rychch', '2018-12-13 17:49:22');
INSERT INTO `daily_sentence` VALUES ('285', 'xcc', '2018-12-13 17:51:51');
INSERT INTO `daily_sentence` VALUES ('286', 'fghh', '2018-12-13 17:56:37');
INSERT INTO `daily_sentence` VALUES ('287', 'xcxc', '2018-12-13 17:57:47');
INSERT INTO `daily_sentence` VALUES ('288', 'sss', '2018-12-13 17:58:05');
INSERT INTO `daily_sentence` VALUES ('289', 'bcvb', '2018-12-13 18:11:27');
INSERT INTO `daily_sentence` VALUES ('290', 'vbbvb', '2018-12-13 18:12:39');
INSERT INTO `daily_sentence` VALUES ('291', '2132132132', '2018-12-13 18:14:08');
INSERT INTO `daily_sentence` VALUES ('292', 'jhuty', '2018-12-13 18:16:50');
INSERT INTO `daily_sentence` VALUES ('293', 'gghjgjh', '2018-12-13 18:19:13');
INSERT INTO `daily_sentence` VALUES ('294', 'dzsdzdzd', '2018-12-13 18:23:46');
INSERT INTO `daily_sentence` VALUES ('295', 'hjhjhk', '2018-12-13 18:25:33');
INSERT INTO `daily_sentence` VALUES ('296', 'hjbhj', '2018-12-13 18:26:10');
INSERT INTO `daily_sentence` VALUES ('297', '98545', '2018-12-13 18:27:33');
INSERT INTO `daily_sentence` VALUES ('298', 'gfdfgdfg', '2018-12-13 18:28:33');
INSERT INTO `daily_sentence` VALUES ('299', 'jkjkjk', '2018-12-13 18:29:51');
INSERT INTO `daily_sentence` VALUES ('300', 'dggfgh', '2018-12-13 18:30:38');
INSERT INTO `daily_sentence` VALUES ('301', '987', '2018-12-13 18:31:57');
INSERT INTO `daily_sentence` VALUES ('302', 'gghvgh', '2018-12-13 18:32:37');
INSERT INTO `daily_sentence` VALUES ('303', 'cvcvbcvb', '2018-12-13 18:35:34');
INSERT INTO `daily_sentence` VALUES ('304', 'xcxcvxv', '2018-12-13 18:36:06');
INSERT INTO `daily_sentence` VALUES ('305', 'xczcxzxc', '2018-12-13 18:36:21');
INSERT INTO `daily_sentence` VALUES ('306', 'dfd', '2018-12-13 18:39:10');
INSERT INTO `daily_sentence` VALUES ('307', 'sssssss', '2018-12-13 18:39:41');
INSERT INTO `daily_sentence` VALUES ('308', 'dgfdgfdg', '2018-12-13 18:39:59');
INSERT INTO `daily_sentence` VALUES ('309', '65456123', '2018-12-14 10:02:02');
INSERT INTO `daily_sentence` VALUES ('310', 'ughgjh', '2018-12-14 10:40:54');
INSERT INTO `daily_sentence` VALUES ('311', 'ddfff', '2018-12-14 10:41:22');
INSERT INTO `daily_sentence` VALUES ('312', 'hfhfgh', '2018-12-14 10:43:36');
INSERT INTO `daily_sentence` VALUES ('313', 'xxxx', '2018-12-14 10:44:13');
INSERT INTO `daily_sentence` VALUES ('314', 'dcc', '2018-12-14 10:44:30');
INSERT INTO `daily_sentence` VALUES ('315', 'dh', '2018-12-14 10:46:51');
INSERT INTO `daily_sentence` VALUES ('316', 'fff', '2018-12-14 10:47:18');
INSERT INTO `daily_sentence` VALUES ('317', 'fgfg', '2018-12-14 10:48:01');
INSERT INTO `daily_sentence` VALUES ('318', 'xcx', '2018-12-14 10:49:36');
INSERT INTO `daily_sentence` VALUES ('319', 'sdsd', '2018-12-14 10:50:16');
INSERT INTO `daily_sentence` VALUES ('320', 'ssss', '2018-12-14 10:50:42');
INSERT INTO `daily_sentence` VALUES ('321', 'hgghgh', '2018-12-14 10:54:57');
INSERT INTO `daily_sentence` VALUES ('322', '654258', '2018-12-14 11:02:43');
INSERT INTO `daily_sentence` VALUES ('323', 'zxcc', '2018-12-14 11:03:39');
INSERT INTO `daily_sentence` VALUES ('324', 'rhhy', '2018-12-14 11:03:56');
INSERT INTO `daily_sentence` VALUES ('325', 'xcxcg', '2018-12-14 11:05:17');
INSERT INTO `daily_sentence` VALUES ('326', 'sssss', '2018-12-14 11:08:00');
INSERT INTO `daily_sentence` VALUES ('327', '3666', '2018-12-14 11:12:15');
INSERT INTO `daily_sentence` VALUES ('328', '好好学习天现', '2019-05-24 19:58:45');
INSERT INTO `daily_sentence` VALUES ('335', '好好学习', '2019-04-12 18:25:17');
INSERT INTO `daily_sentence` VALUES ('336', '棒棒要', '2019-04-22 15:26:24');
INSERT INTO `daily_sentence` VALUES ('338', '王老五是jjjjj', '2019-04-22 19:11:41');

-- ----------------------------
-- Table structure for `diary`
-- ----------------------------
DROP TABLE IF EXISTS `diary`;
CREATE TABLE `diary` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `userId` smallint(5) NOT NULL,
  `wether` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `diary` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diary
-- ----------------------------
INSERT INTO `diary` VALUES ('7', '1', '', '来福士广场', '2019-04-26 01:32:00', '   好好学习天一射中 无可置疑');
INSERT INTO `diary` VALUES ('8', '1', '', '来福士广场', '2019-04-26 03:55:02', '   中.冥想对我太有帮助了。刚静坐了十多分钟感觉很好。其实在练习冥想之前，我已经会冥想了，比如进驻身体、感受身体，听周围的声音，但是我都没有认识到这就是冥想。既然我平时无意识地会这些，所以状态一直很好，精力也很充沛。但是在经历了一次失败的恋爱过后，我的思绪开始杂乱纷飞了，所以高考磁了，进了一所二本，大学一年级浑浑噩噩地度过，朋友没有几个，成绩也不好。但是大学二年级开始了解到冥想，开始练习，开始时比较心急，总想有成效，但是长时间的练习发现真的有帮助！这是真的！亲身实验为证，开始渐渐恢复以前的状态，思绪开始清晰，重新认识到，这个世界美的东西太多了！而人类的智慧和逻辑真的只是一个面向，只是一个！最后总结一句：取经一瞬间，得道十一年。知道和领悟到是完全不同的，冥想会带给你很多东西，不过要看你给自己开哪一扇门。2.和潘智聪一样，我也很难理解为什么其他人难以进入心流的状态，但的确在工作中遇到了很多容易受到干扰，难以进入心流的人。就我自己来说，我能做到上一句还在答别人的话，下一句别人说话的时候，我就已经听不见了，已经进入了思考的心流。对自己有兴趣的事情，进入心流可能是自然而然的事情。但对某些没兴趣的工作任务，也是可以主动进入心流状态。总结一下怎么进入心流：- 从todo list里面选一个自己要做的（没兴趣也没关系）- 想清楚为什么要做这个事，是否当下做ROI最高，最后要达到什么目的？- 在脑袋里想一下做事的提纲，通过哪些step可以达到目的');
INSERT INTO `diary` VALUES ('9', '1', '晴', '来福士广场', '2019-04-26 03:56:53', '   .冥想对我太有帮助了。刚静坐了十多分钟感觉很好。其实在练习冥想之前，我已经会冥想了，比如进驻身体、感受身体，听周围的声音，但是我都没有认识到这就是冥想。既然我平时无意识地会这些，所以状态一直很好，精力也很充沛。但是在经历了一次失败的恋爱过后，我的思绪开始杂乱纷飞了，所以高考磁了，进了一所二本，大学一年级浑浑噩噩地度过，朋友没有几个，成绩也不好。但是大学二年级开始了解到冥想，开始练习，开始时比较心急，总想有成效，但是长时间的练习发现真的有帮助！这是真的！亲身实验为证，开始渐渐恢复以前的状态，思绪开始清晰，重新认识到，这个世界美的东西太多了！而人类的智慧和逻辑真的只是一个面向，只是一个！最后总结一句：取经一瞬间，得道十一年。知道和领悟到是完全不同的，冥想会带给你很多东西，不过要看你给自己开哪一扇门。2.和潘智聪一样，我也很难理解为什么其他人难以进入心流的状态，但的确在工作中遇到了很多容易受到干扰，难以进入心流的人。就我自己来说，我能做到上一句还在答别人的话，下一句别人说话的时候，我就已经听不见了，已经进入了思考的心流。对自己有兴趣的事情，进入心流可能是自然而然的事情。但对某些没兴趣的工作任务，也是可以主动进入心流状态。总结一下怎么进入心流：- 从todo list里面选一个自己要做的（没兴趣也没关系）- 想清楚为什么要做这个事，是否当下做ROI最高，最后要达到什么目的？- 在脑袋里想一下做事的提纲，通过哪些step可以达到目的');
INSERT INTO `diary` VALUES ('12', '1', '小雨', '', '2019-05-25 09:12:28', ' 几种Jquery给Select赋值的方法');
INSERT INTO `diary` VALUES ('13', '1', '小雨', '来福士广场', '2019-05-29 06:22:04', '蛙鸣蝉噪国');

-- ----------------------------
-- Table structure for `everyones_life`
-- ----------------------------
DROP TABLE IF EXISTS `everyones_life`;
CREATE TABLE `everyones_life` (
  `id` varchar(50) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `square` varchar(20) DEFAULT NULL,
  `personal_life` varchar(20) DEFAULT NULL,
  `small_video` varchar(20) DEFAULT NULL,
  `joke` varchar(20) DEFAULT NULL,
  KEY `id` (`id`),
  KEY `everyongid` (`login_id`),
  CONSTRAINT `everyones_life_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of everyones_life
-- ----------------------------

-- ----------------------------
-- Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `id` varchar(50) NOT NULL,
  `friend` varchar(30) DEFAULT NULL,
  KEY `friend_id` (`id`),
  CONSTRAINT `friend_id` FOREIGN KEY (`id`) REFERENCES `chat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------

-- ----------------------------
-- Table structure for `friend_news`
-- ----------------------------
DROP TABLE IF EXISTS `friend_news`;
CREATE TABLE `friend_news` (
  `id` varchar(50) NOT NULL,
  `friend_id` varchar(50) NOT NULL,
  `voice` varchar(20) DEFAULT NULL,
  `send_voice` varchar(20) DEFAULT NULL,
  `video` varchar(20) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `picture` varchar(20) DEFAULT NULL,
  KEY `friendid` (`friend_id`),
  CONSTRAINT `friendid` FOREIGN KEY (`friend_id`) REFERENCES `chat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend_news
-- ----------------------------

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` varchar(50) NOT NULL,
  `group` varchar(30) DEFAULT NULL,
  KEY `group_id` (`id`),
  CONSTRAINT `group_id` FOREIGN KEY (`id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for `group-temporary`
-- ----------------------------
DROP TABLE IF EXISTS `group-temporary`;
CREATE TABLE `group-temporary` (
  `id` varchar(50) NOT NULL,
  `temporary-group` varchar(30) DEFAULT NULL,
  KEY `temporary_group_id` (`id`),
  CONSTRAINT `temporary_group_id` FOREIGN KEY (`id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group-temporary
-- ----------------------------

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------

-- ----------------------------
-- Table structure for `motto`
-- ----------------------------
DROP TABLE IF EXISTS `motto`;
CREATE TABLE `motto` (
  `motto` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of motto
-- ----------------------------
INSERT INTO `motto` VALUES ('珍惜时间，确定目标，高效努力。');

-- ----------------------------
-- Table structure for `novel`
-- ----------------------------
DROP TABLE IF EXISTS `novel`;
CREATE TABLE `novel` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of novel
-- ----------------------------

-- ----------------------------
-- Table structure for `novel-type`
-- ----------------------------
DROP TABLE IF EXISTS `novel-type`;
CREATE TABLE `novel-type` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `struture_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of novel-type
-- ----------------------------
INSERT INTO `novel-type` VALUES ('1', 'title');
INSERT INTO `novel-type` VALUES ('2', 'parter');
INSERT INTO `novel-type` VALUES ('3', 'chapter');
INSERT INTO `novel-type` VALUES ('4', 'section');
INSERT INTO `novel-type` VALUES ('5', 'others');

-- ----------------------------
-- Table structure for `novel-ztree`
-- ----------------------------
DROP TABLE IF EXISTS `novel-ztree`;
CREATE TABLE `novel-ztree` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `novelid` smallint(5) NOT NULL,
  `name` varchar(30) DEFAULT NULL COMMENT '"654"',
  `type` smallint(1) NOT NULL,
  `layer` smallint(3) NOT NULL,
  `mainbody` text,
  PRIMARY KEY (`id`),
  KEY `novelid` (`novelid`),
  CONSTRAINT `novelid` FOREIGN KEY (`novelid`) REFERENCES `novel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of novel-ztree
-- ----------------------------

-- ----------------------------
-- Table structure for `other_skills`
-- ----------------------------
DROP TABLE IF EXISTS `other_skills`;
CREATE TABLE `other_skills` (
  `id` varchar(50) NOT NULL,
  `writing_skills` varchar(20) DEFAULT NULL,
  `learning_method` varchar(20) DEFAULT NULL,
  `meditation` varchar(20) DEFAULT NULL,
  `English_study` varchar(20) DEFAULT NULL,
  `programming_learning` varchar(20) DEFAULT NULL,
  ` Bodybuilding` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of other_skills
-- ----------------------------

-- ----------------------------
-- Table structure for `private_information`
-- ----------------------------
DROP TABLE IF EXISTS `private_information`;
CREATE TABLE `private_information` (
  `id` varchar(50) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `private_information` varchar(20) DEFAULT NULL,
  `sqare_call_me` varchar(20) DEFAULT NULL,
  KEY `privateid` (`login_id`),
  CONSTRAINT `privateid` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of private_information
-- ----------------------------

-- ----------------------------
-- Table structure for `prose`
-- ----------------------------
DROP TABLE IF EXISTS `prose`;
CREATE TABLE `prose` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `userId` smallint(5) NOT NULL,
  `prose` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prose
-- ----------------------------
INSERT INTO `prose` VALUES ('1', '1', '靣星罗棋布中坚力量 蛔虫田军队', '2019-05-27 20:18:23');
INSERT INTO `prose` VALUES ('2', '1', '靣星罗棋布中坚力量 蛔虫田军队CCFGHFGHFHGFFFFFFFGHHGFGHFGHVHVHGFFGHFGHFGHTFGHFGH', '2019-05-28 21:24:42');
INSERT INTO `prose` VALUES ('3', '1', '靣星罗棋布中坚力量 蛔虫田军队CCFGHFGHFHGFFFFFFFGHHGFGHFGHVHVHGFFGHFGHFGHTFGHFGH', '2019-05-28 21:24:48');
INSERT INTO `prose` VALUES ('4', '1', 'FJLKSASJLFJLKSDJFL', '2019-05-28 21:25:38');

-- ----------------------------
-- Table structure for `serval_people_news`
-- ----------------------------
DROP TABLE IF EXISTS `serval_people_news`;
CREATE TABLE `serval_people_news` (
  `id` varchar(50) NOT NULL,
  `serval_people_id` varchar(50) NOT NULL,
  `voice` varchar(20) DEFAULT NULL,
  `send_voice` varchar(20) DEFAULT NULL,
  `video` varchar(20) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `picture` varchar(20) DEFAULT NULL,
  KEY `serval_people_id` (`serval_people_id`) USING BTREE,
  CONSTRAINT `serval_people_id` FOREIGN KEY (`serval_people_id`) REFERENCES `chat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of serval_people_news
-- ----------------------------

-- ----------------------------
-- Table structure for `stranger`
-- ----------------------------
DROP TABLE IF EXISTS `stranger`;
CREATE TABLE `stranger` (
  `id` varchar(50) NOT NULL,
  `stranger` varchar(30) DEFAULT NULL,
  KEY `stranger_id` (`id`),
  CONSTRAINT `stranger_id` FOREIGN KEY (`id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stranger
-- ----------------------------

-- ----------------------------
-- Table structure for `stranger_news`
-- ----------------------------
DROP TABLE IF EXISTS `stranger_news`;
CREATE TABLE `stranger_news` (
  `id` varchar(50) NOT NULL,
  `stranger_id` varchar(50) NOT NULL,
  `voice` varchar(20) DEFAULT NULL,
  `send_voice` varchar(20) DEFAULT NULL,
  `video` varchar(20) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `picture` varchar(20) DEFAULT NULL,
  KEY `strangerid` (`stranger_id`),
  CONSTRAINT `strangerid` FOREIGN KEY (`stranger_id`) REFERENCES `chat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of stranger_news
-- ----------------------------
