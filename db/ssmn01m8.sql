-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmn01m8
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmn01m8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmn01m8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmn01m8/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyicuoshi`
--

DROP TABLE IF EXISTS `fangyicuoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyicuoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangxineirong` longtext COMMENT '详细内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='防疫措施';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyicuoshi`
--

LOCK TABLES `fangyicuoshi` WRITE;
/*!40000 ALTER TABLE `fangyicuoshi` DISABLE KEYS */;
INSERT INTO `fangyicuoshi` VALUES (71,'2021-01-07 02:44:55','标题1','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian1.jpg','<h1>详细内容1</h1><p>xxxxx</p><p>xxx</p><p>xxxx</p>','2021-01-07','发布人1'),(72,'2021-01-07 02:44:55','标题2','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian2.jpg','详细内容2','2021-01-07','发布人2'),(73,'2021-01-07 02:44:55','标题3','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian3.jpg','详细内容3','2021-01-07','发布人3'),(74,'2021-01-07 02:44:55','标题4','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian4.jpg','详细内容4','2021-01-07','发布人4'),(75,'2021-01-07 02:44:55','标题5','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian5.jpg','详细内容5','2021-01-07','发布人5'),(76,'2021-01-07 02:44:55','标题6','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian6.jpg','详细内容6','2021-01-07','发布人6');
/*!40000 ALTER TABLE `fangyicuoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609988481292 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2021-01-07 02:44:55','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2021-01-07 02:44:55','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-01-07 02:44:55','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-01-07 02:44:55','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-01-07 02:44:55','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-01-07 02:44:55','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1609988358583,'2021-01-07 02:59:17','11111','<p>11111</p>',0,1609988274383,'1','开放'),(1609988481291,'2021-01-07 03:01:21',NULL,'sssssssssssssssssssssssss',1609988358583,1609988441570,'1',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangma`
--

DROP TABLE IF EXISTS `jiankangma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangma` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaose` varchar(200) DEFAULT NULL COMMENT '角色',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiankangma` varchar(200) NOT NULL COMMENT '健康码',
  `shangbaoshijian` date NOT NULL COMMENT '上报时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='健康码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangma`
--

LOCK TABLES `jiankangma` WRITE;
/*!40000 ALTER TABLE `jiankangma` DISABLE KEYS */;
INSERT INTO `jiankangma` VALUES (51,'2021-01-07 02:44:55','学生','姓名1','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma1.jpg','2021-01-07',1),(52,'2021-01-07 02:44:55','学生','姓名2','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma2.jpg','2021-01-07',2),(53,'2021-01-07 02:44:55','学生','姓名3','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma3.jpg','2021-01-07',3),(54,'2021-01-07 02:44:55','学生','姓名4','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma4.jpg','2021-01-07',4),(55,'2021-01-07 02:44:55','学生','姓名5','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma5.jpg','2021-01-07',5),(56,'2021-01-07 02:44:55','学生','姓名6','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma6.jpg','2021-01-07',6);
/*!40000 ALTER TABLE `jiankangma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609988441571 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (31,'2021-01-07 02:44:55','教师1','123456','教师姓名1','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian1.jpg','高级讲师','13823888881','773890001@qq.com'),(32,'2021-01-07 02:44:55','教师2','123456','教师姓名2','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian2.jpg','高级讲师','13823888882','773890002@qq.com'),(33,'2021-01-07 02:44:55','教师3','123456','教师姓名3','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian3.jpg','高级讲师','13823888883','773890003@qq.com'),(34,'2021-01-07 02:44:55','教师4','123456','教师姓名4','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian4.jpg','高级讲师','13823888884','773890004@qq.com'),(35,'2021-01-07 02:44:55','教师5','123456','教师姓名5','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian5.jpg','高级讲师','13823888885','773890005@qq.com'),(36,'2021-01-07 02:44:55','教师6','123456','教师姓名6','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian6.jpg','高级讲师','13823888886','773890006@qq.com'),(1609988441570,'2021-01-07 03:00:41','1','1','xxx教师','男','http://localhost:8080/ssmn01m8/upload/1609988468156.jpg','讲师','13811111111','123@qq.com');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jinjiqingkuang`
--

DROP TABLE IF EXISTS `jinjiqingkuang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jinjiqingkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaose` varchar(200) DEFAULT NULL COMMENT '角色',
  `shangbaoren` varchar(200) NOT NULL COMMENT '上报人',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xiangxi` longtext COMMENT '详细',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='紧急情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jinjiqingkuang`
--

LOCK TABLES `jinjiqingkuang` WRITE;
/*!40000 ALTER TABLE `jinjiqingkuang` DISABLE KEYS */;
INSERT INTO `jinjiqingkuang` VALUES (81,'2021-01-07 02:44:55','学生','上报人1','标题1','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian1.jpg','详细1',1),(82,'2021-01-07 02:44:55','学生','上报人2','标题2','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian2.jpg','详细2',2),(83,'2021-01-07 02:44:55','学生','上报人3','标题3','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian3.jpg','详细3',3),(84,'2021-01-07 02:44:55','学生','上报人4','标题4','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian4.jpg','详细4',4),(85,'2021-01-07 02:44:55','学生','上报人5','标题5','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian5.jpg','详细5',5),(86,'2021-01-07 02:44:55','学生','上报人6','标题6','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian6.jpg','详细6',6);
/*!40000 ALTER TABLE `jinjiqingkuang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiwenshangbao`
--

DROP TABLE IF EXISTS `tiwenshangbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiwenshangbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaose` varchar(200) DEFAULT NULL COMMENT '角色',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `celiangtupian` varchar(200) DEFAULT NULL COMMENT '测量图片',
  `tiwen` int(11) NOT NULL COMMENT '体温',
  `shangbaoshijian` date NOT NULL COMMENT '上报时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609988310257 DEFAULT CHARSET=utf8 COMMENT='体温上报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiwenshangbao`
--

LOCK TABLES `tiwenshangbao` WRITE;
/*!40000 ALTER TABLE `tiwenshangbao` DISABLE KEYS */;
INSERT INTO `tiwenshangbao` VALUES (41,'2021-01-07 02:44:55','学生','姓名1','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian1.jpg',1,'2021-01-07',1),(42,'2021-01-07 02:44:55','学生','姓名2','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian2.jpg',2,'2021-01-07',2),(43,'2021-01-07 02:44:55','学生','姓名3','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian3.jpg',3,'2021-01-07',3),(44,'2021-01-07 02:44:55','学生','姓名4','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian4.jpg',4,'2021-01-07',4),(45,'2021-01-07 02:44:55','学生','姓名5','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian5.jpg',5,'2021-01-07',5),(46,'2021-01-07 02:44:55','学生','姓名6','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian6.jpg',6,'2021-01-07',6),(1609988310256,'2021-01-07 02:58:29','学生','xxx学生','http://localhost:8080/ssmn01m8/upload/1609988308211.jpg',37,'2021-01-07',1609988274383);
/*!40000 ALTER TABLE `tiwenshangbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','hq8cwid0mfaem414uguzh5tab24rq62u','2021-01-07 02:56:05','2021-01-07 04:01:46'),(2,1609988274383,'1','xuesheng','学生','bt0sxduiajczl8lsd7hxypol38xvvhc2','2021-01-07 02:57:59','2021-01-07 03:58:00'),(3,1609988441570,'1','jiaoshi','教师','kzlr77q0quela4cr0i343j08zpt0lsi1','2021-01-07 03:00:46','2021-01-07 04:00:47');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-07 02:44:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xingdongguiji`
--

DROP TABLE IF EXISTS `xingdongguiji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xingdongguiji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaose` varchar(200) DEFAULT NULL COMMENT '角色',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `guijitu` varchar(200) DEFAULT NULL COMMENT '轨迹图',
  `xiangxiluxian` varchar(200) DEFAULT NULL COMMENT '详细路线',
  `shijianduan` varchar(200) NOT NULL COMMENT '时间段',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='行动轨迹';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xingdongguiji`
--

LOCK TABLES `xingdongguiji` WRITE;
/*!40000 ALTER TABLE `xingdongguiji` DISABLE KEYS */;
INSERT INTO `xingdongguiji` VALUES (61,'2021-01-07 02:44:55','学生','姓名1','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu1.jpg','详细路线1','时间段1',1),(62,'2021-01-07 02:44:55','学生','姓名2','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu2.jpg','详细路线2','时间段2',2),(63,'2021-01-07 02:44:55','学生','姓名3','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu3.jpg','详细路线3','时间段3',3),(64,'2021-01-07 02:44:55','学生','姓名4','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu4.jpg','详细路线4','时间段4',4),(65,'2021-01-07 02:44:55','学生','姓名5','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu5.jpg','详细路线5','时间段5',5),(66,'2021-01-07 02:44:55','学生','姓名6','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu6.jpg','详细路线6','时间段6',6);
/*!40000 ALTER TABLE `xingdongguiji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609988274384 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-01-07 02:44:55','学生1','123456','学生姓名1','男','大一','学院1','班级1','13823888881','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian1.jpg'),(12,'2021-01-07 02:44:55','学生2','123456','学生姓名2','男','大一','学院2','班级2','13823888882','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian2.jpg'),(13,'2021-01-07 02:44:55','学生3','123456','学生姓名3','男','大一','学院3','班级3','13823888883','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian3.jpg'),(14,'2021-01-07 02:44:55','学生4','123456','学生姓名4','男','大一','学院4','班级4','13823888884','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian4.jpg'),(15,'2021-01-07 02:44:55','学生5','123456','学生姓名5','男','大一','学院5','班级5','13823888885','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian5.jpg'),(16,'2021-01-07 02:44:55','学生6','123456','学生姓名6','男','大一','学院6','班级6','13823888886','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian6.jpg'),(1609988274383,'2021-01-07 02:57:54','1','1','xxx学生','男','大一','学院1','202','13811111111','http://localhost:8080/ssmn01m8/upload/1609988377850.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueyuanxinxi`
--

DROP TABLE IF EXISTS `xueyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学院信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueyuanxinxi`
--

LOCK TABLES `xueyuanxinxi` WRITE;
/*!40000 ALTER TABLE `xueyuanxinxi` DISABLE KEYS */;
INSERT INTO `xueyuanxinxi` VALUES (21,'2021-01-07 02:44:55','学院1'),(22,'2021-01-07 02:44:55','学院2'),(23,'2021-01-07 02:44:55','学院3'),(24,'2021-01-07 02:44:55','学院4'),(25,'2021-01-07 02:44:55','学院5'),(26,'2021-01-07 02:44:55','学院6');
/*!40000 ALTER TABLE `xueyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-07 15:44:12
