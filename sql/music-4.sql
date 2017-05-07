/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-05-07 20:56:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `click`
-- ----------------------------
DROP TABLE IF EXISTS `click`;
CREATE TABLE `click` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of click
-- ----------------------------
INSERT INTO `click` VALUES ('1', '1', '1', '20', '2017-04-19 15:56:52');
INSERT INTO `click` VALUES ('2', '3', '5', '42', '2017-04-23 15:57:11');
INSERT INTO `click` VALUES ('3', '7', '6', '67', '2017-04-23 15:57:29');

-- ----------------------------
-- Table structure for `collectsong`
-- ----------------------------
DROP TABLE IF EXISTS `collectsong`;
CREATE TABLE `collectsong` (
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `sctime` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collectsong
-- ----------------------------

-- ----------------------------
-- Table structure for `collectzhuanji`
-- ----------------------------
DROP TABLE IF EXISTS `collectzhuanji`;
CREATE TABLE `collectzhuanji` (
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `sctime` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of collectzhuanji
-- ----------------------------

-- ----------------------------
-- Table structure for `muser`
-- ----------------------------
DROP TABLE IF EXISTS `muser`;
CREATE TABLE `muser` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `jibie` int(11) DEFAULT NULL,
  `head` varchar(100) DEFAULT NULL,
  `zctime` datetime DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muser
-- ----------------------------

-- ----------------------------
-- Table structure for `song`
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) DEFAULT NULL,
  `song` varchar(200) DEFAULT NULL,
  `length` double DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `songerid` int(11) DEFAULT NULL,
  `fxgs` varchar(200) DEFAULT NULL,
  `lyric` varchar(1500) DEFAULT NULL,
  `zjid` int(11) DEFAULT NULL,
  `fbtime` datetime DEFAULT NULL,
  `cjtime` datetime DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL COMMENT '推荐优先级',
  `recommend` int(11) DEFAULT NULL COMMENT '推荐',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('1', '成都', 'song/赵雷_成都.mp3', '4', '1', '4', null, null, null, '2017-04-19 13:22:57', '2017-04-22 13:23:07', null, null, null);
INSERT INTO `song` VALUES ('2', '江南', 'song/赵雷_成都.mp3', '4', '2', '4', null, null, null, '2017-04-19 13:22:57', '2017-04-22 13:23:07', null, null, null);
INSERT INTO `song` VALUES ('3', '北京北京', 'song/赵雷_成都.mp3', '4', '1', '4', null, null, null, '2017-04-17 13:47:12', '2017-04-11 13:47:19', null, null, null);
INSERT INTO `song` VALUES ('4', '去云南', 'song/赵雷_成都.mp3', '4', '2', '4', null, null, null, '2017-04-30 14:40:47', '2017-04-30 14:40:50', null, null, null);
INSERT INTO `song` VALUES ('5', '上海滩', 'song/赵雷_成都.mp3', '4', '4', '1', null, null, null, '2017-05-07 17:49:28', '2017-05-07 17:49:31', null, null, null);
INSERT INTO `song` VALUES ('6', '青花瓷', 'song/赵雷_成都.mp3', '4', '6', '2', null, null, null, '2017-05-07 17:50:17', '2017-05-07 17:50:20', null, null, null);
INSERT INTO `song` VALUES ('7', '嘻唰唰', 'song/赵雷_成都.mp3', '4', '6', '3', null, null, null, '2017-05-07 17:51:03', '2017-05-07 17:51:07', null, null, null);

-- ----------------------------
-- Table structure for `songer`
-- ----------------------------
DROP TABLE IF EXISTS `songer`;
CREATE TABLE `songer` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `jieshao` varchar(300) DEFAULT NULL,
  `head` varchar(100) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of songer
-- ----------------------------
INSERT INTO `songer` VALUES ('1', '周润发', '男', '演员', 'img/zhuanji/caomei.png', '3');
INSERT INTO `songer` VALUES ('2', '周杰伦', '男', '歌手', 'img/zhuanji/caomei.png', '6');
INSERT INTO `songer` VALUES ('3', '大张伟', '男', '歌手', 'img/zhuanji/caomei.png', '6');
INSERT INTO `songer` VALUES ('4', '赵雷', '男', '民谣歌手', 'img/zhuanji/caomei.png', '1');
INSERT INTO `songer` VALUES ('5', '凤凰传奇', '男', '歌手', 'img/zhuanji/caomei.png', '8');
INSERT INTO `songer` VALUES ('6', '筷子兄弟', '男', '网络歌手', 'img/zhuanji/caomei.png', '4');
INSERT INTO `songer` VALUES ('7', '王菲', '女', '天后', 'img/zhuanji/caomei.png', '7');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `name` varchar(30) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `age` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('李四', '男', '20');
INSERT INTO `test` VALUES ('王二', '女', '32');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `father` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '0', '民谣');
INSERT INTO `type` VALUES ('2', null, '古典音乐');
INSERT INTO `type` VALUES ('3', null, '影视金曲');
INSERT INTO `type` VALUES ('4', null, '网络歌曲');
INSERT INTO `type` VALUES ('5', null, '摇滚歌曲');
INSERT INTO `type` VALUES ('6', null, '流行歌曲');
INSERT INTO `type` VALUES ('7', null, '情歌对唱');
INSERT INTO `type` VALUES ('8', null, '草原歌曲');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `head` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `zctime` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `zhuanji`
-- ----------------------------
DROP TABLE IF EXISTS `zhuanji`;
CREATE TABLE `zhuanji` (
  `zhujiid` int(11) NOT NULL AUTO_INCREMENT,
  `zname` varchar(30) DEFAULT NULL,
  `js` varchar(200) DEFAULT NULL,
  `songerid` int(11) DEFAULT NULL,
  `fxgs` varchar(200) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `fbtime` datetime DEFAULT NULL,
  `cjtime` datetime DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `recommend` int(11) DEFAULT NULL COMMENT '推荐',
  `priority` int(11) DEFAULT NULL COMMENT '推荐优先级',
  PRIMARY KEY (`zhujiid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuanji
-- ----------------------------
INSERT INTO `zhuanji` VALUES ('1', '如果你是落花', '如果你是落花', '4', 'abc', '4', '2017-01-02 00:00:00', '2017-04-15 00:00:00', 'img/zhuanji/caomei.png', null, null);
INSERT INTO `zhuanji` VALUES ('2', '如果你是落花1', '如果你是落花', '4', 'abc', '4', '2017-01-03 00:00:00', '2017-04-15 00:00:00', 'img/zhuanji/caomei.png', null, null);
INSERT INTO `zhuanji` VALUES ('3', '如果你是落花2', '如果你是落花', '4', 'abc', '4', '2017-01-04 00:00:00', '2017-04-15 00:00:00', 'img/zhuanji/caomei.png', null, null);
INSERT INTO `zhuanji` VALUES ('4', '如果你是落花3', '如果你是落花', '4', 'abc', '4', '2017-01-05 00:00:00', '2017-04-15 00:00:00', 'img/zhuanji/caomei.png', null, null);
INSERT INTO `zhuanji` VALUES ('5', '如果你是落花4', '如果你是落花', '4', 'abc', '4', '2017-01-06 00:00:00', '2017-04-15 00:00:00', 'img/zhuanji/caomei.png', null, null);
INSERT INTO `zhuanji` VALUES ('6', '如果你是落花5', '如果你是落花', '4', 'abc', '4', '2017-01-07 00:00:00', '2017-04-15 00:00:00', 'img/zhuanji/caomei.png', null, null);
