-- MySQL dump 10.13  Distrib 5.6.30, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	5.6.30-0ubuntu0.15.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `click`
--

DROP TABLE IF EXISTS `click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `click` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `click`
--

LOCK TABLES `click` WRITE;
/*!40000 ALTER TABLE `click` DISABLE KEYS */;
/*!40000 ALTER TABLE `click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectsong`
--

DROP TABLE IF EXISTS `collectsong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectsong` (
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `sctime` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectsong`
--

LOCK TABLES `collectsong` WRITE;
/*!40000 ALTER TABLE `collectsong` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectsong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectzhuanji`
--

DROP TABLE IF EXISTS `collectzhuanji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectzhuanji` (
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `sctime` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectzhuanji`
--

LOCK TABLES `collectzhuanji` WRITE;
/*!40000 ALTER TABLE `collectzhuanji` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectzhuanji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muser`
--

DROP TABLE IF EXISTS `muser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muser` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `jibie` int(11) DEFAULT NULL,
  `head` varchar(100) DEFAULT NULL,
  `zctime` datetime DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muser`
--

LOCK TABLES `muser` WRITE;
/*!40000 ALTER TABLE `muser` DISABLE KEYS */;
/*!40000 ALTER TABLE `muser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songer`
--

DROP TABLE IF EXISTS `songer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songer` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `jieshao` varchar(300) DEFAULT NULL,
  `head` varchar(100) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songer`
--

LOCK TABLES `songer` WRITE;
/*!40000 ALTER TABLE `songer` DISABLE KEYS */;
/*!40000 ALTER TABLE `songer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `name` varchar(30) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `age` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES ('李四','男',20),('王二','女',32);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `father` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanji`
--

DROP TABLE IF EXISTS `zhuanji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanji`
--

LOCK TABLES `zhuanji` WRITE;
/*!40000 ALTER TABLE `zhuanji` DISABLE KEYS */;
INSERT INTO `zhuanji` VALUES (1,'如果你是落花','如果你是落花',1,'abc',1,'2017-01-02 00:00:00','2017-04-15 00:00:00','/images/logo.gif'),(2,'如果你是落花1','如果你是落花',1,'abc',1,'2017-01-03 00:00:00','2017-04-15 00:00:00','/images/logo.gif'),(3,'如果你是落花2','如果你是落花',1,'abc',1,'2017-01-04 00:00:00','2017-04-15 00:00:00','/images/logo.gif'),(4,'如果你是落花3','如果你是落花',1,'abc',1,'2017-01-05 00:00:00','2017-04-15 00:00:00','/images/logo.gif'),(5,'如果你是落花4','如果你是落花',1,'abc',1,'2017-01-06 00:00:00','2017-04-15 00:00:00','/images/logo.gif'),(6,'如果你是落花5','如果你是落花',1,'abc',1,'2017-01-07 00:00:00','2017-04-15 00:00:00','/images/logo.gif');
/*!40000 ALTER TABLE `zhuanji` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-19 21:42:16
