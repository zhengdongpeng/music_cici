/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-04-23 20:56:40
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
INSERT INTO `click` VALUES ('2', '1', '2', '42', '2017-04-23 15:57:11');
INSERT INTO `click` VALUES ('3', '1', '3', '67', '2017-04-23 15:57:29');

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
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('1', '成都', 'song/赵雷_成都.mp3', '4', '1', '4', null, null, null, '2017-04-19 13:22:57', '2017-04-22 13:23:07');
INSERT INTO `song` VALUES ('2', 'dd', 'song/赵雷_成都.mp3', '4', '1', '4', null, null, null, '2017-04-19 13:22:57', '2017-04-22 13:23:07');
INSERT INTO `song` VALUES ('3', 'dssdsa', 'song/赵雷_成都.mp3', '4', '1', '4', null, null, null, '2017-04-17 13:47:12', '2017-04-11 13:47:19');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of songer
-- ----------------------------
INSERT INTO `songer` VALUES ('4', '赵雷', '男', '民谣歌手', null, '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '0', '民谣');

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
  PRIMARY KEY (`zhujiid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuanji
-- ----------------------------
INSERT INTO `zhuanji` VALUES ('1', '如果你是落花', '如果你是落花', '1', 'abc', '1', '2017-01-02 00:00:00', '2017-04-15 00:00:00', '/images/logo.gif');
INSERT INTO `zhuanji` VALUES ('2', '如果你是落花1', '如果你是落花', '1', 'abc', '1', '2017-01-03 00:00:00', '2017-04-15 00:00:00', '/images/logo.gif');
INSERT INTO `zhuanji` VALUES ('3', '如果你是落花2', '如果你是落花', '1', 'abc', '1', '2017-01-04 00:00:00', '2017-04-15 00:00:00', '/images/logo.gif');
INSERT INTO `zhuanji` VALUES ('4', '如果你是落花3', '如果你是落花', '1', 'abc', '1', '2017-01-05 00:00:00', '2017-04-15 00:00:00', '/images/logo.gif');
INSERT INTO `zhuanji` VALUES ('5', '如果你是落花4', '如果你是落花', '1', 'abc', '1', '2017-01-06 00:00:00', '2017-04-15 00:00:00', '/images/logo.gif');
INSERT INTO `zhuanji` VALUES ('6', '如果你是落花5', '如果你是落花', '1', 'abc', '1', '2017-01-07 00:00:00', '2017-04-15 00:00:00', '/images/logo.gif');
