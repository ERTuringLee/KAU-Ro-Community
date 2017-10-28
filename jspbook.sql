-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: jspbook
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `recommand` int(11) DEFAULT NULL,
  `nonRecommand` int(11) DEFAULT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (14,'테스트용','테스트',20151207,1,0,0,'ehdspt','board/14-12219574_200467860287335_9082062479803436757_n.jpg','asdf'),(15,'ㅁㄴㅇㄴㅁㅇ','ㅁㄴㅇㅁㄴㅇ',20151207,33,31,0,'ehdspt','board/15-12227010_200467770287344_3680238078761791207_n1.jpg','asdadsds'),(16,'안녕하세요','ㅁㄴㅇㄴㅁㅇㄴㅁ',20151207,1,0,0,'ehdspt','board/16-12227010_200467770287344_3680238078761791207_n1.jpg','hamster1234'),(17,'asdsaddsa','asdasdas',20151207,1,0,0,'ehdspt','board/17-12227010_200467770287344_3680238078761791207_n1.jpg','hamster1234'),(18,'나는 행복합니다','ㅁㄴㅇㄴㅁㅇㅁㄴㅇ',20151207,1,0,0,'ehdspt','board/18-12219574_200467860287335_9082062479803436757_n.jpg','hamster1234'),(19,'나는 행복합니다','ㅁㄴㅇㅁㄴㅇㅁㄴㅇ',20151207,2,0,0,'ehdspt','board/19-12227010_200467770287344_3680238078761791207_n1.jpg','hamster1234');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `developer` (
  `name` varchar(50) DEFAULT NULL,
  `tell` varchar(50) DEFAULT NULL,
  `information` varchar(1000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` VALUES ('이재문','010-2674-5296','정보통신공학전공 11학번','images/developer1.png'),('임현수','010-7515-7935','정보통신공학전공 11학번','images/developer2.png');
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homestay`
--

DROP TABLE IF EXISTS `homestay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homestay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homestay`
--

LOCK TABLES `homestay` WRITE;
/*!40000 ALTER TABLE `homestay` DISABLE KEYS */;
INSERT INTO `homestay` VALUES (1,'하숙생 모집','집주인','월 15만원/ 숙식제공',20151206,15,'homestay/1-12227010_200467770287344_3680238078761791207_n.jpg','hamster1234'),(3,'행신동 원룸전세 내놓습니다(테스트)','ehdspt','테스트',20151207,3,'homestay/2-12227681_200467650287356_2211632099669423679_n.jpg','hamster1234');
/*!40000 ALTER TABLE `homestay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `recommand` int(11) DEFAULT NULL,
  `nonRecommand` int(11) DEFAULT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (2,'엄아딸초','엄마,아빠,딸,초딩',20151206,16,0,0,'유머','image/2-12249893_1272380769445369_8545303462685202318_n.jpg','hamster1234'),(3,'dkdkdk','adsdsaads',20151207,19,0,0,'adssdsa','image/3-12239956_176991559317701_3941314858279091701_n.jpg','null'),(4,'하하하','ㅁㄴㅇㅁㄴㅇ',20151207,1,0,0,'하하하','image/4-12227010_200467770287344_3680238078761791207_n.jpg','gkgkgk');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `studentNumber` int(11) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `introduce` varchar(5000) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `nonpub` int(11) DEFAULT NULL,
  `love` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('asdf','asdfasdf','이미미','dazeze','임현수',2011122240,'항공전자정보공학부','남자','df',NULL,0,3),('ehdrbs0318','112233','행복전도사','q','강동균',2011,'항공전자정보공학부','남자','식당 시간표 & 배달음식',NULL,0,4),('ehdspt','hamster1234','Erwin','ehdspt@naver.com','이재문',2011122215,'항공전자정보공학부','남자','hams','member/ehdspt-12227681_200467650287356_2211632099669423679_n.jpg',0,56),('rlarlqja','123123','못생긴형','kkb910711@naver.com','김기범',2011122030,'항공전자정보공학부','남자','안녕',NULL,0,0),('sdfg','12341234','임','a@a.com','테스트',2011122243,'항공전자정보공학부','남자','asdf',NULL,1,0);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `image1` varchar(200) DEFAULT NULL,
  `image2` varchar(200) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'교직원식당 (박물관) 12월 1주 주간메뉴표','menu/교직원식당12월1주메뉴.jpg',NULL,20151201,0),(2,'학생회관 12월 1주 주간메뉴표','menu/학생회관12월1주주간메뉴표1.jpg','menu/학생회관주간메뉴표12월1주2.jpg',20151201,1),(3,'교직원식당 (박물관) 12월 2주 주간메뉴표','menu/교직원식당12월2주메뉴.jpg',NULL,20151204,2),(4,'학생회관 12월 2주 주간메뉴표','menu/학생회관12월2주주간메뉴표1.jpg','menu/학생회관주간메뉴표12월2주2.jpg',20151204,4);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'KAU路 개설을 축하합니다.','KAU路가 개설되었습니다. 축하드리고 여러분의 많은 이용부탁드립니다. 그럼 감사합니다. 수고하십시오!',20151205,8);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (4,'나는 행복합니다.','나는 행복합니다.','한화라서 행복합니다.',20151206,15,'qna/4-12239956_176991559317701_3941314858279091701_n.jpg','hamster1234'),(9,'나는 ','asdf','나는',20151207,3,'qna/9-12241320_1529417577379382_1225289931217590533_n.jpg','sksms'),(10,'나는 ','asdf','나는',20151207,1,'qna/9-12241320_1529417577379382_1225289931217590533_n.jpg','sksms'),(11,'나는 ','asdf','나는',20151207,1,'qna/9-12241320_1529417577379382_1225289931217590533_n.jpg','sksms');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secondhand`
--

DROP TABLE IF EXISTS `secondhand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secondhand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secondhand`
--

LOCK TABLES `secondhand` WRITE;
/*!40000 ALTER TABLE `secondhand` DISABLE KEYS */;
INSERT INTO `secondhand` VALUES (2,'중고아이폰팝니다.','앱등이','아이폰팝니다',20151206,8,'secondhand/2-12219574_200467860287335_9082062479803436757_n.jpg','hamster1234'),(3,'hamster','hamster','adsdsa',20151207,11,'secondhand/3-12227010_200467770287344_3680238078761791207_n1.jpg','null');
/*!40000 ALTER TABLE `secondhand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_visit`
--

DROP TABLE IF EXISTS `total_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `total_visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_visit`
--

LOCK TABLES `total_visit` WRITE;
/*!40000 ALTER TABLE `total_visit` DISABLE KEYS */;
INSERT INTO `total_visit` VALUES (1,288);
/*!40000 ALTER TABLE `total_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twit`
--

DROP TABLE IF EXISTS `twit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twit` (
  `fr` varchar(200) DEFAULT NULL,
  `t` varchar(200) DEFAULT NULL,
  `twit` varchar(20000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twit`
--

LOCK TABLES `twit` WRITE;
/*!40000 ALTER TABLE `twit` DISABLE KEYS */;
INSERT INTO `twit` VALUES ('ehdspting','ehdspting','ehdspting'),('ehdspting','ehdspting','테스트'),('ehdspting','null','테스트'),('동넷','null','테스트'),('동넷','null','테스트'),('동넷','ehdspt','테스트'),('ehdspting','ehdspt','테스트테스트'),('나다나','ehdrbs0318','야야야'),('나다나','ehdspt','야야야'),('현수','ehdrbs0318','야임마'),('나입니다','ehdspt','테스트'),('나요나','ehdspt','나요나');
/*!40000 ALTER TABLE `twit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-10 10:10:43
