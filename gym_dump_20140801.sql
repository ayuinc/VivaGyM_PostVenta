CREATE DATABASE  IF NOT EXISTS `gym` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gym`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.12.04.1

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
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `id_evento` int(10) NOT NULL AUTO_INCREMENT,
  `dia_evento` varchar(2) NOT NULL,
  `mes_evento` varchar(2) NOT NULL,
  `anio_evento` varchar(4) NOT NULL,
  `color_evento` varchar(10) NOT NULL,
  `textcolor_evento` varchar(10) NOT NULL,
  `url_evento` varchar(100) NOT NULL,
  `cant_evento` int(2) NOT NULL,
  `nom_evento` varchar(3) NOT NULL,
  PRIMARY KEY (`id_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'01','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-01-2014',0,'mie'),(2,'02','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-01-2014',0,'jue'),(3,'03','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-01-2014',0,'vie'),(4,'04','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-01-2014',0,'sab'),(5,'05','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-01-2014',0,'dom'),(6,'06','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-01-2014',0,'lun'),(7,'07','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-01-2014',0,'mar'),(8,'08','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-01-2014',0,'mie'),(9,'09','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-01-2014',0,'jue'),(10,'10','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-01-2014',0,'vie'),(11,'11','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-01-2014',0,'sab'),(12,'12','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-01-2014',0,'dom'),(13,'13','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-01-2014',0,'lun'),(14,'14','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-01-2014',0,'mar'),(15,'15','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-01-2014',0,'mie'),(16,'16','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-01-2014',0,'jue'),(17,'17','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-01-2014',0,'vie'),(18,'18','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-01-2014',0,'sab'),(19,'19','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-01-2014',0,'dom'),(20,'20','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-01-2014',0,'lun'),(21,'21','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-01-2014',0,'mar'),(22,'22','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-01-2014',0,'mie'),(23,'23','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-01-2014',0,'jue'),(24,'24','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-01-2014',0,'vie'),(25,'25','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-01-2014',0,'sab'),(26,'26','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-01-2014',0,'dom'),(27,'27','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-01-2014',0,'lun'),(28,'28','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-01-2014',0,'mar'),(29,'29','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/29-01-2014',0,'mie'),(30,'30','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/30-01-2014',0,'jue'),(31,'31','01','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/31-01-2014',0,'vie'),(32,'01','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-02-2014',0,'sab'),(33,'02','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-02-2014',0,'dom'),(34,'03','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-02-2014',0,'lun'),(35,'04','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-02-2014',0,'mar'),(36,'05','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-02-2014',0,'mie'),(37,'06','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-02-2014',0,'jue'),(38,'07','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-02-2014',0,'vie'),(39,'08','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-02-2014',0,'sab'),(40,'09','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-02-2014',0,'dom'),(41,'10','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-02-2014',0,'lun'),(42,'11','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-02-2014',0,'mar'),(43,'12','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-02-2014',0,'mie'),(44,'13','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-02-2014',0,'jue'),(45,'14','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-02-2014',0,'vie'),(46,'15','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-02-2014',0,'sab'),(47,'16','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-02-2014',0,'dom'),(48,'17','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-02-2014',0,'lun'),(49,'18','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-02-2014',0,'mar'),(50,'19','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-02-2014',0,'mie'),(51,'20','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-02-2014',0,'jue'),(52,'21','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-02-2014',0,'vie'),(53,'22','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-02-2014',0,'sab'),(54,'23','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-02-2014',0,'dom'),(55,'24','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-02-2014',0,'lun'),(56,'25','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-02-2014',0,'mar'),(57,'26','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-02-2014',0,'mie'),(58,'27','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-02-2014',0,'jue'),(59,'28','02','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-02-2014',0,'vie'),(63,'01','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-03-2014',0,'sab'),(64,'02','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-03-2014',0,'dom'),(65,'03','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-03-2014',0,'lun'),(66,'04','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-03-2014',0,'mar'),(67,'05','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-03-2014',0,'mie'),(68,'06','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-03-2014',0,'jue'),(69,'07','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-03-2014',0,'vie'),(70,'08','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-03-2014',0,'sab'),(71,'09','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-03-2014',0,'dom'),(72,'10','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-03-2014',0,'lun'),(73,'11','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-03-2014',0,'mar'),(74,'12','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-03-2014',0,'mie'),(75,'13','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-03-2014',0,'jue'),(76,'14','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-03-2014',0,'vie'),(77,'15','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-03-2014',0,'sab'),(78,'16','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-03-2014',0,'dom'),(79,'17','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-03-2014',0,'lun'),(80,'18','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-03-2014',0,'mar'),(81,'19','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-03-2014',0,'mie'),(82,'20','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-03-2014',0,'jue'),(83,'21','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-03-2014',0,'vie'),(84,'22','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-03-2014',0,'sab'),(85,'23','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-03-2014',0,'dom'),(86,'24','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-03-2014',0,'lun'),(87,'25','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-03-2014',0,'mar'),(88,'26','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-03-2014',0,'mie'),(89,'27','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-03-2014',0,'jue'),(90,'28','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-03-2014',0,'vie'),(91,'29','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/29-03-2014',0,'sab'),(92,'30','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/30-03-2014',0,'dom'),(93,'31','03','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/31-03-2014',0,'lun'),(94,'01','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-04-2014',0,'mar'),(95,'02','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-04-2014',0,'mie'),(96,'03','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-04-2014',0,'jue'),(97,'04','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-04-2014',0,'vie'),(98,'05','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-04-2014',0,'sab'),(99,'06','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-04-2014',0,'dom'),(100,'07','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-04-2014',0,'lun'),(101,'08','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-04-2014',0,'mar'),(102,'09','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-04-2014',0,'mie'),(103,'10','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-04-2014',0,'jue'),(104,'11','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-04-2014',0,'vie'),(105,'12','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-04-2014',0,'sab'),(106,'13','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-04-2014',0,'dom'),(107,'14','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-04-2014',0,'lun'),(108,'15','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-04-2014',0,'mar'),(109,'16','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-04-2014',0,'mie'),(110,'17','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-04-2014',0,'jue'),(111,'18','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-04-2014',0,'vie'),(112,'19','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-04-2014',0,'sab'),(113,'20','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-04-2014',0,'dom'),(114,'21','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-04-2014',0,'lun'),(115,'22','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-04-2014',0,'mar'),(116,'23','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-04-2014',0,'mie'),(117,'24','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-04-2014',0,'jue'),(118,'25','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-04-2014',0,'vie'),(119,'26','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-04-2014',0,'sab'),(120,'27','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-04-2014',0,'dom'),(121,'28','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-04-2014',0,'lun'),(122,'29','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/29-04-2014',0,'mar'),(123,'30','04','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/30-04-2014',0,'mie'),(125,'01','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-05-2014',0,'jue'),(126,'02','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-05-2014',0,'vie'),(127,'03','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-05-2014',0,'sab'),(128,'04','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-05-2014',0,'dom'),(129,'05','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-05-2014',0,'lun'),(130,'06','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-05-2014',0,'mar'),(131,'07','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-05-2014',0,'mie'),(132,'08','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-05-2014',0,'jue'),(133,'09','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-05-2014',0,'vie'),(134,'10','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-05-2014',0,'sab'),(135,'11','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-05-2014',0,'dom'),(136,'12','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-05-2014',0,'lun'),(137,'13','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-05-2014',0,'mar'),(138,'14','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-05-2014',1,'mie'),(139,'15','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-05-2014',0,'jue'),(140,'16','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-05-2014',0,'vie'),(141,'17','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-05-2014',0,'sab'),(142,'18','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-05-2014',0,'dom'),(143,'19','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-05-2014',0,'lun'),(144,'20','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-05-2014',0,'mar'),(145,'21','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-05-2014',0,'mie'),(146,'22','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-05-2014',0,'jue'),(147,'23','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-05-2014',0,'vie'),(148,'24','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-05-2014',0,'sab'),(149,'25','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-05-2014',0,'dom'),(150,'26','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-05-2014',0,'lun'),(151,'27','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-05-2014',0,'mar'),(152,'28','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-05-2014',0,'mie'),(153,'29','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/29-05-2014',0,'jue'),(154,'30','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/30-05-2014',0,'vie'),(155,'31','05','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/31-05-2014',0,'sab'),(156,'01','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-06-2014',0,'dom'),(157,'02','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-06-2014',0,'lun'),(158,'03','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-06-2014',0,'mar'),(159,'04','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-06-2014',0,'mie'),(160,'05','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-06-2014',0,'jue'),(161,'06','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-06-2014',0,'vie'),(162,'07','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-06-2014',0,'sab'),(163,'08','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-06-2014',0,'dom'),(164,'09','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-06-2014',0,'lun'),(165,'10','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-06-2014',0,'mar'),(166,'11','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-06-2014',0,'mie'),(167,'12','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-06-2014',0,'jue'),(168,'13','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-06-2014',0,'vie'),(169,'14','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-06-2014',0,'sab'),(170,'15','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-06-2014',0,'dom'),(171,'16','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-06-2014',0,'lun'),(172,'17','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-06-2014',0,'mar'),(173,'18','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-06-2014',0,'mie'),(174,'19','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-06-2014',0,'jue'),(175,'20','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-06-2014',1,'vie'),(176,'21','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-06-2014',0,'sab'),(177,'22','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-06-2014',0,'dom'),(178,'23','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-06-2014',0,'lun'),(179,'24','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-06-2014',0,'mar'),(180,'25','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-06-2014',0,'mie'),(181,'26','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-06-2014',2,'jue'),(182,'27','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-06-2014',1,'vie'),(183,'28','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-06-2014',0,'sab'),(184,'29','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/29-06-2014',0,'dom'),(185,'30','06','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/30-06-2014',1,'lun'),(187,'01','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-07-2014',3,'mar'),(188,'02','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-07-2014',0,'mie'),(189,'03','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-07-2014',15,'jue'),(190,'04','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-07-2014',1,'vie'),(191,'05','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-07-2014',0,'sab'),(192,'06','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-07-2014',0,'dom'),(193,'07','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-07-2014',2,'lun'),(194,'08','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-07-2014',6,'mar'),(195,'09','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-07-2014',0,'mie'),(196,'10','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-07-2014',15,'jue'),(197,'11','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-07-2014',10,'vie'),(198,'12','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-07-2014',0,'sab'),(199,'13','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-07-2014',0,'dom'),(200,'14','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-07-2014',0,'lun'),(201,'15','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-07-2014',4,'mar'),(202,'16','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-07-2014',0,'mie'),(203,'17','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-07-2014',6,'jue'),(204,'18','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-07-2014',15,'vie'),(205,'19','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-07-2014',0,'sab'),(206,'20','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-07-2014',0,'dom'),(207,'21','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-07-2014',1,'lun'),(208,'22','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-07-2014',2,'mar'),(209,'23','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-07-2014',0,'mie'),(210,'24','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-07-2014',7,'jue'),(211,'25','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-07-2014',5,'vie'),(212,'26','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-07-2014',0,'sab'),(213,'27','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-07-2014',0,'dom'),(214,'28','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-07-2014',0,'lun'),(215,'29','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/29-07-2014',5,'mar'),(216,'30','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/30-07-2014',0,'mie'),(217,'31','07','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/31-07-2014',20,'jue'),(218,'01','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-08-2014',11,'vie'),(219,'02','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-08-2014',0,'sab'),(220,'03','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-08-2014',0,'dom'),(221,'04','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-08-2014',0,'lun'),(222,'05','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-08-2014',8,'mar'),(223,'06','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-08-2014',0,'mie'),(224,'07','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-08-2014',3,'jue'),(225,'08','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-08-2014',4,'vie'),(226,'09','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-08-2014',0,'sab'),(227,'10','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-08-2014',0,'dom'),(228,'11','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-08-2014',0,'lun'),(229,'12','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-08-2014',0,'mar'),(230,'13','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-08-2014',0,'mie'),(231,'14','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-08-2014',0,'jue'),(232,'15','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-08-2014',0,'vie'),(233,'16','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-08-2014',0,'sab'),(234,'17','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-08-2014',0,'dom'),(235,'18','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-08-2014',0,'lun'),(236,'19','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-08-2014',0,'mar'),(237,'20','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-08-2014',0,'mie'),(238,'21','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-08-2014',0,'jue'),(239,'22','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-08-2014',0,'vie'),(240,'23','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-08-2014',0,'sab'),(241,'24','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-08-2014',0,'dom'),(242,'25','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-08-2014',0,'lun'),(243,'26','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-08-2014',0,'mar'),(244,'27','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-08-2014',0,'mie'),(245,'28','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-08-2014',0,'jue'),(246,'29','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/29-08-2014',0,'vie'),(247,'30','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/30-08-2014',0,'sab'),(248,'31','08','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/31-08-2014',0,'dom'),(249,'01','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-09-2014',0,'lun'),(250,'02','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-09-2014',1,'mar'),(251,'03','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-09-2014',0,'mie'),(252,'04','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-09-2014',0,'jue'),(253,'05','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-09-2014',0,'vie'),(254,'06','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-09-2014',0,'sab'),(255,'07','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-09-2014',0,'dom'),(256,'08','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-09-2014',0,'lun'),(257,'09','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-09-2014',0,'mar'),(258,'10','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-09-2014',0,'mie'),(259,'11','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-09-2014',0,'jue'),(260,'12','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-09-2014',0,'vie'),(261,'13','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-09-2014',0,'sab'),(262,'14','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-09-2014',0,'dom'),(263,'15','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-09-2014',0,'lun'),(264,'16','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-09-2014',0,'mar'),(265,'17','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-09-2014',0,'mie'),(266,'18','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-09-2014',0,'jue'),(267,'19','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-09-2014',0,'vie'),(268,'20','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-09-2014',0,'sab'),(269,'21','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-09-2014',0,'dom'),(270,'22','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-09-2014',0,'lun'),(271,'23','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-09-2014',0,'mar'),(272,'24','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-09-2014',0,'mie'),(273,'25','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-09-2014',0,'jue'),(274,'26','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-09-2014',0,'vie'),(275,'27','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-09-2014',0,'sab'),(276,'28','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-09-2014',0,'dom'),(277,'29','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/29-09-2014',0,'lun'),(278,'30','09','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/30-09-2014',0,'mar'),(280,'01','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-10-2014',0,'mie'),(281,'02','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-10-2014',0,'jue'),(282,'03','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-10-2014',0,'vie'),(283,'04','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-10-2014',0,'sab'),(284,'05','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-10-2014',0,'dom'),(285,'06','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-10-2014',0,'lun'),(286,'07','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-10-2014',0,'mar'),(287,'08','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-10-2014',0,'mie'),(288,'09','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-10-2014',0,'jue'),(289,'10','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-10-2014',0,'vie'),(290,'11','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-10-2014',0,'sab'),(291,'12','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-10-2014',0,'dom'),(292,'13','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-10-2014',0,'lun'),(293,'14','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-10-2014',0,'mar'),(294,'15','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-10-2014',0,'mie'),(295,'16','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-10-2014',0,'jue'),(296,'17','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-10-2014',0,'vie'),(297,'18','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-10-2014',0,'sab'),(298,'19','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-10-2014',0,'dom'),(299,'20','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-10-2014',0,'lun'),(300,'21','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-10-2014',0,'mar'),(301,'22','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-10-2014',0,'mie'),(302,'23','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-10-2014',0,'jue'),(303,'24','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-10-2014',0,'vie'),(304,'25','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-10-2014',0,'sab'),(305,'26','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-10-2014',0,'dom'),(306,'27','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-10-2014',0,'lun'),(307,'28','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-10-2014',0,'mar'),(308,'29','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/29-10-2014',0,'mie'),(309,'30','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/30-10-2014',0,'jue'),(310,'31','10','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/31-10-2014',0,'vie'),(311,'01','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-11-2014',0,'sab'),(312,'02','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-11-2014',0,'dom'),(313,'03','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-11-2014',0,'lun'),(314,'04','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-11-2014',0,'mar'),(315,'05','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-11-2014',0,'mie'),(316,'06','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-11-2014',0,'jue'),(317,'07','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-11-2014',0,'vie'),(318,'08','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-11-2014',0,'sab'),(319,'09','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-11-2014',0,'dom'),(320,'10','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-11-2014',0,'lun'),(321,'11','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-11-2014',0,'mar'),(322,'12','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-11-2014',0,'mie'),(323,'13','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-11-2014',0,'jue'),(324,'14','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-11-2014',0,'vie'),(325,'15','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-11-2014',0,'sab'),(326,'16','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-11-2014',0,'dom'),(327,'17','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-11-2014',0,'lun'),(328,'18','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-11-2014',0,'mar'),(329,'19','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-11-2014',0,'mie'),(330,'20','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-11-2014',0,'jue'),(331,'21','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-11-2014',0,'vie'),(332,'22','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-11-2014',0,'sab'),(333,'23','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-11-2014',0,'dom'),(334,'24','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-11-2014',0,'lun'),(335,'25','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-11-2014',0,'mar'),(336,'26','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-11-2014',0,'mie'),(337,'27','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-11-2014',0,'jue'),(338,'28','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-11-2014',0,'vie'),(339,'29','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/29-11-2014',0,'sab'),(340,'30','11','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/30-11-2014',0,'dom'),(342,'01','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/01-12-2014',0,'lun'),(343,'02','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/02-12-2014',0,'mar'),(344,'03','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/03-12-2014',0,'mie'),(345,'04','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/04-12-2014',0,'jue'),(346,'05','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/05-12-2014',0,'vie'),(347,'06','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/06-12-2014',0,'sab'),(348,'07','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/07-12-2014',0,'dom'),(349,'08','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/08-12-2014',0,'lun'),(350,'09','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/09-12-2014',0,'mar'),(351,'10','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/10-12-2014',0,'mie'),(352,'11','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/11-12-2014',0,'jue'),(353,'12','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/12-12-2014',0,'vie'),(354,'13','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/13-12-2014',0,'sab'),(355,'14','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/14-12-2014',0,'dom'),(356,'15','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/15-12-2014',0,'lun'),(357,'16','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/16-12-2014',0,'mar'),(358,'17','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/17-12-2014',0,'mie'),(359,'18','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/18-12-2014',0,'jue'),(360,'19','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/19-12-2014',0,'vie'),(361,'20','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/20-12-2014',0,'sab'),(362,'21','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/21-12-2014',0,'dom'),(363,'22','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/22-12-2014',0,'lun'),(364,'23','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/23-12-2014',0,'mar'),(365,'24','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/24-12-2014',0,'mie'),(366,'25','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/25-12-2014',0,'jue'),(367,'26','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/26-12-2014',0,'vie'),(368,'27','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/27-12-2014',0,'sab'),(369,'28','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/28-12-2014',0,'dom'),(370,'29','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/29-12-2014',0,'lun'),(371,'30','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/30-12-2014',0,'mar'),(372,'31','12','2014','#78BE20','black','$site_url/main/user_request_book/$id_sol_garantia/31-12-2014',0,'mie');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_accessories`
--

DROP TABLE IF EXISTS `exp_accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_accessories` (
  `accessory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(75) NOT NULL DEFAULT '',
  `member_groups` varchar(255) NOT NULL DEFAULT 'all',
  `controllers` text,
  `accessory_version` varchar(12) NOT NULL,
  PRIMARY KEY (`accessory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_accessories`
--

LOCK TABLES `exp_accessories` WRITE;
/*!40000 ALTER TABLE `exp_accessories` DISABLE KEYS */;
INSERT INTO `exp_accessories` VALUES (1,'Expressionengine_info_acc','1|5','addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities','1.0'),(2,'Freeform_acc','1|5|6','addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities','4.1.7'),(5,'Nsm_morphine_theme_acc','1|5|6|7|8|9|10','content|tools_data|addons_extensions|tools_utilities|content_publish|tools_communicate|addons_plugins|design|addons_accessories|addons_fieldtypes|admin_content|addons_modules|tools|homepage|content_edit|members|tools_logs|admin_system|content_files_modal|content_files|myaccount|addons','2.0.4');
/*!40000 ALTER TABLE `exp_accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_actions`
--

DROP TABLE IF EXISTS `exp_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_actions` (
  `action_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `csrf_exempt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_actions`
--

LOCK TABLES `exp_actions` WRITE;
/*!40000 ALTER TABLE `exp_actions` DISABLE KEYS */;
INSERT INTO `exp_actions` VALUES (1,'Comment','insert_new_comment',0),(2,'Comment_mcp','delete_comment_notification',0),(3,'Comment','comment_subscribe',0),(4,'Comment','edit_comment',0),(5,'Email','send_email',0),(6,'Mailinglist','insert_new_email',0),(7,'Mailinglist','authorize_email',0),(8,'Mailinglist','unsubscribe',0),(9,'Metaweblog_api','incoming',0),(10,'Search','do_search',1),(11,'Simple_commerce','incoming_ipn',1),(12,'Channel','submit_entry',0),(13,'Channel','filemanager_endpoint',0),(14,'Channel','smiley_pop',0),(15,'Channel','combo_loader',0),(16,'Member','registration_form',0),(17,'Member','register_member',0),(18,'Member','activate_member',0),(19,'Member','member_login',0),(20,'Member','member_logout',0),(21,'Member','send_reset_token',0),(22,'Member','process_reset_password',0),(23,'Member','send_member_email',0),(24,'Member','update_un_pw',0),(25,'Member','member_search',0),(26,'Member','member_delete',0),(27,'Rte','get_js',0),(28,'User','group_edit',0),(29,'User','edit_profile',0),(30,'User','reg',0),(31,'User','reassign_jump',0),(32,'User','retrieve_password',0),(33,'User','do_logout',0),(34,'User','do_search',0),(35,'User','delete_account',0),(36,'User','activate_member',0),(37,'User','retrieve_username',0),(38,'User','create_key',0),(39,'Calendar','permissions_json',0),(40,'Channel_images','channel_images_router',1),(41,'Channel_images','locked_image_url',0),(42,'Channel_images','simple_image_url',0),(44,'Freeform','save_form',0),(45,'Automatee','cron',0),(46,'Automatee','test_cron',0),(47,'Automatee','image_bug',0);
/*!40000 ALTER TABLE `exp_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_automatee_crons`
--

DROP TABLE IF EXISTS `exp_automatee_crons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_automatee_crons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT '',
  `command` text NOT NULL,
  `cron_plugin` varchar(100) NOT NULL DEFAULT '',
  `cron_module` varchar(100) NOT NULL DEFAULT '',
  `cron_method` varchar(100) NOT NULL DEFAULT '',
  `ran_at` int(11) NOT NULL DEFAULT '0',
  `total_runs` int(10) NOT NULL DEFAULT '0',
  `last_run_status` int(1) NOT NULL DEFAULT '0',
  `last_modified` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_automatee_crons`
--

LOCK TABLES `exp_automatee_crons` WRITE;
/*!40000 ALTER TABLE `exp_automatee_crons` DISABLE KEYS */;
INSERT INTO `exp_automatee_crons` VALUES (1,'Example Module Cron','',0,'0,30 * * * *','module','','','automatee','example',1405971777,0,0,'2014-07-21 14:42:57','2014-07-21 14:42:57'),(2,'Example CLI and Custom Schedule','',0,'3 3,21-23,10 * * *','cli','/path/to/shell/script.sh','','','',1405971777,0,0,'2014-07-21 14:42:57','2014-07-21 14:42:57'),(3,'Example Get URL','',0,'0,30 * * * *','url','http://google.com','','','',1405971777,0,0,'2014-07-21 14:42:57','2014-07-21 14:42:57'),(4,'Envio correo una dia antes','la documentacion apesta',1,'0 0 * * *','url','http://162.243.222.54/main/enviar_cron','','','',1406869201,41,1,'2014-07-24 10:21:50','2014-07-22 10:13:14');
/*!40000 ALTER TABLE `exp_automatee_crons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_automatee_settings`
--

DROP TABLE IF EXISTS `exp_automatee_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_automatee_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(30) NOT NULL DEFAULT '',
  `setting_value` text NOT NULL,
  `serialized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_automatee_settings`
--

LOCK TABLES `exp_automatee_settings` WRITE;
/*!40000 ALTER TABLE `exp_automatee_settings` DISABLE KEYS */;
INSERT INTO `exp_automatee_settings` VALUES (1,'enable_debug','1',0),(2,'debug_email','jcmoron82@gmail.com',0),(3,'license_number','86bbb19d-4d51-4423-9449-f181f8434531',0);
/*!40000 ALTER TABLE `exp_automatee_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_blacklisted`
--

DROP TABLE IF EXISTS `exp_blacklisted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_blacklisted` (
  `blacklisted_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blacklisted_type` varchar(20) DEFAULT NULL,
  `blacklisted_value` longtext,
  PRIMARY KEY (`blacklisted_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_blacklisted`
--

LOCK TABLES `exp_blacklisted` WRITE;
/*!40000 ALTER TABLE `exp_blacklisted` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_blacklisted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_calendars`
--

DROP TABLE IF EXISTS `exp_calendar_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_calendars` (
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `tz_offset` char(5) NOT NULL DEFAULT '+0000',
  `timezone` varchar(100) NOT NULL DEFAULT 'Europe/London',
  `time_format` varchar(10) NOT NULL DEFAULT 'g:i a',
  `ics_url` text,
  `ics_updated` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`calendar_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_calendars`
--

LOCK TABLES `exp_calendar_calendars` WRITE;
/*!40000 ALTER TABLE `exp_calendar_calendars` DISABLE KEYS */;
INSERT INTO `exp_calendar_calendars` VALUES (54,1,'','Europe/London','','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `exp_calendar_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_events`
--

DROP TABLE IF EXISTS `exp_calendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_events` (
  `event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `start_date` int(8) NOT NULL DEFAULT '0',
  `start_year` smallint(4) NOT NULL DEFAULT '0',
  `start_month` tinyint(2) NOT NULL DEFAULT '0',
  `start_day` tinyint(2) NOT NULL DEFAULT '0',
  `all_day` char(1) NOT NULL DEFAULT 'n',
  `start_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `end_date` int(8) NOT NULL DEFAULT '0',
  `end_year` smallint(4) NOT NULL DEFAULT '0',
  `end_month` tinyint(2) NOT NULL DEFAULT '0',
  `end_day` tinyint(2) NOT NULL DEFAULT '0',
  `end_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recurs` char(1) NOT NULL DEFAULT 'n',
  `last_date` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`),
  KEY `site_id` (`site_id`),
  KEY `calendar_id` (`calendar_id`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`),
  KEY `last_date` (`last_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_events`
--

LOCK TABLES `exp_calendar_events` WRITE;
/*!40000 ALTER TABLE `exp_calendar_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_calendar_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_events_exceptions`
--

DROP TABLE IF EXISTS `exp_calendar_events_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_events_exceptions` (
  `exception_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `start_date` int(8) NOT NULL DEFAULT '0',
  `start_year` smallint(4) NOT NULL DEFAULT '0',
  `start_month` tinyint(2) NOT NULL DEFAULT '0',
  `start_day` tinyint(2) NOT NULL DEFAULT '0',
  `start_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`exception_id`),
  KEY `event_id` (`event_id`),
  KEY `entry_id` (`entry_id`),
  KEY `calendar_id` (`calendar_id`),
  KEY `site_id` (`site_id`),
  KEY `start_date` (`start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_events_exceptions`
--

LOCK TABLES `exp_calendar_events_exceptions` WRITE;
/*!40000 ALTER TABLE `exp_calendar_events_exceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_calendar_events_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_events_imports`
--

DROP TABLE IF EXISTS `exp_calendar_events_imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_events_imports` (
  `import_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `last_mod` char(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`import_id`),
  KEY `calendar_id` (`calendar_id`),
  KEY `event_id` (`event_id`),
  KEY `entry_id` (`entry_id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_events_imports`
--

LOCK TABLES `exp_calendar_events_imports` WRITE;
/*!40000 ALTER TABLE `exp_calendar_events_imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_calendar_events_imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_events_occurrences`
--

DROP TABLE IF EXISTS `exp_calendar_events_occurrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_events_occurrences` (
  `occurrence_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `start_date` int(8) NOT NULL DEFAULT '0',
  `start_year` smallint(4) NOT NULL DEFAULT '0',
  `start_month` tinyint(2) NOT NULL DEFAULT '0',
  `start_day` tinyint(2) NOT NULL DEFAULT '0',
  `all_day` char(1) NOT NULL DEFAULT 'n',
  `start_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `end_date` int(8) NOT NULL DEFAULT '0',
  `end_year` smallint(4) NOT NULL DEFAULT '0',
  `end_month` tinyint(2) NOT NULL DEFAULT '0',
  `end_day` tinyint(2) NOT NULL DEFAULT '0',
  `end_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occurrence_id`),
  KEY `event_id` (`event_id`),
  KEY `entry_id` (`entry_id`),
  KEY `calendar_id` (`calendar_id`),
  KEY `site_id` (`site_id`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_events_occurrences`
--

LOCK TABLES `exp_calendar_events_occurrences` WRITE;
/*!40000 ALTER TABLE `exp_calendar_events_occurrences` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_calendar_events_occurrences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_events_rules`
--

DROP TABLE IF EXISTS `exp_calendar_events_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_events_rules` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rule_type` char(1) DEFAULT '+',
  `start_date` int(8) NOT NULL DEFAULT '0',
  `all_day` char(1) NOT NULL DEFAULT 'n',
  `start_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `end_date` int(8) NOT NULL DEFAULT '0',
  `end_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `repeat_years` smallint(5) unsigned NOT NULL DEFAULT '0',
  `repeat_months` smallint(5) unsigned NOT NULL DEFAULT '0',
  `repeat_days` smallint(5) unsigned NOT NULL DEFAULT '0',
  `repeat_weeks` smallint(5) unsigned NOT NULL DEFAULT '0',
  `days_of_week` varchar(7) DEFAULT '',
  `relative_dow` varchar(6) NOT NULL DEFAULT '',
  `days_of_month` varchar(31) DEFAULT '',
  `months_of_year` varchar(12) DEFAULT '',
  `stop_by` int(8) NOT NULL DEFAULT '0',
  `stop_after` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_date` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `event_id` (`event_id`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_events_rules`
--

LOCK TABLES `exp_calendar_events_rules` WRITE;
/*!40000 ALTER TABLE `exp_calendar_events_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_calendar_events_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_permissions_groups`
--

DROP TABLE IF EXISTS `exp_calendar_permissions_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_permissions_groups` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_admin` char(1) NOT NULL DEFAULT 'n',
  `calendar_edit` char(1) NOT NULL DEFAULT 'n',
  `calendar_view` char(1) NOT NULL DEFAULT 'n',
  `events_admin` char(1) NOT NULL DEFAULT 'n',
  `events_edit` char(1) NOT NULL DEFAULT 'n',
  `events_view` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`permission_id`),
  KEY `group_id` (`group_id`),
  KEY `calendar_id` (`calendar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_permissions_groups`
--

LOCK TABLES `exp_calendar_permissions_groups` WRITE;
/*!40000 ALTER TABLE `exp_calendar_permissions_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_calendar_permissions_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_permissions_preferences`
--

DROP TABLE IF EXISTS `exp_calendar_permissions_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_permissions_preferences` (
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `preferences` text,
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_permissions_preferences`
--

LOCK TABLES `exp_calendar_permissions_preferences` WRITE;
/*!40000 ALTER TABLE `exp_calendar_permissions_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_calendar_permissions_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_permissions_users`
--

DROP TABLE IF EXISTS `exp_calendar_permissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_permissions_users` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_admin` char(1) NOT NULL DEFAULT 'n',
  `calendar_edit` char(1) NOT NULL DEFAULT 'n',
  `calendar_view` char(1) NOT NULL DEFAULT 'n',
  `events_admin` char(1) NOT NULL DEFAULT 'n',
  `events_edit` char(1) NOT NULL DEFAULT 'n',
  `events_view` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`permission_id`),
  KEY `user_id` (`user_id`),
  KEY `calendar_id` (`calendar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_permissions_users`
--

LOCK TABLES `exp_calendar_permissions_users` WRITE;
/*!40000 ALTER TABLE `exp_calendar_permissions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_calendar_permissions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_preferences`
--

DROP TABLE IF EXISTS `exp_calendar_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_preferences` (
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `preferences` text,
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_preferences`
--

LOCK TABLES `exp_calendar_preferences` WRITE;
/*!40000 ALTER TABLE `exp_calendar_preferences` DISABLE KEYS */;
INSERT INTO `exp_calendar_preferences` VALUES (1,'a:8:{s:17:\"first_day_of_week\";s:1:\"0\";s:10:\"clock_type\";s:2:\"12\";s:9:\"tz_offset\";s:5:\"-0500\";s:11:\"date_format\";s:8:\"mm/dd/yy\";s:11:\"time_format\";s:5:\"g:i a\";s:15:\"calendar_weblog\";s:1:\"3\";s:12:\"event_weblog\";s:1:\"4\";s:25:\"ics_update_delete_default\";s:1:\"n\";}');
/*!40000 ALTER TABLE `exp_calendar_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_reminders`
--

DROP TABLE IF EXISTS `exp_calendar_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_reminders` (
  `reminder_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occurrence_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `time_interval` smallint(5) unsigned NOT NULL DEFAULT '1',
  `time_unit` char(1) NOT NULL DEFAULT 'd',
  PRIMARY KEY (`reminder_id`),
  KEY `member_id` (`member_id`),
  KEY `event_id` (`event_id`),
  KEY `occurrence_id` (`occurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_reminders`
--

LOCK TABLES `exp_calendar_reminders` WRITE;
/*!40000 ALTER TABLE `exp_calendar_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_calendar_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_calendar_reminders_templates`
--

DROP TABLE IF EXISTS `exp_calendar_reminders_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_calendar_reminders_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `html` char(1) NOT NULL DEFAULT 'n',
  `template_name` varchar(150) NOT NULL DEFAULT '',
  `template_label` varchar(150) NOT NULL DEFAULT '',
  `from_name` varchar(150) NOT NULL DEFAULT '',
  `from_email` varchar(200) NOT NULL DEFAULT '',
  `subject` varchar(80) NOT NULL DEFAULT '',
  `template_data` text,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_calendar_reminders_templates`
--

LOCK TABLES `exp_calendar_reminders_templates` WRITE;
/*!40000 ALTER TABLE `exp_calendar_reminders_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_calendar_reminders_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_captcha`
--

DROP TABLE IF EXISTS `exp_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_captcha`
--

LOCK TABLES `exp_captcha` WRITE;
/*!40000 ALTER TABLE `exp_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_categories`
--

DROP TABLE IF EXISTS `exp_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_url_title` varchar(75) NOT NULL,
  `cat_description` text,
  `cat_image` varchar(120) DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `group_id` (`group_id`),
  KEY `cat_name` (`cat_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_categories`
--

LOCK TABLES `exp_categories` WRITE;
/*!40000 ALTER TABLE `exp_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_field_data`
--

DROP TABLE IF EXISTS `exp_category_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_field_data` (
  `cat_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_field_data`
--

LOCK TABLES `exp_category_field_data` WRITE;
/*!40000 ALTER TABLE `exp_category_field_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_field_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_fields`
--

DROP TABLE IF EXISTS `exp_category_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `field_label` varchar(50) NOT NULL DEFAULT '',
  `field_type` varchar(12) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_maxl` smallint(3) NOT NULL DEFAULT '128',
  `field_ta_rows` tinyint(2) NOT NULL DEFAULT '8',
  `field_default_fmt` varchar(40) NOT NULL DEFAULT 'none',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`field_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_fields`
--

LOCK TABLES `exp_category_fields` WRITE;
/*!40000 ALTER TABLE `exp_category_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_groups`
--

DROP TABLE IF EXISTS `exp_category_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `sort_order` char(1) NOT NULL DEFAULT 'a',
  `exclude_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `can_edit_categories` text,
  `can_delete_categories` text,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_groups`
--

LOCK TABLES `exp_category_groups` WRITE;
/*!40000 ALTER TABLE `exp_category_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_posts`
--

DROP TABLE IF EXISTS `exp_category_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_posts` (
  `entry_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_posts`
--

LOCK TABLES `exp_category_posts` WRITE;
/*!40000 ALTER TABLE `exp_category_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_data`
--

DROP TABLE IF EXISTS `exp_channel_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_data` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `field_id_1` text,
  `field_ft_1` tinytext,
  `field_id_2` text,
  `field_ft_2` tinytext,
  `field_id_3` text,
  `field_ft_3` tinytext,
  `field_id_4` text,
  `field_ft_4` tinytext,
  `field_id_5` text,
  `field_ft_5` tinytext,
  `field_id_6` text,
  `field_ft_6` tinytext,
  `field_id_7` text,
  `field_ft_7` tinytext,
  `field_id_8` text,
  `field_ft_8` tinytext,
  `field_id_9` varchar(8) DEFAULT NULL,
  `field_ft_9` tinytext,
  `field_id_11` text,
  `field_ft_11` tinytext,
  `field_id_12` text,
  `field_ft_12` tinytext,
  `field_id_13` text,
  `field_ft_13` tinytext,
  `field_id_14` text,
  `field_ft_14` tinytext,
  `field_id_15` text,
  `field_ft_15` tinytext,
  `field_id_16` text,
  `field_ft_16` tinytext,
  `field_id_17` text,
  `field_ft_17` tinytext,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_data`
--

LOCK TABLES `exp_channel_data` WRITE;
/*!40000 ALTER TABLE `exp_channel_data` DISABLE KEYS */;
INSERT INTO `exp_channel_data` VALUES (1,1,1,'grave','none','Baños','none','no sale agua','none','','none','No','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(2,1,1,'Grave','none','Pasillos','none','hay un gato muerto','none','','none','Si','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(3,1,1,'Grave','none','Pasillos','none','hay un gato muerto','none','{filedir_1}gato-bonito1.jpg','none','Si','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(4,1,2,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'se ingreso la solicitud','none','descripcion de la solicitud','none',NULL,NULL,NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(5,1,2,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'se agenda la visita','none','deseo que visien en tal fecha','none',NULL,NULL,NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(6,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(7,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(8,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(9,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(10,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(11,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(12,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(13,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(14,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(15,1,2,'','none','','none','','none','','none','','none','','none','sfsdf','none','sfgdfgdfgdgdfgdf','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(16,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(17,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(18,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(19,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(20,1,2,'','none','','none','','none','','none','','none','','none','','none','','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(21,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(22,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(23,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(24,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(25,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(26,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(27,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(28,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(29,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(30,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(31,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(32,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(33,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(34,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(35,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(36,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(37,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(38,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(39,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(40,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(41,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(42,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(43,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(44,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(45,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(46,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(47,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(48,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(49,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(50,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(51,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(52,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(53,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml',NULL,'xhtml',NULL,'none',NULL,'none',NULL,'none',NULL,'none',NULL,'xhtml',NULL,'none'),(54,1,3,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'','xhtml','','none','g:i a','none','','none','',NULL,'',NULL,'',NULL),(55,1,4,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'0','none','','xhtml','','none'),(56,1,4,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','','xhtml','','none'),(57,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml','','xhtml','','none','','none','','none','','none','','xhtml','','none'),(58,1,2,'','none','','none','','none','','none','','none','','none','descripcion','none','Some data','none','','xhtml','','xhtml','','none','','none','','none','','none','','xhtml','','none'),(59,1,4,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','las horas estan definidas','xhtml','mi casa','none');
/*!40000 ALTER TABLE `exp_channel_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_entries_autosave`
--

DROP TABLE IF EXISTS `exp_channel_entries_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_entries_autosave` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  `entry_data` text,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_entries_autosave`
--

LOCK TABLES `exp_channel_entries_autosave` WRITE;
/*!40000 ALTER TABLE `exp_channel_entries_autosave` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_entries_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_fields`
--

DROP TABLE IF EXISTS `exp_channel_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_label` varchar(50) NOT NULL,
  `field_instructions` text,
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_pre_populate` char(1) NOT NULL DEFAULT 'n',
  `field_pre_channel_id` int(6) unsigned DEFAULT NULL,
  `field_pre_field_id` int(6) unsigned DEFAULT NULL,
  `field_ta_rows` tinyint(2) DEFAULT '8',
  `field_maxl` smallint(3) DEFAULT NULL,
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_search` char(1) NOT NULL DEFAULT 'n',
  `field_is_hidden` char(1) NOT NULL DEFAULT 'n',
  `field_fmt` varchar(40) NOT NULL DEFAULT 'xhtml',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_order` int(3) unsigned NOT NULL,
  `field_content_type` varchar(20) NOT NULL DEFAULT 'any',
  `field_settings` text,
  PRIMARY KEY (`field_id`),
  KEY `group_id` (`group_id`),
  KEY `field_type` (`field_type`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_fields`
--

LOCK TABLES `exp_channel_fields` WRITE;
/*!40000 ALTER TABLE `exp_channel_fields` DISABLE KEYS */;
INSERT INTO `exp_channel_fields` VALUES (1,1,1,'tipo_problema','Tipo de problema','','text','','0',0,0,6,128,'y','ltr','y','n','none','n',1,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(2,1,1,'ubicacion','Ubicacion','','select','Sala\nCuartos\nBaños\nPasillos\nEscaleras\nVentanas\nPuertas','n',0,0,6,128,'y','ltr','y','n','none','n',2,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(3,1,1,'descripcion_problema','Descripción del problema','','textarea','','0',0,0,6,128,'y','ltr','y','n','none','n',3,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(4,1,1,'foto_problema','Foto','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(5,1,1,'danhos_otros','Daños otros','','select','Si\nNo','n',0,0,6,128,'y','ltr','y','n','none','n',5,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(6,1,1,'otro_dep_afectado','Otro_dep_afectado','','text','','0',0,0,6,20,'n','ltr','n','n','none','n',6,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(7,1,2,'descripcion_status','descripcion_status','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(8,1,2,'detalle_status','detalle_status','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(9,1,1,'relacion_status','relacion_status','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',7,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiIyIjt9czo3OiJleHBpcmVkIjtpOjA7czo2OiJmdXR1cmUiO2k6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO3M6MjoiMjAiO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtzOjE6IjEiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),(11,1,3,'calendar_summary','Summary','','textarea','','n',0,NULL,4,0,'n','ltr','y','n','xhtml','y',1,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(12,1,3,'calendar_tz_offset','Timezone','','calendar','','n',0,NULL,0,100,'n','ltr','n','n','none','n',2,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(13,1,3,'calendar_time_format','Time Format','Default time format to use for this calendar.','text','','n',0,NULL,0,20,'n','ltr','n','y','none','n',3,'any','YTo4OntzOjEwOiJmaWVsZF9tYXhsIjtzOjI6IjIwIjtzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO2I6MDtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(14,1,3,'calendar_ics_url','URL to iCalendar (.ics) file','Add one or more URLs to .ics files - separated by newlines - to import to this calendar. All imported times will be adjusted to this calendar\'s timezone settings.','textarea','','n',0,NULL,3,20,'n','ltr','n','y','none','n',4,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(15,1,4,'event_dates_and_options','Dates & Options','','calendar','','n',0,NULL,0,0,'n','ltr','n','n','none','n',1,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(16,1,4,'event_summary','Summary','','textarea','','n',0,NULL,4,0,'n','ltr','y','n','xhtml','y',2,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(17,1,4,'event_location','Location','','text','','n',0,NULL,0,200,'n','ltr','y','n','none','n',3,'any','YTo4OntzOjEwOiJmaWVsZF9tYXhsIjtzOjM6IjIwMCI7czoxODoiZmllbGRfY29udGVudF90eXBlIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9');
/*!40000 ALTER TABLE `exp_channel_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_form_settings`
--

DROP TABLE IF EXISTS `exp_channel_form_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_form_settings` (
  `channel_form_settings_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(6) unsigned NOT NULL DEFAULT '0',
  `default_status` varchar(50) NOT NULL DEFAULT 'open',
  `require_captcha` char(1) NOT NULL DEFAULT 'n',
  `allow_guest_posts` char(1) NOT NULL DEFAULT 'n',
  `default_author` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_form_settings_id`),
  KEY `site_id` (`site_id`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_form_settings`
--

LOCK TABLES `exp_channel_form_settings` WRITE;
/*!40000 ALTER TABLE `exp_channel_form_settings` DISABLE KEYS */;
INSERT INTO `exp_channel_form_settings` VALUES (5,1,3,'','n','n',0),(6,1,4,'','n','n',0),(7,1,1,'','n','y',1),(8,1,2,'','n','n',0);
/*!40000 ALTER TABLE `exp_channel_form_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_images`
--

DROP TABLE IF EXISTS `exp_channel_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_images` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` tinyint(3) unsigned DEFAULT '1',
  `entry_id` int(10) unsigned DEFAULT '0',
  `field_id` mediumint(8) unsigned DEFAULT '0',
  `channel_id` tinyint(3) unsigned DEFAULT '0',
  `member_id` int(10) unsigned DEFAULT '0',
  `is_draft` tinyint(3) unsigned DEFAULT '0',
  `link_image_id` int(10) unsigned DEFAULT '0',
  `link_entry_id` int(10) unsigned DEFAULT '0',
  `link_channel_id` int(10) unsigned DEFAULT '0',
  `link_field_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) unsigned DEFAULT '0',
  `cover` tinyint(1) unsigned DEFAULT '0',
  `image_order` smallint(5) unsigned DEFAULT '1',
  `filename` varchar(250) DEFAULT '',
  `extension` varchar(20) DEFAULT '',
  `filesize` int(10) unsigned DEFAULT '0',
  `mime` varchar(20) DEFAULT '',
  `width` smallint(6) DEFAULT '0',
  `height` smallint(6) DEFAULT '0',
  `title` varchar(250) DEFAULT '',
  `url_title` varchar(250) DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `category` varchar(250) DEFAULT '',
  `cifield_1` varchar(250) DEFAULT '',
  `cifield_2` varchar(250) DEFAULT '',
  `cifield_3` varchar(250) DEFAULT '',
  `cifield_4` varchar(250) DEFAULT '',
  `cifield_5` varchar(250) DEFAULT '',
  `sizes_metadata` varchar(250) DEFAULT '',
  `iptc` text,
  `exif` text,
  `xmp` text,
  PRIMARY KEY (`image_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_images`
--

LOCK TABLES `exp_channel_images` WRITE;
/*!40000 ALTER TABLE `exp_channel_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_member_groups`
--

DROP TABLE IF EXISTS `exp_channel_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_member_groups`
--

LOCK TABLES `exp_channel_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_channel_member_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_titles`
--

DROP TABLE IF EXISTS `exp_channel_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_titles` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_titles`
--

LOCK TABLES `exp_channel_titles` WRITE;
/*!40000 ALTER TABLE `exp_channel_titles` DISABLE KEYS */;
INSERT INTO `exp_channel_titles` VALUES (1,1,1,1,NULL,'::1','prueba','prueba','open','y',0,0,0,0,'y','n',1398462840,'2014','04','25',0,0,20140428184900,0,0),(2,1,1,1,NULL,'::1','asdasd','asdasd','open','y',0,0,0,0,'y','n',1398470280,'2014','04','25',0,0,20140426003423,0,0),(3,1,1,1,NULL,'::1','asdasd','asdasd1','open','y',0,0,0,0,'y','n',1398471180,'2014','04','25',0,0,20140428180814,0,0),(4,1,2,1,NULL,'::1','Ingreso Solicitud','ingreso-solicitud','open','y',0,0,0,0,'y','n',1398705480,'2014','04','28',0,0,20140428171856,0,0),(5,1,2,1,NULL,'::1','Agendar visita','agendar-visita','open','y',0,0,0,0,'y','n',1398706860,'2014','04','28',0,0,20140428174205,0,0),(6,1,2,1,NULL,'::1','Breaking News Story!','breaking-news-story','open','y',0,0,0,0,'n','n',1256953732,'2009','10','30',0,0,20121031032209,0,0),(7,1,2,1,NULL,'::1','Breaking News Story!','breaking-news-story1','open','y',0,0,0,0,'n','n',1398718276,'2014','04','28',0,0,20140428205116,0,0),(8,1,2,1,NULL,'::1','Breaking News Story!','breaking-news-story2','open','y',0,0,0,0,'n','n',1398718843,'2014','04','28',0,0,20140428210043,0,0),(9,1,2,1,NULL,'::1','noticias','noticias','open','y',0,0,0,0,'n','n',1398718942,'2014','04','28',0,0,20140428210222,0,0),(10,1,2,1,NULL,'::1','noticias','noticias1','open','y',0,0,0,0,'n','n',1398719521,'2014','04','28',0,0,20140428211201,0,0),(11,1,2,1,NULL,'::1','noticias','noticias2','open','y',0,0,0,0,'n','n',1398719581,'2014','04','28',0,0,20140428211301,0,0),(12,1,2,1,NULL,'::1','noticias','noticias3','open','y',0,0,0,0,'n','n',1398719605,'2014','04','28',0,0,20140428211325,0,0),(13,1,2,1,NULL,'::1','noticias','noticias4','open','y',0,0,0,0,'n','n',1398719749,'2014','04','28',0,0,20140428211549,0,0),(14,1,2,1,NULL,'::1','noticias','noticias5','open','y',0,0,0,0,'n','n',1398720263,'2014','04','28',0,0,20140428212423,0,0),(15,1,2,1,NULL,'::1','noticias','noticias6','open','y',0,0,0,0,'n','n',1398720240,'2014','04','28',0,0,20140428212717,0,0),(16,1,2,1,NULL,'::1','noticias','noticias7','open','y',0,0,0,0,'n','n',1398720905,'2014','04','28',0,0,20140428213505,0,0),(17,1,2,1,NULL,'::1','noticias','noticias8','open','y',0,0,0,0,'n','n',1398720953,'2014','04','28',0,0,20140428213553,0,0),(18,1,2,1,NULL,'::1','noticias','noticias9','open','y',0,0,0,0,'n','n',1398721014,'2014','04','28',0,0,20140428213654,0,0),(19,1,2,1,NULL,'::1','noticias','noticias10','open','y',0,0,0,0,'n','n',1398721065,'2014','04','28',0,0,20140428213745,0,0),(20,1,2,1,NULL,'::1','noticias','noticias11','open','y',0,0,0,0,'n','n',1398721134,'2014','04','28',0,0,20140428213854,0,0),(21,1,2,1,NULL,'::1','noticias','noticias12','open','y',0,0,0,0,'n','n',1398721419,'2014','04','28',0,0,20140428214339,0,0),(22,1,2,1,NULL,'::1','noticias','noticias13','open','y',0,0,0,0,'n','n',1398729027,'2014','04','28',0,0,20140428235027,0,0),(23,1,2,1,NULL,'::1','noticias','noticias14','open','y',0,0,0,0,'n','n',1398729190,'2014','04','28',0,0,20140428235310,0,0),(24,1,2,1,NULL,'::1','noticias','noticias15','open','y',0,0,0,0,'n','n',1398729223,'2014','04','28',0,0,20140428235343,0,0),(25,1,2,1,NULL,'::1','noticias','noticias16','open','y',0,0,0,0,'n','n',1398729246,'2014','04','28',0,0,20140428235406,0,0),(26,1,2,1,NULL,'::1','noticias','noticias17','open','y',0,0,0,0,'n','n',1398729567,'2014','04','28',0,0,20140428235927,0,0),(27,1,2,1,NULL,'::1','noticias','noticias18','open','y',0,0,0,0,'n','n',1398729683,'2014','04','28',0,0,20140429000123,0,0),(28,1,2,1,NULL,'::1','noticias','noticias19','open','y',0,0,0,0,'n','n',1398729698,'2014','04','28',0,0,20140429000138,0,0),(29,1,2,1,NULL,'::1','noticias','noticias20','open','y',0,0,0,0,'n','n',1398729717,'2014','04','28',0,0,20140429000157,0,0),(30,1,2,1,NULL,'::1','noticias','noticias21','open','y',0,0,0,0,'n','n',1398729746,'2014','04','28',0,0,20140429000226,0,0),(31,1,2,1,NULL,'::1','noticias','noticias22','open','y',0,0,0,0,'n','n',1398729813,'2014','04','28',0,0,20140429000333,0,0),(32,1,2,1,NULL,'::1','noticias','noticias23','open','y',0,0,0,0,'n','n',1398729827,'2014','04','28',0,0,20140429000347,0,0),(33,1,2,1,NULL,'::1','noticias','noticias24','open','y',0,0,0,0,'n','n',1398729844,'2014','04','28',0,0,20140429000404,0,0),(34,1,2,1,NULL,'::1','noticias','noticias25','open','y',0,0,0,0,'n','n',1398729858,'2014','04','28',0,0,20140429000418,0,0),(35,1,2,1,NULL,'::1','noticias','noticias26','open','y',0,0,0,0,'n','n',1398729933,'2014','04','28',0,0,20140429000533,0,0),(36,1,2,1,NULL,'::1','noticias','noticias27','open','y',0,0,0,0,'n','n',1398730178,'2014','04','28',0,0,20140429000938,0,0),(37,1,2,1,NULL,'::1','noticias','noticias28','open','y',0,0,0,0,'n','n',1398730214,'2014','04','28',0,0,20140429001014,0,0),(38,1,2,1,NULL,'::1','noticias','noticias29','open','y',0,0,0,0,'n','n',1398730238,'2014','04','28',0,0,20140429001038,0,0),(39,1,2,1,NULL,'::1','noticias','noticias30','open','y',0,0,0,0,'n','n',1398730284,'2014','04','28',0,0,20140429001124,0,0),(40,1,2,1,NULL,'::1','noticias','noticias31','open','y',0,0,0,0,'n','n',1398730393,'2014','04','28',0,0,20140429001313,0,0),(41,1,2,1,NULL,'::1','noticias','noticias32','open','y',0,0,0,0,'n','n',1398730438,'2014','04','28',0,0,20140429001358,0,0),(42,1,2,1,NULL,'::1','noticias','noticias33','open','y',0,0,0,0,'n','n',1398730475,'2014','04','28',0,0,20140429001435,0,0),(43,1,2,1,NULL,'::1','noticias','noticias34','open','y',0,0,0,0,'n','n',1398730506,'2014','04','28',0,0,20140429001506,0,0),(44,1,2,1,NULL,'::1','noticias','noticias35','open','y',0,0,0,0,'n','n',1398730559,'2014','04','28',0,0,20140429001559,0,0),(45,1,2,1,NULL,'::1','noticias','noticias36','open','y',0,0,0,0,'n','n',1398730574,'2014','04','28',0,0,20140429001614,0,0),(46,1,2,1,NULL,'::1','noticias','noticias37','open','y',0,0,0,0,'n','n',1398730649,'2014','04','28',0,0,20140429001729,0,0),(47,1,2,1,NULL,'::1','noticias','noticias38','open','y',0,0,0,0,'n','n',1398730670,'2014','04','28',0,0,20140429001750,0,0),(48,1,2,1,NULL,'::1','noticias','noticias39','open','y',0,0,0,0,'n','n',1398790588,'2014','04','29',0,0,20140429165628,0,0),(49,1,2,1,NULL,'::1','noticias','noticias40','open','y',0,0,0,0,'n','n',1398791295,'2014','04','29',0,0,20140429170815,0,0),(50,1,2,1,NULL,'::1','noticias','noticias41','open','y',0,0,0,0,'n','n',1398791314,'2014','04','29',0,0,20140429170834,0,0),(51,1,2,1,NULL,'::1','noticias','noticias42','open','y',0,0,0,0,'n','n',1398791497,'2014','04','29',0,0,20140429171137,0,0),(52,1,2,1,NULL,'::1','noticias','noticias43','open','y',0,0,0,0,'n','n',1398791803,'2014','04','29',0,0,20140429171643,0,0),(53,1,2,1,NULL,'::1','noticias','noticias44','open','y',0,0,0,0,'n','n',1398791895,'2014','04','29',0,0,20140429171815,0,0),(54,1,3,1,NULL,'::1','Abril 2014','abril-2014','open','y',0,0,0,0,'y','n',1398801060,'2014','04','29',0,0,20140429195153,0,0),(55,1,4,1,NULL,'::1','no vayan','no-vayan','open','y',0,0,0,0,'y','n',1398801300,'2014','04','29',0,0,20140429195546,0,0),(56,1,4,1,NULL,'::1','llamar a revision','llamar-a-revision','open','y',0,0,0,0,'y','n',1398806340,'2014','04','29',0,0,20140429211930,0,0),(57,1,2,1,NULL,'::1','noticias','noticias45','open','y',0,0,0,0,'n','n',1398807126,'2014','04','29',0,0,20140429213206,0,0),(58,1,2,1,NULL,'::1','noticias','noticias46','open','y',0,0,0,0,'n','n',1398817462,'2014','04','29',0,0,20140430002422,0,0),(59,1,4,1,NULL,'::1','Agendar visita 3','agendar-visita-3','open','y',0,0,0,0,'y','n',1398819060,'2014','04','29',0,0,20140430005110,0,0);
/*!40000 ALTER TABLE `exp_channel_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channels`
--

DROP TABLE IF EXISTS `exp_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channels` (
  `channel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_name` varchar(40) NOT NULL,
  `channel_title` varchar(100) NOT NULL,
  `channel_url` varchar(100) NOT NULL,
  `channel_description` varchar(255) DEFAULT NULL,
  `channel_lang` varchar(12) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_group` varchar(255) DEFAULT NULL,
  `status_group` int(4) unsigned DEFAULT NULL,
  `deft_status` varchar(50) NOT NULL DEFAULT 'open',
  `field_group` int(4) unsigned DEFAULT NULL,
  `search_excerpt` int(4) unsigned DEFAULT NULL,
  `deft_category` varchar(60) DEFAULT NULL,
  `deft_comments` char(1) NOT NULL DEFAULT 'y',
  `channel_require_membership` char(1) NOT NULL DEFAULT 'y',
  `channel_max_chars` int(5) unsigned DEFAULT NULL,
  `channel_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `channel_allow_img_urls` char(1) NOT NULL DEFAULT 'y',
  `channel_auto_link_urls` char(1) NOT NULL DEFAULT 'n',
  `channel_notify` char(1) NOT NULL DEFAULT 'n',
  `channel_notify_emails` varchar(255) DEFAULT NULL,
  `comment_url` varchar(80) DEFAULT NULL,
  `comment_system_enabled` char(1) NOT NULL DEFAULT 'y',
  `comment_require_membership` char(1) NOT NULL DEFAULT 'n',
  `comment_use_captcha` char(1) NOT NULL DEFAULT 'n',
  `comment_moderate` char(1) NOT NULL DEFAULT 'n',
  `comment_max_chars` int(5) unsigned DEFAULT '5000',
  `comment_timelock` int(5) unsigned NOT NULL DEFAULT '0',
  `comment_require_email` char(1) NOT NULL DEFAULT 'y',
  `comment_text_formatting` char(5) NOT NULL DEFAULT 'xhtml',
  `comment_html_formatting` char(4) NOT NULL DEFAULT 'safe',
  `comment_allow_img_urls` char(1) NOT NULL DEFAULT 'n',
  `comment_auto_link_urls` char(1) NOT NULL DEFAULT 'y',
  `comment_notify` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_authors` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_emails` varchar(255) DEFAULT NULL,
  `comment_expiration` int(4) unsigned NOT NULL DEFAULT '0',
  `search_results_url` varchar(80) DEFAULT NULL,
  `show_button_cluster` char(1) NOT NULL DEFAULT 'y',
  `rss_url` varchar(80) DEFAULT NULL,
  `enable_versioning` char(1) NOT NULL DEFAULT 'n',
  `max_revisions` smallint(4) unsigned NOT NULL DEFAULT '10',
  `default_entry_title` varchar(100) DEFAULT NULL,
  `url_title_prefix` varchar(80) DEFAULT NULL,
  `live_look_template` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_id`),
  KEY `cat_group` (`cat_group`),
  KEY `status_group` (`status_group`),
  KEY `field_group` (`field_group`),
  KEY `channel_name` (`channel_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channels`
--

LOCK TABLES `exp_channels` WRITE;
/*!40000 ALTER TABLE `exp_channels` DISABLE KEYS */;
INSERT INTO `exp_channels` VALUES (1,1,'solicitudes_ch','solicitudes_ch','http://localhost/VivaGyM_PostVenta/index.php','','en',3,0,1398471180,0,'',NULL,'open',1,1,'','y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n','',0,'','y','','n',10,'','',0),(2,1,'ticket_ch','ticket_ch','http://localhost/gym/index.php',NULL,'en',51,0,1398807126,0,'',NULL,'open',2,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(3,1,'calendar_calendars','Calendar: Calendars','http://localhost/gym/index.php',NULL,'en',1,0,1398801060,0,NULL,1,'open',3,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(4,1,'calendar_events','Calendar: Events','http://localhost/gym/index.php',NULL,'en',3,0,1398819060,0,NULL,1,'open',4,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0);
/*!40000 ALTER TABLE `exp_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_comment_subscriptions`
--

DROP TABLE IF EXISTS `exp_comment_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_comment_subscriptions` (
  `subscription_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `member_id` int(10) DEFAULT '0',
  `email` varchar(75) DEFAULT NULL,
  `subscription_date` varchar(10) DEFAULT NULL,
  `notification_sent` char(1) DEFAULT 'n',
  `hash` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `entry_id` (`entry_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_comment_subscriptions`
--

LOCK TABLES `exp_comment_subscriptions` WRITE;
/*!40000 ALTER TABLE `exp_comment_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_comment_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_comments`
--

DROP TABLE IF EXISTS `exp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) DEFAULT '1',
  `entry_id` int(10) unsigned DEFAULT '0',
  `channel_id` int(4) unsigned DEFAULT '1',
  `author_id` int(10) unsigned DEFAULT '0',
  `status` char(1) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `url` varchar(75) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `comment_date` int(10) DEFAULT NULL,
  `edit_date` int(10) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`comment_id`),
  KEY `entry_id` (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `status` (`status`),
  KEY `site_id` (`site_id`),
  KEY `comment_date_idx` (`comment_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_comments`
--

LOCK TABLES `exp_comments` WRITE;
/*!40000 ALTER TABLE `exp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_content_types`
--

DROP TABLE IF EXISTS `exp_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_content_types` (
  `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_type_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_content_types`
--

LOCK TABLES `exp_content_types` WRITE;
/*!40000 ALTER TABLE `exp_content_types` DISABLE KEYS */;
INSERT INTO `exp_content_types` VALUES (1,'grid'),(2,'channel');
/*!40000 ALTER TABLE `exp_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_cp_log`
--

DROP TABLE IF EXISTS `exp_cp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_cp_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `act_date` int(10) NOT NULL,
  `action` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=518 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_cp_log`
--

LOCK TABLES `exp_cp_log` WRITE;
/*!40000 ALTER TABLE `exp_cp_log` DISABLE KEYS */;
INSERT INTO `exp_cp_log` VALUES (1,1,1,'julio','::1',1398383657,'Logged in'),(2,1,1,'julio','::1',1398384845,'Member Group Created:&nbsp;&nbsp;usuarios_dep'),(3,1,1,'julio','::1',1398385763,'Username was changed to:&nbsp;&nbsp;jmoron@hot.com'),(4,1,1,'julio','::1',1398387686,'Member Group Updated:&nbsp;&nbsp;usuarios_dep'),(5,1,1,'julio','::1',1398441608,'Logged in'),(6,1,1,'julio','::1',1398452695,'Channel Created:&nbsp;&nbsp;Solicitudes'),(7,1,1,'julio','::1',1398452819,'Field Group Created:&nbsp;solicitud_ch'),(8,1,1,'julio','::1',1398703160,'Logged in'),(9,1,1,'julio','::1',1398705088,'Field Group Created:&nbsp;ticket_status'),(10,1,1,'julio','::1',1398705375,'Channel Created:&nbsp;&nbsp;ticket_ch'),(11,1,1,'julio','::1',1398711279,'Custom Field Deleted:&nbsp;fecha_ingreso'),(12,1,1,'julio','::1',1398716181,'Logged in'),(13,1,1,'julio','::1',1398728722,'Logged in'),(14,1,1,'julio','::1',1398790007,'Logged in'),(15,1,1,'julio','::1',1398799160,'Logged in'),(16,1,1,'julio','::1',1398799471,'channel_created&nbsp;&nbsp;Calendar: Calendars'),(17,1,1,'julio','::1',1398799471,'channel_created&nbsp;&nbsp;Calendar: Events'),(18,1,1,'julio','::1',1398817320,'Logged in'),(19,1,1,'julio','::1',1398878584,'Logged in'),(20,1,1,'julio','::1',1398893821,'Logged in'),(21,1,1,'julio','::1',1398895057,'Logged in'),(22,1,1,'julio','::1',1398900770,'Logged in'),(23,1,1,'julio','::1',1398905172,'Logged in'),(24,1,1,'julio','::1',1399048964,'Logged in'),(25,1,1,'julio','::1',1399058131,'Logged in'),(26,1,1,'julio','::1',1399065481,'Logged in'),(27,1,1,'julio','::1',1399066255,'Logged out'),(28,1,1,'julio','::1',1399066266,'Logged in'),(29,1,1,'julio','::1',1399067591,'Member profile created:&nbsp;&nbsp;prueba'),(30,1,1,'julio','::1',1399071341,'Logged in'),(31,1,1,'julio','::1',1399073946,'Logged in'),(32,1,1,'julio','::1',1399308779,'Logged in'),(33,1,1,'julio','::1',1399310333,'Logged out'),(34,1,1,'julio','::1',1399314443,'Logged in'),(35,1,1,'julio','::1',1399323216,'Logged out'),(36,1,1,'julio','::1',1399324624,'Logged in'),(37,1,1,'julio','::1',1399324827,'Logged out'),(38,1,1,'julio','::1',1399325218,'Logged in'),(39,1,1,'julio','::1',1399325471,'Logged out'),(40,1,1,'julio','::1',1399328036,'Logged in'),(41,1,1,'julio','::1',1399394679,'Logged in'),(42,1,1,'julio','::1',1399401257,'Logged in'),(43,1,1,'julio','::1',1399406719,'Logged in'),(44,1,1,'julio','::1',1399416701,'Logged in'),(45,1,1,'julio','::1',1399482003,'Logged in'),(46,1,1,'julio','::1',1399487478,'Logged in'),(47,1,1,'julio','::1',1399498493,'Logged in'),(48,1,1,'julio','::1',1399504558,'Logged in'),(49,1,1,'julio','::1',1399508983,'Logged in'),(50,1,1,'julio','::1',1399561749,'Logged in'),(51,1,1,'julio','::1',1399592598,'Logged in'),(52,1,1,'julio','::1',1399653080,'Logged in'),(53,1,1,'julio','::1',1399662730,'Logged in'),(54,1,1,'julio','::1',1399678488,'Logged in'),(55,1,1,'julio','::1',1399912005,'Logged in'),(56,1,1,'julio','::1',1399920657,'Logged in'),(57,1,1,'julio','::1',1399927864,'Logged in'),(58,1,1,'julio','::1',1399929219,'Member Group Created:&nbsp;&nbsp;usuarios_viva'),(59,1,1,'julio','::1',1399929247,'Member Group Created:&nbsp;&nbsp;usuarios_gym'),(60,1,1,'julio','::1',1399930056,'Logged in'),(61,1,1,'julio','::1',1399935798,'Member profile created:&nbsp;&nbsp;herman'),(62,1,1,'julio','::1',1399999750,'Logged in'),(63,1,1,'julio','::1',1400008462,'Logged in'),(64,1,1,'julio','::1',1400015492,'Logged in'),(65,1,1,'julio','::1',1400017995,'Member profile created:&nbsp;&nbsp;gym_user'),(66,1,1,'julio','127.0.0.1',1400027912,'Logged out'),(67,1,1,'julio','::1',1400086091,'Logged in'),(68,1,1,'julio','::1',1400088501,'Member Group Created:&nbsp;&nbsp;inspectores_viva'),(69,1,1,'julio','::1',1400088542,'Member Group Updated:&nbsp;&nbsp;admin_gym'),(70,1,1,'julio','::1',1400088609,'Member Group Created:&nbsp;&nbsp;usuarios_gym'),(71,1,1,'julio','::1',1400089251,'Member Group Updated:&nbsp;&nbsp;user_dep'),(72,1,1,'julio','::1',1400089269,'Member Group Updated:&nbsp;&nbsp;user_viva'),(73,1,1,'julio','::1',1400089288,'Member Group Updated:&nbsp;&nbsp;insp_viva'),(74,1,1,'julio','::1',1400089303,'Member Group Updated:&nbsp;&nbsp;user_gym'),(75,1,1,'julio','::1',1400089431,'Member Group Updated:&nbsp;&nbsp;admin_viva'),(76,1,1,'julio','::1',1400091860,'Member profile created:&nbsp;&nbsp;inspector'),(77,1,1,'julio','::1',1400092246,'Member profile created:&nbsp;&nbsp;inspector'),(78,1,1,'julio','::1',1400095919,'Logged in'),(79,1,1,'julio','::1',1400111462,'Logged in'),(80,1,1,'julio','::1',1400115338,'Logged in'),(81,1,1,'julio','::1',1400170919,'Logged in'),(82,1,1,'julio','::1',1400179958,'Member profile created:&nbsp;&nbsp;constructor'),(83,1,1,'julio','::1',1400186707,'Logged in'),(84,1,1,'julio','190.117.246.199',1400184488,'Logged in'),(85,1,1,'julio','190.117.246.199',1400184702,'Logged in'),(86,1,1,'julio','190.117.246.199',1400188143,'Logged in'),(87,1,1,'julio','190.117.246.199',1400189257,'Member profile created:&nbsp;&nbsp;admin_viva'),(88,1,1,'julio','190.117.246.199',1400189857,'Member profile created:&nbsp;&nbsp;inspector'),(89,1,1,'julio','190.117.246.161',1400252595,'Logged in'),(90,1,1,'julio','190.117.246.199',1400253697,'Logged in'),(91,1,1,'julio','190.117.246.199',1400266214,'Logged in'),(92,1,1,'julio','190.117.246.161',1400277122,'Logged in'),(93,1,1,'julio','190.117.246.199',1400510022,'Logged in'),(94,1,1,'julio','190.117.246.205',1400518825,'Logged in'),(95,1,1,'julio','190.117.246.205',1400529337,'Logged in'),(96,1,1,'julio','190.117.246.199',1400534570,'Logged in'),(97,1,1,'julio','190.117.246.199',1400596589,'Logged in'),(98,1,1,'julio','190.117.246.199',1400606515,'Email was changed to:&nbsp;&nbsp;jmoron82@hotmail.com'),(99,1,1,'julio','190.117.246.199',1400608499,'Email was changed to:&nbsp;&nbsp;julio.castillo@ayuinc.com'),(100,1,1,'julio','190.117.246.199',1400609493,'Email was changed to:&nbsp;&nbsp;jmoron82@hotmail.com'),(101,1,1,'julio','190.117.246.205',1400623715,'Logged in'),(102,1,1,'julio','190.117.246.199',1400626157,'Email was changed to:&nbsp;&nbsp;prueba@hotmail.com'),(103,1,1,'julio','190.117.246.199',1400626180,'Email was changed to:&nbsp;&nbsp;jmoron82@hotmail.com'),(104,1,1,'julio','190.117.246.199',1400626552,'Email was changed to:&nbsp;&nbsp;sd2@gmail.com'),(105,1,1,'julio','190.117.246.199',1400626587,'Email was changed to:&nbsp;&nbsp;jcmoron82@gmail.com'),(106,1,1,'julio','190.117.246.205',1400686194,'Logged in'),(107,1,1,'julio','190.117.246.199',1400691332,'Email was changed to:&nbsp;&nbsp;peru@gmail.com'),(108,1,1,'julio','190.117.246.199',1400691352,'Email was changed to:&nbsp;&nbsp;jcmoron82@gmail.com'),(109,1,1,'julio','190.117.246.205',1400698434,'Logged in'),(110,1,1,'julio','190.117.246.199',1400708254,'Logged in'),(111,1,1,'julio','190.117.246.199',1400712424,'Logged in'),(112,1,1,'julio','190.117.246.205',1400770613,'Logged in'),(113,1,1,'julio','190.117.246.205',1400786644,'Logged in'),(114,1,1,'julio','190.117.246.205',1400790338,'Logged in'),(115,1,1,'julio','190.114.248.111',1400799839,'Logged in'),(116,1,1,'julio','190.117.246.199',1400856245,'Logged in'),(117,1,1,'julio','190.117.246.199',1400866170,'Logged in'),(118,1,1,'julio','190.117.246.205',1400870125,'Logged in'),(119,1,1,'julio','190.117.246.199',1400873438,'Logged in'),(120,1,1,'julio','190.117.246.199',1400877530,'Logged in'),(121,1,1,'julio','190.117.246.199',1400882612,'Logged in'),(122,1,1,'julio','190.117.246.241',1401113961,'Logged in'),(123,1,1,'julio','190.117.246.241',1401123398,'Logged in'),(124,1,1,'julio','190.117.246.241',1401201068,'Logged in'),(125,1,1,'julio','190.117.246.241',1401201127,'Email was changed to:&nbsp;&nbsp;mcostach@gmail.com'),(126,1,1,'julio','190.114.248.111',1401216114,'Logged in'),(127,1,1,'julio','190.117.247.36',1401218113,'Email was changed to:&nbsp;&nbsp;jcmoron82@gmail.com'),(128,1,1,'julio','190.117.246.241',1401223428,'Logged out'),(129,1,1,'julio','190.117.246.241',1401223473,'Logged in'),(130,1,1,'julio','190.117.246.241',1401223498,'Logged in'),(131,1,1,'julio','190.117.246.241',1401284937,'Logged in'),(132,1,1,'julio','190.117.247.36',1401284986,'Member profile created:&nbsp;&nbsp;andres'),(133,1,18,'andres','190.117.246.241',1401284995,'Logged in'),(134,1,1,'julio','190.117.246.241',1401295972,'Member profile created:&nbsp;&nbsp;gianfranco'),(135,1,19,'gianfranco','190.117.246.241',1401296126,'Logged in'),(136,1,19,'gianfranco','190.117.247.36',1401301496,'Logged in'),(137,1,19,'gianfranco','190.117.247.36',1401302821,'Logged in'),(138,1,1,'julio','190.117.246.241',1401303483,'Logged in'),(139,1,1,'julio','190.117.246.241',1401303516,'Member profile created:&nbsp;&nbsp;herman.marin'),(140,1,1,'julio','190.117.246.241',1401303520,'Logged out'),(141,1,20,'herman.marin','190.117.246.241',1401303527,'Logged in'),(142,1,19,'gianfranco','190.117.247.36',1401308554,'Logged in'),(143,1,1,'julio','190.117.247.36',1401311741,'Logged in'),(144,1,20,'herman.marin','190.117.247.36',1401312319,'Logged in'),(145,1,20,'herman.marin','190.117.247.36',1401312367,'Member profile created:&nbsp;&nbsp;herman'),(146,1,20,'herman.marin','190.117.246.241',1401316807,'Logged in'),(147,1,20,'herman.marin','190.117.247.36',1401317503,'Logged in'),(148,1,1,'julio','190.117.246.241',1401370673,'Logged in'),(149,1,1,'julio','190.117.246.241',1401370721,'Member profile created:&nbsp;&nbsp;castillo'),(150,1,1,'julio','190.117.247.36',1401374525,'Logged in'),(151,1,20,'herman.marin','190.117.246.241',1401376022,'Logged in'),(152,1,1,'julio','190.117.246.241',1401390430,'Logged in'),(153,1,1,'julio','190.117.247.36',1401395711,'Email was changed to:&nbsp;&nbsp;mcostach@gmail.com'),(154,1,19,'gianfranco','190.117.246.241',1401398505,'Logged in'),(155,1,1,'julio','190.117.247.36',1401398682,'Logged in'),(156,1,1,'julio','190.117.246.241',1401398699,'Email was changed to:&nbsp;&nbsp;jcmoron82@gmail.com'),(157,1,1,'julio','190.117.247.36',1401402857,'Email was changed to:&nbsp;&nbsp;rodulfo.prieto@ayuinc.com'),(158,1,1,'julio','190.117.247.36',1401403212,'Member profile created:&nbsp;&nbsp;rodulfo'),(159,1,19,'gianfranco','190.117.246.241',1401403438,'Logged in'),(160,1,1,'julio','190.117.247.36',1401403880,'Member profile created:&nbsp;&nbsp;rodulfo_admin'),(161,1,24,'rodulfo_admin','190.117.246.241',1401403894,'Logged in'),(162,1,19,'gianfranco','190.117.246.241',1401404402,'Logged in'),(163,1,19,'gianfranco','190.117.246.241',1401404468,'Member profile created:&nbsp;&nbsp;rothhound'),(164,1,19,'gianfranco','190.117.246.241',1401404642,'Member profile created:&nbsp;&nbsp;rodulfo'),(165,1,19,'gianfranco','190.117.246.241',1401404984,'Member profile created:&nbsp;&nbsp;herman'),(166,1,19,'gianfranco','190.117.246.241',1401405153,'Member profile created:&nbsp;&nbsp;herman'),(167,1,19,'gianfranco','190.117.246.241',1401405685,'Logged in'),(168,1,1,'julio','190.117.247.36',1401407612,'Email was changed to:&nbsp;&nbsp;jcmoron82@gmail.com'),(169,1,19,'gianfranco','190.117.246.241',1401407658,'Logged in'),(170,1,1,'julio','190.117.247.36',1401408256,'Member profile created:&nbsp;&nbsp;rodulfo'),(171,1,1,'julio','190.117.247.36',1401459109,'Logged in'),(172,1,1,'julio','190.117.246.241',1401459729,'Member profile created:&nbsp;&nbsp;herman_2'),(173,1,1,'julio','190.117.246.241',1401460112,'Member profile created:&nbsp;&nbsp;andres_1'),(174,1,1,'julio','190.117.246.241',1401461258,'Email was changed to:&nbsp;&nbsp;h@ayuinc.com'),(175,1,1,'julio','190.117.246.241',1401461289,'Email was changed to:&nbsp;&nbsp;herman.marin@ayuinc.com'),(176,1,1,'julio','190.117.247.36',1401466905,'Logged in'),(177,1,19,'gianfranco','190.117.247.36',1401468814,'Logged in'),(178,1,1,'julio','190.117.246.241',1401472323,'Email was changed to:&nbsp;&nbsp;jmoron82@hotmail.com'),(179,1,24,'rodulfo_admin','190.117.246.241',1401478000,'Logged in'),(180,1,20,'herman.marin','190.117.247.36',1401480806,'Logged in'),(181,1,20,'herman.marin','190.117.247.36',1401483114,'Logged in'),(182,1,19,'gianfranco','190.117.247.36',1401483543,'Logged in'),(183,1,1,'julio','190.117.247.36',1401484360,'Logged out'),(184,1,1,'julio','190.117.247.36',1401486389,'Logged in'),(185,1,1,'julio','190.117.247.36',1401486541,'Logged out'),(186,1,1,'julio','190.117.246.241',1401488000,'Logged in'),(187,1,1,'julio','190.117.246.241',1401488124,'Member profile created:&nbsp;&nbsp;rodulfo'),(188,1,20,'herman.marin','190.117.246.241',1401488977,'Logged in'),(189,1,20,'herman.marin','190.117.247.36',1401489372,'Logged in'),(190,1,1,'julio','190.117.246.241',1401490296,'Member profile created:&nbsp;&nbsp;rodulfo'),(191,1,1,'julio','190.117.247.36',1401490354,'Member profile created:&nbsp;&nbsp;cesar'),(192,1,1,'julio','190.117.247.36',1401490422,'Member profile created:&nbsp;&nbsp;jose'),(193,1,1,'julio','190.117.247.36',1401490551,'Member profile created:&nbsp;&nbsp;cesar'),(194,1,1,'julio','190.117.246.241',1401490892,'Logged in'),(195,1,1,'julio','190.117.246.241',1401491064,'Logged in'),(196,1,1,'julio','190.117.246.241',1401491301,'Logged out'),(197,1,1,'julio','190.117.246.241',1401491626,'Logged in'),(198,1,1,'julio','190.117.246.241',1401491697,'Email was changed to:&nbsp;&nbsp;rodulfo.prieto@ayuinc.com'),(199,1,1,'julio','190.117.246.241',1401492105,'Email was changed to:&nbsp;&nbsp;dodd@gmail.com'),(200,1,1,'julio','190.117.246.241',1401492122,'Email was changed to:&nbsp;&nbsp;rodulfoprieto@gmail.com'),(201,1,1,'julio','190.117.247.36',1401494230,'Logged in'),(202,1,1,'julio','190.117.246.241',1401495478,'Logged in'),(203,1,1,'julio','190.117.246.241',1401495479,'Logged in'),(204,1,1,'julio','190.117.247.36',1401495539,'Email was changed to:&nbsp;&nbsp;rodulf@gmail.com'),(205,1,1,'julio','190.117.247.36',1401495547,'Email was changed to:&nbsp;&nbsp;rodulfojprieto@gmail.com'),(206,1,1,'julio','190.117.247.36',1401495901,'Logged in'),(207,1,1,'julio','190.117.246.241',1401497180,'Logged out'),(208,1,1,'julio','190.117.247.36',1401497232,'Logged in'),(209,1,1,'julio','190.117.246.241',1401497284,'Member profile created:&nbsp;&nbsp;peru'),(210,1,1,'julio','190.117.247.36',1401497511,'Logged out'),(211,1,1,'julio','190.43.249.131',1401547325,'Logged in'),(212,1,1,'julio','190.43.249.131',1401548040,'Logged in'),(213,1,1,'julio','190.43.249.131',1401548226,'Logged out'),(214,1,1,'julio','190.43.249.131',1401548795,'Logged in'),(215,1,1,'julio','190.43.249.131',1401548873,'Logged out'),(216,1,1,'julio','190.43.249.131',1401549235,'Logged in'),(217,1,1,'julio','190.43.249.131',1401553805,'Logged in'),(218,1,1,'julio','190.43.249.131',1401558922,'Logged in'),(219,1,1,'julio','190.43.249.131',1401566259,'Logged in'),(220,1,1,'julio','190.43.249.131',1401566941,'Member profile created:&nbsp;&nbsp;pedro'),(221,1,1,'julio','190.117.246.241',1401719020,'Logged in'),(222,1,1,'julio','190.117.246.241',1401729256,'Member profile created:&nbsp;&nbsp;mariana'),(223,1,1,'julio','190.117.246.241',1401729967,'Email was changed to:&nbsp;&nbsp;mariana.costa@ayuinc.com'),(224,1,1,'julio','190.117.246.241',1401737782,'Logged in'),(225,1,1,'julio','190.117.247.36',1401747186,'Logged in'),(226,1,1,'julio','190.117.246.241',1401802512,'Logged in'),(227,1,1,'julio','190.117.247.36',1401807261,'Logged in'),(228,1,1,'julio','190.117.247.36',1401814445,'Logged in'),(229,1,1,'julio','190.117.247.36',1401823670,'Member profile created:&nbsp;&nbsp;herman_1'),(230,1,1,'julio','190.117.247.36',1401824811,'Member profile created:&nbsp;&nbsp;rodulfo'),(231,1,19,'gianfranco','190.117.246.241',1401832433,'Logged in'),(232,1,1,'julio','190.117.247.36',1401832437,'Logged in'),(233,1,1,'julio','190.117.246.241',1401836505,'Member profile created:&nbsp;&nbsp;rodulfo'),(234,1,19,'gianfranco','190.117.246.241',1401841206,'Logged in'),(235,1,19,'gianfranco','190.117.246.241',1401841282,'Member profile created:&nbsp;&nbsp;prueba23'),(236,1,19,'gianfranco','190.117.246.241',1401842317,'Logged in'),(237,1,19,'gianfranco','190.117.246.241',1401843264,'Logged in'),(238,1,19,'gianfranco','190.117.246.241',1401843305,'Member profile created:&nbsp;&nbsp;test_gian'),(239,1,1,'julio','190.117.247.36',1401892743,'Logged in'),(240,1,1,'julio','190.117.246.241',1401896505,'Logged in'),(241,1,1,'julio','190.117.247.36',1401900633,'Logged in'),(242,1,1,'julio','190.117.246.241',1401905752,'Logged in'),(243,1,1,'julio','190.117.247.36',1401914079,'Logged in'),(244,1,1,'julio','190.117.247.36',1401924346,'Email was changed to:&nbsp;&nbsp;ro@gmail.com'),(245,1,1,'julio','190.117.247.36',1401924360,'Member profile created:&nbsp;&nbsp;cliente'),(246,1,1,'julio','190.117.247.36',1401974969,'Logged in'),(247,1,1,'julio','190.117.247.36',1401982344,'Logged in'),(248,1,1,'julio','190.117.247.36',1401985584,'Logged in'),(249,1,1,'julio','190.117.246.241',1401988882,'Logged in'),(250,1,1,'julio','190.117.246.241',1401995115,'Logged in'),(251,1,1,'julio','190.117.247.36',1401999250,'Member profile created:&nbsp;&nbsp;cliente2'),(252,1,1,'julio','190.117.246.241',1402002946,'Logged in'),(253,1,19,'gianfranco','190.117.247.36',1402003880,'Logged in'),(254,1,1,'julio','190.117.246.241',1402006681,'Member profile created:&nbsp;&nbsp;user'),(255,1,1,'julio','190.117.247.36',1402065331,'Logged in'),(256,1,19,'gianfranco','190.117.246.241',1402073917,'Logged in'),(257,1,1,'julio','190.117.246.241',1402074205,'Logged in'),(258,1,1,'julio','190.117.246.241',1402076789,'Logged in'),(259,1,1,'julio','190.117.246.241',1402076943,'Member profile created:&nbsp;&nbsp;gianfranco_1'),(260,1,1,'julio','190.117.247.36',1402080927,'Logged in'),(261,1,1,'julio','190.117.247.36',1402082311,'Logged in'),(262,1,1,'julio','190.117.247.36',1402084449,'Member profile created:&nbsp;&nbsp;test'),(263,1,1,'julio','190.117.247.36',1402089984,'Logged in'),(264,1,1,'julio','190.117.247.32',1402325242,'Logged in'),(265,1,1,'julio','201.230.103.72',1402326876,'Logged in'),(266,1,1,'julio','201.230.103.72',1402326988,'Member profile created:&nbsp;&nbsp;test_admin'),(267,1,1,'julio','201.230.103.72',1402327050,'Member profile created:&nbsp;&nbsp;rothhound'),(268,1,1,'julio','201.230.103.72',1402327172,'Logged out'),(269,1,1,'julio','201.230.103.72',1402327678,'Logged in'),(270,1,1,'julio','201.230.103.72',1402327749,'Member profile created:&nbsp;&nbsp;dendi'),(271,1,1,'julio','201.230.103.72',1402327892,'Member profile created:&nbsp;&nbsp;funnik'),(272,1,1,'julio','201.230.103.72',1402328288,'Member profile created:&nbsp;&nbsp;xboct'),(273,1,1,'julio','190.117.247.32',1402331709,'Logged in'),(274,1,1,'julio','190.117.247.32',1402332004,'Member profile created:&nbsp;&nbsp;mariana'),(275,1,1,'julio','190.117.247.32',1402332126,'Member profile created:&nbsp;&nbsp;jose'),(276,1,1,'julio','190.117.246.221',1402343134,'Logged in'),(277,1,1,'julio','190.117.247.32',1402354925,'Logged in'),(278,1,1,'julio','190.117.246.221',1402411080,'Logged in'),(279,1,1,'julio','190.117.247.32',1402422747,'Logged in'),(280,1,1,'julio','190.117.246.221',1402429337,'Logged in'),(281,1,1,'julio','190.117.246.221',1402433871,'Logged in'),(282,1,1,'julio','190.117.247.32',1402436376,'Member profile created:&nbsp;&nbsp;prueba'),(283,1,1,'julio','190.117.247.32',1402440805,'Email was changed to:&nbsp;&nbsp;jose@gmail.com'),(284,1,1,'julio','190.117.247.32',1402440833,'Member profile created:&nbsp;&nbsp;cliente'),(285,1,1,'julio','190.117.246.221',1402495732,'Logged in'),(286,1,1,'julio','190.117.246.221',1402504892,'Logged in'),(287,1,1,'julio','190.117.246.221',1402505898,'Member profile created:&nbsp;&nbsp;mariana_2014'),(288,1,1,'julio','190.117.247.32',1402508723,'Logged in'),(289,1,1,'julio','190.117.246.221',1402514122,'Logged in'),(290,1,1,'julio','190.117.246.221',1402515339,'Member profile created:&nbsp;&nbsp;cliente_feliz'),(291,1,1,'julio','190.117.247.32',1402521785,'Logged in'),(292,1,1,'julio','190.117.247.32',1402525768,'Logged in'),(293,1,1,'julio','190.117.247.32',1402584100,'Logged in'),(294,1,1,'julio','190.117.246.221',1402615020,'Logged in'),(295,1,1,'julio','190.117.247.32',1402675803,'Logged in'),(296,1,1,'julio','190.117.246.221',1402692735,'Logged in'),(297,1,1,'julio','190.117.247.32',1402929036,'Logged in'),(298,1,1,'julio','190.117.247.32',1402933055,'Logged in'),(299,1,1,'julio','190.117.247.32',1402942524,'Logged in'),(300,1,1,'julio','190.117.246.221',1402953078,'Logged in'),(301,1,1,'julio','190.117.246.221',1402959679,'Logged in'),(302,1,1,'julio','190.117.247.32',1403017374,'Logged in'),(303,1,1,'julio','190.117.246.221',1403017629,'Member profile created:&nbsp;&nbsp;cliente_satisfecho'),(304,1,1,'julio','190.117.246.221',1403017713,'Member profile created:&nbsp;&nbsp;cliente_alegre'),(305,1,1,'julio','190.117.247.32',1403017786,'Member profile created:&nbsp;&nbsp;cliente_problema'),(306,1,1,'julio','190.117.247.32',1403022268,'Email was changed to:&nbsp;&nbsp;rodulfojprieto@gmail.com'),(307,1,1,'julio','190.117.247.32',1403035317,'Logged in'),(308,1,1,'julio','190.117.247.32',1403039960,'Logged in'),(309,1,1,'julio','190.117.246.221',1403046690,'Logged in'),(310,1,1,'julio','190.117.246.221',1403101966,'Logged in'),(311,1,1,'julio','190.117.247.32',1403119014,'Logged in'),(312,1,1,'julio','190.117.246.221',1403132985,'Logged in'),(313,1,1,'julio','190.117.247.32',1403188165,'Logged in'),(314,1,1,'julio','190.117.246.221',1403201152,'Logged in'),(315,1,1,'julio','190.117.246.221',1403206144,'Logged in'),(316,1,1,'julio','190.117.247.32',1403216443,'Logged in'),(317,1,1,'julio','190.117.247.32',1403275073,'Logged in'),(318,1,1,'julio','190.117.247.32',1403281125,'Logged in'),(319,1,1,'julio','190.117.246.221',1403298292,'Logged in'),(320,1,1,'julio','190.117.224.149',1403533726,'Logged in'),(321,1,1,'julio','190.117.224.180',1403541047,'Logged in'),(322,1,1,'julio','190.117.224.180',1403552416,'Logged in'),(323,1,1,'julio','190.235.83.141',1403564541,'Logged in'),(324,1,1,'julio','190.235.83.141',1403570515,'Logged in'),(325,1,1,'julio','190.235.83.141',1403619243,'Logged in'),(326,1,1,'julio','190.235.83.141',1403619353,'Member profile created:&nbsp;&nbsp;mariana'),(327,1,1,'julio','190.235.83.141',1403622580,'Logged in'),(328,1,1,'julio','190.235.83.141',1403626464,'Logged in'),(329,1,1,'julio','190.117.246.111',1403635137,'Logged in'),(330,1,1,'julio','190.117.224.180',1403635164,'Member profile created:&nbsp;&nbsp;gianfranco.montoya'),(331,1,1,'julio','190.117.224.180',1403635169,'Logged out'),(332,1,65,'gianfranco.montoya','190.117.224.180',1403635173,'Logged in'),(333,1,1,'julio','190.235.83.141',1403649067,'Logged in'),(334,1,1,'julio','190.117.224.180',1403708329,'Logged in'),(335,1,1,'julio','190.117.224.180',1403714659,'Logged in'),(336,1,1,'julio','190.117.246.111',1403723369,'Logged in'),(337,1,1,'julio','190.117.224.180',1403729436,'Logged in'),(338,1,1,'julio','190.117.246.111',1403734728,'Logged in'),(339,1,1,'julio','190.117.246.111',1403734828,'Logged in'),(340,1,1,'julio','190.117.224.180',1403795420,'Logged in'),(341,1,1,'julio','190.117.224.180',1403798875,'Email was changed to:&nbsp;&nbsp;cambiar@gmail.com'),(342,1,1,'julio','190.117.246.111',1403812359,'Logged in'),(343,1,1,'julio','190.117.224.180',1403879758,'Logged in'),(344,1,1,'julio','190.117.246.111',1403894632,'Logged in'),(345,1,1,'julio','190.117.224.180',1403904626,'Member profile created:&nbsp;&nbsp;patricia.peche'),(346,1,1,'julio','190.117.224.180',1403908544,'Logged in'),(347,1,1,'julio','190.117.224.180',1403908945,'Member profile created:&nbsp;&nbsp;daniel.tang'),(348,1,1,'julio','190.117.246.111',1403909005,'Member profile created:&nbsp;&nbsp;jorge.caruajulca'),(349,1,1,'julio','190.117.246.111',1403909079,'Member profile created:&nbsp;&nbsp;amelia.espinoza'),(350,1,1,'julio','190.117.224.180',1403909147,'Member profile created:&nbsp;&nbsp;nelly.vasquez'),(351,1,1,'julio','190.117.246.111',1404140733,'Logged in'),(352,1,1,'julio','190.117.246.111',1404147267,'Logged in'),(353,1,1,'julio','190.117.224.180',1404154544,'Logged in'),(354,1,1,'julio','190.117.224.180',1404155373,'Member Field Deleted:&nbsp;&nbsp;Sigla complejo'),(355,1,1,'julio','190.117.224.180',1404164296,'Logged in'),(356,1,1,'julio','190.117.224.180',1404169427,'Screen name was changed to:&nbsp;&nbsp;Agente\nUsername was changed to:&nbsp;&nbsp;agente'),(357,1,1,'julio','190.117.246.111',1404225410,'Logged in'),(358,1,1,'julio','190.117.246.111',1404240573,'Logged in'),(359,1,1,'julio','190.117.224.180',1404244980,'Logged in'),(360,1,1,'julio','190.117.246.111',1404250715,'Logged in'),(361,1,1,'julio','190.117.224.180',1404313533,'Logged in'),(362,1,1,'julio','190.117.224.180',1404317599,'Logged in'),(363,1,1,'julio','190.117.246.111',1404329742,'Logged in'),(364,1,1,'julio','190.117.246.111',1404399148,'Logged in'),(365,1,1,'julio','190.117.246.111',1404406684,'Logged in'),(366,1,1,'julio','190.117.224.180',1404417375,'Logged in'),(367,1,1,'julio','190.117.246.111',1404485612,'Logged in'),(368,1,1,'julio','190.117.246.111',1404513895,'Logged in'),(369,1,1,'julio','190.235.43.177',1404655647,'Logged in'),(370,1,1,'julio','190.117.174.77',1404745114,'Logged in'),(371,1,1,'julio','190.117.174.76',1404753652,'Logged in'),(372,1,1,'julio','190.117.174.77',1404766399,'Logged in'),(373,1,1,'julio','190.117.174.76',1404768673,'Member profile created:&nbsp;&nbsp;alejandro_chilet'),(374,1,1,'julio','190.117.174.76',1404768967,'Member profile created:&nbsp;&nbsp;pedro_prieto'),(375,1,1,'julio','190.117.174.77',1404769167,'Member profile created:&nbsp;&nbsp;christian_pinillos'),(376,1,1,'julio','190.117.174.76',1404769307,'Member profile created:&nbsp;&nbsp;jose_camborda'),(377,1,1,'julio','190.117.174.77',1404769471,'Member profile created:&nbsp;&nbsp;benjamin_dulanto'),(378,1,1,'julio','190.117.174.77',1404769636,'Member profile created:&nbsp;&nbsp;lenny_sellerico'),(379,1,1,'julio','190.117.174.76',1404835945,'Logged in'),(380,1,1,'julio','190.117.174.77',1404844040,'Logged in'),(381,1,1,'julio','190.117.174.77',1404847632,'Logged in'),(382,1,1,'julio','190.117.174.76',1404853101,'Logged in'),(383,1,1,'julio','190.117.174.77',1404858652,'Logged in'),(384,1,1,'julio','190.117.174.76',1404932379,'Logged in'),(385,1,1,'julio','190.117.174.77',1405008134,'Logged in'),(386,1,1,'julio','190.117.174.77',1405088884,'Logged in'),(387,1,1,'julio','190.117.174.77',1405110143,'Logged in'),(388,1,1,'julio','190.117.174.42',1405351136,'Logged in'),(389,1,1,'julio','190.117.174.42',1405355610,'Member profile created:&nbsp;&nbsp;loshiro'),(390,1,1,'julio','190.117.174.45',1405370896,'Logged in'),(391,1,1,'julio','190.117.174.42',1405448243,'Logged in'),(392,1,1,'julio','190.117.174.45',1405451507,'Logged in'),(393,1,1,'julio','190.117.174.45',1405466372,'Logged in'),(394,1,1,'julio','190.117.174.45',1405521067,'Logged in'),(395,1,1,'julio','190.117.174.45',1405535889,'Logged in'),(396,1,1,'julio','190.117.174.45',1405545566,'Logged in'),(397,1,1,'julio','190.117.174.42',1405617975,'Logged in'),(398,1,1,'julio','190.117.174.45',1405619954,'Logged out'),(399,1,1,'julio','190.117.174.45',1405619980,'Logged in'),(400,1,1,'julio','190.117.174.42',1405631477,'Logged in'),(401,1,1,'julio','190.117.174.42',1405695079,'Logged in'),(402,1,1,'julio','190.117.174.45',1405702362,'Logged in'),(403,1,1,'julio','190.117.174.42',1405710652,'Logged in'),(404,1,1,'julio','190.117.174.45',1405717851,'Logged in'),(405,1,1,'julio','190.81.162.67',1405958051,'Logged in'),(406,1,1,'julio','190.117.246.192',1405971736,'Logged in'),(407,1,1,'julio','190.117.246.192',1405971799,'log_settings_updated'),(408,1,1,'julio','190.117.246.192',1405971813,'log_settings_updated'),(409,1,1,'julio','190.117.246.178',1406039571,'Logged in'),(410,1,1,'julio','190.117.246.178',1406046026,'log_settings_updated'),(411,1,1,'julio','190.117.246.178',1406046038,'log_settings_updated'),(412,1,1,'julio','190.117.246.192',1406047142,'Envio correo una dia antes Cron Started'),(413,1,1,'julio','190.117.246.192',1406047142,'Envio correo una dia antes Cron Completed Successfully'),(414,1,1,'julio','190.117.246.178',1406048673,'Member Group Updated:&nbsp;&nbsp;admin_viva'),(415,1,1,'julio','190.117.246.178',1406050614,'Member Field Deleted:&nbsp;&nbsp;dni'),(416,1,1,'julio','190.117.246.178',1406052267,'Member Group Updated:&nbsp;&nbsp;admin_gym'),(417,1,1,'julio','190.117.246.192',1406056345,'Logged in'),(418,1,1,'julio','190.117.246.178',1406060818,'Logged in'),(419,1,1,'julio','190.117.246.192',1406070644,'Member profile created:&nbsp;&nbsp;freddy_rangel'),(420,1,1,'julio','181.66.156.231',1406127457,'Logged in'),(421,1,0,'0','181.66.156.231',1406128212,'Envio correo una dia antes Cron Started'),(422,1,0,'0','181.66.156.231',1406128212,'Envio correo una dia antes Cron Completed Successfully'),(423,1,1,'julio','181.66.156.231',1406134735,'Logged out'),(424,1,1,'julio','181.66.156.231',1406134795,'Logged in'),(425,1,1,'julio','181.66.156.231',1406134929,'Logged out'),(426,1,1,'julio','181.66.156.231',1406134935,'Logged in'),(427,1,1,'julio','190.117.246.178',1406135256,'Logged in'),(428,1,1,'julio','181.66.156.231',1406146713,'Logged in'),(429,1,1,'julio','181.66.156.231',1406149519,'Envio correo una dia antes Cron Started'),(430,1,1,'julio','181.66.156.231',1406149585,'Envio correo una dia antes Cron Started'),(431,1,1,'julio','181.66.156.231',1406149723,'Envio correo una dia antes Cron Started'),(432,1,1,'julio','181.66.156.225',1406153415,'Logged in'),(433,1,1,'julio','181.66.156.225',1406153803,'Envio correo una dia antes Cron Started'),(434,1,1,'julio','181.66.156.225',1406153803,'Envio correo una dia antes Cron Completed Successfully'),(435,1,16,'admin_viva','181.66.156.225',1406154063,'Envio correo una dia antes Cron Started'),(436,1,16,'admin_viva','181.66.156.225',1406154063,'Envio correo una dia antes Cron Completed Successfully'),(437,1,16,'admin_viva','181.66.156.225',1406154601,'Envio correo una dia antes Cron Started'),(438,1,16,'admin_viva','181.66.156.225',1406154601,'Envio correo una dia antes Cron Completed Successfully'),(439,1,36,'cesar','181.66.156.225',1406155247,'Envio correo una dia antes Cron Started'),(440,1,36,'cesar','181.66.156.225',1406155247,'Envio correo una dia antes Cron Completed Successfully'),(441,1,17,'agente','181.66.156.225',1406157141,'Envio correo una dia antes Cron Started'),(442,1,17,'agente','181.66.156.225',1406157141,'Envio correo una dia antes Cron Completed Successfully'),(443,1,17,'agente','181.66.156.225',1406157667,'Envio correo una dia antes Cron Started'),(444,1,17,'agente','181.66.156.225',1406157667,'Envio correo una dia antes Cron Completed Successfully'),(445,1,0,'0','162.243.222.54',1406158201,'Envio correo una dia antes Cron Started'),(446,1,0,'0','162.243.222.54',1406158201,'Envio correo una dia antes Cron Completed Successfully'),(447,1,0,'0','162.243.222.54',1406158801,'Envio correo una dia antes Cron Started'),(448,1,0,'0','162.243.222.54',1406158801,'Envio correo una dia antes Cron Completed Successfully'),(449,1,0,'0','162.243.222.54',1406159401,'Envio correo una dia antes Cron Started'),(450,1,0,'0','162.243.222.54',1406159401,'Envio correo una dia antes Cron Completed Successfully'),(451,1,0,'0','162.243.222.54',1406160001,'Envio correo una dia antes Cron Started'),(452,1,0,'0','162.243.222.54',1406160001,'Envio correo una dia antes Cron Completed Successfully'),(453,1,0,'0','162.243.222.54',1406163601,'Envio correo una dia antes Cron Started'),(454,1,0,'0','162.243.222.54',1406163601,'Envio correo una dia antes Cron Completed Successfully'),(455,1,0,'0','162.243.222.54',1406167201,'Envio correo una dia antes Cron Started'),(456,1,0,'0','162.243.222.54',1406167201,'Envio correo una dia antes Cron Completed Successfully'),(457,1,0,'0','162.243.222.54',1406170801,'Envio correo una dia antes Cron Started'),(458,1,0,'0','162.243.222.54',1406170801,'Envio correo una dia antes Cron Completed Successfully'),(459,1,0,'0','162.243.222.54',1406174401,'Envio correo una dia antes Cron Started'),(460,1,0,'0','162.243.222.54',1406174401,'Envio correo una dia antes Cron Completed Successfully'),(461,1,0,'0','162.243.222.54',1406178001,'Envio correo una dia antes Cron Started'),(462,1,0,'0','162.243.222.54',1406178001,'Envio correo una dia antes Cron Completed Successfully'),(463,1,0,'0','162.243.222.54',1406181601,'Envio correo una dia antes Cron Started'),(464,1,0,'0','162.243.222.54',1406181601,'Envio correo una dia antes Cron Completed Successfully'),(465,1,0,'0','162.243.222.54',1406185201,'Envio correo una dia antes Cron Started'),(466,1,0,'0','162.243.222.54',1406185201,'Envio correo una dia antes Cron Completed Successfully'),(467,1,0,'0','162.243.222.54',1406188801,'Envio correo una dia antes Cron Started'),(468,1,0,'0','162.243.222.54',1406188801,'Envio correo una dia antes Cron Completed Successfully'),(469,1,0,'0','162.243.222.54',1406192401,'Envio correo una dia antes Cron Started'),(470,1,0,'0','162.243.222.54',1406192401,'Envio correo una dia antes Cron Completed Successfully'),(471,1,0,'0','162.243.222.54',1406196001,'Envio correo una dia antes Cron Started'),(472,1,0,'0','162.243.222.54',1406196001,'Envio correo una dia antes Cron Completed Successfully'),(473,1,0,'0','162.243.222.54',1406199601,'Envio correo una dia antes Cron Started'),(474,1,0,'0','162.243.222.54',1406199601,'Envio correo una dia antes Cron Completed Successfully'),(475,1,0,'0','162.243.222.54',1406203201,'Envio correo una dia antes Cron Started'),(476,1,0,'0','162.243.222.54',1406203201,'Envio correo una dia antes Cron Completed Successfully'),(477,1,0,'0','162.243.222.54',1406206801,'Envio correo una dia antes Cron Started'),(478,1,0,'0','162.243.222.54',1406206801,'Envio correo una dia antes Cron Completed Successfully'),(479,1,0,'0','162.243.222.54',1406210401,'Envio correo una dia antes Cron Started'),(480,1,0,'0','162.243.222.54',1406210401,'Envio correo una dia antes Cron Completed Successfully'),(481,1,0,'0','162.243.222.54',1406214001,'Envio correo una dia antes Cron Started'),(482,1,0,'0','162.243.222.54',1406214001,'Envio correo una dia antes Cron Completed Successfully'),(483,1,1,'julio','190.117.246.192',1406214986,'Logged in'),(484,1,1,'julio','190.117.246.178',1406242753,'Logged in'),(485,1,0,'0','162.243.222.54',1406264401,'Envio correo una dia antes Cron Started'),(486,1,0,'0','162.243.222.54',1406264401,'Envio correo una dia antes Cron Completed Successfully'),(487,1,1,'julio','190.117.246.192',1406297738,'Logged in'),(488,1,1,'julio','190.117.246.192',1406302714,'Logged in'),(489,1,1,'julio','190.117.246.178',1406326726,'Logged in'),(490,1,0,'0','162.243.222.54',1406350801,'Envio correo una dia antes Cron Started'),(491,1,0,'0','162.243.222.54',1406350801,'Envio correo una dia antes Cron Completed Successfully'),(492,1,0,'0','162.243.222.54',1406437201,'Envio correo una dia antes Cron Started'),(493,1,0,'0','162.243.222.54',1406437201,'Envio correo una dia antes Cron Completed Successfully'),(494,1,0,'0','162.243.222.54',1406523601,'Envio correo una dia antes Cron Started'),(495,1,0,'0','162.243.222.54',1406523601,'Envio correo una dia antes Cron Completed Successfully'),(496,1,0,'0','162.243.222.54',1406610001,'Envio correo una dia antes Cron Started'),(497,1,0,'0','162.243.222.54',1406610001,'Envio correo una dia antes Cron Completed Successfully'),(498,1,0,'0','162.243.222.54',1406696401,'Envio correo una dia antes Cron Started'),(499,1,0,'0','162.243.222.54',1406696401,'Envio correo una dia antes Cron Completed Successfully'),(500,1,1,'julio','190.117.246.63',1406729609,'Logged in'),(501,1,1,'julio','190.117.246.63',1406729942,'Member Group Updated:&nbsp;&nbsp;admin_gym'),(502,1,1,'julio','190.117.246.111',1406742018,'Logged in'),(503,1,1,'julio','190.117.246.63',1406744892,'Envio correo una dia antes Cron Started'),(504,1,1,'julio','190.117.246.63',1406744892,'Envio correo una dia antes Cron Completed Successfully'),(505,1,1,'julio','190.117.246.111',1406750180,'Logged in'),(506,1,0,'0','162.243.222.54',1406782801,'Envio correo una dia antes Cron Started'),(507,1,0,'0','162.243.222.54',1406782801,'Envio correo una dia antes Cron Completed Successfully'),(508,1,1,'julio','190.117.246.111',1406818319,'Logged in'),(509,1,1,'julio','190.117.246.63',1406821599,'Logged in'),(510,1,1,'julio','190.117.246.63',1406823824,'Member profile created:&nbsp;&nbsp;clientenuevo'),(511,1,1,'julio','190.117.246.111',1406847053,'Logged in'),(512,1,0,'0','162.243.222.54',1406869201,'Envio correo una dia antes Cron Started'),(513,1,0,'0','162.243.222.54',1406869201,'Envio correo una dia antes Cron Completed Successfully'),(514,1,1,'julio','190.117.246.111',1406902266,'Logged in'),(515,1,1,'julio','190.117.246.63',1406908025,'Logged in'),(516,1,1,'julio','190.117.246.63',1406918754,'Logged in'),(517,1,1,'julio','190.117.246.63',1406924043,'Logged in');
/*!40000 ALTER TABLE `exp_cp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_cp_search_index`
--

DROP TABLE IF EXISTS `exp_cp_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_cp_search_index` (
  `search_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(20) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `access` varchar(50) DEFAULT NULL,
  `keywords` text,
  PRIMARY KEY (`search_id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_cp_search_index`
--

LOCK TABLES `exp_cp_search_index` WRITE;
/*!40000 ALTER TABLE `exp_cp_search_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_cp_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_developer_log`
--

DROP TABLE IF EXISTS `exp_developer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_developer_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned NOT NULL,
  `viewed` char(1) NOT NULL DEFAULT 'n',
  `description` text,
  `function` varchar(100) DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `deprecated_since` varchar(10) DEFAULT NULL,
  `use_instead` varchar(100) DEFAULT NULL,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_name` varchar(100) DEFAULT NULL,
  `template_group` varchar(100) DEFAULT NULL,
  `addon_module` varchar(100) DEFAULT NULL,
  `addon_method` varchar(100) DEFAULT NULL,
  `snippets` text,
  `hash` char(32) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_developer_log`
--

LOCK TABLES `exp_developer_log` WRITE;
/*!40000 ALTER TABLE `exp_developer_log` DISABLE KEYS */;
INSERT INTO `exp_developer_log` VALUES (1,1398384983,'y',NULL,'check_xid()',5983,'C:\\wamp\\www\\gym\\system\\expressionengine\\third_party\\user\\mod.user.php','2.8',NULL,0,NULL,NULL,NULL,NULL,NULL,'2bbf13595148f174f6386173779f000c'),(2,1398384983,'y',NULL,'restore_xid()',6013,'C:\\wamp\\www\\gym\\system\\expressionengine\\third_party\\user\\mod.user.php','2.8',NULL,0,NULL,NULL,NULL,NULL,NULL,'b3701dee6695c54d057af2185181e8a8'),(3,1398385850,'y',NULL,'restore_xid()',13717,'C:\\wamp\\www\\gym\\system\\expressionengine\\third_party\\user\\mod.user.php','2.8',NULL,0,NULL,NULL,NULL,NULL,NULL,'bd4d86e0bf888330b6ec11edabe50c64'),(4,1398901883,'y',NULL,'restore_xid()',13717,'C:\\wamp\\www\\VivaGyM_PostVenta\\system\\expressionengine\\third_party\\user\\mod.user.php','2.8',NULL,0,NULL,NULL,NULL,NULL,NULL,'6cb21793becf9d010a206dcf0592ceb1'),(5,1399563614,'y',NULL,'secure_forms_check()',1954,'C:\\wamp\\www\\VivaGyM_PostVenta\\system\\expressionengine\\third_party\\user\\addon_builder\\addon_builder.php','2.8',NULL,0,NULL,NULL,NULL,NULL,NULL,'ab4826d11d980504d5a5cbbff5d8ec29'),(6,1406730592,'n',NULL,'restore_xid()',13717,'system/expressionengine/third_party/user/mod.user.php','2.8',NULL,0,NULL,NULL,NULL,NULL,NULL,'a8b794d9b19ee652b95fa804d17795c9'),(7,1406729954,'n',NULL,'secure_forms_check()',1954,'system/expressionengine/third_party/user/addon_builder/addon_builder.php','2.8',NULL,0,NULL,NULL,NULL,NULL,NULL,'2f54c751f91ee087728743e3b7cbf1ba'),(8,1401312271,'y',NULL,'set_cookie()',6649,'system/expressionengine/third_party/user/mod.user.php','2.8','EE_Input::set_cookie()',0,NULL,NULL,NULL,NULL,NULL,'929dcac8355f99426c22d78769f45daa'),(9,1401312271,'y',NULL,'set_cookie()',765,'system/expressionengine/libraries/Functions.php','2.8','EE_Input::delete_cookie()',0,NULL,NULL,NULL,NULL,NULL,'d466b10c788a916b3e1eb20f9f619595'),(10,1401405506,'y',NULL,'add_to_head()',46,'system/expressionengine/third_party/nsm_morphine_theme/acc.nsm_morphine_theme.php','2.8','CP::add_to_foot() for scripts',0,NULL,NULL,NULL,NULL,NULL,'835af60d36b168c3e8fbfb523a8b3cbf'),(11,1406730605,'n',NULL,'check_xid()',5983,'system/expressionengine/third_party/user/mod.user.php','2.8',NULL,0,NULL,NULL,NULL,NULL,NULL,'5f14659c5f72f042ac11a642966ea37d'),(12,1406730605,'n',NULL,'restore_xid()',6013,'system/expressionengine/third_party/user/mod.user.php','2.8',NULL,0,NULL,NULL,NULL,NULL,NULL,'3fc1cbf25110e5a8f2f72c1e72699c26');
/*!40000 ALTER TABLE `exp_developer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache`
--

DROP TABLE IF EXISTS `exp_email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_sent` int(6) unsigned NOT NULL,
  `from_name` varchar(70) NOT NULL,
  `from_email` varchar(75) NOT NULL,
  `recipient` text NOT NULL,
  `cc` text NOT NULL,
  `bcc` text NOT NULL,
  `recipient_array` mediumtext NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  `plaintext_alt` mediumtext NOT NULL,
  `mailinglist` char(1) NOT NULL DEFAULT 'n',
  `mailtype` varchar(6) NOT NULL,
  `text_fmt` varchar(40) NOT NULL,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `priority` char(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache`
--

LOCK TABLES `exp_email_cache` WRITE;
/*!40000 ALTER TABLE `exp_email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache_mg`
--

DROP TABLE IF EXISTS `exp_email_cache_mg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache_mg` (
  `cache_id` int(6) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache_mg`
--

LOCK TABLES `exp_email_cache_mg` WRITE;
/*!40000 ALTER TABLE `exp_email_cache_mg` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache_mg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache_ml`
--

DROP TABLE IF EXISTS `exp_email_cache_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache_ml` (
  `cache_id` int(6) unsigned NOT NULL,
  `list_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache_ml`
--

LOCK TABLES `exp_email_cache_ml` WRITE;
/*!40000 ALTER TABLE `exp_email_cache_ml` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_console_cache`
--

DROP TABLE IF EXISTS `exp_email_console_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_console_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `recipient` varchar(75) NOT NULL,
  `recipient_name` varchar(50) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_console_cache`
--

LOCK TABLES `exp_email_console_cache` WRITE;
/*!40000 ALTER TABLE `exp_email_console_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_console_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_tracker`
--

DROP TABLE IF EXISTS `exp_email_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_tracker` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_ip` varchar(45) NOT NULL,
  `sender_email` varchar(75) NOT NULL,
  `sender_username` varchar(50) NOT NULL,
  `number_recipients` int(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_tracker`
--

LOCK TABLES `exp_email_tracker` WRITE;
/*!40000 ALTER TABLE `exp_email_tracker` DISABLE KEYS */;
INSERT INTO `exp_email_tracker` VALUES (1,1400694625,'190.117.246.205','jcmoron82@gmail.com','prueba',1),(2,1400694928,'190.117.246.205','jcmoron82@gmail.com','prueba',1),(3,1400695367,'190.117.246.205','jcmoron82@gmail.com','prueba',1),(4,1400695759,'190.117.246.205','jcmoron82@gmail.com','prueba',1),(5,1400695915,'190.117.246.199','jcmoron82@gmail.com','prueba',1),(6,1400699036,'190.117.246.205','admin@gym.com','prueba',1);
/*!40000 ALTER TABLE `exp_email_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_entry_versioning`
--

DROP TABLE IF EXISTS `exp_entry_versioning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_entry_versioning` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `version_date` int(10) NOT NULL,
  `version_data` mediumtext NOT NULL,
  PRIMARY KEY (`version_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_entry_versioning`
--

LOCK TABLES `exp_entry_versioning` WRITE;
/*!40000 ALTER TABLE `exp_entry_versioning` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_entry_versioning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_extensions`
--

DROP TABLE IF EXISTS `exp_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_extensions` (
  `extension_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `hook` varchar(50) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '10',
  `version` varchar(10) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_extensions`
--

LOCK TABLES `exp_extensions` WRITE;
/*!40000 ALTER TABLE `exp_extensions` DISABLE KEYS */;
INSERT INTO `exp_extensions` VALUES (1,'Wiki_ext','files_after_delete','files_after_delete','',5,'2.3','y'),(2,'Rte_ext','myaccount_nav_setup','myaccount_nav_setup','',10,'1.0.1','y'),(3,'Rte_ext','cp_menu_array','cp_menu_array','',10,'1.0.1','y'),(4,'User_ext','insert_comment_start','insert_comment_start','a:0:{}',5,'3.4.5','y'),(5,'User_ext','insert_rating_start','insert_rating_start','a:0:{}',5,'3.4.5','y'),(6,'User_ext','paypalpro_payment_start','paypalpro_payment_start','a:0:{}',5,'3.4.5','y'),(7,'User_ext','cp_members_validate_members','cp_members_validate_members','a:0:{}',1,'3.4.5','y'),(8,'User_ext','delete_entries_start','delete_entries_start','a:0:{}',5,'3.4.5','y'),(9,'Calendar_ext','delete_entries_loop','delete_entries_loop','a:0:{}',10,'1.8.6','y'),(10,'Calendar_ext','entry_submission_end','entry_submission_end','a:0:{}',10,'1.8.6','y'),(11,'Calendar_ext','cp_js_end','cp_js_end','a:0:{}',10,'1.8.6','y'),(12,'Calendar_ext','edit_entries_additional_where','edit_entries_additional_where','a:0:{}',10,'1.8.6','y'),(13,'Calendar_ext','update_multi_entries_start','update_multi_entries_start','a:0:{}',10,'1.8.6','y'),(14,'Calendar_ext','delete_entries_start','delete_entries_start','a:0:{}',10,'1.8.6','y'),(15,'Channel_images_ext','wygwam_config','wygwam_config','a:0:{}',100,'5.4.17','y'),(16,'Channel_images_ext','wygwam_tb_groups','wygwam_tb_groups','a:0:{}',100,'5.4.17','y'),(17,'Channel_images_ext','wygwam_before_display','wygwam_before_display','a:0:{}',100,'5.4.17','y'),(18,'Channel_images_ext','wygwam_before_save','wygwam_before_save','a:0:{}',100,'5.4.17','y'),(19,'Channel_images_ext','wygwam_before_replace','wygwam_before_replace','a:0:{}',100,'5.4.17','y'),(20,'Channel_images_ext','editor_before_display','editor_before_display','a:0:{}',100,'5.4.17','y'),(21,'Channel_images_ext','editor_before_save','editor_before_save','a:0:{}',100,'5.4.17','y'),(22,'Channel_images_ext','editor_before_replace','editor_before_replace','a:0:{}',100,'5.4.17','y'),(23,'Twomile_login_redirect_ext','process_login','member_member_login_single','a:7:{s:33:\"display_confirmation_after_logout\";s:2:\"no\";s:27:\"logout_lastpage_destination\";s:2:\"no\";s:18:\"logout_destination\";s:31:\"http://162.243.222.54/index.php\";s:32:\"display_confirmation_after_login\";s:2:\"no\";s:20:\"lastpage_destination\";s:2:\"no\";s:17:\"login_destination\";s:48:\"http://162.243.222.54/index.php/main/user_select\";s:14:\"login_page_url\";s:13:\"/member/login\";}',7,'2.1.1','y'),(24,'Twomile_login_redirect_ext','process_logout','member_member_logout','a:7:{s:33:\"display_confirmation_after_logout\";s:2:\"no\";s:27:\"logout_lastpage_destination\";s:2:\"no\";s:18:\"logout_destination\";s:31:\"http://162.243.222.54/index.php\";s:32:\"display_confirmation_after_login\";s:2:\"no\";s:20:\"lastpage_destination\";s:2:\"no\";s:17:\"login_destination\";s:48:\"http://162.243.222.54/index.php/main/user_select\";s:14:\"login_page_url\";s:13:\"/member/login\";}',7,'2.1.1','y'),(25,'Member_management_ext','modify_member_manager','member_manager','',1,'1.0','y'),(26,'Nsm_htaccess_generator_ext','entry_submission_end','entry_submission_end','a:0:{}',10,'1.1.6','y'),(27,'Nsm_htaccess_generator_ext','update_template_end','update_template_end','a:0:{}',10,'1.1.6','y'),(28,'Img_autosizer_ext','size_images','entry_submission_start','a:3:{s:7:\"default\";a:4:{s:4:\"name\";s:0:\"\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:8:\"preserve\";i:0;}i:1;a:6:{s:4:\"name\";s:15:\"Fotos_problemas\";s:4:\"path\";s:46:\"/var/www/vivagymposventa/html/fotos_problemas/\";s:3:\"url\";s:38:\"http://162.243.222.54/fotos_problemas/\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:8:\"preserve\";i:0;}i:2;a:6:{s:4:\"name\";s:13:\"informes_viva\";s:4:\"path\";s:44:\"/var/www/vivagymposventa/html/informes_viva/\";s:3:\"url\";s:36:\"http://162.243.222.54/informes_viva/\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:8:\"preserve\";i:0;}}',5,'1.2','y'),(29,'Authenticate_ext','member_member_logout','member_member_logout','',10,'1.2.8','y');
/*!40000 ALTER TABLE `exp_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_formatting`
--

DROP TABLE IF EXISTS `exp_field_formatting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_field_formatting` (
  `formatting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL,
  `field_fmt` varchar(40) NOT NULL,
  PRIMARY KEY (`formatting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_formatting`
--

LOCK TABLES `exp_field_formatting` WRITE;
/*!40000 ALTER TABLE `exp_field_formatting` DISABLE KEYS */;
INSERT INTO `exp_field_formatting` VALUES (1,1,'none'),(2,1,'br'),(3,1,'markdown'),(4,1,'xhtml'),(5,2,'none'),(6,2,'br'),(7,2,'markdown'),(8,2,'xhtml'),(9,3,'none'),(10,3,'br'),(11,3,'markdown'),(12,3,'xhtml'),(13,4,'none'),(14,4,'br'),(15,4,'markdown'),(16,4,'xhtml'),(17,5,'none'),(18,5,'br'),(19,5,'markdown'),(20,5,'xhtml'),(21,6,'none'),(22,6,'br'),(23,6,'markdown'),(24,6,'xhtml'),(25,7,'none'),(26,7,'br'),(27,7,'markdown'),(28,7,'xhtml'),(29,8,'none'),(30,8,'br'),(31,8,'markdown'),(32,8,'xhtml'),(33,9,'none'),(34,9,'br'),(35,9,'markdown'),(36,9,'xhtml'),(44,12,'none'),(43,11,'xhtml'),(42,11,'br'),(41,11,'none'),(45,12,'br'),(46,12,'xhtml'),(47,13,'none'),(48,13,'br'),(49,13,'xhtml'),(50,14,'none'),(51,14,'br'),(52,14,'xhtml'),(53,15,'none'),(54,15,'br'),(55,15,'xhtml'),(56,16,'none'),(57,16,'br'),(58,16,'xhtml'),(59,17,'none'),(60,17,'br'),(61,17,'xhtml');
/*!40000 ALTER TABLE `exp_field_formatting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_groups`
--

DROP TABLE IF EXISTS `exp_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_field_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_groups`
--

LOCK TABLES `exp_field_groups` WRITE;
/*!40000 ALTER TABLE `exp_field_groups` DISABLE KEYS */;
INSERT INTO `exp_field_groups` VALUES (1,1,'solicitud_campos'),(2,1,'ticket_status'),(3,1,'Calendar: Calendars'),(4,1,'Calendar: Events');
/*!40000 ALTER TABLE `exp_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_fieldtypes`
--

DROP TABLE IF EXISTS `exp_fieldtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_fieldtypes` (
  `fieldtype_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` varchar(12) NOT NULL,
  `settings` text,
  `has_global_settings` char(1) DEFAULT 'n',
  PRIMARY KEY (`fieldtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_fieldtypes`
--

LOCK TABLES `exp_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_fieldtypes` DISABLE KEYS */;
INSERT INTO `exp_fieldtypes` VALUES (1,'select','1.0','YTowOnt9','n'),(2,'text','1.0','YTowOnt9','n'),(3,'textarea','1.0','YTowOnt9','n'),(4,'date','1.0','YTowOnt9','n'),(5,'file','1.0','YTowOnt9','n'),(6,'grid','1.0','YTowOnt9','n'),(7,'multi_select','1.0','YTowOnt9','n'),(8,'checkboxes','1.0','YTowOnt9','n'),(9,'radio','1.0','YTowOnt9','n'),(10,'relationship','1.0','YTowOnt9','n'),(11,'rte','1.0','YTowOnt9','n'),(12,'calendar','1.8.6','YTowOnt9','n'),(13,'channel_images','5.4.17','YTowOnt9','n'),(14,'freeform','4.1.8','YTowOnt9','n');
/*!40000 ALTER TABLE `exp_fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_categories`
--

DROP TABLE IF EXISTS `exp_file_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_categories` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `is_cover` char(1) DEFAULT 'n',
  KEY `file_id` (`file_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_categories`
--

LOCK TABLES `exp_file_categories` WRITE;
/*!40000 ALTER TABLE `exp_file_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_dimensions`
--

DROP TABLE IF EXISTS `exp_file_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_dimensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `upload_location_id` int(4) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `short_name` varchar(255) DEFAULT '',
  `resize_type` varchar(50) DEFAULT '',
  `width` int(10) DEFAULT '0',
  `height` int(10) DEFAULT '0',
  `watermark_id` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_location_id` (`upload_location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_dimensions`
--

LOCK TABLES `exp_file_dimensions` WRITE;
/*!40000 ALTER TABLE `exp_file_dimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_watermarks`
--

DROP TABLE IF EXISTS `exp_file_watermarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_watermarks` (
  `wm_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `wm_name` varchar(80) DEFAULT NULL,
  `wm_type` varchar(10) DEFAULT 'text',
  `wm_image_path` varchar(100) DEFAULT NULL,
  `wm_test_image_path` varchar(100) DEFAULT NULL,
  `wm_use_font` char(1) DEFAULT 'y',
  `wm_font` varchar(30) DEFAULT NULL,
  `wm_font_size` int(3) unsigned DEFAULT NULL,
  `wm_text` varchar(100) DEFAULT NULL,
  `wm_vrt_alignment` varchar(10) DEFAULT 'top',
  `wm_hor_alignment` varchar(10) DEFAULT 'left',
  `wm_padding` int(3) unsigned DEFAULT NULL,
  `wm_opacity` int(3) unsigned DEFAULT NULL,
  `wm_hor_offset` int(4) unsigned DEFAULT NULL,
  `wm_vrt_offset` int(4) unsigned DEFAULT NULL,
  `wm_x_transp` int(4) DEFAULT NULL,
  `wm_y_transp` int(4) DEFAULT NULL,
  `wm_font_color` varchar(7) DEFAULT NULL,
  `wm_use_drop_shadow` char(1) DEFAULT 'y',
  `wm_shadow_distance` int(3) unsigned DEFAULT NULL,
  `wm_shadow_color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`wm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_watermarks`
--

LOCK TABLES `exp_file_watermarks` WRITE;
/*!40000 ALTER TABLE `exp_file_watermarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_watermarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_files`
--

DROP TABLE IF EXISTS `exp_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `upload_location_id` int(4) unsigned DEFAULT '0',
  `rel_path` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(10) DEFAULT '0',
  `description` text,
  `credit` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `uploaded_by_member_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) DEFAULT NULL,
  `modified_by_member_id` int(10) unsigned DEFAULT '0',
  `modified_date` int(10) DEFAULT NULL,
  `file_hw_original` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`),
  KEY `upload_location_id` (`upload_location_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_files`
--

LOCK TABLES `exp_files` WRITE;
/*!40000 ALTER TABLE `exp_files` DISABLE KEYS */;
INSERT INTO `exp_files` VALUES (1,1,'gato-bonito1.jpg',1,'C:/wamp/www/gym/fotos_problemas/gato-bonito1.jpg','image/jpeg','gato-bonito1.jpg',32010,NULL,NULL,NULL,1,1398471215,1,1398471215,'301 400');
/*!40000 ALTER TABLE `exp_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_composer_layouts`
--

DROP TABLE IF EXISTS `exp_freeform_composer_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_composer_layouts` (
  `composer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `composer_data` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `preview` char(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`composer_id`),
  KEY `preview` (`preview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_composer_layouts`
--

LOCK TABLES `exp_freeform_composer_layouts` WRITE;
/*!40000 ALTER TABLE `exp_freeform_composer_layouts` DISABLE KEYS */;
INSERT INTO `exp_freeform_composer_layouts` VALUES (1,'{\"rows\":[[[{\"required\":\"no\",\"type\":\"nonfield_title\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"23\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"29\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"10\"}]],[[{\"required\":\"no\",\"type\":\"nonfield_submit\",\"html\":\"Submit\"}]]],\"fields\":[\"23\",\"29\",\"10\"]}',1,'n',1400177070,1400177112),(2,'{\"rows\":[[[{\"required\":\"no\",\"type\":\"nonfield_title\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"23\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"29\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"10\"}]],[[{\"required\":\"no\",\"type\":\"nonfield_submit\",\"html\":\"Submit\"}]]],\"fields\":[\"23\",\"29\",\"10\"]}',1,'y',1400177085,0);
/*!40000 ALTER TABLE `exp_freeform_composer_layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_composer_templates`
--

DROP TABLE IF EXISTS `exp_freeform_composer_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_composer_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `template_name` varchar(150) NOT NULL DEFAULT 'default',
  `template_label` varchar(150) NOT NULL DEFAULT 'default',
  `template_description` text,
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_data` text,
  `param_data` text,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_composer_templates`
--

LOCK TABLES `exp_freeform_composer_templates` WRITE;
/*!40000 ALTER TABLE `exp_freeform_composer_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_freeform_composer_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_fields`
--

DROP TABLE IF EXISTS `exp_freeform_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_fields` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `field_name` varchar(150) NOT NULL DEFAULT 'default',
  `field_label` varchar(150) NOT NULL DEFAULT 'default',
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `settings` text,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `required` char(1) NOT NULL DEFAULT 'n',
  `submissions_page` char(1) NOT NULL DEFAULT 'y',
  `moderation_page` char(1) NOT NULL DEFAULT 'y',
  `composer_use` char(1) NOT NULL DEFAULT 'y',
  `field_description` text,
  PRIMARY KEY (`field_id`),
  KEY `field_name` (`field_name`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_fields`
--

LOCK TABLES `exp_freeform_fields` WRITE;
/*!40000 ALTER TABLE `exp_freeform_fields` DISABLE KEYS */;
INSERT INTO `exp_freeform_fields` VALUES (1,1,'first_name','First Name','text','{\"field_length\":150,\"field_content_type\":\"any\"}',1,1399331291,0,'n','y','y','y','This field contains the user\'s first name.'),(2,1,'last_name','Last Name','text','{\"field_length\":150,\"field_content_type\":\"any\"}',1,1399331291,0,'n','y','y','y','This field contains the user\'s last name.'),(3,1,'email','Email','text','{\"field_length\":\"150\",\"field_content_type\":\"email\",\"disallow_html_rendering\":\"y\"}',1,1399331291,1399334384,'n','y','y','y','A basic email field for collecting stuff like an email address.'),(4,1,'user_message','Message','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',1,1399331291,1399335990,'n','y','y','y','This field contains the user\'s message.'),(5,1,'id_cliente','ID Cliente','text','{\"field_length\":\"20\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399333839,1399334413,'n','y','y','y',''),(6,1,'tipo_de_problema','Tipo de Problema','text','{\"field_length\":\"50\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399333891,1400800166,'n','y','y','y',''),(7,1,'ubicacion','Ubicación','text','{\"field_length\":\"50\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399333970,1399334456,'n','y','y','y',''),(8,1,'foto_problema','Foto del Problema','file_upload','{\"allowed_file_types\":\"jpg|png|gif|jpeg|bmp|tiff\",\"file_upload_location\":\"1\",\"allowed_upload_count\":\"1\",\"overwrite_on_edit\":\"y\",\"disable_xss_clean\":\"y\"}',1,1399334027,1402083909,'n','y','y','y',''),(9,1,'dano_otro_departamento','Daño Otro departamento','text','{\"field_length\":\"10\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399334091,1399334352,'n','y','y','y',''),(10,1,'departamento_en_consulta','Departamento en Consulta','text','{\"field_length\":\"20\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399334161,1399334364,'n','y','y','y',''),(11,1,'nro_otro_departamento_afectado','Nro. Otro Departamento Afectado','text','{\"field_length\":\"20\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399334213,0,'n','y','y','y',''),(12,1,'etapa_solicitud','Etapa solicitud','text','{\"field_length\":\"2\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',1,1399334575,1399395457,'n','y','y','y',''),(13,1,'persona_asignada_viva','Persona Asignada GyM','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399334625,1402091977,'n','y','y','y',''),(14,1,'persona_asignada_gym','Persona Asignada Viva','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399334664,1402091961,'n','y','y','y',''),(15,1,'descripcion_problema','Descripcion Problema','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',1,1399336284,0,'n','y','y','y',''),(16,1,'documento_solicitado','Documento Solicitado','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399396041,0,'n','y','y','y',''),(17,1,'accion_ticket','accion_ticket','text','{\"field_length\":\"50\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399402534,0,'n','y','y','y',''),(18,1,'id_sol_garantia','Id Sol Garantia','text','{\"field_length\":\"10\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',1,1399402590,1399562636,'n','y','y','y',''),(19,1,'orden_tramite','Orden Tramite','text','{\"field_length\":\"2\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',1,1399402785,1401307189,'n','y','y','y',''),(20,1,'dueno_atiende_ticket','Dueño Atiende Ticket','text','{\"field_length\":\"10\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399509128,1399566474,'n','y','y','y',''),(21,1,'relacion_dueno_departamento','Relacion Dueño Departamento','text','{\"field_length\":\"50\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399509166,0,'n','y','y','y',''),(22,1,'nombre_encargado_atencion','Nombre Encargado Atencion','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399509199,0,'n','y','y','y',''),(23,1,'celular_encargado_atencion','Celular Encargado Atencion','text','{\"field_length\":\"50\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399509273,0,'n','y','y','y',''),(24,1,'email_encargado_atencion','Email Encargado Atencion','text','{\"field_length\":\"100\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399509326,0,'n','y','y','y',''),(25,1,'fecha_atencion_ticket','Fecha Atencion Ticket','text','{\"field_length\":\"60\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399509909,1401917569,'n','y','y','y',''),(26,1,'hora_atencion_ticket','Hora  Atencion Ticket','text','{\"field_length\":\"20\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1399509947,0,'n','y','y','y',''),(27,1,'aprobar_paso','Aprobar paso','text','{\"field_length\":\"20\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1400002268,1400535951,'n','y','y','y',''),(28,1,'informe_inspeccion','Informe inspeccion','file_upload','{\"allowed_file_types\":\"*\",\"file_upload_location\":\"2\",\"allowed_upload_count\":\"5\",\"overwrite_on_edit\":\"y\",\"disable_xss_clean\":\"n\"}',1,1400096236,1404513923,'n','y','y','y',''),(29,1,'comentarios','Comentarios','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',1,1400096300,0,'n','y','y','y',''),(30,1,'inspector_asignado','Inspector Asignado','text','{\"field_length\":\"100\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1402334139,0,'n','y','y','y',''),(31,1,'constructor_asignado','Constructor Asignado','text','{\"field_length\":\"100\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1402334178,0,'n','y','y','y',''),(32,1,'reasignar_agenda','Reasignar Agenda','text','{\"field_length\":\"2\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',1,1402949265,1402949291,'n','y','y','y',''),(33,1,'prioridad','Prioridad','text','{\"field_length\":\"2\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',1,1403201258,0,'n','y','y','y',''),(34,1,'comentarios_garantia','Comentarios garantia','text','{\"field_length\":\"250\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1403209315,0,'n','y','y','y',''),(35,1,'cliente_ausente','Cliente ausente','text','{\"field_length\":\"3\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1403301093,0,'n','y','y','y',''),(36,1,'comentario_gym','Comentario gym','text','{\"field_length\":\"250\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1403635699,0,'n','y','y','y',''),(37,1,'fecha_comentario_gym','fecha comentario gym','text','{\"field_length\":\"20\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1403637822,0,'n','y','y','y',''),(38,1,'caso_inactivo','Caso inactivo','text','{\"field_length\":\"2\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',1,1403649139,0,'n','y','y','y',''),(39,1,'fecha_comentario','fecha comentario','text','{\"field_length\":\"20\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1403888121,0,'n','y','y','y',''),(40,1,'id_comentarista','Id comentarista','text','{\"field_length\":\"6\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1403888164,1403888272,'n','y','y','y',''),(41,1,'num_problema','Num problema','text','{\"field_length\":\"2\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1404158098,0,'n','y','y','y',''),(42,1,'nombre_complejo','Nombre complejo','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1404165165,0,'n','y','y','y',''),(43,1,'sigla_complejo','Sigla complejo','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1404165184,0,'n','y','y','y',''),(44,1,'direccion_complejo','Direccion complejo','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1404165196,0,'n','y','y','y',''),(45,1,'nombre_agente','Nombre Agente','text','{\"field_length\":\"50\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1406048059,1406048075,'n','y','y','y',''),(46,1,'motivo_aprobacion','Motivo aprobacion','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1406230890,0,'n','y','y','y','');
/*!40000 ALTER TABLE `exp_freeform_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_fieldtypes`
--

DROP TABLE IF EXISTS `exp_freeform_fieldtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_fieldtypes` (
  `fieldtype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fieldtype_name` varchar(250) DEFAULT NULL,
  `settings` text,
  `default_field` char(1) NOT NULL DEFAULT 'n',
  `version` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`fieldtype_id`),
  KEY `fieldtype_name` (`fieldtype_name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_fieldtypes`
--

LOCK TABLES `exp_freeform_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_freeform_fieldtypes` DISABLE KEYS */;
INSERT INTO `exp_freeform_fieldtypes` VALUES (1,'file_upload','[]','n','4.1.7'),(2,'mailinglist','[]','n','4.1.7'),(3,'text','[]','n','4.1.7'),(4,'textarea','[]','n','4.1.7'),(5,'checkbox','[]','n','4.1.8'),(6,'checkbox_group','[]','n','4.1.8'),(7,'country_select','[]','n','4.1.8'),(8,'file_upload','[]','n','4.1.8'),(9,'hidden','[]','n','4.1.8'),(10,'mailinglist','[]','n','4.1.8'),(11,'multiselect','[]','n','4.1.8'),(12,'province_select','[]','n','4.1.8'),(13,'radio','[]','n','4.1.8'),(14,'select','[]','n','4.1.8'),(15,'state_select','[]','n','4.1.8'),(16,'text','[]','n','4.1.8'),(17,'textarea','[]','n','4.1.8');
/*!40000 ALTER TABLE `exp_freeform_fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_file_uploads`
--

DROP TABLE IF EXISTS `exp_freeform_file_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_file_uploads` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_path` varchar(750) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `extension` varchar(20) DEFAULT NULL,
  `filesize` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  KEY `entry_id` (`entry_id`),
  KEY `field_id` (`field_id`),
  KEY `extension` (`extension`)
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_file_uploads`
--

LOCK TABLES `exp_freeform_file_uploads` WRITE;
/*!40000 ALTER TABLE `exp_freeform_file_uploads` DISABLE KEYS */;
INSERT INTO `exp_freeform_file_uploads` VALUES (341,1,4,1549,28,'/var/www/vivagymposventa/html/informes_viva/','1-homepage.png','png',140),(356,1,4,1651,28,'/var/www/vivagymposventa/html/informes_viva/','gato-bonito14.jpg','jpg',31),(385,1,2,340,8,'/var/www/vivagymposventa/html/fotos_problemas/','chewbacca-2-.jpg','jpg',10),(388,1,4,1933,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel4.jpg','jpg',16),(390,1,4,1910,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel6.jpg','jpg',16),(393,1,4,1940,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel9.jpg','jpg',16),(394,1,4,1900,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel10.jpg','jpg',16),(395,1,4,1952,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel111.jpg','jpg',16),(396,1,4,1956,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel1112.jpg','jpg',16),(397,1,4,1947,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel11113.jpg','jpg',16),(398,1,4,1961,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel111114.jpg','jpg',16),(399,1,2,352,8,'/var/www/vivagymposventa/html/fotos_problemas/','chewbacca-2-1.jpg','jpg',10),(400,1,4,1970,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel1111115.jpg','jpg',16),(401,1,4,1974,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel11111116.jpg','jpg',16),(402,1,4,1974,28,'/var/www/vivagymposventa/html/informes_viva/','chewbacca-2-4.jpg','jpg',10),(403,1,2,354,8,'/var/www/vivagymposventa/html/fotos_problemas/','screen_shot_2014-07-08_at_10.27_.05_pm_.png','png',979),(404,1,2,355,8,'/var/www/vivagymposventa/html/fotos_problemas/','logoayu.png','png',54),(405,1,2,360,8,'/var/www/vivagymposventa/html/fotos_problemas/','logoayu1.png','png',54),(406,1,4,2001,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel111111117.jpg','jpg',16),(407,1,4,2005,28,'/var/www/vivagymposventa/html/informes_viva/','2-vencio-menos-de-2-meses_(1).png','png',224),(408,1,4,2011,28,'/var/www/vivagymposventa/html/informes_viva/','2.a._soat_vence_en_menos_de_2_meses.png','png',286),(409,1,2,362,8,'/var/www/vivagymposventa/html/fotos_problemas/','06-central-hostel2.jpg','jpg',16),(410,1,4,2023,28,'/var/www/vivagymposventa/html/informes_viva/','06-central-hostel1111111118.jpg','jpg',16),(411,1,4,2027,28,'/var/www/vivagymposventa/html/informes_viva/','chewbacca-2-5.jpg','jpg',10),(412,1,2,363,8,'/var/www/vivagymposventa/html/fotos_problemas/','06-central-hostel3.jpg','jpg',16);
/*!40000 ALTER TABLE `exp_freeform_file_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_form_entries_1`
--

DROP TABLE IF EXISTS `exp_freeform_form_entries_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_form_entries_1` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_1` text,
  `form_field_2` text,
  `form_field_4` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_form_entries_1`
--

LOCK TABLES `exp_freeform_form_entries_1` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_1` DISABLE KEYS */;
INSERT INTO `exp_freeform_form_entries_1` VALUES (1,1,0,'y','127.0.0.1',1399331291,1400269315,'pending','Jake','Solspace','por fin funciono esta basura'),(2,1,10,'y','190.117.246.205',1400693897,0,'pending',NULL,NULL,NULL);
/*!40000 ALTER TABLE `exp_freeform_form_entries_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_form_entries_10`
--

DROP TABLE IF EXISTS `exp_freeform_form_entries_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_form_entries_10` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_45` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_form_entries_10`
--

LOCK TABLES `exp_freeform_form_entries_10` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_freeform_form_entries_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_form_entries_2`
--

DROP TABLE IF EXISTS `exp_freeform_form_entries_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_form_entries_2` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_2` text,
  `form_field_3` text,
  `form_field_11` text,
  `form_field_8` text,
  `form_field_9` text,
  `form_field_10` text,
  `form_field_5` text,
  `form_field_6` text,
  `form_field_7` text,
  `form_field_12` text,
  `form_field_13` text,
  `form_field_14` text,
  `form_field_15` text,
  `form_field_30` text,
  `form_field_31` text,
  `form_field_33` text,
  `form_field_34` text,
  `form_field_36` text,
  `form_field_37` text,
  `form_field_38` text,
  `form_field_41` text,
  `form_field_43` text,
  `form_field_46` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_form_entries_2`
--

LOCK TABLES `exp_freeform_form_entries_2` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_2` DISABLE KEYS */;
INSERT INTO `exp_freeform_form_entries_2` VALUES (347,1,36,'y','190.117.246.63',1406751787,1406753082,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Carpintería metálica',NULL,'6','Admin GyM','Administrador Viva','plugin 6','Julio Cesar',NULL,'1',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por garantía'),(346,1,36,'y','190.117.246.111',1406750506,1406751530,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Instalaciones eléctricas',NULL,'4',NULL,'Administrador Viva','ip en user_book_insp',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por excepción'),(345,1,36,'y','190.117.246.111',1406749912,1406750098,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Carpintería de madera',NULL,'4',NULL,'Administrador Viva','plugin 3',NULL,NULL,'1',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por excepción'),(344,1,36,'y','190.117.246.63',1406748272,1406749262,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Carpintería metálica',NULL,'4',NULL,'Administrador Viva','prueba plugin 2',NULL,NULL,'1',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por excepción'),(343,1,36,'y','190.117.246.111',1406746617,1406746913,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Carpintería metálica',NULL,'3',NULL,'Administrador Viva','prueba de plugin',NULL,NULL,'1',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por excepción'),(342,1,36,'y','190.117.246.178',1406327601,1406754325,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Carpintería metálica','','6','Admin GyM','Administrador Viva','dfghjkjhgfd','Julio Cesar','','0','','','','0','','LP SMP','Procede - Por garantía'),(341,1,36,'y','190.117.246.178',1406327402,1406327571,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Instalaciones sanitarias',NULL,'4',NULL,'Administrador Viva','asd',NULL,NULL,'1',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por excepción'),(340,1,16,'y','190.117.246.192',1406297853,1406756219,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','666','chewbacca-2-.jpg','si','401','36','Instalaciones eléctricas',NULL,'6','Admin GyM','Administrador Viva','pruebas','Julio Cesar',NULL,'1',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por excepción'),(348,1,36,'y','190.117.246.63',1406755214,1406756206,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Carpintería metálica',NULL,'6','Admin GyM','Administrador Viva','prueba informe agente','Julio Cesar',NULL,'0',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por garantía'),(349,1,36,'y','190.117.246.63',1406756346,1406761519,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Instalaciones eléctricas',NULL,'10','Admin GyM','Administrador Viva','prueba plugins 6','Julio Cesar','agente_prueba','1',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por garantía'),(350,1,36,'y','190.117.246.111',1406756499,1406761178,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Instalaciones sanitarias',NULL,'10','Admin GyM','Administrador Viva','ghjkl','Julio Cesar','agente_prueba','1',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por garantía'),(351,1,36,'y','190.117.246.63',1406762376,1406826882,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Carpintería metálica',NULL,'3',NULL,'Administrador Viva','agendar admin',NULL,NULL,'1',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por garantía'),(352,1,36,'y','190.117.246.63',1406818384,1406819225,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','666','chewbacca-2-.jpg','si','401','36','Instalaciones eléctricas',NULL,'10','Admin GyM','Administrador Viva','sdfghjjhgf','Julio Cesar','agente_prueba','0',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por excepción'),(353,1,16,'y','190.117.246.111',1406819635,1406819637,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Instalaciones sanitarias',NULL,'1',NULL,NULL,'dfghjkl',NULL,NULL,'1',NULL,NULL,NULL,'0',NULL,'LP SMP',NULL),(354,1,85,'y','190.117.246.63',1406825967,1406831886,'closed','Rodulfo Prieto Diaz','rodulfojprieto@gmail.com','234','screen shot 2014-07-08 at 10.27.05 pm.png','si','','85','Paredes',NULL,'10',NULL,'Administrador Viva','Esto es una prueba',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,'','No procede - Falta de garantía'),(355,1,85,'y','190.117.246.63',1406826436,1406831794,'closed','Rodulfo Prieto Diaz','rodulfojprieto@gmail.com','','logoayu.png','no','','85','Instalaciones eléctricas',NULL,'10',NULL,'Administrador Viva','Prueba máxima',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,'','No procede - Falta mantenimiento'),(356,1,85,'y','190.117.246.63',1406826458,1406828365,'open','Rodulfo Prieto Diaz','rodulfojprieto@gmail.com','','','no','','85','Carpintería de madera',NULL,'10',NULL,'Nelly','Sin foto',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,'','No procede - Falta de garantía'),(357,1,36,'y','190.117.246.63',1406832049,1406832442,'closed','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Instalaciones eléctricas',NULL,'11',NULL,'Administrador Viva','adfghj',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,'LP SMP','No procede - Falta mantenimiento'),(358,1,36,'y','190.117.246.63',1406833055,1406833077,'closed','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Instalaciones sanitarias',NULL,'11',NULL,'Administrador Viva','sdddd',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,'LP SMP','No procede - Falta de garantía'),(359,1,36,'y','190.117.246.63',1406837358,1406838031,'closed','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','','no','401','36','Pisos',NULL,'11','Admin GyM','Administrador Viva','cerrar caso en el 2do paso','Julio Cesar',NULL,'1',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por garantía'),(360,1,85,'y','190.117.246.63',1406837390,1406842010,'open','Rodulfo Prieto Diaz','rodulfojprieto@gmail.com','','logoayu1.png','no','','85','Instalaciones sanitarias',NULL,'10','Admin GyM','utweriuweqr','Prueba completa','juan','Pedro Martinez','1',NULL,NULL,NULL,'0',NULL,'','Procede - Por excepción'),(361,1,85,'y','190.117.246.111',1406842077,1406842214,'open','Rodulfo Prieto Diaz','rodulfojprieto@gmail.com','','','no','','85','Instalaciones eléctricas',NULL,'4',NULL,'Nelly','kjdh',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,'','Procede - Por excepción'),(362,1,36,'y','190.117.246.63',1406843854,1406844825,'closed','Julio Cesar Castillo Morón','jcmoron82@gmail.com','','06-central-hostel2.jpg','si','401','36','Instalaciones sanitarias',NULL,'11','Admin GyM','Administrador Viva','cierre','Julio Cesar','agente_prueba','0',NULL,NULL,NULL,'0',NULL,'LP SMP','Procede - Por garantía'),(363,1,36,'y','190.117.246.63',1406907983,1406907984,'open','Julio Cesar Castillo Morón','jcmoron82@gmail.com','d666','06-central-hostel3.jpg','si','401','36','Instalaciones eléctricas',NULL,'1',NULL,NULL,'prueba luego de revisar js',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,'LP SMP',NULL);
/*!40000 ALTER TABLE `exp_freeform_form_entries_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_form_entries_3`
--

DROP TABLE IF EXISTS `exp_freeform_form_entries_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_form_entries_3` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_5` text,
  `form_field_10` text,
  `form_field_16` text,
  `form_field_24` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_form_entries_3`
--

LOCK TABLES `exp_freeform_form_entries_3` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_3` DISABLE KEYS */;
INSERT INTO `exp_freeform_form_entries_3` VALUES (29,1,36,'y','190.117.174.42',1405357619,1405358032,'open','36','401','Contratos','jcmoron82@hotmail.com'),(30,1,36,'y','190.117.174.42',1405358214,0,'open','36','401','Contratos','jmoron44@hotmail.com'),(31,1,36,'y','190.117.174.45',1405371506,0,'open','36','401','Contratos','jmoron44@hotmail.com'),(32,1,85,'y','190.117.246.111',1406824479,0,'open','85','','Planos','rodulfojprieto@gmail.com');
/*!40000 ALTER TABLE `exp_freeform_form_entries_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_form_entries_4`
--

DROP TABLE IF EXISTS `exp_freeform_form_entries_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_form_entries_4` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_5` text,
  `form_field_17` text,
  `form_field_18` int(10) DEFAULT NULL,
  `form_field_19` int(10) DEFAULT NULL,
  `form_field_20` text,
  `form_field_21` text,
  `form_field_22` text,
  `form_field_23` text,
  `form_field_24` text,
  `form_field_25` text,
  `form_field_26` text,
  `form_field_27` text,
  `form_field_28` text,
  `form_field_29` text,
  `form_field_32` text,
  `form_field_35` text,
  PRIMARY KEY (`entry_id`),
  UNIQUE KEY `form_field_18` (`form_field_18`,`form_field_19`)
) ENGINE=MyISAM AUTO_INCREMENT=2032 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_form_entries_4`
--

LOCK TABLES `exp_freeform_form_entries_4` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_4` DISABLE KEYS */;
INSERT INTO `exp_freeform_form_entries_4` VALUES (2025,1,36,'y','190.117.246.111',1406844317,0,'closed','36','Agendar Arreglo',362,7,'si','','','','','01-08-2014','',NULL,NULL,NULL,'4',NULL),(2026,1,36,'y','190.117.246.111',1406844354,0,'closed','36','GyM Asignar Responsable',362,8,'si','','','','','01-08-2014','','Asignado / agente_prueba',NULL,NULL,NULL,NULL),(2027,1,36,'y','190.117.246.111',1406844409,1406844408,'closed','36','Realizar Arreglo',362,9,NULL,NULL,NULL,NULL,NULL,'31-07-2014',NULL,'Cerrado','chewbacca-2-.jpg',NULL,NULL,'si'),(2028,1,36,'y','190.117.246.111',1406844825,0,'closed','36','Cerrar el caso',362,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cerrado',NULL,NULL,NULL,NULL),(2029,1,36,'y','190.117.246.63',0,0,'open','36','Completar encuesta de satisfacción',362,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2030,1,36,'y','190.117.246.63',1406907984,0,'closed','36','Ingresar Solicitud de Inspección',363,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2031,1,36,'y','190.117.246.63',0,0,'open','36','Procesar Solicitud de Inspección',363,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2017,1,85,'y','190.117.246.111',0,0,'open','85','GyM Asignar Inspector',361,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2018,1,85,'y','190.117.246.111',0,0,'open','85','Realizar Inspección',361,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2019,1,36,'y','190.117.246.63',1406843854,0,'closed','36','Ingresar Solicitud de Inspección',362,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2020,1,36,'y','190.117.246.63',1406843881,0,'closed','36','Procesar Solicitud de Inspección',362,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(2021,1,36,'y','190.117.246.63',1406843989,0,'closed','36','Agendar Inspección',362,3,'si','','','','','05-08-2014','',NULL,NULL,NULL,'4',NULL),(2022,1,36,'y','190.117.246.63',1406844060,0,'closed','36','GyM Asignar Inspector',362,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asignado / Julio Cesar',NULL,NULL,NULL,NULL),(2023,1,36,'y','190.117.246.63',0,1406844132,'closed','36','Realizar Inspección',362,5,NULL,NULL,NULL,NULL,NULL,'31-07-2014',NULL,NULL,'06-central-hostel1111111118.jpg',NULL,NULL,'si'),(2024,1,36,'y','190.117.246.111',1406844293,0,'closed','36','Procesar Informe de Inspección',362,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobado',NULL,'',NULL,NULL),(1999,1,85,'y','190.117.246.63',1406837469,0,'closed','85','Procesar Solicitud de Inspección',360,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(2000,1,36,'y','190.117.246.63',1406837455,0,'closed','36','GyM Asignar Inspector',359,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asignado / Julio Cesar',NULL,NULL,NULL,NULL),(2001,1,36,'y','190.117.246.63',0,1406837531,'closed','36','Realizar Inspección',359,5,NULL,NULL,NULL,NULL,NULL,'31-07-2014',NULL,NULL,'06-central-hostel111111117.jpg',NULL,NULL,'si'),(2002,1,85,'y','190.117.246.111',1406837715,0,'closed','85','Agendar Inspección',360,3,'si','','','','','07-08-2014','',NULL,NULL,NULL,'4',NULL),(2003,1,36,'y','190.117.246.111',1406838031,0,'closed','36','Procesar Informe de Inspección',359,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rechazado',NULL,'',NULL,NULL),(2004,1,85,'y','190.117.246.111',1406838049,0,'closed','85','GyM Asignar Inspector',360,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asignado / juan',NULL,NULL,NULL,NULL),(2005,1,85,'y','190.117.246.111',0,1406838177,'closed','85','Realizar Inspección',360,5,NULL,NULL,NULL,NULL,NULL,'31-07-2014',NULL,NULL,'2-vencio-menos-de-2-meses (1).png',NULL,NULL,'si'),(2006,1,36,'y','190.117.246.111',1406837812,0,'closed','36','Cerrar el caso',359,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cerrado',NULL,NULL,NULL,NULL),(2007,1,36,'y','190.117.246.111',1406837812,0,'open','36','Completar encuesta de satisfacción',359,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL),(2008,1,85,'y','190.117.246.111',1406838297,0,'closed','85','Procesar Informe de Inspección',360,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobado',NULL,'',NULL,NULL),(2009,1,85,'y','190.117.246.63',1406838467,0,'closed','85','Agendar Arreglo',360,7,'si','','','','','08-08-2014','',NULL,NULL,NULL,'4',NULL),(2010,1,85,'y','190.117.246.63',1406839131,0,'closed','85','GyM Asignar Responsable',360,8,'si','','','','','08-08-2014','','Asignado / Pedro Martinez',NULL,NULL,NULL,NULL),(2011,1,85,'y','190.117.246.63',1406839198,1406839197,'closed','85','Realizar Arreglo',360,9,NULL,NULL,NULL,NULL,NULL,'31-07-2014',NULL,'Cerrado','2.a. soat vence en menos de 2 meses.png',NULL,NULL,'si'),(2012,1,85,'y','190.117.246.111',1406840006,0,'closed','85','Cerrar el caso',360,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cerrado',NULL,NULL,NULL,NULL),(2013,1,85,'y','190.117.246.63',0,0,'open','85','Completar encuesta de satisfacción',360,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2014,1,85,'y','190.117.246.111',1406842078,0,'closed','85','Ingresar Solicitud de Inspección',361,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2015,1,85,'y','190.117.246.111',1406842101,0,'closed','85','Procesar Solicitud de Inspección',361,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(2016,1,85,'y','190.117.246.63',1406842214,0,'closed','85','Agendar Inspección',361,3,'si','','','','','05-08-2014','',NULL,NULL,NULL,'1',NULL),(1997,1,36,'y','190.117.246.63',1406837400,0,'closed','36','Agendar Inspección',359,3,'si','','','','','05-08-2014','',NULL,NULL,NULL,'4',NULL),(1998,1,85,'y','190.117.246.63',1406837390,0,'closed','85','Ingresar Solicitud de Inspección',360,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1985,1,85,'y','190.117.246.63',1406831722,0,'closed','85','Cerrar el caso',355,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cerrado',NULL,NULL,NULL,NULL),(1986,1,85,'y','190.117.246.63',1406831886,0,'open','85','Cerrar el caso',354,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cerrado',NULL,NULL,NULL,NULL),(1987,1,36,'y','190.117.246.63',1406832049,0,'closed','36','Ingresar Solicitud de Inspección',357,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1988,1,36,'y','190.117.246.63',1406832442,0,'closed','36','Procesar Solicitud de Inspección',357,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rechazada',NULL,NULL,NULL,NULL),(1989,1,36,'y','190.117.246.63',1406832442,0,'closed','36','Cerrar el caso',357,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cerrado',NULL,NULL,NULL,NULL),(1990,1,36,'y','190.117.246.63',1406832442,0,'open','36','Encuesta de satisfacción',357,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL),(1991,1,36,'y','190.117.246.63',1406833055,0,'closed','36','Ingresar Solicitud de Inspección',358,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1992,1,36,'y','190.117.246.63',1406833077,0,'closed','36','Procesar Solicitud de Inspección',358,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rechazada',NULL,NULL,NULL,NULL),(1993,1,36,'y','190.117.246.63',1406833077,0,'closed','36','Cerrar el caso',358,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cerrado',NULL,NULL,NULL,NULL),(1994,1,36,'y','190.117.246.63',1406833077,0,'open','36','Encuesta de satisfacción',358,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL),(1995,1,36,'y','190.117.246.63',1406837358,0,'closed','36','Ingresar Solicitud de Inspección',359,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1996,1,36,'y','190.117.246.63',1406837374,0,'closed','36','Procesar Solicitud de Inspección',359,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1982,1,85,'y','190.117.246.63',1406826458,0,'closed','85','Ingresar Solicitud de Inspección',356,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1983,1,85,'y','190.117.246.63',1406827041,0,'closed','85','Procesar Solicitud de Inspección',356,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rechazada',NULL,NULL,NULL,NULL),(1984,1,85,'y','190.117.246.63',1406827041,1406831047,'closed','85','Cerrar el caso',356,11,'','','','','','','','Cerrado','','','',''),(1975,1,36,'y','190.117.246.63',0,0,'open','36','Cerrar el caso',352,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1976,1,0,'y','190.117.246.111',1406819636,0,'closed','36','Ingresar Solicitud de Inspección',353,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1977,1,0,'y','190.117.246.111',0,0,'open','36','Procesar Solicitud de Inspección',353,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1978,1,85,'y','190.117.246.63',1406825968,0,'closed','85','Ingresar Solicitud de Inspección',354,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1979,1,85,'y','190.117.246.63',1406831886,0,'closed','85','Procesar Solicitud de Inspección',354,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rechazada',NULL,NULL,NULL,NULL),(1980,1,85,'y','190.117.246.63',1406826437,0,'closed','85','Ingresar Solicitud de Inspección',355,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1981,1,85,'y','190.117.246.63',1406831794,0,'closed','85','Procesar Solicitud de Inspección',355,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rechazada',NULL,NULL,NULL,NULL),(1971,1,36,'y','190.117.246.111',1406818994,0,'closed','36','Procesar Informe de Inspección',352,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobado',NULL,'',NULL,NULL),(1972,1,36,'y','190.117.246.111',1406819110,0,'closed','36','Agendar Arreglo',352,7,'no','Familiar','Pedro Diaz','91235345','jcastillo@hotmail.com','01-08-2014','',NULL,NULL,NULL,'4',NULL),(1973,1,36,'y','190.117.246.63',1406819164,0,'closed','36','GyM Asignar Responsable',352,8,'no','Familiar','Pedro Diaz','91235345','jcastillo@hotmail.com','01-08-2014','','Asignado / agente_prueba',NULL,NULL,NULL,NULL),(1974,1,36,'y','190.117.246.63',1406819225,1406819224,'closed','36','Realizar Arreglo',352,9,NULL,NULL,NULL,NULL,NULL,'31-07-2014',NULL,'Cerrado','06-central-hostel11111116.jpg\nchewbacca-2-.jpg',NULL,NULL,'si'),(1967,1,36,'y','190.117.246.63',1406818637,0,'closed','36','Procesar Solicitud de Inspección',352,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1970,1,36,'y','190.117.246.111',0,1406818910,'closed','36','Realizar Inspección',352,5,NULL,NULL,NULL,NULL,NULL,'31-07-2014',NULL,NULL,'06-central-hostel1111115.jpg',NULL,NULL,'si'),(1968,1,36,'y','190.117.246.63',1406818753,0,'closed','36','Agendar Inspección',352,3,'no','Familiar','Pedro Diaz','91235345','jcastillo@hotmail.com','05-08-2014','',NULL,NULL,NULL,'4',NULL),(1969,1,36,'y','190.117.246.111',1406818843,0,'closed','36','GyM Asignar Inspector',352,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asignado / Julio Cesar',NULL,NULL,NULL,NULL),(1962,1,36,'y','190.117.246.111',0,0,'open','36','Cerrar el caso',349,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1963,1,36,'y','190.117.246.63',1406762377,0,'closed','36','Ingresar Solicitud de Inspección',351,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1964,1,36,'y','190.117.246.63',1406762447,0,'closed','36','Procesar Solicitud de Inspección',351,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1965,1,36,'y','190.117.246.111',0,0,'open','36','Agendar Inspección',351,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1966,1,36,'y','190.117.246.63',1406818384,0,'closed','36','Ingresar Solicitud de Inspección',352,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1961,1,36,'y','190.117.246.63',1406761519,1406761400,'closed','36','Realizar Arreglo',349,9,NULL,NULL,NULL,NULL,NULL,'30-07-2014',NULL,'Cerrado','06-central-hostel111114.jpg',NULL,NULL,'si'),(1956,1,36,'y','190.117.246.63',1406761178,1406761099,'closed','36','Realizar Arreglo',350,9,NULL,NULL,NULL,NULL,NULL,'30-07-2014',NULL,'Cerrado','06-central-hostel1112.jpg',NULL,NULL,'si'),(1957,1,36,'y','190.117.246.63',0,0,'open','36','Cerrar el caso',350,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1958,1,36,'y','190.117.246.63',1406761289,0,'closed','36','Procesar Informe de Inspección',349,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobado',NULL,'',NULL,NULL),(1959,1,36,'y','190.117.246.111',1406761351,0,'closed','36','Agendar Arreglo',349,7,'si','','','','','01-08-2014','',NULL,NULL,NULL,'4',NULL),(1960,1,36,'y','190.117.246.63',1406761365,0,'closed','36','GyM Asignar Responsable',349,8,'si','','','','','01-08-2014','','Asignado / agente_prueba',NULL,NULL,NULL,NULL),(1952,1,36,'y','190.117.246.111',0,1406756940,'closed','36','Realizar Inspección',350,5,NULL,NULL,NULL,NULL,NULL,'30-07-2014',NULL,NULL,'06-central-hostel111.jpg',NULL,NULL,'si'),(1953,1,36,'y','190.117.246.111',1406759228,0,'closed','36','Procesar Informe de Inspección',350,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobado',NULL,'',NULL,NULL),(1954,1,36,'y','190.117.246.63',1406759390,0,'closed','36','Agendar Arreglo',350,7,'si','','','','','01-08-2014','',NULL,NULL,NULL,'4',NULL),(1955,1,36,'y','190.117.246.63',1406759821,0,'closed','36','GyM Asignar Responsable',350,8,'si','','','','','01-08-2014','','Asignado / agente_prueba',NULL,NULL,NULL,NULL),(1949,1,36,'y','190.117.246.111',1406756735,0,'closed','36','Procesar Solicitud de Inspección',350,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1950,1,36,'y','190.117.246.111',1406756823,0,'closed','36','Agendar Inspección',350,3,'si','','','','','05-08-2014','',NULL,NULL,NULL,'4',NULL),(1951,1,36,'y','190.117.246.111',1406756882,0,'closed','36','GyM Asignar Inspector',350,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asignado / Julio Cesar',NULL,NULL,NULL,NULL),(1936,1,36,'y','190.117.246.63',1406755215,0,'closed','36','Ingresar Solicitud de Inspección',348,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1937,1,36,'y','190.117.246.63',1406755235,0,'closed','36','Procesar Solicitud de Inspección',348,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1938,1,36,'y','190.117.246.63',1406755250,0,'closed','36','Agendar Inspección',348,3,'si','','','','','05-08-2014','',NULL,NULL,NULL,'4',NULL),(1939,1,36,'y','190.117.246.63',1406755349,0,'closed','36','GyM Asignar Inspector',348,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asignado / Julio Cesar',NULL,NULL,NULL,NULL),(1940,1,36,'y','190.117.246.63',0,1406755400,'closed','36','Realizar Inspección',348,5,NULL,NULL,NULL,NULL,NULL,'30-07-2014',NULL,NULL,'06-central-hostel9.jpg',NULL,NULL,'si'),(1941,1,36,'y','190.117.246.63',0,0,'open','36','Procesar Informe de Inspección',348,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(1942,1,36,'y','190.117.246.63',0,0,'open','36','Procesar Informe de Inspección',340,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(1943,1,36,'y','190.117.246.63',1406756347,0,'closed','36','Ingresar Solicitud de Inspección',349,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1944,1,36,'y','190.117.246.63',1406756380,0,'closed','36','Procesar Solicitud de Inspección',349,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1945,1,36,'y','190.117.246.63',1406756432,0,'closed','36','Agendar Inspección',349,3,'si','','','','','05-08-2014','',NULL,NULL,NULL,'4',NULL),(1946,1,36,'y','190.117.246.111',1406761229,0,'closed','36','GyM Asignar Inspector',349,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asignado / Julio Cesar',NULL,NULL,NULL,NULL),(1947,1,36,'y','190.117.246.111',0,1406761261,'closed','36','Realizar Inspección',349,5,NULL,NULL,NULL,NULL,NULL,'30-07-2014',NULL,NULL,'06-central-hostel11113.jpg',NULL,NULL,'si'),(1948,1,36,'y','190.117.246.111',1406756500,0,'closed','36','Ingresar Solicitud de Inspección',350,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1934,1,36,'y','190.117.246.111',0,0,'open','36','Procesar Informe de Inspección',347,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(1935,1,36,'y','190.117.246.63',0,0,'open','36','Procesar Informe de Inspección',342,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(1931,1,36,'y','190.117.246.63',1406751843,0,'closed','36','Agendar Inspección',347,3,'si','','','','','05-08-2014','',NULL,NULL,NULL,'4',NULL),(1932,1,36,'y','190.117.246.63',1406752814,0,'closed','36','GyM Asignar Inspector',347,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asignado / Julio Cesar',NULL,NULL,NULL,NULL),(1933,1,36,'y','190.117.246.63',0,1406753885,'open','36','Realizar Inspección',347,5,NULL,NULL,NULL,NULL,NULL,'30-07-2014',NULL,NULL,'06-central-hostel4.jpg',NULL,NULL,'si'),(1916,1,36,'y','<?php echo $ip; ?>',1406749262,0,'closed','36','Agendar Inspección',344,3,'si','','','','','31-07-2014','',NULL,NULL,NULL,'1',NULL),(1917,1,36,'y','190.117.246.63',0,0,'open','36','GyM Asignar Inspector',344,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1918,1,36,'y','190.117.246.63',0,0,'open','36','Realizar Inspección',344,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1919,1,36,'y','190.117.246.111',1406749912,0,'closed','36','Ingresar Solicitud de Inspección',345,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1920,1,36,'y','190.117.246.111',1406749934,0,'closed','36','Procesar Solicitud de Inspección',345,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1921,1,36,'y','<?php echo $ip; ?>',1406750098,0,'closed','36','Agendar Inspección',345,3,'si','','','','','31-07-2014','',NULL,NULL,NULL,'2',NULL),(1922,1,36,'y','<?php echo $ip; ?>',0,0,'open','36','GyM Asignar Inspector',345,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1923,1,36,'y','<?php echo $ip; ?>',0,0,'open','36','Realizar Inspección',345,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1924,1,36,'y','190.117.246.111',1406750506,0,'closed','36','Ingresar Solicitud de Inspección',346,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1925,1,36,'y','190.117.246.111',1406750524,0,'closed','36','Procesar Solicitud de Inspección',346,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1926,1,36,'y','<?php echo $ip; ?>',1406751530,0,'closed','36','Agendar Inspección',346,3,'si','','','','','31-07-2014','',NULL,NULL,NULL,'9',NULL),(1927,1,36,'y','<?php echo $ip; ?>',0,0,'open','36','GyM Asignar Inspector',346,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1928,1,36,'y','<?php echo $ip; ?>',0,0,'open','36','Realizar Inspección',346,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1929,1,36,'y','190.117.246.63',1406751788,0,'closed','36','Ingresar Solicitud de Inspección',347,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1930,1,36,'y','190.117.246.63',1406751821,0,'closed','36','Procesar Solicitud de Inspección',347,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1915,1,36,'y','190.117.246.63',1406748401,0,'closed','36','Procesar Solicitud de Inspección',344,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1913,1,36,'y','190.117.246.111',0,0,'open','36','Agendar Inspección',343,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1914,1,36,'y','190.117.246.63',1406748273,0,'closed','36','Ingresar Solicitud de Inspección',344,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1905,1,36,'y','190.117.246.178',0,0,'open','36','Realizar Inspección',341,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1906,1,36,'y','190.117.246.178',1406327602,0,'closed','36','Ingresar Solicitud de Inspección',342,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1907,1,36,'y','190.117.246.178',1406328185,0,'closed','36','Procesar Solicitud de Inspección',342,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1908,1,36,'y','190.117.246.178',1406730295,0,'closed','36','Agendar Inspección',342,3,'si','','','','','31-07-2014','',NULL,NULL,NULL,'4',NULL),(1909,1,36,'y','190.117.246.63',1406744578,0,'closed','36','GyM Asignar Inspector',342,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asignado / Julio Cesar',NULL,NULL,NULL,NULL),(1910,1,36,'y','190.117.246.63',0,1406754324,'closed','36','Realizar Inspección',342,5,NULL,NULL,NULL,NULL,NULL,'30-07-2014',NULL,NULL,'06-central-hostel6.jpg',NULL,NULL,'si'),(1911,1,36,'y','190.117.246.111',1406746618,0,'closed','36','Ingresar Solicitud de Inspección',343,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1912,1,36,'y','190.117.246.111',1406746913,0,'closed','36','Procesar Solicitud de Inspección',343,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1904,1,36,'y','190.117.246.178',0,0,'open','36','GyM Asignar Inspector',341,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1903,1,36,'y','190.117.246.178',1406327571,0,'closed','36','Agendar Inspección',341,3,'si','','','','','24-07-2014','',NULL,NULL,NULL,'1',NULL),(1902,1,36,'y','190.117.246.178',1406327470,0,'closed','36','Procesar Solicitud de Inspección',341,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1901,1,36,'y','190.117.246.178',1406327403,0,'closed','36','Ingresar Solicitud de Inspección',341,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1900,1,36,'y','190.117.246.192',0,1406756217,'closed','36','Realizar Inspección',340,5,NULL,NULL,NULL,NULL,NULL,'30-07-2014',NULL,NULL,'06-central-hostel10.jpg',NULL,NULL,'si'),(1899,1,36,'y','190.117.246.192',1406325947,0,'closed','36','GyM Asignar Inspector',340,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asignado / Julio Cesar',NULL,NULL,NULL,NULL),(1898,1,16,'y','190.117.246.192',1406301956,0,'closed','16','Agendar Inspección',340,3,'si','','','','','31-07-2014','',NULL,NULL,NULL,'4',NULL),(1897,1,0,'y','190.117.246.192',1406299323,0,'closed','36','Procesar Solicitud de Inspección',340,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aprobada',NULL,NULL,NULL,NULL),(1896,1,0,'y','190.117.246.192',1406297854,0,'closed','36','Ingresar Solicitud de Inspección',340,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `exp_freeform_form_entries_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_form_entries_6`
--

DROP TABLE IF EXISTS `exp_freeform_form_entries_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_form_entries_6` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_18` text,
  `form_field_34` text,
  `form_field_40` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_form_entries_6`
--

LOCK TABLES `exp_freeform_form_entries_6` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_6` DISABLE KEYS */;
INSERT INTO `exp_freeform_form_entries_6` VALUES (1,1,1,'y','190.117.246.111',1403888500,1403891806,'open','254','primer comentario','6'),(48,1,17,'y','190.117.246.111',1404342938,0,'open','261','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(3,1,16,'y','190.117.246.111',1403890482,1403891709,'open','254','no lo lean','16'),(4,1,16,'y','190.117.224.180',1403892705,0,'open','254','union comercio\n','16'),(5,1,17,'y','190.117.224.180',1403892801,0,'open','254','lo q dice el inspector','17'),(6,1,12,'y','190.117.246.111',1403895521,0,'open','254','hemos asignado a tal ','12'),(28,1,17,'y','190.117.224.180',1403902357,0,'open','251','La persona encargada no se encontraba en el inmueble para el arreglo.','17'),(27,1,17,'y','190.117.224.180',1403902291,0,'open','251','La persona encargada no se encontraba en el inmueble para la el arreglo.','17'),(8,1,16,'y','190.117.246.111',1403896117,0,'open','255','comentarios ','16'),(9,1,16,'y','190.117.224.180',1403896151,0,'open','255','otro comentario\n','16'),(10,1,12,'y','190.117.246.111',1403896168,0,'open','255','gym prueba de comentario','12'),(26,1,17,'y','190.117.224.180',1403902290,0,'open','251','La persona encargada no se encontraba en el inmueble para la el arreglo.','17'),(25,1,17,'y','190.117.224.180',1403902075,0,'open','248','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(24,1,17,'y','190.117.224.180',1403901952,0,'open','248','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(23,1,16,'y','190.117.224.180',1403901529,0,'open','256','Procederemos a llamar al cliente para que reagende su cita','16'),(22,1,17,'y','190.117.224.180',1403901469,0,'open','256','La persona encargada no se encontraba en el inmueble.','17'),(21,1,17,'y','190.117.224.180',1403900542,0,'open','255','La persona encargada no se encontraba en el inmueble.','17'),(29,1,17,'y','190.117.224.180',1403902363,0,'open','251','La persona encargada no se encontraba en el inmueble para el arreglo.','17'),(30,1,17,'y','190.117.246.111',1403906505,0,'open','258','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(31,1,17,'y','190.117.246.111',1403907174,0,'open','258','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(32,1,17,'y','190.117.224.180',1403907297,0,'open','258','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(33,1,17,'y','190.117.224.180',1403907415,0,'open','258','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(34,1,17,'y','190.117.224.180',1403907488,0,'open','258','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(35,1,17,'y','190.117.224.180',1403907646,0,'open','258','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(36,1,17,'y','190.117.224.180',1403908262,0,'open','259','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(37,1,17,'y','190.117.224.180',1403908436,0,'open','259','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(38,1,17,'y','190.117.224.180',1403909836,0,'open','259','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(39,1,16,'y','190.117.224.180',1404140397,0,'open','206','prueba de comentario','16'),(40,1,16,'y','190.117.224.180',1404244745,0,'open','261','Prueba de comentario luego de la actualizacion del buscador','16'),(41,1,16,'y','190.117.224.180',1404258034,0,'open','262','blog de notas','16'),(42,1,17,'y','190.117.224.180',1404258163,0,'open','237','La persona encargada no se encontraba en el inmueble para el arreglo.','17'),(43,1,17,'y','190.117.224.180',1404258165,0,'open','237','La persona encargada no se encontraba en el inmueble para el arreglo.','17'),(44,1,16,'y','190.117.246.111',1404339240,0,'open','262','asdasdasd','16'),(45,1,16,'y','190.117.246.111',1404340228,0,'open','262','Prueba de comentarios deben escribir en el blog de comentarios','16'),(46,1,17,'y','190.117.246.111',1404340592,0,'open','261','La persona encargada no se encontraba en el inmueble para el arreglo.','17'),(47,1,17,'y','190.117.246.111',1404340730,0,'open','261','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(49,1,16,'y','190.117.246.111',1404343191,0,'open','263','','16'),(50,1,17,'y','190.117.246.111',1404343274,0,'open','263','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(51,1,17,'y','190.117.246.111',1404343430,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(52,1,17,'y','190.117.246.111',1404343431,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(53,1,17,'y','190.117.246.111',1404343598,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(54,1,17,'y','190.117.246.111',1404343599,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(55,1,17,'y','190.117.246.111',1404343666,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(56,1,17,'y','190.117.246.111',1404343672,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(57,1,17,'y','190.117.224.180',1404399216,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(58,1,17,'y','190.117.224.180',1404399217,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(59,1,17,'y','190.117.246.111',1404400894,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(60,1,17,'y','190.117.246.111',1404400895,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(61,1,17,'y','190.117.246.111',1404401067,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(62,1,17,'y','190.117.246.111',1404401068,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(63,1,17,'y','190.117.246.111',1404401142,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(64,1,17,'y','190.117.246.111',1404401144,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(65,1,17,'y','190.117.246.111',1404401272,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(66,1,17,'y','190.117.246.111',1404401273,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(67,1,17,'y','190.117.246.111',1404401591,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(68,1,17,'y','190.117.246.111',1404401593,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(69,1,17,'y','190.117.246.111',1404401613,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(70,1,17,'y','190.117.246.111',1404401614,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(71,1,17,'y','190.117.246.111',1404402102,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(72,1,17,'y','190.117.246.111',1404402103,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(73,1,17,'y','190.117.246.111',1404403177,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(74,1,17,'y','190.117.246.111',1404403178,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(75,1,17,'y','190.117.246.111',1404403330,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(76,1,17,'y','190.117.246.111',1404403331,0,'open','263','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(77,1,16,'y','190.117.224.180',1404426668,0,'open','259','No entiendo nada!!!!','16'),(78,1,17,'y','190.117.246.111',1404513936,0,'open','246','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(79,1,16,'y','190.117.246.111',1404516360,0,'open','277','','16'),(80,1,16,'y','190.117.246.111',1404516539,0,'open','278','','16'),(81,1,16,'y','190.117.246.111',1404516877,0,'open','280','','16'),(82,1,16,'y','190.117.246.111',1404516945,0,'open','280','','16'),(83,1,16,'y','190.117.246.111',1404517016,0,'open','279','','16'),(84,1,16,'y','190.117.224.180',1404517030,0,'open','280','','16'),(85,1,16,'y','190.117.224.180',1404517058,0,'open','280','','16'),(86,1,16,'y','190.117.246.111',1404517192,0,'open','280','','16'),(87,1,17,'y','190.117.224.180',1404518082,0,'open','279','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(88,1,17,'y','190.117.224.180',1404518301,0,'open','277','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(89,1,17,'y','190.117.246.111',1404518749,0,'open','277','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(90,1,17,'y','190.117.224.180',1404518905,0,'open','277','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(91,1,17,'y','190.117.224.180',1404518942,0,'open','277','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(92,1,16,'y','190.117.246.111',1404519196,0,'open','281','','16'),(93,1,17,'y','190.117.246.111',1404519297,0,'open','281','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(94,1,17,'y','190.117.224.180',1404519495,0,'open','281','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(95,1,16,'y','190.117.224.180',1404519655,0,'open','282','','16'),(96,1,16,'y','190.117.246.111',1404519746,0,'open','282','','16'),(97,1,16,'y','190.117.246.111',1404519790,0,'open','282','','16'),(98,1,16,'y','190.117.246.111',1404519837,0,'open','282','','16'),(99,1,16,'y','190.235.43.177',1404655718,0,'open','283','comentario hecho a proposito, luego de editar el plugin de comentarios','16'),(100,1,16,'y','190.235.43.177',1404655790,0,'open','284','comentario negativo sobre la primera aprobacion','16'),(101,1,17,'y','190.235.43.177',1404656137,0,'open','283','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(102,1,17,'y','190.235.43.177',1404656237,0,'open','283','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(103,1,17,'y','190.235.43.177',1404656350,0,'open','283','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(104,1,17,'y','190.235.43.177',1404656351,0,'open','283','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(105,1,17,'y','190.235.43.177',1404656685,0,'open','283','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(106,1,16,'y','190.235.43.177',1404683248,0,'open','285','Comentario caso no en la primera aprobacion','16'),(107,1,17,'y','190.235.43.177',1404683544,0,'open','286','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(108,1,17,'y','190.235.43.177',1404683628,0,'open','286','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(109,1,17,'y','190.235.43.177',1404683805,0,'open','286','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(110,1,17,'y','190.235.43.177',1404683959,0,'open','287','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(111,1,17,'y','190.235.43.177',1404684054,0,'open','287','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(112,1,17,'y','190.235.43.177',1404684659,0,'open','288','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(113,1,16,'y','190.235.43.177',1404684807,0,'open','288','<?php echo $txt_no; ?>','16'),(114,1,16,'y','190.235.43.177',1404685226,0,'open','288','La persona encargada no se encontraba en el inmueble para el inspección.','16'),(115,1,16,'y','190.235.43.177',1404685278,0,'open','288','La persona encargada no se encontraba en el inmueble para el inspección.','16'),(116,1,16,'y','190.235.43.177',1404685870,0,'open','288','La persona encargada no se encontraba en el inmueble para el inspección.','16'),(117,1,16,'y','190.235.43.177',1404686012,0,'open','288','La persona encargada no se encontraba en el inmueble para el inspección. -','16'),(118,1,16,'y','190.235.43.177',1404686101,0,'open','288','La persona encargada no se encontraba en el inmueble para el inspección. -','16'),(119,1,16,'y','190.117.174.77',1404745251,0,'open','290','prueba de comentario','16'),(120,1,17,'y','190.117.174.77',1404745336,0,'open','290','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(121,1,17,'y','190.117.174.76',1404745689,0,'open','290','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(122,1,17,'y','190.117.174.77',1404745769,0,'open','290','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(123,1,17,'y','190.117.174.77',1404745770,0,'open','290','La persona encargada no se encontraba en el inmueble para la arreglo.','17'),(124,1,17,'y','190.117.174.77',1404746632,0,'open','291','La persona encargada no se encontraba en el inmueble para la arreglo. -','17'),(125,1,12,'y','190.117.174.77',1404760178,0,'open','294','Esto es importante porque el cliente ha llamado varias veces\n','12'),(126,1,17,'y','190.117.174.76',1404760231,0,'open','294','La persona encargada no se encontraba en el inmueble para el inspección.','17'),(127,1,17,'y','190.117.174.77',1404761715,0,'open','295','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(128,1,17,'y','190.117.174.77',1405027748,0,'open','299','La persona encargada no se encontraba en el inmueble para la inspección.','17'),(129,1,17,'y','190.117.174.76',1405029309,0,'open','299','La persona encargada no se encontraba en el inmueble para el arreglo.','17'),(130,1,17,'y','190.117.174.77',1405029924,0,'open','299','La persona encargada no se encontraba en el inmueble para el arreglo.','17'),(131,1,16,'y','201.234.126.99',1405096380,0,'open','301','esto es un comentario','16'),(132,1,17,'y','201.234.126.99',1405466432,0,'open','308','se realizó la inspección. El señor es bastante ignorante... el caño gotea cuando abre la perilla.','17'),(133,1,16,'y','190.117.246.178',1405960323,0,'open','322','comentario de prueba','16'),(134,1,16,'y','190.117.246.192',1406230066,0,'open','334','no procede por','16'),(135,1,16,'y','190.117.246.178',1406230442,0,'open','335','comentario','16'),(136,1,16,'y','190.117.246.192',1406231462,0,'open','337','no pasa','16'),(137,1,70,'y','190.117.246.63',1406827041,0,'open','356','ESTO ES UNA PRUEBA','70'),(138,1,16,'y','190.117.246.63',1406831722,0,'open','355','garantia vencida','16'),(139,1,12,'y','190.117.246.111',1406839146,0,'open','360','esto es un comentario de gym\n','12'),(140,1,17,'y','190.117.246.111',1406839171,0,'open','360','esto es un comentario del agente\n','17');
/*!40000 ALTER TABLE `exp_freeform_form_entries_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_form_entries_8`
--

DROP TABLE IF EXISTS `exp_freeform_form_entries_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_form_entries_8` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_42` text,
  `form_field_43` text,
  `form_field_44` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_form_entries_8`
--

LOCK TABLES `exp_freeform_form_entries_8` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_8` DISABLE KEYS */;
INSERT INTO `exp_freeform_form_entries_8` VALUES (1,1,1,'y','190.117.246.111',1404165235,0,'open','Los Parques de San Martín de Porres','LP SMP','Av. 10 de Junio s/n Cdra.8 - SMP'),(2,1,1,'y','190.117.246.111',1404165427,1404165439,'open','Javier Prado 200','JP MAG','Calle Daniel A. Carrión cuadra 6 alt. de la cuadra 2 de la Av. Javier Prado');
/*!40000 ALTER TABLE `exp_freeform_form_entries_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_form_entries_9`
--

DROP TABLE IF EXISTS `exp_freeform_form_entries_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_form_entries_9` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_5` text,
  `form_field_15` text,
  `form_field_43` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_form_entries_9`
--

LOCK TABLES `exp_freeform_form_entries_9` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_9` DISABLE KEYS */;
INSERT INTO `exp_freeform_form_entries_9` VALUES (1,1,36,'y','190.117.174.77',1405111610,0,'open','36','ejemplo de reclamo','LP SMP'),(2,1,36,'y','190.117.174.77',1405113865,0,'open','36','que sucio','LP SMP'),(3,1,36,'y','190.117.174.77',1405113921,0,'open','36','que sucio','LP SMP'),(4,1,36,'y','190.117.174.77',1405113969,0,'open','36','que sucio','LP SMP'),(5,1,36,'y','190.117.174.77',1405113985,0,'open','36','dqweqwe','LP SMP'),(6,1,36,'y','190.117.174.45',1405352045,0,'open','36','prueba de envio de correo\n','LP SMP'),(7,1,85,'y','190.117.246.111',1406825479,0,'open','85','tengo una sugerencia',''),(8,1,36,'y','190.117.246.63',1406825533,0,'open','36','reclamo de prueba','LP SMP');
/*!40000 ALTER TABLE `exp_freeform_form_entries_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_forms`
--

DROP TABLE IF EXISTS `exp_freeform_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_forms` (
  `form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_name` varchar(150) NOT NULL DEFAULT 'default',
  `form_label` varchar(150) NOT NULL DEFAULT 'default',
  `default_status` varchar(150) NOT NULL DEFAULT 'default',
  `notify_user` char(1) NOT NULL DEFAULT 'n',
  `notify_admin` char(1) NOT NULL DEFAULT 'n',
  `user_email_field` varchar(150) NOT NULL DEFAULT '',
  `user_notification_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_notification_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_notification_email` text,
  `form_description` text,
  `field_ids` text,
  `field_order` text,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `composer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `settings` text,
  PRIMARY KEY (`form_id`),
  KEY `form_name` (`form_name`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_forms`
--

LOCK TABLES `exp_freeform_forms` WRITE;
/*!40000 ALTER TABLE `exp_freeform_forms` DISABLE KEYS */;
INSERT INTO `exp_freeform_forms` VALUES (1,1,'contact','Contact','pending','n','y','',0,1,'jcmoron82@gmail.com','This is a basic contact form.','1|2|4','',0,0,1,1399331291,1399334384,NULL),(2,1,'atencion_por_garantia','Atencion por Garantia','open','n','n','',0,0,'jcmoron82@gmail.com','','2|3|5|6|7|8|9|10|11|12|13|14|15|30|31|33|34|36|37|38|41|43|46','3|2|5|6|7|8|9|10|11|12|13|14|15|30|31|33|34|36|37|38|41|43',0,0,1,1399332484,1406230890,NULL),(3,1,'solicitud_de_documentos','Solicitud de Documentos','open','n','n','',0,0,'jcmoron82@gmail.com','','5|10|16|24','5|10|16|24',0,0,1,1399396002,1405357995,NULL),(4,1,'detalles_ticket','Detalles Ticket','open','n','n','',0,0,'jcmoron82@gmail.com','','5|17|18|19|20|21|22|23|24|25|26|27|28|29|32|35','5',0,0,1,1399402488,1403301093,NULL),(6,1,'comentarios_ticket','Comentarios Ticket','open','n','n','',0,0,'jcmoron82@gmail.com','','18|34|40','18|34|40',0,0,1,1403888016,1403894722,NULL),(8,1,'complejos','Complejos','open','n','n','',0,0,'jcmoron82@gmail.com','','42|43|44','',0,0,1,1404165142,1404165196,NULL),(9,1,'libro_reclamaciones','Libro reclamaciones','open','n','n','',0,0,'jcmoron82@gmail.com','','5|15|43','15|5|43',0,0,1,1405111197,1405111671,NULL),(10,1,'agente_inspector','Agente inspector','open','n','n','',0,0,'jcmoron82@gmail.com','lista de inspectores','45',NULL,0,0,1,1406047985,1406048075,NULL);
/*!40000 ALTER TABLE `exp_freeform_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_multipage_hashes`
--

DROP TABLE IF EXISTS `exp_freeform_multipage_hashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_multipage_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit` char(1) NOT NULL DEFAULT 'n',
  `data` text,
  PRIMARY KEY (`hash_id`),
  KEY `hash` (`hash`),
  KEY `ip_address` (`ip_address`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_multipage_hashes`
--

LOCK TABLES `exp_freeform_multipage_hashes` WRITE;
/*!40000 ALTER TABLE `exp_freeform_multipage_hashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_freeform_multipage_hashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_notification_templates`
--

DROP TABLE IF EXISTS `exp_freeform_notification_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_notification_templates` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `notification_name` varchar(150) NOT NULL DEFAULT 'default',
  `notification_label` varchar(150) NOT NULL DEFAULT 'default',
  `notification_description` text,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `allow_html` char(1) NOT NULL DEFAULT 'n',
  `from_name` varchar(150) NOT NULL DEFAULT '',
  `from_email` varchar(250) NOT NULL DEFAULT '',
  `reply_to_email` varchar(250) NOT NULL DEFAULT '',
  `email_subject` varchar(128) NOT NULL DEFAULT 'default',
  `include_attachments` char(1) NOT NULL DEFAULT 'n',
  `template_data` text,
  PRIMARY KEY (`notification_id`),
  KEY `notification_name` (`notification_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_notification_templates`
--

LOCK TABLES `exp_freeform_notification_templates` WRITE;
/*!40000 ALTER TABLE `exp_freeform_notification_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_freeform_notification_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_params`
--

DROP TABLE IF EXISTS `exp_freeform_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_params` (
  `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`params_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7270 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_params`
--

LOCK TABLES `exp_freeform_params` WRITE;
/*!40000 ALTER TABLE `exp_freeform_params` DISABLE KEYS */;
INSERT INTO `exp_freeform_params` VALUES (7258,1406914120,'{\"form_id\":\"2\",\"edit\":true,\"entry_id\":\"363\",\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/ticket_detail\\/363\",\"inline_error_return\":\"main\\/ticket_detail\\/363\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":false,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":true,\"recipients_list\":[]}'),(7259,1406914120,'{\"form_id\":\"6\",\"edit\":false,\"entry_id\":0,\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/ticket_detail\\/363\",\"inline_error_return\":\"main\\/ticket_detail\\/363\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":false,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":false,\"recipients_list\":[]}'),(7260,1406914120,'{\"form_id\":\"2\",\"edit\":true,\"entry_id\":\"363\",\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/ticket_detail\\/363\",\"inline_error_return\":\"main\\/ticket_detail\\/363\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":false,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":true,\"recipients_list\":[]}'),(7261,1406914122,'{\"form_id\":\"6\",\"edit\":false,\"entry_id\":0,\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/ticket_detail\\/img\",\"inline_error_return\":\"main\\/ticket_detail\\/img\\/favicon.ico\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":false,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":false,\"recipients_list\":[]}'),(7262,1406914125,'{\"form_id\":\"2\",\"edit\":false,\"entry_id\":0,\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/confirm_solicitud_admin\\/36\",\"inline_error_return\":\"main\\/create_caso_admin\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":false,\"recipients_list\":[]}'),(7263,1406915808,'{\"form_id\":\"2\",\"edit\":false,\"entry_id\":0,\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/confirm_solicitud_admin\\/36\",\"inline_error_return\":\"main\\/create_caso_admin\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":false,\"recipients_list\":[]}'),(7264,1406918636,'{\"form_id\":\"2\",\"edit\":false,\"entry_id\":0,\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/confirm_solicitud_admin\\/63\",\"inline_error_return\":\"main\\/create_caso_admin\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":false,\"recipients_list\":[]}'),(7265,1406919781,'{\"form_id\":\"2\",\"edit\":false,\"entry_id\":0,\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/confirm_solicitud_admin\\/36\",\"inline_error_return\":\"main\\/create_caso_admin\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":false,\"recipients_list\":[]}'),(7266,1406919844,'{\"form_id\":\"2\",\"edit\":true,\"entry_id\":\"363\",\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/ticket_detail\\/363\",\"inline_error_return\":\"main\\/ticket_detail\\/363\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":false,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":true,\"recipients_list\":[]}'),(7267,1406919844,'{\"form_id\":\"6\",\"edit\":false,\"entry_id\":0,\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/ticket_detail\\/363\",\"inline_error_return\":\"main\\/ticket_detail\\/363\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":false,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":false,\"recipients_list\":[]}'),(7268,1406919844,'{\"form_id\":\"2\",\"edit\":true,\"entry_id\":\"363\",\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/ticket_detail\\/363\",\"inline_error_return\":\"main\\/ticket_detail\\/363\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":false,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":true,\"recipients_list\":[]}'),(7269,1406919845,'{\"form_id\":\"6\",\"edit\":false,\"entry_id\":0,\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"main\\/ticket_detail\\/img\",\"inline_error_return\":\"main\\/ticket_detail\\/img\\/favicon.ico\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":false,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jcmoron82@gmail.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":false,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"open\",\"allow_status_edit\":false,\"recipients_list\":[]}');
/*!40000 ALTER TABLE `exp_freeform_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_preferences`
--

DROP TABLE IF EXISTS `exp_freeform_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_preferences` (
  `preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `preference_name` varchar(80) DEFAULT NULL,
  `preference_value` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`preference_id`),
  KEY `preference_name` (`preference_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_preferences`
--

LOCK TABLES `exp_freeform_preferences` WRITE;
/*!40000 ALTER TABLE `exp_freeform_preferences` DISABLE KEYS */;
INSERT INTO `exp_freeform_preferences` VALUES (1,'ffp','y',0);
/*!40000 ALTER TABLE `exp_freeform_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_user_email`
--

DROP TABLE IF EXISTS `exp_freeform_user_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_user_email` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_count` int(10) unsigned NOT NULL DEFAULT '0',
  `email_addresses` text,
  PRIMARY KEY (`email_id`),
  KEY `ip_address` (`ip_address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_user_email`
--

LOCK TABLES `exp_freeform_user_email` WRITE;
/*!40000 ALTER TABLE `exp_freeform_user_email` DISABLE KEYS */;
INSERT INTO `exp_freeform_user_email` VALUES (1,1,10,'190.117.246.205',1400693897,1,2,1,'jcmoron82@gmail.com');
/*!40000 ALTER TABLE `exp_freeform_user_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_global_variables`
--

DROP TABLE IF EXISTS `exp_global_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_global_variables` (
  `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `variable_name` varchar(50) NOT NULL,
  `variable_data` text NOT NULL,
  PRIMARY KEY (`variable_id`),
  KEY `variable_name` (`variable_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_global_variables`
--

LOCK TABLES `exp_global_variables` WRITE;
/*!40000 ALTER TABLE `exp_global_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_global_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_grid_columns`
--

DROP TABLE IF EXISTS `exp_grid_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_grid_columns` (
  `col_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `col_order` int(3) unsigned DEFAULT NULL,
  `col_type` varchar(50) DEFAULT NULL,
  `col_label` varchar(50) DEFAULT NULL,
  `col_name` varchar(32) DEFAULT NULL,
  `col_instructions` text,
  `col_required` char(1) DEFAULT NULL,
  `col_search` char(1) DEFAULT NULL,
  `col_width` int(3) unsigned DEFAULT NULL,
  `col_settings` text,
  PRIMARY KEY (`col_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_grid_columns`
--

LOCK TABLES `exp_grid_columns` WRITE;
/*!40000 ALTER TABLE `exp_grid_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_grid_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_html_buttons`
--

DROP TABLE IF EXISTS `exp_html_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_html_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `tag_name` varchar(32) NOT NULL,
  `tag_open` varchar(120) NOT NULL,
  `tag_close` varchar(120) NOT NULL,
  `accesskey` varchar(32) NOT NULL,
  `tag_order` int(3) unsigned NOT NULL,
  `tag_row` char(1) NOT NULL DEFAULT '1',
  `classname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_html_buttons`
--

LOCK TABLES `exp_html_buttons` WRITE;
/*!40000 ALTER TABLE `exp_html_buttons` DISABLE KEYS */;
INSERT INTO `exp_html_buttons` VALUES (1,1,0,'b','<strong>','</strong>','b',1,'1','btn_b'),(2,1,0,'i','<em>','</em>','i',2,'1','btn_i'),(3,1,0,'blockquote','<blockquote>','</blockquote>','q',3,'1','btn_blockquote'),(4,1,0,'a','<a href=\"[![Link:!:http://]!]\"(!( title=\"[![Title]!]\")!)>','</a>','a',4,'1','btn_a'),(5,1,0,'img','<img src=\"[![Link:!:http://]!]\" alt=\"[![Alternative text]!]\" />','','',5,'1','btn_img');
/*!40000 ALTER TABLE `exp_html_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_layout_publish`
--

DROP TABLE IF EXISTS `exp_layout_publish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_layout_publish` (
  `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_group` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(4) unsigned NOT NULL DEFAULT '0',
  `field_layout` text,
  PRIMARY KEY (`layout_id`),
  KEY `site_id` (`site_id`),
  KEY `member_group` (`member_group`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_layout_publish`
--

LOCK TABLES `exp_layout_publish` WRITE;
/*!40000 ALTER TABLE `exp_layout_publish` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_layout_publish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_mailing_list`
--

DROP TABLE IF EXISTS `exp_mailing_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_mailing_list` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` int(7) unsigned NOT NULL,
  `authcode` varchar(10) NOT NULL,
  `email` varchar(75) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `list_id` (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_mailing_list`
--

LOCK TABLES `exp_mailing_list` WRITE;
/*!40000 ALTER TABLE `exp_mailing_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_mailing_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_mailing_list_queue`
--

DROP TABLE IF EXISTS `exp_mailing_list_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_mailing_list_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(75) NOT NULL,
  `list_id` int(7) unsigned NOT NULL DEFAULT '0',
  `authcode` varchar(10) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`queue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_mailing_list_queue`
--

LOCK TABLES `exp_mailing_list_queue` WRITE;
/*!40000 ALTER TABLE `exp_mailing_list_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_mailing_list_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_mailing_lists`
--

DROP TABLE IF EXISTS `exp_mailing_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_mailing_lists` (
  `list_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `list_name` varchar(40) NOT NULL,
  `list_title` varchar(100) NOT NULL,
  `list_template` text NOT NULL,
  PRIMARY KEY (`list_id`),
  KEY `list_name` (`list_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_mailing_lists`
--

LOCK TABLES `exp_mailing_lists` WRITE;
/*!40000 ALTER TABLE `exp_mailing_lists` DISABLE KEYS */;
INSERT INTO `exp_mailing_lists` VALUES (1,'default','Default Mailing List','{message_text}\n\nTo remove your email from this mailing list, click here:\n{if html_email}<a href=\\\"{unsubscribe_url}\\\">{unsubscribe_url}</a>{/if}\n{if plain_email}{unsubscribe_url}{/if}');
/*!40000 ALTER TABLE `exp_mailing_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_bulletin_board`
--

DROP TABLE IF EXISTS `exp_member_bulletin_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_bulletin_board` (
  `bulletin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `bulletin_group` int(8) unsigned NOT NULL,
  `bulletin_date` int(10) unsigned NOT NULL,
  `hash` varchar(10) NOT NULL DEFAULT '',
  `bulletin_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `bulletin_message` text NOT NULL,
  PRIMARY KEY (`bulletin_id`),
  KEY `sender_id` (`sender_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_bulletin_board`
--

LOCK TABLES `exp_member_bulletin_board` WRITE;
/*!40000 ALTER TABLE `exp_member_bulletin_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_bulletin_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_data`
--

DROP TABLE IF EXISTS `exp_member_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_data` (
  `member_id` int(10) unsigned NOT NULL,
  `m_field_id_1` varchar(100) DEFAULT NULL,
  `m_field_id_2` varchar(100) DEFAULT NULL,
  `m_field_id_3` varchar(100) DEFAULT NULL,
  `m_field_id_4` varchar(100) DEFAULT NULL,
  `m_field_id_5` varchar(50) DEFAULT NULL,
  `m_field_id_6` varchar(50) DEFAULT NULL,
  `m_field_id_7` varchar(100) DEFAULT NULL,
  `m_field_id_8` varchar(100) DEFAULT NULL,
  `m_field_id_9` varchar(100) DEFAULT NULL,
  `m_field_id_10` varchar(100) DEFAULT NULL,
  `m_field_id_11` varchar(100) DEFAULT NULL,
  `m_field_id_12` varchar(100) DEFAULT NULL,
  `m_field_id_13` varchar(100) DEFAULT NULL,
  `m_field_id_14` varchar(100) DEFAULT NULL,
  `m_field_id_15` varchar(2) DEFAULT NULL,
  `m_field_id_16` varchar(10) DEFAULT NULL,
  `m_field_id_17` varchar(100) DEFAULT NULL,
  `m_field_id_18` varchar(100) DEFAULT NULL,
  `m_field_id_19` varchar(100) DEFAULT NULL,
  `m_field_id_20` varchar(100) DEFAULT NULL,
  `m_field_id_21` varchar(20) DEFAULT NULL,
  `m_field_id_22` varchar(100) DEFAULT NULL,
  `m_field_id_24` varchar(10) DEFAULT NULL,
  `m_field_id_26` varchar(20) DEFAULT NULL,
  `m_field_id_27` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_data`
--

LOCK TABLES `exp_member_data` WRITE;
/*!40000 ALTER TABLE `exp_member_data` DISABLE KEYS */;
INSERT INTO `exp_member_data` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'','','pat','mat','4123123','923234234','','','','','','','','','','insp_viva',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ejecutor','345345'),(15,'','','','','','','','','','','','','','','','user_gym',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'','','Castillo','Moron','4123123','964194692','66111','3333333','','','','','','Administrador_Viva','1','admin_viva','','jmoron@hot.com','','','','','','',''),(12,'','','','','','','','','','','','','','','','admin_gym',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'','','','','','','','','','','','','','','','insp_viva',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'','default','Montoya','Suárez','4661588','969854642','','','','','','','','Gianfranco','1',NULL,'','gms122@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'','','','','','','','','','','','','','','','user_dep','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'401','default','Castillo','Morón','3590684','964194692','3590099','4251873','pat inq','mat inq','66666666666','9999999','email@inq.com','Julio Cesar','1','','Peru','jcmoron82@gmail.com','Los Parques de San Martín de Porres','F','22-04-2014','Av. 10 de Junio s/n Cdra.8 - SMP','LP SMP','',''),(24,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'','No','Ibarra','Martínez','1234567','980504023','','','','','','','','Andrés','1','','','andres@andres.com','','','','','',NULL,NULL),(37,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'','No','Prueba','Prueba','','954188893','','','','','','','','Prueba','1',NULL,'','p@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'201','Si','Prieto','Diaz','8758765768ssss','954188893','8798765876ssss','12345sss','Marins','Martinezssss','965456sss','12345689012sss','hm@gmail.comsss','Rodulfo','0','','Herman','rodulfojprieto@gmail.com','Los Parques de San Martín de Porres','A','14-06-2008','Av. 10 de Junio s/n Cdra.8 - San Martín de Porres',NULL,NULL,NULL),(50,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'','','','','','','','','','','','','','','0','user_dep','','rodulfojprieto@gmail.com','Los Parques de San Martín de Porres','F',NULL,NULL,NULL,NULL,NULL),(52,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'103','Si','Costa','Checa','','997350298','','','Ortiz','Pereyra','','','','Mariana','1','','Juan','mcostach@gmail.com','Los Parques de San Martín de Porres','B','22-01-2002','Av. 10 de Junio s/n Cdra.8 - SMP','LP SMP',NULL,NULL),(57,'102','No','Perez','Rua','444444444','999999999999','444444444','44444444','','','','','','Andres','1','','','jmoron82@hotmail.com','Los Parques de San Martín de Porres','A',NULL,NULL,NULL,NULL,NULL),(64,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'','','','','','','','','','','','','','','','','','patricia.peche@gym.com.pe','','','','',NULL,NULL,NULL),(61,'305','default','Prieto','Diaz','','954188893','','','','','','','','Rodulfo','1','','','rodulfojprieto@gmail.com','Los Parques de San Martín de Porres','A','14-06-2008','Av. 10 de Junio s/n Cdra.8 - San Martín de Porres','JP MAG',NULL,NULL),(62,'201','Si','Costa','Checa','2025381441','2025381441','2025381441','2025381441','Perez','','','','','Mariana','1','','Juan','mcostach@gmail.com','Los Parques de San Martín de Porres','B','22-01-2002','Av. 10 de Junio s/n Cdra.8 - SMP','',NULL,NULL),(63,'103','','','','','','','','','','','','','','0','','','','Los Parques de San Martín de Porres','B','22-01-1998','Av. 10 de Junio s/n Cdra.8 - San Martín de Porres','',NULL,NULL),(67,'','','','','','','','','','','','','','','','','','daniel.tang@gym.com.pe','','','','',NULL,NULL,NULL),(68,'','','','','','','','','','','','','','','','','','jorge.caruajulca@gym.com.pe','','','','',NULL,NULL,NULL),(69,'','','','','','','','','','','','','','','','','','amelia.espinoza@gym.com.pe','','','','',NULL,NULL,NULL),(70,'','','','','','','','','','','','','','','','','','nelly.vasquez@gym.com.pe','','','','',NULL,NULL,NULL),(71,'','','Chilet','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'inspector','1234567'),(72,'305','','','','','','','','','','','','','','1','user_dep','','','Los Parques de San Martín de Porres','B','22-04-2014','Av. 10 de Junio s/n Cdra.8 - San Martín de Porres','LP SMP',NULL,NULL),(73,'405','','','','','','','','','','','','','','0','user_dep','','','Los Parques de San Martín de Porres','B','14-01-2014','Av. 10 de Junio s/n Cdra.8 - SMP','LP SMP',NULL,NULL),(74,'105','No','Camborda','Landi','','952505716','','','','','','','','Jose Luis','1','user_dep','','jcamborda@gym.com.pe','Los Parques de San Martín de Porres','A','22-04-2014','Av. 10 de Junio s/n Cdra.8 - SMP','LP SMP',NULL,NULL),(75,'220','','','','','','','','','','','','','','0','user_dep','','','Los Parques de San Martín de Porres','B','06-10-2013','Av. 10 de Junio s/n Cdra.8 - SMP','LP SMP',NULL,NULL),(76,'203','','','','','','','','','','','','','','0','user_dep','','','Los Parques de San Martín de Porres','A','22-01-2012','Av. 10 de Junio s/n Cdra.8 - SMP','LP SMP',NULL,NULL),(77,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,NULL,NULL,'pat','mat','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ejecutor','345345'),(80,NULL,NULL,'Castillo','Moron','23456','9876543',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ejecutor','345345'),(81,'','','','','','','','','','','','','','','0','user_dep','','','','','','','','',''),(82,NULL,NULL,'Castillo','Moron','4251873','964194692',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'inspector','41851791'),(83,NULL,NULL,'pat','mat','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ejecutor','43234543'),(84,NULL,NULL,'pat','mat','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'inspector','1234567'),(85,'','No','Prieto','Diaz','01 221 2685','2212685','01 221 2685','01 221 2685','','','','','','Rodulfo','1','user_dep','','rodulfojprieto@gmail.com','','','','','','','');
/*!40000 ALTER TABLE `exp_member_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_fields`
--

DROP TABLE IF EXISTS `exp_member_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_fields` (
  `m_field_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `m_field_name` varchar(32) NOT NULL,
  `m_field_label` varchar(50) NOT NULL,
  `m_field_description` text NOT NULL,
  `m_field_type` varchar(12) NOT NULL DEFAULT 'text',
  `m_field_list_items` text NOT NULL,
  `m_field_ta_rows` tinyint(2) DEFAULT '8',
  `m_field_maxl` smallint(3) NOT NULL,
  `m_field_width` varchar(6) NOT NULL,
  `m_field_search` char(1) NOT NULL DEFAULT 'y',
  `m_field_required` char(1) NOT NULL DEFAULT 'n',
  `m_field_public` char(1) NOT NULL DEFAULT 'y',
  `m_field_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_cp_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_fmt` char(5) NOT NULL DEFAULT 'none',
  `m_field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`m_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_fields`
--

LOCK TABLES `exp_member_fields` WRITE;
/*!40000 ALTER TABLE `exp_member_fields` DISABLE KEYS */;
INSERT INTO `exp_member_fields` VALUES (1,'cod_depa','Código de Departamento','','text','',10,100,'100%','y','n','y','y','y','none',1),(2,'propietario','Propietario o Inquilino','Propietario o Inquilino','text','Si\nNo',10,100,'100%','y','n','y','y','y','none',2),(3,'ap_pat','Apellidos Paterno','Apellidos Paterno','text','',10,100,'100%','y','n','y','y','y','none',3),(4,'ap_mat','Apellidos Materno','Apellidos Materno','text','',10,100,'100%','y','n','y','y','y','none',4),(5,'t_fijo','Teléfono Fijo','Teléfono Fijo','text','',10,50,'100%','y','n','y','y','y','none',5),(6,'t_cel','Teléfono Celular','Teléfono Celular','text','',10,50,'100%','y','n','y','y','y','none',6),(7,'t_conyu','Teléfono Conyugue','','text','',10,100,'100%','y','n','y','n','n','none',7),(8,'t_ofic','Teléfono Oficina','','text','',10,100,'100%','y','n','y','n','n','none',8),(9,'ap_pat_inq','Apellidos Paterno Inquilino','','text','',10,100,'100%','y','n','y','n','n','none',9),(10,'ap_mat_inq','Apellidos Materno Inquilino','','text','',10,100,'100%','y','n','y','n','n','none',10),(11,'telf_inq','Teléfono Inquilino','','text','',10,100,'100%','y','n','y','n','n','none',11),(12,'telf_cel_inq','Teléfono Celular Inquilino','','text','',10,100,'100%','y','n','y','n','n','none',12),(13,'email_inquilino','Email Inquilino','','text','',10,100,'100%','y','n','y','n','n','none',13),(14,'nombre_propietario','Nombre del Propietario','','text','',10,100,'100%','y','n','y','n','n','none',14),(15,'act_datos','Actualizar Datos','','text','',10,2,'100%','y','n','y','n','n','none',15),(16,'tipo_usuario','Tipo de usuario','','text','',10,20,'100%','y','n','y','n','n','none',16),(17,'nombre_inq','Nombre Inquilino','','text','',10,100,'100%','y','n','y','n','n','none',17),(18,'email_propietario','Email propietario','','text','',10,100,'100%','y','n','y','n','n','none',18),(19,'complejo_depa','Complejo departamento','complejo_depa','text','',10,100,'100%','y','n','y','n','n','none',19),(20,'torre_depa','Torre departamento','torre_depa','text','',10,100,'100%','y','n','y','n','n','none',20),(21,'fecha_entrega','Fecha entrega','','text','',10,20,'100%','y','n','y','n','n','none',21),(22,'dir_depa','Dirección departamento','','text','',10,100,'100%','y','n','y','n','n','none',22),(24,'sigla_complejo','Sigla complejo','','text','',10,10,'100%','y','n','y','n','n','none',23),(27,'dni','DNI','','text','',10,8,'100%','y','n','y','n','n','none',25),(26,'rol','Rol','','text','',10,20,'100%','y','n','y','n','n','none',25);
/*!40000 ALTER TABLE `exp_member_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_groups`
--

DROP TABLE IF EXISTS `exp_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_title` varchar(100) NOT NULL,
  `group_description` text NOT NULL,
  `is_locked` char(1) NOT NULL DEFAULT 'y',
  `can_view_offline_system` char(1) NOT NULL DEFAULT 'n',
  `can_view_online_system` char(1) NOT NULL DEFAULT 'y',
  `can_access_cp` char(1) NOT NULL DEFAULT 'y',
  `can_access_content` char(1) NOT NULL DEFAULT 'n',
  `can_access_publish` char(1) NOT NULL DEFAULT 'n',
  `can_access_edit` char(1) NOT NULL DEFAULT 'n',
  `can_access_files` char(1) NOT NULL DEFAULT 'n',
  `can_access_fieldtypes` char(1) NOT NULL DEFAULT 'n',
  `can_access_design` char(1) NOT NULL DEFAULT 'n',
  `can_access_addons` char(1) NOT NULL DEFAULT 'n',
  `can_access_modules` char(1) NOT NULL DEFAULT 'n',
  `can_access_extensions` char(1) NOT NULL DEFAULT 'n',
  `can_access_accessories` char(1) NOT NULL DEFAULT 'n',
  `can_access_plugins` char(1) NOT NULL DEFAULT 'n',
  `can_access_members` char(1) NOT NULL DEFAULT 'n',
  `can_access_admin` char(1) NOT NULL DEFAULT 'n',
  `can_access_sys_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_content_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_tools` char(1) NOT NULL DEFAULT 'n',
  `can_access_comm` char(1) NOT NULL DEFAULT 'n',
  `can_access_utilities` char(1) NOT NULL DEFAULT 'n',
  `can_access_data` char(1) NOT NULL DEFAULT 'n',
  `can_access_logs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_channels` char(1) NOT NULL DEFAULT 'n',
  `can_admin_upload_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_design` char(1) NOT NULL DEFAULT 'n',
  `can_admin_members` char(1) NOT NULL DEFAULT 'n',
  `can_delete_members` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_groups` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_templates` char(1) NOT NULL DEFAULT 'n',
  `can_ban_users` char(1) NOT NULL DEFAULT 'n',
  `can_admin_modules` char(1) NOT NULL DEFAULT 'n',
  `can_admin_templates` char(1) NOT NULL DEFAULT 'n',
  `can_edit_categories` char(1) NOT NULL DEFAULT 'n',
  `can_delete_categories` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_edit_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_assign_post_authors` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self_entries` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_entries` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_moderate_comments` char(1) NOT NULL DEFAULT 'n',
  `can_send_email` char(1) NOT NULL DEFAULT 'n',
  `can_send_cached_email` char(1) NOT NULL DEFAULT 'n',
  `can_email_member_groups` char(1) NOT NULL DEFAULT 'n',
  `can_email_mailinglist` char(1) NOT NULL DEFAULT 'n',
  `can_email_from_profile` char(1) NOT NULL DEFAULT 'n',
  `can_view_profiles` char(1) NOT NULL DEFAULT 'n',
  `can_edit_html_buttons` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self` char(1) NOT NULL DEFAULT 'n',
  `mbr_delete_notify_emails` varchar(255) DEFAULT NULL,
  `can_post_comments` char(1) NOT NULL DEFAULT 'n',
  `exclude_from_moderation` char(1) NOT NULL DEFAULT 'n',
  `can_search` char(1) NOT NULL DEFAULT 'n',
  `search_flood_control` mediumint(5) unsigned NOT NULL,
  `can_send_private_messages` char(1) NOT NULL DEFAULT 'n',
  `prv_msg_send_limit` smallint(5) unsigned NOT NULL DEFAULT '20',
  `prv_msg_storage_limit` smallint(5) unsigned NOT NULL DEFAULT '60',
  `can_attach_in_private_messages` char(1) NOT NULL DEFAULT 'n',
  `can_send_bulletins` char(1) NOT NULL DEFAULT 'n',
  `include_in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `include_in_memberlist` char(1) NOT NULL DEFAULT 'y',
  `include_in_mailinglists` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`group_id`,`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_groups`
--

LOCK TABLES `exp_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_member_groups` DISABLE KEYS */;
INSERT INTO `exp_member_groups` VALUES (1,1,'Super Admins','','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','','y','y','y',0,'y',20,60,'y','y','y','y','y'),(2,1,'Banned','','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','','n','n','n',60,'n',20,60,'n','n','n','n','n'),(3,1,'Guests','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),(4,1,'Pending','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),(5,1,'Members','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','y','y','n','','y','n','y',10,'y',20,60,'y','n','n','y','y'),(6,1,'user_dep','','n','y','y','n','y','y','y','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',2,'n',20,60,'n','n','n','n','n'),(7,1,'admin_viva','','y','n','y','y','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','n','n','n','n','n','n','n','y','y','n','y','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),(8,1,'admin_gym','','n','n','y','y','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','n','n','n','n','n','n','n','y','y','y','y','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','y','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),(9,1,'insp_viva','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),(10,1,'user_gym','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n');
/*!40000 ALTER TABLE `exp_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_homepage`
--

DROP TABLE IF EXISTS `exp_member_homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_homepage` (
  `member_id` int(10) unsigned NOT NULL,
  `recent_entries` char(1) NOT NULL DEFAULT 'l',
  `recent_entries_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_comments` char(1) NOT NULL DEFAULT 'l',
  `recent_comments_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_members` char(1) NOT NULL DEFAULT 'n',
  `recent_members_order` int(3) unsigned NOT NULL DEFAULT '0',
  `site_statistics` char(1) NOT NULL DEFAULT 'r',
  `site_statistics_order` int(3) unsigned NOT NULL DEFAULT '0',
  `member_search_form` char(1) NOT NULL DEFAULT 'n',
  `member_search_form_order` int(3) unsigned NOT NULL DEFAULT '0',
  `notepad` char(1) NOT NULL DEFAULT 'r',
  `notepad_order` int(3) unsigned NOT NULL DEFAULT '0',
  `bulletin_board` char(1) NOT NULL DEFAULT 'r',
  `bulletin_board_order` int(3) unsigned NOT NULL DEFAULT '0',
  `pmachine_news_feed` char(1) NOT NULL DEFAULT 'n',
  `pmachine_news_feed_order` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_homepage`
--

LOCK TABLES `exp_member_homepage` WRITE;
/*!40000 ALTER TABLE `exp_member_homepage` DISABLE KEYS */;
INSERT INTO `exp_member_homepage` VALUES (1,'l',1,'l',2,'n',0,'r',1,'n',0,'r',2,'r',0,'l',0),(16,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(37,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(13,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(12,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(17,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(15,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(18,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(51,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(20,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(40,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(36,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(42,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(24,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(52,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(43,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(31,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(38,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(59,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(50,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(56,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(80,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(54,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(57,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(64,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(61,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(62,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(63,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(65,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(66,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(67,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(68,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(69,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(70,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(71,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(72,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(73,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(74,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(75,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(76,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(77,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(79,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(81,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(82,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(83,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(84,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(85,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0);
/*!40000 ALTER TABLE `exp_member_homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_search`
--

DROP TABLE IF EXISTS `exp_member_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `search_date` int(10) unsigned NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `fields` varchar(200) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL,
  `query` text NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_search`
--

LOCK TABLES `exp_member_search` WRITE;
/*!40000 ALTER TABLE `exp_member_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_members`
--

DROP TABLE IF EXISTS `exp_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_members` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` smallint(4) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL DEFAULT '',
  `unique_id` varchar(40) NOT NULL,
  `crypt_key` varchar(40) DEFAULT NULL,
  `authcode` varchar(10) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `occupation` varchar(80) DEFAULT NULL,
  `interests` varchar(120) DEFAULT NULL,
  `bday_d` int(2) DEFAULT NULL,
  `bday_m` int(2) DEFAULT NULL,
  `bday_y` int(4) DEFAULT NULL,
  `aol_im` varchar(50) DEFAULT NULL,
  `yahoo_im` varchar(50) DEFAULT NULL,
  `msn_im` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `bio` text,
  `signature` text,
  `avatar_filename` varchar(120) DEFAULT NULL,
  `avatar_width` int(4) unsigned DEFAULT NULL,
  `avatar_height` int(4) unsigned DEFAULT NULL,
  `photo_filename` varchar(120) DEFAULT NULL,
  `photo_width` int(4) unsigned DEFAULT NULL,
  `photo_height` int(4) unsigned DEFAULT NULL,
  `sig_img_filename` varchar(120) DEFAULT NULL,
  `sig_img_width` int(4) unsigned DEFAULT NULL,
  `sig_img_height` int(4) unsigned DEFAULT NULL,
  `ignore_list` text,
  `private_messages` int(4) unsigned NOT NULL DEFAULT '0',
  `accept_messages` char(1) NOT NULL DEFAULT 'y',
  `last_view_bulletins` int(10) NOT NULL DEFAULT '0',
  `last_bulletin_date` int(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `join_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `total_entries` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `accept_admin_email` char(1) NOT NULL DEFAULT 'y',
  `accept_user_email` char(1) NOT NULL DEFAULT 'y',
  `notify_by_default` char(1) NOT NULL DEFAULT 'y',
  `notify_of_pm` char(1) NOT NULL DEFAULT 'y',
  `display_avatars` char(1) NOT NULL DEFAULT 'y',
  `display_signatures` char(1) NOT NULL DEFAULT 'y',
  `parse_smileys` char(1) NOT NULL DEFAULT 'y',
  `smart_notifications` char(1) NOT NULL DEFAULT 'y',
  `language` varchar(50) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `time_format` char(2) NOT NULL DEFAULT '12',
  `date_format` varchar(8) NOT NULL DEFAULT '%n/%j/%y',
  `include_seconds` char(1) NOT NULL DEFAULT 'n',
  `cp_theme` varchar(32) DEFAULT NULL,
  `profile_theme` varchar(32) DEFAULT NULL,
  `forum_theme` varchar(32) DEFAULT NULL,
  `tracker` text,
  `template_size` varchar(2) NOT NULL DEFAULT '28',
  `notepad` text,
  `notepad_size` varchar(2) NOT NULL DEFAULT '18',
  `quick_links` text,
  `quick_tabs` text,
  `show_sidebar` char(1) NOT NULL DEFAULT 'n',
  `pmember_id` int(10) NOT NULL DEFAULT '0',
  `rte_enabled` char(1) NOT NULL DEFAULT 'y',
  `rte_toolset_id` int(10) NOT NULL DEFAULT '0',
  `profile_views` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`),
  KEY `group_id` (`group_id`),
  KEY `unique_id` (`unique_id`),
  KEY `password` (`password`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_members`
--

LOCK TABLES `exp_members` WRITE;
/*!40000 ALTER TABLE `exp_members` DISABLE KEYS */;
INSERT INTO `exp_members` VALUES (1,1,'julio','julio','f12a4f4ee29a2ff71c38879a305cf0091c78d61496e0b9693a9b70755262e71a1253fcc4e92d8dcdb5cd71c2552057e57b3b100fe1c6332a5366f382ebe5a9ba','j?:MbSd_!@J}vkY6<yp5oC|@\'}u~D/xrkrcRF\'|^yUe3&Fx3RB@CJgL/l0^@_wV6SaV/BEQF#,&T)?8aO+/\"O.X9(CYsB/taMTGW77/)8vbR9t3oo-dvLOTT8<_6\\ksc','6c52bbd69719b974f69a472adb1688a7d6fe762e','8c12439e28d0a93a07d10dfb89ab85c76a42bd1c',NULL,'sd2@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'::1',1398383318,1406908623,1406924041,59,0,0,0,1398819070,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18','','Atencion por Garantia: Entries|C=addons_modules&M=show_module_cp&module=freeform&method=entries&form_id=2&msg=edit_entry_success|1','n',0,'y',0,0),(16,7,'admin_viva','Administrador_Viva','7759333019087f648f0756ad5b28f9798e07f901f29780871573d411ca0795edab20d0accbe7b85c2cae0d93ea7996ff713f46d2e8debc027fe115099dff73d6','9{LY@p\"0ZKV:1ps`nB7ar|/L}~bl[kszF?9!1`(.uoDSMo:drYmn*{^SA~I+FPZtU;5Bv<_(W{o+**f:|4zsTO&PDRYFOKZ>#_R_\'!!?lx<@WamU:uCZ[7`VocxFf4wi','ac47a9943e9c7a81a5ef9b8d7362fbf8d6f207d4','eb3c088d23f18147f15dab1f54e74e3cd17dad94',NULL,'jmoron@hot.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.199',1400189257,1406848484,1406919781,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,15),(17,9,'agente','Agente','d17d735e2a080f14144d66c35cd3561ee2417e6289678377fbe4d75719b1980119ec621c8dec2e8c18a672219fd65accf255b88d34028e82545eba2d220c40d1','D@+,EA+L*3KPuV=}z-o=+e)c)|8WA6:0|^Ge>EJQbav*{6II}m/FJ99.T-<?%]ZU`BriM#ePC~&M?\'oo:&19E7+zlzYX?.;1gK+Y_Sm\\n}x,QPqAu;8O3)S/HrsHOc[B','8b2361618af175b69e9e36e6a603041eb3abab1e','110d3b7e8ab200991e0d76e433f0e8a5556f1846',NULL,'peru_test@hotmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.199',1400189857,1406819198,1406844425,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(12,8,'gym_user','Admin GyM','3b06e0ceabb4ae7c77ed641b0e37c49958d07bcf60a73445d218bd5d22d5654b79e1926741ec865afbb9c8c3d2b60997c296869e9a934608928dee2d6a21c71f','A86X|^-Bn:\\K3ok\'f7Lir*zY\'Foh(U:jc\\O0ek.Z/4|%C<^L}<9Q=A7`*BSwBcs+[[WaCB?bEu;RPO#%c{OD32beJ^.&Ee[h/`Lh(id3qv6aWEnj%>oAtvq^M5hX$yOp','5c43caabc528f2003fc913cd08e1ecaf3a9265ea','0f18470d6df28c419841ee109f8a17b8c6b49432',NULL,'admin@gym.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'::1',1400017995,1406819150,1406844336,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,77),(15,10,'constructor','Constructor','8cc3f4e3b86f363432538425b2f80d8a7c3a934a058f8dc79aeb2987a7f04526ca9bfaf05441776b1a9f99f2284d4b5fa46ee18ed4948cf52d5aead067cdbe25','C&IM}*6fM&![KHv7LW\\qtt_(t90v#BL[l?U)WC+.)Cy6UUO?:n7IWIdX~JY`ZXi+]#2h4}!tPGSkm+L0e1:O:b0Ws`,?Db9LE&3>-UE6pTYl6#Zu!l}\\)zF;U0Ydls6v','366eeda70b4f1735dab248f73422ce313f24af87','28eac55edce3cfc7c89f76025b0f3957cb971948',NULL,'cons@gym.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'::1',1400179958,1403027513,1403107247,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(38,7,'pedro','Pedro Vivar','b71012f411a3bd351f9c2651aff5810087f1c3e35a92da6d73b8f4512c6c4f057d9888834173100e6dc80537b81bf56feae4d004c04d2bf28fe28065d3b6f5b9','.PY7Z}R:o\\>nWu:dj{:rdQ:8>fV,Xz~kf[j48}4}\"$]T>:iOon`LY_O%f#q(E}&?qehM2x%sR,Ok\\.9vu]H-_A]<E{oV49CoNn+K,2q<9Gb/w1m6q_/Oyn!G,j|4Dg7?','9037173c838df5a4a58211e678583995f63ffda6','1ef940c6e43e7f9e89ef3af79e7280bc9cfac867',NULL,'pedro@hot.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.43.249.131',1401566941,1401566960,1401567275,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(18,1,'andres','andres','a98e89bd662d9864d495c8152e76f11275bd10b9e02e8f6a0e291f3f028e45ae6740784b87cb6adefe90a8448f579a5a41ad45fe8761508274a5a0cd1398c2b2','LZU=ey.fbJDe0%p\"Pt}`en=syQ\'$rNkc2%1&H$JFB_d{!v,D>\"OHo!V80:=\"3TY:MZz1)LMnKv$;filLBM?.x9cLj)<>|yQ]($GeW.z|\"EEU[4sH;86S\'JKMV\\Qt1n(H','691075b3d310c0b40a116bfacf3d80b0b1719a4a','d2c5e7f3638754b3936eb51bb0127fbadc56bfcb',NULL,'g.ibarra@catalogics.com.mx','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.247.36',1401284986,1401284996,1401284996,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(51,6,'rothhound','rothhound','a2080d3253e7da31755d5eb34cad19f822c76a203f267ba777ce6ed24b6187b254ec140d89810f70bf831c259e287d32d2211c169d9c9ed00c8dfb4ecab74979','dZkbDSQ?j^*s=bI+q*D~GesdPd7vwaG=BQW/9#<Mx(Goy#w@24(|wkFXm^cF9\";!H6e!:,msBY\'t_J_AX~vHA%QeZEQE5%xD:r<eZDB^Yc%8[k3{/g97HhZ~s4tRu1u\\','04966773eb01602d11f27afd213eeb68f3d6c813','46bdf38ae4d95b8b7d145ad2b2557076c8009807',NULL,'gms122@gmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'201.230.103.72',1402327050,1403711666,1404015548,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,1559),(20,1,'herman.marin','Herman Marin','85ed4f78c7b60c1505b7fae870186be86b39be5a362ce1dab8366b4285836485ef9e7e931dc0c79b0dad131ca5e6ceab56dcf9eccedc9996be7289e041dcc474','5jSUp,u`NfIC8<_phG0:W`H5qu<GvjVmZ,O<:O9M{>~Oa>bum.,W*Tsb`>g!VaJLEyNC}zMA-O`^{}}W5UtQyN=$$5k1G[f_6R7[I&kn;sMISZ#XxR9v+<Zx+@%Zd+3{','a278ed9575c5d6a1e49cd29223985e7fa2e36e60','878f2d888b5105f6712ff594852b3b718fe7ca24',NULL,'h@ayuinc.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.241',1401303516,1401485331,1401493565,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(40,6,'herman_1','Herman','8a741e41d2a5b59862683849ce9f19ce460e4117a17b4ddf7e71c17160c6cc6d6946ba4c2df84c2677e15a873cf4f481d0f79ab5041ab7f99306f3e85a5dde55','e{5=kF}z3wh7Az={Hf@KiFX1b$Q9e7q|i)%TE&L\\v\"2y&c3mK}ywnb?1lkZt`id\"HfY]1KSnp9d@{jESNMF0X;QKXb\\$!,;D.wTg);yY0#1wQe>D#p0J&T\\f,U:JdxOP','00b2b60d4ba668672f90f8a8a6498c47edb4635a','ce5b3f76fbc3a5e136f946bc898f9df72449e7e4',NULL,'herman@hot.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.247.36',1401823670,1401823690,1401829187,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(43,6,'prueba23','prueba23','77d9a97951d00bb4968c93e2c6a5e5f164beb68c9e5168875d64680ee054c275270cfa72911d8325e9495e9905a1c68bb9b5bd80384c33f2f616043b58acd53d','[z^zf`8$L?XXT`{svzye\\1aijcOFr}a|gW\"_Cyze~N9~iOEVl<ve)$X[]z@FD$qm-Q|*d~8p$K7Mx_qBL(,mg:>>\';d*ELT9kGnF*>6:qa\'_q;7GdXfv%u)KnU%thy)>','3092375af367bdb0b6a95f3aeb9e5f7455fc29d0','6bbd96dd8af858d4616593d51a3859495736abd9',NULL,'rodulfo.prieto@ayuinc.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.241',1401841282,1401841709,1401842133,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,5),(37,6,'peru','peru','fcbd91d7c7d61ea217810ba2c7b02467fc4d88f09daf150d5ab5dd32f6f92317c29c8eb9d775710b3f891230e6be12a29d6335e952e7779aa5f1ff2971e05d62',';?N]Qzd1y~o#(hW^^=Hr0H2jL|Et=-rt[0<V8e\"~p_a*+<lPqAzx?-#f;oZzO?7O7AWnC]d)}8j:${}e2OmYFWJ4rg/lykt.N3b!S.1K8}RSMsv:rD9g0qwzbaByT@|^','558bf15348be115d7b025254debaf5955d041fdb','7d339ca0445afa1ea12f86e684875d31dc3f799b',NULL,'j@hotmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.241',1401497284,1401497307,1401497307,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,74),(24,1,'rodulfo_admin','rodulfo_admin','d4d9cf735ca718ab22459a5b405e6f41a5298cc1e0d8e3a9fd792207c6218e355bc8efea59c23e01f89a4533fa019b4a90bc1db9eff4242f3c6f1e1bb0eac8aa',']$UL.G?J&>J7DhlJvr#H@E\\jke_/}(2LJq=3Aw4m6xcwZTsW$&E}:<{/5*0eT[n+$;%m2*JGrp;:Q2fuXL`>xg~R[pX^o@=K>L=SRe?c2r7O%t\"?o`,NH~0l&}],DkfS','69bec36b6ae6ebe94b783f13c9f1b535e8350cb7','13c215df3ed3d8061aa231d611d2033c5717b79a',NULL,'dodd@gmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.247.36',1401403880,1401403894,1401478000,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(81,6,'freddy_rangel','Frederick','4468a5f72ca16cc71d455b6006a27c54af122604bdf633a020cf77f333622b99802537513467d7e9150dba131a3ffaf53be27e7d4295fe6f9741c57c3ea86947','*W=p2\"jjWCBz-l/Bs|w,aX.,XWK~%L^qt]IDq2emftri&\"CmKM0nMPe&x`R2,`\\w1#PB1$_k[+[e:%LZYVMJ0qVL~M[).\"7BP<[n+|0p1d$GQh[Igux^zKssU]0daW2\'','587070ffb44595a3dc88f8eba558943d28fae685','57751878b1afd4d2bd3cbe6c12ce471e088fbc6f',NULL,'frederick.rangel@gmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.192',1406070644,1406071152,1406127407,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,1),(31,6,'andres_1','Andres 1','2621cb5a27e2d43f183fbe7ac6bd22fc16934f714e94beddec9e791e60418bd325df07a1f76e94ad8f532c963059f0f8bda603dcd170baf0721650fadae22804','jtfKalgL7a>a:6QgXdb6`!&*`\'Ty$=-0t\\|>cDPdI\"KLW#6B)Pgw\\eEm=[8bqCYe`n+GpY>R1|yv)Xk2*CNi):(b.lp6UG&eo7(|K+7(]h?h:xDf=LSHZ7BoJ[I[NU$5','24ace9b5955a0e933ac1155f7a9e28c3b08e04c3','0cfa6fa2e8533288924acfb5a934f308c6746896',NULL,'andres@andres.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.241',1401460112,1404743750,1406299561,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,354),(36,6,'cesar','Cesar','d19b51d59400995da4f3c53c63065c29d39403c0006ddfb1e6c640b9b5e4e22a3900fcaa89ac4c806f9ae74c3a709cf17015a6cef6bcd0f633b2da04d04224a5','e$m)N`]T.!{6l:}LefCgJQY%m\'2)w1PB)v\'{bW[WK2erl,5x?o,sHWY\\_t~vzUw_7\'t.>QQG@>?|y-fDtTf1+uRp~qFL%BBPcfpcx)hPu~YgO:-$8=wLj6h:}@A~\"kZ*','b34120fc69f34814de55bace90425ae658df57ff','455c5ad022135383cb4e816e15308b7151dc11fc',NULL,'jcmoron82@gmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.247.36',1401490551,1406846686,1406919329,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,6314),(42,6,'rodulfo','Rodulfo','5ef7abb56487f299d502018576533711193c82dffd150cab98310ad7fe640ffdc853de1375418ca0e3c7ca4b7576aa5a088f95be7d6f7cc792cc3bcbdadce033','~e=3o)~^|_?WR:5}J?O,,dN8:&|>5Zizcx~a\\LiYm,4{x~c4m{8ES)DV|D3b0AYNCzmh!`|]}fzc=5/hLn)\'}w>eR1:_s~=wDRqo*pNq|E\"6g\'1r[!m\\rjI1Uh3:I)P1','35c0a8288674c3d641558a1435a92c90b030d249','fb64f3193dd6a52b03b6983894ee7a3deb326e0c',NULL,'ro@gmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.241',1401836505,1402333006,1402505455,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,827),(59,6,'mariana_2014','mariana','a4178ecbd3143aed6dcd4cdc20babb5075c7a95b13f69094a6a63cfc519bface669310d8c6da6637acd58468c46fffc59b2cba5af12f82058501d67a53e621d8','dwlkI1U)N\'QOlS}b0:\\k|vetXh0C&^^q,v|+dv}E/:g@@fn@3~F:c}[EGXM$07Y3QU!h=ezUs,@$W#K|#ZbPYZ(wTL.#\"v*ymzrKt%iu-bo!z$,4a-TIE|<Bf+e~#[mR','f8b1707bc9d1c73d2ff856531ec087ed853d0d5b','74cd7d2410fb4372e0121aa51cb7eb645e3289e5',NULL,'mcostach@gmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.221',1402505898,1404924097,1405094132,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,1218),(50,7,'test_admin','test_admin','52dd66763df363b5ae4a12138a1b5bc76e119708736f7bd10fe0984dcf88b7d59336665b0fec6651b82b3c12a53c65556f22b090f873133b313df87ed4846ea3','su&g(#!6Kj5bFjPsL>t@c>({0}5sZMCN=NNZK<qFnE5%RcXyFgO4ZE|,dMV3l:\\IG&g[<79LQA/er#GY83hoN+f~#+ktWUy?>r518#3ngz+HRM)2v>ZPpU<9V!&(Kycg','9593e558e5a0f50543b1a3e05a9ebb659de74558','d806569fd19397dfca3ba3d0ed6ce110172dc874',NULL,'aaa@bbb.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'201.230.103.72',1402326988,1402348463,1402500377,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(52,8,'dendi','dendi','550c69e6098f6dd7dabbecd1815f03fdfd120473b0a133e52f5a88a14ffb6e18b3129bc612b19f3e0d20bf54a0282d354cecb1c6c444dcda49b80aafb4437e81','NEyKr\"qM{A&\"LNXeoLJQI%;s`m-xwJ|xT|O#{{Z!y*P0_t.WYh;(N{m,+Shsu-IzEspIL0jy+M65GTxMNU}fB2Hplvw}wA}^JbX`(:5/+.#LY)-}Xlyp!60rjW,q=i4B','3cf84e6e12a1f39e73935831aa590d7a5778df36','018e0b7994d94dcd6c3c2a2a33a18e6328fcd377',NULL,'aaa@dsdsd.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'201.230.103.72',1402327749,1402327764,1402328186,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,1),(56,6,'jose','Jose','bf1102e0dc47b92b2b4f26fd5f19a18bd04f7db1120a47d00075b50b9cae5a3fa9589b9b99463db8784b6e9eea727eb8538203d09bf5482d803b891a28cb6d3d','aI7Z:o9o]Mf2kZ!#@o|,(g;W4<=~\"20iz{4npaij</h?_m1v+m?o6_Q*9*X[1zg5FnPus4mrx[{1u^VitX`@pKwUpkWU>Oe#F.9\'2[R:\\[T\\i?ZM:X(An0y96\'h~UVuA','372b95ce4382485bda9c50fbf22c265029e76ecb','f4ba0cf51a8d676893c52b353c197063cda56662',NULL,'jose@gmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.247.32',1402332126,1402332190,1402332190,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(80,9,'nombre_prueba','Juan Luis','8bfa5ea8921816bf9c0021795eda97810106cc11d67149079ab1b955c40688ce88498105975556d400175686645c2ab274f14e5b483306a0202a6c6bc47737dc','f8eChX5<9p69Hi9cHZOudgT)&#m!eb??HEKQ7[J;~>^o+^COuoKL=y:r>Mx}MbN&mnp>{3K?sA~Ns\"mCCe#;wzc;Z;tGH(+$fC@p545>k~+\"ykV7.^whPS-N|E,8~\'a1','efecd0baa6def39bfd56201f7ee0afa3e7e02288',NULL,NULL,'jc_prueba@gmail.com','','','','',0,0,0,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.178',1406057119,0,0,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','','','','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(54,10,'xboct','xboct','81de026c6f9742c91e1ff26a60e43093ac1fdadcab12541e34244834df12fe2ee1546d7efd9b677482b4af88fee46a0e3c355c16e7aeec34789d6b64ec27bad1','?G6qvl0=X,O%~;4OT;exT@nxyVnvqfBlYH{G=7=Tm.6g0ZToKt@lci@pK,EU-FL]mwe6Fe\")^><&KkC-ioe@kU4P\'S!5w18\\La:/Cpb\'yl&Q,f1tX3\\uD>\\ilalY\\sl}','15a88164f9d01a4c8bb4587b149f207eedda7483','f9610df88c8e14219c92006a1745bb28393a9715',NULL,'12122@aasd.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'201.230.103.72',1402328288,1402328305,1402328305,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(57,6,'prueba','asdasd','1d6be32e9edd995d5b12ed47496648695cb17cb88e339eff003115a118bd252883fe006ea74b250110fc53c21de0b94a854c850252f4eeb5f897d1974cbca9ad','(Z6HwHPD/*&8N?il?qOOwNQPZq*k^%?v!\\-Rua$Z(1r4^R>mxF5^7>ig,`btQ8RQ:(^1((>FqV\'0*<@=L;$BW[#J??\'hU+eGd*5jk;eyv7}Djq[<W1(]x/$3.5\'IO1id','b516c0d3d03274770a6de00c6765523c16200e4a','395ef316e7c259e9c2c09f825a1e17a91598c180',NULL,'jmoron82@hotmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.247.32',1402436376,1402436403,1402438365,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,452),(64,6,'mariana','mariana_ayu','5b5272f5157765af0c00b0cf2cb68d2011375d02f01eaf775cb43436db9910214c2419acf9ec9fd7aae977c10c99999bd642b1d75dd88701111d43a8248f8293','Q$8cN*I=!wxM4yb{14Ek%()*2Ga:K~F!5`^)hF>m~Qsks3B+UV+n\\bw<K.+anT2#e9~;$_;Emgn4GsKF;[RL?I|C\"*C6^bJL]\\2UQOR~MN:iFTk4}O?Yp*84|{Yr=C&]','28ba0728f17d1767db191ae17a9104b89f3ed2ad','2ef9953ef69bbe7ed06ad88be2993c69a0430553',NULL,'marian@hot.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.235.83.141',1403619353,1403619378,1403619385,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(61,6,'cliente_satisfecho','cliente_satisfecho','df2d6d52a41822af789f047c5b2ce1f2b091748b3db0af5d8737fd6dc84fa714d6fd4142eb4d6e68fe808c2d5c3d53d6d7c486d1bb9d47c1c53bbb2304b286a7','aI\'<E`;[6|y/?$_so1]I=((iq0p^59]<2+NvVR5Ew_%}blf{*-S<\'jV0NJ>X@[#H;q@@8yc,D673e#`$@(!\\j/38tX@]#wCzY__m!cA45PtW3cBvrQRCR^1,AWYVG(p0','0a474cbf1c66ebe8a542e74c529d3cdae8790782','34d6350cfb5dc730c13a85866b8f34e9a9e880eb',NULL,'rodulfojprieto@gmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.221',1403017629,1406221643,1406826014,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,1997),(62,6,'cliente_alegre','cliente_alegre','6a0d5eb8b459c4e05c8d8304953af7ed511dfce3eb4acda54fb56f7b9d8dfb3800b0274fa8915f9ff598542c545366462ca9cc7b03b75dc530c5d5aeb93f3077','t9~.,lEl[be#gQRDDzOFuV5w`*=!-%4!,b-Ni[g8Mj|=Y157rSJ}0M)P[PC]#6T4Yq7^PG^Y%EBqx5yxFV|iO\'L]SUYi]mhIAE1ZBA`x$.s?^3D%?8pJgxzdM9~2C90K','659d2f684e80e9e59ca2f44576bf8e803257f4d8','9b8a9ffa79ee62e7d24ddb1c3bd92ea867103b2e',NULL,'mcostach@gmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.221',1403017713,1403017955,1405536362,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,208),(63,6,'cliente_problema','cliente_problema','0ca70f4bc5280c1caf6cc12bfaada53283446356c05232c4bb68275fe92f13027c745b77c9e2b0f9f21ac40faaa8a6c1399ae9dbda4f0f3cfa83820ec487774a','S:\"o>p8\\tq`.z_KcQ*Szlk1P6b?O~>b{,$\\TlnZY2Q,~\"JCb~C=NOAN}1,OrSDL2WAi0eIQF-=,#/maehR{:)m-AoT|r{sC,)\\FN5|lkds2\\Y0v_k}OE`kfXb{/rTiXF','d3d0cb402b3a40479484833264a6f9c7929a090e','8a6d84efbd721dd84bcd1f5454d5e4f2a703383e',NULL,'cliente_problema@gmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.247.32',1403017786,1403017969,1403017969,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,1),(65,1,'gianfranco.montoya','gianfranco.montoya','61cf752d341d310f0fa6d97ce2e409f52de134b2b9bc0f9c1528c1004ebed157b82e2edcdeee6d7e5a843e4d3dee683d9cbccb8fa954a241842c6580e63530af','/+iM=5lq.~P3aBNN\\T#cn!H*yKM+&,JFgj*MPmJHKt[X7[OZ,<!01VEkbGgUIJsckE`j/<oU(-4)f=LK[Yrm(<`Dr<Y*w`lg6s`Sz{vU?ro,%DmpYm/wCda`p&UGx9\'f','88b55f95bdf496c44af7d46a8f1720274168441a','f116d858190d99ede74264777facad8cb93ecbc5',NULL,'aaccca@bbb.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.224.180',1403635164,1403635173,1403642812,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(66,7,'patricia.peche','Patricia','6883e125a0591cd342bfd1d7f06a906220e08b656e717a2287b425ed6e63b347b5f4020c238f562640d8c9197a2a75bc746ce127f0f36503cee116fa5851e48b','&km>]04&c]AAsaUEdOcd<L,p3ot\'B+f|dUob-^{Vhr7PY$9tuX.p^;c0.AI\\1aI?zx{.qoo-u_q#RB6$d}b67uLeX0&h4.+R/KI2$>kAb:/HCM\\C)@$vV8(Gtm@xIlE:','ff25d0664be69623cae8bd1b907ba3b7172340dc','15cc1f4897a8f0d03020abebef4e25e6c7a311d4',NULL,'patricia.peche@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.224.180',1403904626,1403909793,1404759810,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(67,7,'daniel.tang','Daniel','426912c38704d3a58637b81ba46907cbfbfc7b29f75ad618d72c63904c5f6645d3de47086d202a4f9bd6691c0ce758e4f2a305aedf6643ba141bc07cf0a83486','2\"xQDP/%0\\u%DS<.}O:Xq1-gAwg=UN_cot|I!5C;lPh4\'Zj]o?+(l{Sd\\*hVF))H:hmqzW7lu/06.lt4z\"u5qe}x[seYuU\"P>(Zvy$mN\'.}Y+YBQ7v0a|&q`cUU6y4yR','d4551cf65ad73b676ffdda685a3961962fac36b4','d9d0b89a5653481dd8cfa75b0b852960d64ad640',NULL,'daniel.tang@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.224.180',1403908945,1404753689,1404754021,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(68,7,'jorge.caruajulca','Jorge','a31fee159a09eb1ca61861de95d689fb14254044327116fbdaf7b51cd1cc5c12f79c90c1a9873a237151d03eee7a41d09f75f1b1fc3749c25fc6ac7741c80adc','0RGx%1[HO^D1_IgbK[(^H(C%J.:J)apYJ4sY?T8RKZfiHx:oPh`J6N$?qDg)NsKvdrbMt3#WI;^C/AC`*kJMJ&DV?kD8R:(qQm,4oH7S@8V<)^oCvhltEW~scX&V+},s','ebfac6dc444c96ad059d4e650ccbd6d4a1b9581b','21888c935accfbdaeb00d7307519be6a502b10a6',NULL,'jorge.caruajulca@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.111',1403909005,1404850894,1405351170,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(69,7,'amelia.espinoza','Amelia','81355f7d82f2e51e13892759829c2a33ae1e738711f51555e6fc1decb0f13e6f9bfdd0fb98eea597a40734f4fb620b2242d858f10791f8fc7d0caff17383bf04','e^Jl_5H0:7oRWc65m:xe=p(\\59-q>Ps(V\"7oPg%vi|XL[*VKTRj2`22:~P[ILWd03Jh|6(3[ZZ<{q&gX6\'cr\'F-Jmw1Qu=3]46?.p(ey1o`wZ(&v7OU>\'^wqAlnoEf\"F','24458c4b9bc4b5c6bd19bf84b8ad74a4735c8e6d','2b97717e2e1e771a53f3d1231578cc601a261dd2',NULL,'amelia.espinoza@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.111',1403909079,1404759897,1404759897,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(70,7,'nelly.vasquez','Nelly','13c2e190f0b48cce6a3eddc9be33b4bfe3c70cc6359fadf7831f52b3250db4a0f92edcc59d362698a9e7a481c4143227907334539af3fe3ef0077a62a4353af7','\"f\"rr%GtRuDg)~d#@\\G=r:gV_U)oqzke?@A4x6+mp-yq]d\']np35oS%G}DYk]6*OYcK`R0j{w%BAuEfI+`,Pg~B$N_ko=I@\\v5\"~%z/WE?UyZY\"=V2}[T{C8]njZge]h','33aea2e32575fb9a25632195453e21329bce536d','706fcb1ed9b7aabb1df4f230215b068960ce39ae',NULL,'nelly.vasquez@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.224.180',1403909147,1405525225,1406842418,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(71,9,'alejandro_chilet','Alejandro','575279ebe20a5d6aa9c70a5560cf737410e0fc00d562b521ffcee59ec2a0f2169622e6618f20a8b7a023aa70ac90215f49609492812ec13be064b2aadc168d1e','cSk}G\'68YZrN<&xc4Ca90gN:sX|i?D&\\K4q|m\"dvix[K<41NgNdC`w(l:J\"q&\"l,DxAc`==x_ODL,_I?4HHEi+PoIq@$2:(ou+\\JSJaXL~Nw[qs%BrkZi&[ybD}r\\4s%','7d94b15e85effbfaa88cc847e7e6810b499e6cdd','2ba323ed99e71f4e3bde67d50e039ea4d0ec5890',NULL,'achilet@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.174.76',1404768673,1405355934,1405694111,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(72,6,'pedro_prieto','Pedro','2c3e490fa29943bb22a1e1a9bee3cccf0859218065f61ccf6d2e0a1d7ca6b956011415ed75c2426fb1bd3eb4da1c8ce8e81e0d7dc5282976b6d3d14be75929f0','mmMa*=\':.%]nc7q+49$;}\"\\+x&>FN7@^qSd;*NwBB[vW={W_yqxI[U,BmcG9^v!328b\\6@G\\:Rxt5TF4(,Hwx({EYW4~=Gz\\uHr7[^n))f@iq_pdA}u7Y,)-{d^wOr&p','eb4fa7d38b99ec4a44def79d883b2b189f3cba80','5b33526aad5387d1c52a3a4abace2d46565dcb29',NULL,'pprieto@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.174.76',1404768967,1405464890,1405465528,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(73,6,'christian_pinillos','Christian','4abc4cbca8a6e98fe370b49dbefc9ebf26d93613a65848e885d2210ba6dad72900203c15be1e25aa3e7db21f929229cb08a81f9420ea943b8b3f09153a73296b',')$LO_[Ray{&03G/2\'|`Wfi}_x\\sxPiyR>)_2b[~qs=AVDr~]10|YJa_E\"EPQ\"{4@#?&z}%EMM-l:\\{GO4G>/)CHDli3sc=*<sF\\N[j>^lmhQt}G,<IdY\'B?B9B>#<\'i*','eaed07a1aebe603fbe054270244d94fe7f4c43c2','4418b8a3198f7fbcb2f66fb5ed0bd75374dbc6bc',NULL,'cpinillos@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.174.77',1404769167,0,0,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(74,6,'jose_camborda','Jose C.','6760661665a96affffc1432c7aa116d8c0178cf62a2c6546a912f0f26df294404f9f53ac060ca6ce67211ada829b38ecf2db52ada378c28e364e3a9e3bc491cd','X5el\\S70hI-W,oSfwxFSR5BHhf7-l~=!L\"4EeG%y,FiF/Zomh?Nf6vK4WqBD2q:|)vT58!NnHo7?M5&gcqoF}E<n\\ux]}VnBt16XLl-RLx?%zlac%kRW;d?I\"A;H#7G.','1095f2e73ff9f0be962341d2ed9c472fd45854f8','10d451369670e1fe1142c9c8801c975951a58eda',NULL,'jcamborda@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.174.76',1404769307,1405545479,1405695603,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,307),(75,6,'benjamin_dulanto','Benjamin','7958b4325ac64b9c5b351477c0b820f5cd22ef9da6fa77ad48319612e7a63d0245304324ac4e0441186b45d28099c0b71212cd9e5c5462ee0735157d18993d44','ILw@<<nC)z3ZSgR9a=NQXSoHN<4i>CLeG8RZ|-Ay*$(ba*>=|>9&scFHt0fG|-r%[/0Zt^F$R<(w+As;qi_pb9j0SH4pjfAWP2r+Y/&]1QuDn?6\"uHZ\'t*^o.@<!\'gIp','76d69644f644ac2c8b9439327a3e2306f84bc205','19be1e2d1a6821030e0fef9140b52e6c95eebce8',NULL,'benjamin.dulanto@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.174.77',1404769471,1405351236,1405351665,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(76,6,'lenny_sellerico','Lenny','162de5ef1054fb79350f1260a3d4c5d0d8371ee510d418520fc81ed3038eca4df0a2b7f13038c35ba96d906d9117dbadb230dd73f93c87cf1210a4098a9a271e','UGXzoRc!$h->huuH$]k&Y5q%-gg4s^fCj>(&.g;Ql#+~U%@w-VRPp8Ea0zRSph<F7Hbcyl|-@Pm^=A/MYV]+zJ0cCK?^5O6(G;No`)3n^z-uCC|C3x>y<!CTeWc,dAcu','f24a242f2fd57a9ac835859ca3d60551ed1bdfd4','c8bfc483612cd1aed23ce6082e6f4905fba90c3a',NULL,'l.sellerico@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.174.77',1404769636,0,0,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(77,8,'loshiro','Luis','ee2022f254ad135d4f9394f86d1b5c71c7b0725eab0518bcf1f51ca546e770956e4e719485de794a8361e3c7406074d4beea0dfcca7bcd1f64b8c97105b41ca0','>\'F\\edt%o`0TtT,<\'n^2.4IfC\\n$SRekY6[[zO6$~Zd$\\N)t0eMJUEv@n.RC[7(r\\2!dpddin^\"\"qf67E=2HW.V.nw9\'\'/2\'N3r.\'CG@>B<xyry6ba7[lj_wcn`5^{SF','1b5b1bfff42c6ecadc2cd7921a2fba741fcd6770','402f59993dd7d43b8e65277ff41bab226a9efe7d',NULL,'loshiro@gym.com.pe','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.174.42',1405355610,1405467143,1405694440,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(79,9,'inspector_pr','agente_prueba','a8241336f625686fe693ae3bb057f4c0d7984bfb63d374ae004bd1dfded31cc80c12260d7006110dbfcde219f6790b33bb64a8b80627fcecba58d76058d23464','3s)cxX.!UdM=Qq0i4>mZCfEJ!ny>K]qCj+#+25]2v-sM5KX\"WAMW<?5)5uu-0mk(4mn\"Rd_F}To2acfc;qunx6pTL{K=#1z6fr*XJyZUNMG-HfG>l?@&KX]0)>e?c[6h','bfd19ce206bdba1df53163cc8c11da45320b70ce',NULL,NULL,'cadermino@gmail.com','','','','',0,0,0,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.192',1406056816,0,0,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','','','','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(82,9,'julio_castillo','Julio Cesar','226455845b18c54763b20ba4ec0920d98fc0cb68b255565b8b08af96c325dc53e632b1a1e6687dec90f2b70d73dec5e79e17f440a3167929cb7cf04f9336e4e6','\"Q\\Zf.Lii|NLLyf<<@wyTCIIRL?!CB*3,e5vFaw$_\"w0s\'5@*~#V6;F+,td9K7M9|1=Qjr&=$:j#\'{o=_uf%<<;%3.NL+T\'y?@l@\\J2~:wezSNfY#Id|%=o=A6fO279P','d1432733365bee475573dd7dc12d6259fa872187',NULL,NULL,'prueba_23@gym.com','','','','',0,0,0,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.192',1406223629,0,0,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','','','','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(83,9,'p_martinez','Pedro Martinez','c1c42e3343e218901e03113784b379f3638c2f3f3b5c4b69c95b7dd77e337fdf5086d16b66fec12dcc9c8ce16bb0ecef71e60e210b4cb101ac313ba1229a4543','J&)Sn5\\^=$UqEx>f-%KL<(nZej~@VA(^9cM5fdo*]`@\"(.bG]Eh:w4O\"}W0q9mJ\"4w?<]IaqB4[Zh_\\M@~FS\"pBbgNX0D?,*%s,h]UU;!=\\j#zi|hsmQo?Hn/JP7It4Q','7c36a4897c80d29591d12dc261c62434b798b155',NULL,NULL,'p_martinez@gmail.com','','','','',0,0,0,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.178',1406329128,0,0,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','','','','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(84,9,'agente_copia','juan','8ac592e5097fea7a77b18fd10c7e925e7496b8fbe6ed73b6b0218ab0666a04a11dddfd170b5a3bf38d225d439ed5109b9b4a52d73ec14e3f5ff91748eb8d1382','FNgmTr|qk+]_#lQ$aIWhCI?3M+-h=REo\"upNIGSy2{\\R*vf3in@_9l)CN.9IL{&c)!(\'cf1kZkAo/vMlo.-;$eWFh8?u:|bI@g\"jR#WJ\"?BBVx]oq0X~OwK,vYA1SrD^','4998243c631486d564aa750a422d30dbb9ad3c42',NULL,NULL,'caasd@gmail.com','','','','',0,0,0,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.111',1406730605,0,0,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','','','','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(85,6,'clientenuevo','Cliente Nuevo','faabbde2c218232c009685256ddc99843a7415377b916360242a447de7e1ae2255f0dabbf1ff75813642b61d8472a8172366e6f1fa5a2ea68ab1bccb0b80bec1','\'qW\\/pO1Y4X(%kxQ|AT8t`tb0geF;Rv]U\"aH.Y{p<O?%:Y&&Q@qP[xCV:|3\\(dhl`O1I-*g{9p@QM9~o08<1_GL}yT8S}.#d<dzQ}{+@b4K+2=sfA5y\\H{PndMnI$*64','44f0f8a59afebe772690ca0d86d3a99ae41760ba','26bab022585aaf5ed7db4d5a30e367447762247f',NULL,'rodulfojprieto@gmail.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.117.246.63',1406823824,1406826401,1406842539,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','spanish','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,212);
/*!40000 ALTER TABLE `exp_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_attachments`
--

DROP TABLE IF EXISTS `exp_message_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_attachments` (
  `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_name` varchar(50) NOT NULL DEFAULT '',
  `attachment_hash` varchar(40) NOT NULL DEFAULT '',
  `attachment_extension` varchar(20) NOT NULL DEFAULT '',
  `attachment_location` varchar(150) NOT NULL DEFAULT '',
  `attachment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_size` int(10) unsigned NOT NULL DEFAULT '0',
  `is_temp` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_attachments`
--

LOCK TABLES `exp_message_attachments` WRITE;
/*!40000 ALTER TABLE `exp_message_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_copies`
--

DROP TABLE IF EXISTS `exp_message_copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_copies` (
  `copy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_received` char(1) NOT NULL DEFAULT 'n',
  `message_read` char(1) NOT NULL DEFAULT 'n',
  `message_time_read` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_downloaded` char(1) NOT NULL DEFAULT 'n',
  `message_folder` int(10) unsigned NOT NULL DEFAULT '1',
  `message_authcode` varchar(10) NOT NULL DEFAULT '',
  `message_deleted` char(1) NOT NULL DEFAULT 'n',
  `message_status` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`copy_id`),
  KEY `message_id` (`message_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_copies`
--

LOCK TABLES `exp_message_copies` WRITE;
/*!40000 ALTER TABLE `exp_message_copies` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_copies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_data`
--

DROP TABLE IF EXISTS `exp_message_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_data` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_date` int(10) unsigned NOT NULL DEFAULT '0',
  `message_subject` varchar(255) NOT NULL DEFAULT '',
  `message_body` text NOT NULL,
  `message_tracking` char(1) NOT NULL DEFAULT 'y',
  `message_attachments` char(1) NOT NULL DEFAULT 'n',
  `message_recipients` varchar(200) NOT NULL DEFAULT '',
  `message_cc` varchar(200) NOT NULL DEFAULT '',
  `message_hide_cc` char(1) NOT NULL DEFAULT 'n',
  `message_sent_copy` char(1) NOT NULL DEFAULT 'n',
  `total_recipients` int(5) unsigned NOT NULL DEFAULT '0',
  `message_status` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_data`
--

LOCK TABLES `exp_message_data` WRITE;
/*!40000 ALTER TABLE `exp_message_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_folders`
--

DROP TABLE IF EXISTS `exp_message_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_folders` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `folder1_name` varchar(50) NOT NULL DEFAULT 'InBox',
  `folder2_name` varchar(50) NOT NULL DEFAULT 'Sent',
  `folder3_name` varchar(50) NOT NULL DEFAULT '',
  `folder4_name` varchar(50) NOT NULL DEFAULT '',
  `folder5_name` varchar(50) NOT NULL DEFAULT '',
  `folder6_name` varchar(50) NOT NULL DEFAULT '',
  `folder7_name` varchar(50) NOT NULL DEFAULT '',
  `folder8_name` varchar(50) NOT NULL DEFAULT '',
  `folder9_name` varchar(50) NOT NULL DEFAULT '',
  `folder10_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_folders`
--

LOCK TABLES `exp_message_folders` WRITE;
/*!40000 ALTER TABLE `exp_message_folders` DISABLE KEYS */;
INSERT INTO `exp_message_folders` VALUES (1,'InBox','Sent','','','','','','','','');
/*!40000 ALTER TABLE `exp_message_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_listed`
--

DROP TABLE IF EXISTS `exp_message_listed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_listed` (
  `listed_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_member` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_description` varchar(100) NOT NULL DEFAULT '',
  `listed_type` varchar(10) NOT NULL DEFAULT 'blocked',
  PRIMARY KEY (`listed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_listed`
--

LOCK TABLES `exp_message_listed` WRITE;
/*!40000 ALTER TABLE `exp_message_listed` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_listed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_metaweblog_api`
--

DROP TABLE IF EXISTS `exp_metaweblog_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_metaweblog_api` (
  `metaweblog_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `metaweblog_pref_name` varchar(80) NOT NULL DEFAULT '',
  `metaweblog_parse_type` varchar(1) NOT NULL DEFAULT 'y',
  `entry_status` varchar(50) NOT NULL DEFAULT 'NULL',
  `field_group_id` int(5) unsigned NOT NULL DEFAULT '0',
  `excerpt_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `content_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `more_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `keywords_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `upload_dir` int(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`metaweblog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_metaweblog_api`
--

LOCK TABLES `exp_metaweblog_api` WRITE;
/*!40000 ALTER TABLE `exp_metaweblog_api` DISABLE KEYS */;
INSERT INTO `exp_metaweblog_api` VALUES (1,'Default','y','NULL',1,0,2,0,0,1);
/*!40000 ALTER TABLE `exp_metaweblog_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_moblogs`
--

DROP TABLE IF EXISTS `exp_moblogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_moblogs` (
  `moblog_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `moblog_full_name` varchar(80) DEFAULT '',
  `moblog_short_name` varchar(20) DEFAULT '',
  `moblog_enabled` char(1) DEFAULT 'y',
  `moblog_file_archive` char(1) DEFAULT 'n',
  `moblog_time_interval` int(4) unsigned DEFAULT '0',
  `moblog_type` varchar(10) DEFAULT '',
  `moblog_gallery_id` int(6) DEFAULT '0',
  `moblog_gallery_category` int(10) unsigned DEFAULT '0',
  `moblog_gallery_status` varchar(50) DEFAULT '',
  `moblog_gallery_comments` varchar(10) DEFAULT 'y',
  `moblog_gallery_author` int(10) unsigned DEFAULT '1',
  `moblog_channel_id` int(4) unsigned DEFAULT '1',
  `moblog_categories` varchar(25) DEFAULT '',
  `moblog_field_id` varchar(5) DEFAULT '',
  `moblog_status` varchar(50) DEFAULT '',
  `moblog_author_id` int(10) unsigned DEFAULT '1',
  `moblog_sticky_entry` char(1) DEFAULT 'n',
  `moblog_allow_overrides` char(1) DEFAULT 'y',
  `moblog_auth_required` char(1) DEFAULT 'n',
  `moblog_auth_delete` char(1) DEFAULT 'n',
  `moblog_upload_directory` int(4) unsigned DEFAULT '1',
  `moblog_template` text,
  `moblog_image_size` int(10) DEFAULT '0',
  `moblog_thumb_size` int(10) DEFAULT '0',
  `moblog_email_type` varchar(10) DEFAULT '',
  `moblog_email_address` varchar(125) DEFAULT '',
  `moblog_email_server` varchar(100) DEFAULT '',
  `moblog_email_login` varchar(125) DEFAULT '',
  `moblog_email_password` varchar(125) DEFAULT '',
  `moblog_subject_prefix` varchar(50) DEFAULT '',
  `moblog_valid_from` text,
  `moblog_ignore_text` text,
  PRIMARY KEY (`moblog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_moblogs`
--

LOCK TABLES `exp_moblogs` WRITE;
/*!40000 ALTER TABLE `exp_moblogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_moblogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_module_member_groups`
--

DROP TABLE IF EXISTS `exp_module_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_module_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `module_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_module_member_groups`
--

LOCK TABLES `exp_module_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_module_member_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_module_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_modules`
--

DROP TABLE IF EXISTS `exp_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_modules` (
  `module_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_version` varchar(12) NOT NULL,
  `has_cp_backend` char(1) NOT NULL DEFAULT 'n',
  `has_publish_fields` char(1) NOT NULL DEFAULT 'n',
  `settings` text,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_modules`
--

LOCK TABLES `exp_modules` WRITE;
/*!40000 ALTER TABLE `exp_modules` DISABLE KEYS */;
INSERT INTO `exp_modules` VALUES (1,'Blacklist','3.0.1','y','n',NULL),(2,'Comment','2.3.2','y','n',NULL),(3,'Email','2.0','n','n',NULL),(4,'Emoticon','2.0','n','n',NULL),(5,'File','1.0.0','n','n',NULL),(6,'Jquery','1.0','n','n',NULL),(7,'Mailinglist','3.2','y','n',NULL),(8,'Metaweblog_api','2.1','y','n',NULL),(9,'Moblog','3.2','y','n',NULL),(10,'Pages','2.2','y','y',NULL),(11,'Query','2.0','n','n',NULL),(12,'Rss','2.0','n','n',NULL),(13,'Referrer','2.1.1','y','n',NULL),(14,'Search','2.2.2','n','n',NULL),(15,'Simple_commerce','2.2','y','n',NULL),(16,'Wiki','2.3','y','n',NULL),(17,'Channel','2.0.1','n','n',NULL),(18,'Member','2.1','n','n',NULL),(19,'Stats','2.0','n','n',NULL),(20,'Rte','1.0.1','y','n',NULL),(21,'User','3.4.5','y','y',NULL),(22,'Calendar','1.8.6','y','n',NULL),(23,'Channel_images','5.4.17','y','n',NULL),(24,'Freeform','4.1.8','y','n',NULL),(25,'Authenticate','1.2.8','n','n',NULL),(26,'Automatee','1.2.2','y','n',NULL);
/*!40000 ALTER TABLE `exp_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_nsm_addon_settings`
--

DROP TABLE IF EXISTS `exp_nsm_addon_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_nsm_addon_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) unsigned NOT NULL DEFAULT '1',
  `addon_id` varchar(255) NOT NULL,
  `settings` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_nsm_addon_settings`
--

LOCK TABLES `exp_nsm_addon_settings` WRITE;
/*!40000 ALTER TABLE `exp_nsm_addon_settings` DISABLE KEYS */;
INSERT INTO `exp_nsm_addon_settings` VALUES (1,1,'nsm_htaccess_generator','{\"enabled\":\"1\",\"path\":[\"\\/var\\/www\\/vivagymposventa\\/html\\/.htaccess\"],\"template\":\"# For more awesome .htaccess rules and optimisations\\n# checkout the HTML5 Boilerplate .htaccess files\\n# https:\\/\\/github.com\\/paulirish\\/html5-boilerplate\\/blob\\/master\\/.htaccess\\n\\n# Although highly unlikely, your host may have +FollowSymLinks enabled at the root level,\\n# yet disallow its addition in .htaccess; in which case, \\n# adding +FollowSymLinks will break your setup (probably a 500 error), \\n# so just remove it, and your rules should work fine.\\nOptions +FollowSymlinks\\n\\n# EE 404 page for missing pages\\nErrorDocument 404 \\/index.php\\/{ee:404}\\n\\n# Simple 404 for missing files\\n<FilesMatch \\\"(\\\\.jpe?g|gif|png|bmp|css|js|flv)$\\\">\\n  ErrorDocument 404 \\\"File Not Found\\\"\\n<\\/FilesMatch>\\n\\n# Rewriting will likely already be on, uncomment if it isnt\\n# <IfModule mod_rewrite.c>\\n# RewriteEngine On\\n# RewriteBase \\/\\n# <\\/IfModule>\\n\\n# Block access to \\\"hidden\\\" directories whose names begin with a period. This\\n# includes directories used by version control systems such as Subversion or Git.\\n<IfModule mod_rewrite.c>\\n  RewriteRule \\\"(^|\\/)\\\\.\\\" - [F]\\n<\\/IfModule>\\n\\n# remove the www - Uncomment to activate\\n<IfModule mod_rewrite.c>\\n  RewriteCond %{HTTPS} !=on\\n  RewriteCond %{HTTP_HOST} ^www\\\\.(.+)$ [NC]\\n  RewriteRule ^(.*)$ http:\\/\\/%1\\/$1 [R=301,L]\\n<\\/IfModule>\\n\\n# Remove the trailing slash to paths without an extension\\n# Uncomment to activate\\n# <IfModule mod_rewrite.c>\\n#   RewriteRule ^(.*)\\/$ \\/$1 [R=301,L]\\n# <\\/IfModule>\\n\\n# Remove index.php\\n# Uses the \\\"include method\\\"\\n# http:\\/\\/expressionengine.com\\/wiki\\/Remove_index.php_From_URLs\\/#Include_List_Method\\n# <IfModule mod_rewrite.c>\\nRewriteCond %{QUERY_STRING} !^(ACT=.*)$ [NC]\\nRewriteCond %{REQUEST_URI} !(\\\\.[a-zA-Z0-9]{1,5})$\\nRewriteCond %{REQUEST_FILENAME} !-f\\nRewriteCond %{REQUEST_FILENAME} !-d\\nRewriteCond %{REQUEST_URI} ^\\/({ee:template_groups}{ee:pages}members|P[0-9]{2,8}) [NC]\\nRewriteRule (.*) \\/index.php\\/$1 [L]\\n\\n<IfModule mod_headers.c>\\n  SetEnvIf Request_URI \\\"http:\\/\\/162.243.222.54\\/fullcalendar\\/new_fechas_insp.php\\\" CORS=TRUE\\n  Header set Access-Control-Allow-Origin \\\"*\\\" env=CORS\\n<\\/IfModule>\"}');
/*!40000 ALTER TABLE `exp_nsm_addon_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_online_users`
--

DROP TABLE IF EXISTS `exp_online_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_online_users` (
  `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `in_forum` char(1) NOT NULL DEFAULT 'n',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `anon` char(1) NOT NULL,
  PRIMARY KEY (`online_id`),
  KEY `date` (`date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4546 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_online_users`
--

LOCK TABLES `exp_online_users` WRITE;
/*!40000 ALTER TABLE `exp_online_users` DISABLE KEYS */;
INSERT INTO `exp_online_users` VALUES (4527,1,16,'n','Administrador_Viva','190.117.246.111',1406918613,''),(4534,1,16,'n','Administrador_Viva','190.117.246.63',1406919845,''),(4532,1,36,'n','Cesar','190.117.246.111',1406914178,''),(4518,1,16,'n','Administrador_Viva','190.117.246.111',1406918613,''),(4531,1,36,'n','Cesar','190.117.246.111',1406914178,''),(4520,1,16,'n','Administrador_Viva','190.117.246.111',1406918613,''),(4535,1,0,'n','','190.117.246.111',1406909922,''),(4537,1,36,'n','Cesar','190.117.246.111',1406914178,''),(4545,1,0,'n','','107.22.80.231',1406920530,''),(4539,1,16,'n','Administrador_Viva','190.117.246.63',1406919845,''),(4540,1,36,'n','Cesar','190.117.246.111',1406914178,''),(4541,1,16,'n','Administrador_Viva','190.117.246.111',1406918613,''),(4542,1,16,'n','Administrador_Viva','190.117.246.111',1406918613,''),(4543,1,16,'n','Administrador_Viva','190.117.246.63',1406919845,''),(4544,1,0,'n','','190.117.246.63',1406919333,''),(4514,1,16,'n','Administrador_Viva','190.117.246.111',1406918613,''),(4529,1,16,'n','Administrador_Viva','190.117.246.63',1406919845,''),(4522,1,16,'n','Administrador_Viva','190.117.246.111',1406918613,''),(4528,1,16,'n','Administrador_Viva','190.117.246.63',1406919845,'');
/*!40000 ALTER TABLE `exp_online_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_pages_configuration`
--

DROP TABLE IF EXISTS `exp_pages_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_pages_configuration` (
  `configuration_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(8) unsigned NOT NULL DEFAULT '1',
  `configuration_name` varchar(60) NOT NULL,
  `configuration_value` varchar(100) NOT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_pages_configuration`
--

LOCK TABLES `exp_pages_configuration` WRITE;
/*!40000 ALTER TABLE `exp_pages_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_pages_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_password_lockout`
--

DROP TABLE IF EXISTS `exp_password_lockout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_password_lockout` (
  `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`lockout_id`),
  KEY `login_date` (`login_date`),
  KEY `ip_address` (`ip_address`),
  KEY `user_agent` (`user_agent`)
) ENGINE=MyISAM AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_password_lockout`
--

LOCK TABLES `exp_password_lockout` WRITE;
/*!40000 ALTER TABLE `exp_password_lockout` DISABLE KEYS */;
INSERT INTO `exp_password_lockout` VALUES (170,1403622296,'189.122.27.125','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.76.4 (KHTML, like Gecko) Version/6.1.4 Safari/537.76.4','admin_gym'),(164,1403617965,'189.122.27.125','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36','viva_admin'),(165,1403619025,'189.122.27.125','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.76.4 (KHTML, like Gecko) Version/6.1.4 Safari/537.76.4','cliente_satisfecho'),(166,1403619199,'189.122.27.125','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.76.4 (KHTML, like Gecko) Version/6.1.4 Safari/537.76.4','cliente_satisfecho'),(167,1403619224,'190.235.83.141','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0','cliente_satisfecho'),(168,1403619483,'189.122.27.125','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.76.4 (KHTML, like Gecko) Version/6.1.4 Safari/537.76.4','clinete_satisfecho'),(169,1403619766,'189.122.27.125','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36','cliente_satisfecho');
/*!40000 ALTER TABLE `exp_password_lockout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_referrers`
--

DROP TABLE IF EXISTS `exp_referrers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_referrers` (
  `ref_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) DEFAULT '1',
  `ref_from` varchar(150) DEFAULT NULL,
  `ref_to` varchar(120) DEFAULT NULL,
  `ref_ip` varchar(45) DEFAULT NULL,
  `ref_date` int(10) unsigned DEFAULT '0',
  `ref_agent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ref_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_referrers`
--

LOCK TABLES `exp_referrers` WRITE;
/*!40000 ALTER TABLE `exp_referrers` DISABLE KEYS */;
INSERT INTO `exp_referrers` VALUES (1,1,'http://www.google.com/url?q=http://162.243.222.54/&sa=D&sntz=1&usg=AFQjCNEnWG7N1j_HuK9zCDl1Th163VmGpw','http://162.243.222.54','190.117.247.36',1401720400,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.19'),(2,1,'http://www.google.com/url?q=http://162.243.222.54/&sa=D&sntz=1&usg=AFQjCNEnWG7N1j_HuK9zCDl1Th163VmGpw','http://162.243.222.54','190.117.247.36',1401808032,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.19'),(3,1,'http://www.google.com/url?sa=D&q=http://162.243.222.54/&usg=AFQjCNFYhT6U_IQPTcaLWlGbwxU9mQy3tw','http://162.243.222.54','190.117.247.32',1402336897,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safa'),(4,1,'http://educasepe.org/exp/index.php/member/forgot','http://162.243.222.54/main/user_select','190.117.224.180',1404419071,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.132 Safa'),(5,1,'http://www.google.com/url?q=http://162.243.222.54/main/correos_sistema&sa=D&sntz=1&usg=AFQjCNHQOoGUzG01yaybAtKbmjcKY_tZvA','http://162.243.222.54/main/correos_sistema','190.117.174.45',1405716259,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.19');
/*!40000 ALTER TABLE `exp_referrers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_relationships`
--

DROP TABLE IF EXISTS `exp_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_relationships` (
  `relationship_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_col_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_row_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`relationship_id`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `field_id` (`field_id`),
  KEY `grid_row_id` (`grid_row_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_relationships`
--

LOCK TABLES `exp_relationships` WRITE;
/*!40000 ALTER TABLE `exp_relationships` DISABLE KEYS */;
INSERT INTO `exp_relationships` VALUES (1,3,5,9,0,0,0,1),(2,3,4,9,0,0,0,2),(3,1,4,9,0,0,0,1),(14,3,5,9,0,0,0,0),(13,1,5,9,0,0,0,0),(12,1,5,9,0,0,0,0),(11,3,6,9,0,0,0,3),(10,3,35,9,0,0,0,4),(15,3,5,9,0,0,0,0),(16,3,5,9,0,0,0,0),(17,3,5,9,0,0,0,0),(18,3,5,9,0,0,0,0),(19,3,5,9,0,0,0,0),(20,3,5,9,0,0,0,0),(21,3,5,9,0,0,0,0),(22,3,5,9,0,0,0,0),(23,3,5,9,0,0,0,0),(24,3,5,9,0,0,0,0),(25,3,5,9,0,0,0,0),(26,3,5,9,0,0,0,0);
/*!40000 ALTER TABLE `exp_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_remember_me`
--

DROP TABLE IF EXISTS `exp_remember_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_remember_me` (
  `remember_me_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT '0',
  `user_agent` varchar(120) DEFAULT '',
  `admin_sess` tinyint(1) DEFAULT '0',
  `site_id` int(4) DEFAULT '1',
  `expiration` int(10) DEFAULT '0',
  `last_refresh` int(10) DEFAULT '0',
  PRIMARY KEY (`remember_me_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_remember_me`
--

LOCK TABLES `exp_remember_me` WRITE;
/*!40000 ALTER TABLE `exp_remember_me` DISABLE KEYS */;
INSERT INTO `exp_remember_me` VALUES ('8af8ffd8d56721db791b6efed1392c4c5e01c883',85,'190.117.246.63','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36',0,1,1408051011,1406841411),('0eb60e0945ead6cbc14388731eac85727e37173c',74,'190.239.81.206','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36',0,1,1406905201,1405695601),('276584269b0e295a1b1aa6c40d37eaf539a1da02',77,'190.239.72.185','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36',0,1,1406904040,1405694440),('91e5837e181d3f0c7e8392e5465305f851e306f8',31,'190.117.246.178','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36',0,1,1407509160,1406299560),('a1ff1003a19fe1df5a196f7beedcf7b0e6e64723',70,'190.117.246.63','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.77.4 (KHTML, like Gecko) Version/7.0.5 Safari/537.77.4',0,1,1408049594,1406839994),('21722495f514d837deffe8f07e70343963ed997b',16,'190.117.246.111','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.132 Safari/537.36 OPR/21.0.1',0,1,1408054032,1406844432),('75981991efa3afa0edd32e17f9d1c88c4f889a5e',16,'190.117.246.178','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36',0,1,1407429567,1406219967),('4a313d97747610569e8d623d7690862013b51cde',12,'190.117.246.178','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.76.4 (KHTML, like Gecko) Version/6.1.4 Safari/537.76.4',0,1,1407431425,1406221825),('02e0789fabe2d316393c1466f885a87765ae4848',12,'190.117.246.192','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.132 Safari/537.36 OPR/21.0.1',0,1,1407254662,1406045062);
/*!40000 ALTER TABLE `exp_remember_me` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_reset_password`
--

DROP TABLE IF EXISTS `exp_reset_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_reset_password` (
  `reset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `resetcode` varchar(12) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`reset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_reset_password`
--

LOCK TABLES `exp_reset_password` WRITE;
/*!40000 ALTER TABLE `exp_reset_password` DISABLE KEYS */;
INSERT INTO `exp_reset_password` VALUES (34,36,'wfYzp8A1',1406919338);
/*!40000 ALTER TABLE `exp_reset_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_revision_tracker`
--

DROP TABLE IF EXISTS `exp_revision_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_revision_tracker` (
  `tracker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `item_table` varchar(20) NOT NULL,
  `item_field` varchar(20) NOT NULL,
  `item_date` int(10) NOT NULL,
  `item_author_id` int(10) unsigned NOT NULL,
  `item_data` mediumtext NOT NULL,
  PRIMARY KEY (`tracker_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=690 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_revision_tracker`
--

LOCK TABLES `exp_revision_tracker` WRITE;
/*!40000 ALTER TABLE `exp_revision_tracker` DISABLE KEYS */;
INSERT INTO `exp_revision_tracker` VALUES (678,129,'exp_templates','template_data',1405983320,1,'{embed=\"includes/header\" }\r\n\r\n<!-- <script type=\"text/javascript\" src=\"{site_url}lib/admin_ticket_show.js\"></script> -->\r\n\r\n<?php $id_sol_garantia=\"{segment_3}\"; ?>\r\n\r\n{embed=\"includes/bredcrumb_admin\" }\r\n\r\n<div class=\"row\">\r\n  <div class=\"col-md-9 col-sm-9\">\r\n    <div class=\"panel p-14 box-shadow\" >\r\n      <div class=\"panel-heading bg-white p-0\">\r\n\r\n        {exp:member:custom_profile_data}\r\n          {exp:switchee variable = \"{member_group}\" parse=\"inward\"}\r\n              {case value=\"admin_viva\"}\r\n\r\n              {exp:freeform:edit\r\n                form_name=\"atencion_por_garantia\"\r\n                entry_id=\"{segment_3}\"\r\n                restrict_edit_to_author=\"no\"\r\n                return=\"main/ticket_detail/{segment_3}\"\r\n                allow_status_edit=\"yes\" \r\n                form:id=\"admin_ticket_show\"\r\n                form:onSubmit=\"return validar(this)\"\r\n                }\r\n\r\n              <div class=\"panel-title mb-14\">\r\n                <div class=\"clearfix\">\r\n                  <div class=\"col-sm-6 pl-0 col-xs-6\">\r\n                    <h2 class=\"medium m-0\"><span class=\"h4\">No. de caso:</span> {segment_3}</h2>\r\n                  </div>\r\n                  <div class=\"col-sm-6 col-xs-6\">                  \r\n                      <!-- <a href=\"#\" class=\"text-info block pt-14 edit-form-trigger lowercase not-underline icon-pencil text-right\"></a> -->\r\n                    <div class=\"mt-7 submit-form text-right\">\r\n                     <!--  <a href=\"#\" class=\"text-danger small edit-form-cancel \">Cancelar</a> -->\r\n                      <input type=\"reset\" class=\"btn btn-sm btn-default\" value=\"Cancelar\">\r\n                      <input type=\"submit\" class=\"btn btn-sm btn-default\" value=\"Guardar\">\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <hr class=\"m-0\">\r\n            </div>\r\n            <div class=\"panel-body p-0\">\r\n              <div class=\"row mt-14\">\r\n                \r\n              <div class=\"col-sm-4\">\r\n                <?php $archivo=\"{freeform:edit_data:foto_problema}\"; ?>\r\n                <!-- FOTO DUMMY -->\r\n                <?php if(empty($archivo)) { ?>\r\n                <img src=\"{site_url}images/request_placeholder.png\" alt=\"\" class=\"img-responsive img-thumbnail\">\r\n                <?php } else { ?>\r\n                {exp:ce_img:single src=\"{site_url}fotos_problemas/{freeform:edit_data:foto_problema}\" max=\"340\" cache_dir=\"ceimage\" attributes=\'class=\"img-responsive img-thumbnail\" alt=\"Foto problema\" title=\"Foto problema\"\'}\r\n                <?php } ?>\r\n              </div>\r\n\r\n              <div class=\"col-sm-4\">\r\n                <h5 class=\"light uppercase\">Datos del propietario</h5>\r\n                <ul class=\"list-unstyled\">\r\n                  <li class=\"mb-7\"><strong>Propietario(a)</strong><br>\r\n                    {exp:user:stats member_id=\"{freeform:edit_data:id_cliente}\"}\r\n                    {nombre_propietario} {ap_pat} {ap_mat}{/exp:user:stats}\r\n                  </li>\r\n\r\n                  <li class=\"mb-7\"><strong>Fecha entrega del dpto.</strong><br>\r\n                    {exp:user:stats member_id=\"{freeform:edit_data:id_cliente}\"}\r\n                    {fecha_entrega} {/exp:user:stats}\r\n                  </li>\r\n\r\n                  <li class=\"mb-7\"><strong>Departamento</strong><br>\r\n                    {exp:user:stats member_id=\"{freeform:edit_data:id_cliente}\"}{cod_depa}{/exp:user:stats}\r\n                  </li>\r\n                  <li class=\"mb-7\"><strong>Complejo</strong><br>\r\n                    {exp:user:stats member_id=\"{freeform:edit_data:id_cliente}\"}{complejo_depa}{/exp:user:stats}\r\n                  </li>\r\n\r\n                  <li class=\"mb-7\"><strong>Tipo de problema</strong><br><?php $var=\"{freeform:edit_data:tipo_de_problema}\"; ?>\r\n                    <select name=\"tipo_de_problema\" class=\"select-override form-control\">\r\n                      <option value=\"Pisos\" <?php if($var==\"Pisos\"){echo \"selected\";}?> >Pisos</option>\r\n                      <option value=\"Paredes\" <?php if($var==\"Paredes\"){echo \"selected\";}?>>Paredes</option>\r\n                      <option value=\"Instalaciones eléctricas\" <?php if($var==\"Instalaciones eléctricas\"){echo \"selected\";}?>>Instalaciones eléctricas</option>\r\n                      <option value=\"Instalaciones sanitarias\" <?php if($var==\"Instalaciones sanitarias\"){echo \"selected\";}?>>Instalaciones sanitarias</option>\r\n                      <option value=\"Carpintería metálica\" <?php if($var==\"Carpintería metálica\"){echo \"selected\";}?>>Carpintería metálica</option>\r\n                      <option value=\"Carpintería de madera\" <?php if($var==\"Carpintería de madera\"){echo \"selected\";}?>>Carpintería de madera</option>\r\n                    </select>\r\n                  </li>\r\n\r\n                  <li class=\"mb-7\"><strong>Otro dep. afectado</strong><br>\r\n                    <input type=\"text\" class=\"form-control\" name=\"nro_otro_departamento_afectado\" value=\"{freeform:edit_data:nro_otro_departamento_afectado}\"></li>\r\n\r\n                  </ul>\r\n                  </div>\r\n                  <div class=\"col-sm-4\">\r\n                    <h5 class=\"light uppercase\">Datos del responsable</h5>\r\n                    <ul class=\"list-unstyled\">\r\n                      <li class=\"mb-7\"><strong>Fecha de solicitud</strong><br>{freeform:edit_data:entry_date format=\"%j %F %Y\"}</li>\r\n\r\n                      <li class=\"mb-7\"><strong>Responsable Viva</strong><br>\r\n                        {if freeform:edit_data:persona_asignada_gym ==\"\" }Por asignar{if:else}\r\n                        <input type=\"text\" class=\"form-control\" name=\"persona_asignada_gym\" value=\"{freeform:edit_data:persona_asignada_gym}\">{/if}</li> \r\n\r\n                      <li class=\"mb-7\"><strong>Responsable GyM</strong><br>\r\n                      {if freeform:edit_data:persona_asignada_viva ==\"\" }Por asignar{if:else}\r\n                        <input type=\"text\" class=\"form-control\" name=\"persona_asignada_viva\" value=\"{freeform:edit_data:persona_asignada_viva}\">{/if}</li>\r\n\r\n                      <li class=\"mb-7\"><strong>Agente inspección</strong><br>\r\n                      {if freeform:edit_data:inspector_asignado ==\"\" }Por asignar{if:else}\r\n                        <input type=\"text\" class=\"form-control\" name=\"inspector_asignado\"\r\n                        value=\"{freeform:edit_data:inspector_asignado}\">{/if}</li>\r\n                      \r\n                      <li class=\"mb-7\"><strong>Agente construcción</strong><br>\r\n                      {if freeform:edit_data:constructor_asignado ==\"\" }Por asignar{if:else}\r\n                        <input type=\"text\" class=\"form-control\" name=\"constructor_asignado\"\r\n                        value=\"{freeform:edit_data:constructor_asignado}\">{/if}</li>\r\n                    </ul>\r\n                  </div>\r\n        \r\n                </div>\r\n                <div class=\"row mt-21\">\r\n                  <div class=\"col-sm-12\">\r\n                    <div class=\"descripcion p-14 box-shadow\">\r\n                      <h5 class=\"light uppercase\">Descripción</h5>\r\n                      <hr class=\"double\">\r\n                      <p>{freeform:edit_data:descripcion_problema}</p>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n                {/exp:freeform:edit}\r\n\r\n\r\n              {/case}\r\n              {case default=\"Yes\"}\r\n\r\n              {exp:freeform:entries form_id=\"2\" entry_id=\"{segment_3}\" limit=\"1\" status=\"open|closed\" }  \r\n                  <div class=\"panel-title mb-14\">\r\n                  <h2 class=\"medium m-0\"><span class=\"h4\">No. de caso:</span> {segment_3}</h2>\r\n                </div>\r\n                <hr class=\"m-0\">\r\n              </div>\r\n              <div class=\"panel-body p-0\">\r\n                <div class=\"row mt-14\">\r\n                  <div class=\"col-sm-4\">\r\n                    <?php $archivo=\"{freeform:field:foto_problema}\"; ?>\r\n                    <!-- FOTO DUMMY -->\r\n                    <?php if(empty($archivo)) { ?>\r\n                    <img src=\"{site_url}images/request_placeholder.png\" alt=\"\" class=\"img-responsive img-thumbnail\">\r\n                    <?php } else { ?>\r\n                    {exp:ce_img:single src=\"{site_url}fotos_problemas/{freeform:field:foto_problema}\" max=\"340\" cache_dir=\"ceimage\" attributes=\'class=\"img-responsive img-thumbnail\" alt=\"Foto problema\" title=\"Foto problema\"\'}\r\n                    <?php } ?>\r\n                  </div>\r\n                  <div class=\"col-sm-4\">\r\n                    <h5 class=\"light uppercase\">Datos del propietario</h5>\r\n                    <ul class=\"list-unstyled\">\r\n                      <li class=\"mb-7\"><strong>Propietario(a)</strong><br>\r\n                        {exp:user:stats member_id=\"{freeform:field:id_cliente}\"}\r\n                        {nombre_propietario} {ap_pat} {ap_mat}{/exp:user:stats}\r\n                      </li>\r\n\r\n                      <li class=\"mb-7\"><strong>Fecha entrega del dpto.</strong><br>\r\n                        {exp:user:stats member_id=\"{freeform:field:id_cliente}\"}\r\n                        {fecha_entrega} {/exp:user:stats}\r\n                      </li>\r\n\r\n                      <li class=\"mb-7\"><strong>Departamento</strong><br>\r\n                        {exp:user:stats member_id=\"{freeform:field:id_cliente}\"}{cod_depa}{/exp:user:stats}\r\n                      </li>   \r\n                      <li class=\"mb-7\"><strong>Complejo</strong><br>\r\n                        {exp:user:stats member_id=\"{freeform:field:id_cliente}\"}{complejo_depa}{/exp:user:stats}\r\n                      </li>\r\n                      <li class=\"mb-7\"><strong>Tipo de problema</strong><br>{freeform:field:tipo_de_problema}</li>\r\n\r\n                      <li class=\"mb-7\"><strong>Otro dep. afectado</strong><br>{freeform:field:nro_otro_departamento_afectado}</li>\r\n                    </ul>\r\n                  </div>\r\n                  <div class=\"col-sm-4\">\r\n                    <h5 class=\"light uppercase\">Datos del responsable</h5>\r\n                    <ul class=\"list-unstyled\">\r\n                      <li class=\"mb-7\"><strong>Fecha de solicitud</strong><br>{freeform:entry_date format=\"%j %F %Y\"}</li>\r\n\r\n                      <li class=\"mb-7\"><strong>Responsable Viva</strong><br>{freeform:field:persona_asignada_gym}\r\n                        {if freeform:field:persona_asignada_gym ==\"\" }Por asignar{/if}</li> \r\n\r\n                      <li class=\"mb-7\"><strong>Responsable GyM</strong><br>{freeform:field:persona_asignada_viva}\r\n                      {if freeform:field:persona_asignada_viva ==\"\" }Por asignar{/if}</li>\r\n\r\n                      <li class=\"mb-7\"><strong>Agente inspección</strong><br>{freeform:field:inspector_asignado}\r\n                      {if freeform:field:inspector_asignado ==\"\" }Por asignar{/if}</li>\r\n                      \r\n                      <li class=\"mb-7\"><strong>Agente construcción</strong><br>{freeform:field:constructor_asignado}\r\n                      {if freeform:field:constructor_asignado ==\"\" }Por asignar{/if}</li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"row mt-21\">\r\n                  <div class=\"col-sm-12\">\r\n                    <div class=\"descripcion p-14 box-shadow\">\r\n                      <h5 class=\"light uppercase\">Descripción</h5>\r\n                      <hr class=\"double\">\r\n                      <p>{freeform:field:descripcion_problema}</p>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                {/exp:freeform:entries}\r\n\r\n              {/case}\r\n          {/exp:switchee}\r\n        {/exp:member:custom_profile_data} \r\n\r\n        \r\n\r\n        <div class=\"row\">\r\n          <div class=\"col-sm-12\">\r\n            <div class=\"table-responsive\">\r\n\r\n              {exp:member:custom_profile_data}\r\n                {exp:switchee variable = \"{group_id}\" parse=\"inward\"}\r\n                  \r\n                  {case value=\"7\"}<!-- admin viva 7 -->\r\n                    {embed=\"includes/pasos_viva\" entrada=\"{segment_3}\"}\r\n                  {/case}\r\n\r\n                  {case value=\"8\"}<!-- admin GyM 8 -->\r\n                    {embed=\"includes/pasos_gym\" entrada=\"{segment_3}\"}\r\n                  {/case}\r\n\r\n                  {case value=\"9\"}<!-- inspector viva 9 -->\r\n                  \r\n                  {/case}\r\n\r\n                  {case value=\"10\"}<!-- personal GyM que ejecuta el arreglo  10 -->\r\n                    \r\n                  {/case}\r\n                  \r\n                {/exp:switchee}\r\n              {/exp:member:custom_profile_data}\r\n\r\n            </div>\r\n          </div>\r\n        </div>\r\n\r\n        <div class=\"row mt-21\">\r\n          <div class=\"col-sm-12\">\r\n            <div class=\"descripcion p-14 box-shadow\">\r\n              <h5 class=\"light uppercase\">Notas</h5>\r\n              <hr class=\"double\">\r\n              <!-- <p>{freeform:field:comentarios_garantia}</p> -->\r\n              {embed=\"includes/nuevo_comentario\" entrada=\"{segment_3}\"}\r\n\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  {exp:member:custom_profile_data}\r\n    {exp:switchee variable = \"{group_id}\" parse=\"inward\"}\r\n      \r\n      {case value=\"7\"}<!-- admin viva 7 -->\r\n        {embed=\"includes/sidebar_viva\" entrada=\"{segment_3}\"}\r\n      {/case}\r\n\r\n      {case value=\"8\"}<!-- admin GyM 8 -->\r\n        {embed=\"includes/sidebar_gym\" entrada=\"{segment_3}\"}\r\n      {/case}\r\n\r\n      {case value=\"9\"}<!-- inspector viva 9 -->\r\n        {embed=\"includes/sidebar_insp\" entrada=\"{segment_3}\"}\r\n      {/case}\r\n\r\n      {case value=\"10\"}<!-- personal GyM que ejecuta el arreglo  10 -->\r\n        {embed=\"includes/sidebar_cons\" entrada=\"{segment_3}\"}\r\n      {/case}\r\n      \r\n    {/exp:switchee}\r\n  {/exp:member:custom_profile_data}\r\n\r\n</div>'),(685,189,'exp_templates','template_data',1406061739,1,'{embed=\"includes/header\" }\n\n<!--{group_id}\n<script type=\"text/javascript\" src=\"{site_url}lib/viva_dashboard.js\"></script>-->\n\n{embed=\"includes/menu_admin\" }\n\n<div class=\"row\">\n  <div class=\"col-sm-3\">\n    <div class=\"bg-white border-rounded box-shadow p-14\">\n\n      <h6>Ingresar Agente:</h6>\n      {exp:user:register admin_register=\"yes\" group_id=\"9\" return=\"main/admin_lista_agentes\" }\n\n        <div class=\"form-group\">\n          <input type=\"text\" class=\"form-control\" name=\"username\" placeholder=\"Usuario\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"text\" class=\"form-control\" name=\"screen_name\" placeholder=\"Nombre\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"text\" class=\"form-control\" name=\"email\" placeholder=\"Email\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"text\" class=\"form-control\" name=\"dni\" placeholder=\"DNI\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"password\" class=\"form-control\" name=\"password\" placeholder=\"Contraseña\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"password\" class=\"form-control\" name=\"password_confirm\" placeholder=\"Confirmar contraseña\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <select name=\"rol\" id=\"\" class=\"select-override form-control\">\n            <option value=\"\">Rol del agente</option>\n            <option value=\"inspector\" >Inspector</option>\n            <option value=\"constructor\" >Constructor</option>\n          </select>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"hidden\" name=\"accept_terms\" value=\"y\" checked/>\n          <input type=\"submit\" class=\"btn btn-success\" name=\"submit\" value=\"Enviar\" />\n        </div>\n      {/exp:user:register}\n\n    </div>\n  </div>\n\n  <div class=\"col-sm-9\">\n    <div class=\"panel bg-white\">\n      <div class=\"panel-heading\">\n        <div class=\"row\">\n          <div class=\"col-sm-3\">\n            <h4 class=\"uppercase medium\"><i class=\"icon-docs\"></i> Editar Agente</h4>\n          </div>\n\n          <div class=\"col-sm-9\">\n          </div>\n        </div>\n        <hr class=\"m-0\">\n      </div>\n      <div class=\"panel-body pt-0\">\n        {exp:get_post_vars parse=\"inward\"}\n          {exp:user:edit member_id=\"{post_id_agente}\" dynamic=\"off\" group_id=\"8\" return=\"main/admin_lista_agentes\" }\n\n            <div class=\"form-group\">\n              <p>Usuario</p>\n              <input type=\"text\" class=\"form-control\" name=\"username\" value=\"{username}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Nombre</p>\n              <input type=\"text\" class=\"form-control\" name=\"screen_name\" value=\"{screen_name}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Apellidos paterno</p>\n              <input type=\"password\" class=\"form-control\" name=\"ap_pat\" value=\"{ap_pat}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Apellidos materno</p>\n              <input type=\"password\" class=\"form-control\" name=\"ap_mat\" value=\"{ap_mat}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Teléfono fijo</p>\n              <input type=\"password\" class=\"form-control\" name=\"t_fijo\" value=\"{t_fijo}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Teléfono celular</p>\n              <input type=\"password\" class=\"form-control\" name=\"t_cel\" value=\"{t_cel}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Email</p>\n              <input type=\"text\" class=\"form-control\" name=\"email\" value=\"{email}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>DNI</p>\n              <input type=\"text\" class=\"form-control\" name=\"dni\" value=\"{dni}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Password</p>\n              <input type=\"password\" class=\"form-control\" name=\"password\" />\n            </div>\n\n            <div class=\"form-group\">\n              <p>Confirmar password</p>\n              <input type=\"password\" class=\"form-control\" name=\"password_confirm\" />\n            </div>\n\n            <div class=\"form-group\">\n              <p>Rol del agente</p><?php echo $opc=\"{rol}\"; ?>\n              <select name=\"rol\" id=\"\" class=\"select-override form-control\">\n                <option value=\"\">Seleccione</option>\n                <option value=\"inspector\" >Inspector</option>\n                <option value=\"constructor\" >Constructor</option>\n              </select>\n            </div>\n\n            <div class=\"form-group\">\n              <input type=\"submit\" class=\"btn btn-success\" name=\"submit\" value=\"Enviar\" />\n            </div>\n          {/exp:user:edit}\n\n        {/exp:get_post_vars}\n      </div>\n    </div>\n  </div>\n</div>\n'),(686,189,'exp_templates','template_data',1406061769,1,'{embed=\"includes/header\" }\n\n<!--{group_id}\n<script type=\"text/javascript\" src=\"{site_url}lib/viva_dashboard.js\"></script>-->\n\n{embed=\"includes/menu_admin\" }\n\n<div class=\"row\">\n  <div class=\"col-sm-3\">\n    <div class=\"bg-white border-rounded box-shadow p-14\">\n\n      <h6>Ingresar Agente:</h6>\n      {exp:user:register admin_register=\"yes\" group_id=\"9\" return=\"main/admin_lista_agentes\" }\n\n        <div class=\"form-group\">\n          <input type=\"text\" class=\"form-control\" name=\"username\" placeholder=\"Usuario\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"text\" class=\"form-control\" name=\"screen_name\" placeholder=\"Nombre\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"text\" class=\"form-control\" name=\"email\" placeholder=\"Email\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"text\" class=\"form-control\" name=\"dni\" placeholder=\"DNI\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"password\" class=\"form-control\" name=\"password\" placeholder=\"Contraseña\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"password\" class=\"form-control\" name=\"password_confirm\" placeholder=\"Confirmar contraseña\"/>\n        </div>\n\n        <div class=\"form-group\">\n          <select name=\"rol\" id=\"\" class=\"select-override form-control\">\n            <option value=\"\">Rol del agente</option>\n            <option value=\"inspector\" >Inspector</option>\n            <option value=\"constructor\" >Constructor</option>\n          </select>\n        </div>\n\n        <div class=\"form-group\">\n          <input type=\"hidden\" name=\"accept_terms\" value=\"y\" checked/>\n          <input type=\"submit\" class=\"btn btn-success\" name=\"submit\" value=\"Enviar\" />\n        </div>\n      {/exp:user:register}\n\n    </div>\n  </div>\n\n  <div class=\"col-sm-9\">\n    <div class=\"panel bg-white\">\n      <div class=\"panel-heading\">\n        <div class=\"row\">\n          <div class=\"col-sm-3\">\n            <h4 class=\"uppercase medium\"><i class=\"icon-docs\"></i> Editar Agente</h4>\n          </div>\n\n          <div class=\"col-sm-9\">\n          </div>\n        </div>\n        <hr class=\"m-0\">\n      </div>\n      <div class=\"panel-body pt-0\">\n        {exp:get_post_vars parse=\"inward\"}\n          {exp:user:edit member_id=\"{post_id_agente}\" dynamic=\"off\" group_id=\"8\" return=\"main/admin_lista_agentes\" }\n\n            <div class=\"form-group\">\n              <p>Usuario</p>\n              <input type=\"text\" class=\"form-control\" name=\"username\" value=\"{username}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Nombre</p>\n              <input type=\"text\" class=\"form-control\" name=\"screen_name\" value=\"{screen_name}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Apellidos paterno</p>\n              <input type=\"password\" class=\"form-control\" name=\"ap_pat\" value=\"{ap_pat}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Apellidos materno</p>\n              <input type=\"password\" class=\"form-control\" name=\"ap_mat\" value=\"{ap_mat}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Teléfono fijo</p>\n              <input type=\"password\" class=\"form-control\" name=\"t_fijo\" value=\"{t_fijo}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Teléfono celular</p>\n              <input type=\"password\" class=\"form-control\" name=\"t_cel\" value=\"{t_cel}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Email</p>\n              <input type=\"text\" class=\"form-control\" name=\"email\" value=\"{email}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>DNI</p>\n              <input type=\"text\" class=\"form-control\" name=\"dni\" value=\"{dni}\"/>\n            </div>\n\n            <div class=\"form-group\">\n              <p>Password</p>\n              <input type=\"password\" class=\"form-control\" name=\"password\" />\n            </div>\n\n            <div class=\"form-group\">\n              <p>Confirmar password</p>\n              <input type=\"password\" class=\"form-control\" name=\"password_confirm\" />\n            </div>\n\n            <div class=\"form-group\">\n              <p>Rol del agente</p><?php echo $opc=\"{rol}\"; ?>\n              <select name=\"rol\" id=\"\" class=\"select-override form-control\">\n                <option value=\"\">Seleccione</option>\n                <option value=\"inspector\" >Inspector</option>\n                <option value=\"constructor\" >Constructor</option>\n              </select>\n            </div>\n\n            <div class=\"form-group\">\n              <input type=\"submit\" class=\"btn btn-success\" name=\"submit\" value=\"Enviar\" />\n            </div>\n          {/exp:user:edit}\n\n        {/exp:get_post_vars}\n      </div>\n    </div>\n  </div>\n</div>\n'),(687,73,'exp_templates','template_data',1406071088,1,'{exp:member:custom_profile_data}\n  {exp:switchee variable = \"{member_group}\" parse=\"inward\"}\n    {case value=\"user_dep\"}\n      {exp:member:custom_profile_data}\n\n        {if act_datos==\"0\"}\n          <script type=\"text/javascript\">window.location=\"{site_url}main/cambio_de_clave\"; </script>\n        {/if}\n\n        {if act_datos==\"1\"}\n          <script type=\"text/javascript\">window.location=\"{site_url}main/user_dashboard/{member_id}\";</script>\n        {/if}\n\n      {/exp:member:custom_profile_data}\n\n    {/case}\n    {case default=\"Yes\"}\n      <script type=\"text/javascript\">window.location=\"{site_url}main/admin_dashboard\"; </script><!-- todos los admin -->\n    {/case}\n  {/exp:switchee}\n{/exp:member:custom_profile_data}'),(689,103,'exp_templates','template_data',1406302745,1,'<?php header(\'Access-Control-Allow-Origin: *\'); ?>\n{embed=\"includes/header\" }\n{exp:generar_fechas tipo_cal=\"insp\"}\n\n<script language=\"javascript\">\nfunction validar(frm){\nif(frm.fecha_atencion_ticket.value==\"\"){mensaje1(\"Fecha de Atención\",frm.fecha_atencion_ticket);return false;}\n// if(frm.contra.value==\"\"){mensaje1(\"Contraseña\",frm.contra);return false;}\nreturn true;\n}\n\nfunction mensaje1(campo,obj)\n{\nmsg=\"Por favor seleccionar una opción para el campo: \"+campo+\".\";\nalert(msg);\nobj.focus();\n}\n\nfunction mensaje2(campo, obj, cant) {\nmsg = \"El campo \"+campo+\" no debe contener caracteres especiales y como minimo \" + cant + \" caracteres\";\nalert(msg);\nobj.focus();\n}\n</script>\n\n<?php $id_sol_garantia=\"{segment_3}\"; $site_url=\"{site_url}\"; ?>\n\n<script src=\'{site_url}lib/jquery.min.js\'></script>\n<script src=\'{site_url}lib/jquery-ui.custom.min.js\'></script>\n<script src=\'{site_url}fullcalendar/fullcalendar.min.js\'></script>\n<script>\n\n  var $id_sol = <?php echo json_encode($id_sol_garantia);?>\n\n  $(document).ready(function(){\n    if ($(window).width() < 768) {\n        $(\'#calendar\').fullCalendar({\n          defaultView: \"agendaDay\",\n          allDaySlot: false,\n          minTime: 8,\n          maxTime: 22,\n          timeFormat: {\n            agenda: \'h:mm{ - h:mm}TT\'\n          },\n          header: {\n            left: \'prev,next today\',\n            center: \'title\',\n            right: \'month,agendaDay\'\n          },\n          buttonText: {\n            prev:     \'&lsaquo;\', // <\n            next:     \'&rsaquo;\', // >\n            prevYear: \'&laquo;\',  // <<\n            nextYear: \'&raquo;\',  // >>\n            today:    \'Ver el día de hoy\',\n            month:    \'mes\',\n            week:     \'semana\',\n            day:      \'día\'\n          },\n          columnFormat: {\n            month: \'ddd\',    // Mon\n            week: \'ddd d/M\', // 9/7 Mon\n            day: \'dddd M/d\'  // 9/7 Monday \n          },\n          monthNamesShort: [\"Enero\", \"Febrero\", \"Marzo\", \"Abril\", \"Mayo\", \"Junio\", \"Julio\", \"Agosto\", \"Septiembre\", \"Octubre\", \"Noviembre\", \"Diciembre\"],\n          dayNamesShort: [\'Dom\', \'Lun\', \'Mar\', \'Mie\', \'Jue\', \'Vie\', \'Sab\'],\n          dayNames: [\'Domingo\', \'Lunes\', \'Martes\', \'Miércoles\', \'Jueves\', \'Viernes\', \'Sábado\'],\n          editable: false,\n          hiddenDays: [0, 6],\n\n          events: \"http://162.243.222.54/fullcalendar/new_fechas_insp.php?id_sol_garantia=\"+$id_sol,\n\n        });\n      } else {\n        $(\'#calendar\').fullCalendar({\n          defaultView: \"month\",\n          allDaySlot: false,\n          minTime: 8,\n          maxTime: 22,\n          timeFormat: {\n            agenda: \'h:mm{ - h:mm}TT\'\n          },\n          header: {\n            left: \'prev,next today\',\n            center: \'title\',\n            right: \'month,basicWeek\'\n          },\n          buttonText: {\n            prev:     \'&lsaquo;\', // <\n            next:     \'&rsaquo;\', // >\n            prevYear: \'&laquo;\',  // <<\n            nextYear: \'&raquo;\',  // >>\n            today:    \'Ver el día de hoy\',\n            month:    \'mes\',\n            week:     \'semana\',\n            day:      \'día\'\n          },\n          columnFormat: {\n            month: \'ddd\',    // Mon\n            week: \'ddd d/M\', // 9/7 Mon\n            day: \'dddd M/d\'  // 9/7 Monday \n          },\n          monthNamesShort: [\"Enero\", \"Febrero\", \"Marzo\", \"Abril\", \"Mayo\", \"Junio\", \"Julio\", \"Agosto\", \"Septiembre\", \"Octubre\", \"Noviembre\", \"Diciembre\"],\n          dayNamesShort: [\'Dom\', \'Lun\', \'Mar\', \'Mie\', \'Jue\', \'Vie\', \'Sab\'],\n          dayNames: [\'Domingo\', \'Lunes\', \'Martes\', \'Miércoles\', \'Jueves\', \'Viernes\', \'Sábado\'],\n          editable: false,\n          hiddenDays: [0, 6],\n\n          events: \"http://162.243.222.54/fullcalendar/new_fechas_insp.php?id_sol_garantia=\"+$id_sol,\n\n        });\n      }\n    }\n  );\n\n</script>\n\n<?php\n$dia_sel=\"{segment_4}\";\n$hora=$_GET[\'hora\'];\n$id_cliente=\"{member_id}\";\n?>\n\n  <div class=\"row\">\n    <div class=\"col-sm-1\"></div>\n    <div class=\"col-sm-10\">\n      {exp:user:stats}\n      <ol class=\"breadcrumb\">\n        <li><a href=\"{site_url}main/user_dashboard/{member_id}\">Panel de control</a></li>\n        <li><a href=\"#\">Mis solicitudes</a></li>\n        <li><a href=\"#\">Solicitud</a></li>\n        <li class=\"active\">Agendar solicitud</li>\n      </ol>\n      {/exp:user:stats}\n    </div>\n    <div class=\"col-sm-1\"></div>\n  </div>\n\n  {embed=\"includes/ver_reagenda\" entrada=\"{segment_3}\" paso=\"3\"}\n\n  <div class=\"row\">\n    <div class=\"col-sm-1\"></div>\n    <div class=\"col-sm-6\">\n      <div class=\"panel bg-white box-shadow\">\n        <div class=\"panel-heading\">\n          <div class=\"clearfix\">\n            <div class=\"col-sm-6 pl-0\">\n              <h4 class=\"uppercase medium\"><i class=\"icon-calendar\"></i> Agendar Solicitud</h4>\n            </div>\n            <div class=\"col-sm-6 text-right\">\n              <div>\n                <small>\n                  <span class=\"bold\">Horarios de inspección</span><br>\n                  9:00 am - 2:00 pm de lunes a viernes\n                </small>\n              </div>\n            </div>\n          </div>\n        </div>\n        <div class=\"panel-body p-0\">\n          <div id=\"calendar\"></div>\n        </div>\n      </div>\n    </div>\n    <div class=\"col-sm-4\">\n      <div class=\"box-shadow border-rounded bg-white p-14\">\n\n        <form method=\"post\" enctype=\"multipart/form-data\" name=\"frm\" id=\"frm\" onSubmit=\"return validar(this)\" action=\"/?/main/guardar_3er_paso\" >\n\n          <label for=\"\">Fecha seleccionada:</label>\n          <div class=\"input-group\">\n            <span class=\"input-group-addon\"><i class=\"icon-calendar\"></i></span>\n            <input type=\"text\" class=\"form-control\" placeholder=\"DD/MM/AAAA\" name=\"fecha_atencion_ticket\" value=\"<?php echo $dia_sel; ?>\">\n          </div>\n          <div class=\"form-group pt-14\">\n            <small>Asegúrate que puedes estar en tu departamento en la fecha y hora que agendas tu cita. Te enviaremos una notificación y un correo el día anterior para recordarte.</small>\n          </div>\n\n          {exp:freeform:entries form_id=\"4\" search:id_sol_garantia=\"{segment_3}\" search:orden_tramite=\"3\" limit=\"1\" status=\"open|closed\"}\n          <?php  $rel=strtolower(\"{freeform:field:relacion_dueno_departamento}\"); $due=\"{freeform:field:dueno_atiende_ticket}\";?>\n\n          <div class=\"form-group\">\n            <?php \n            if($due==\"no\"){ ?>\n              <small>Edite los datos de la persona responsable de la inspección.</small> \n            <?php }\n            else{ ?>\n              <small>Asigna a alguien para coordinar el arreglo <a data-toggle=\"collapse\" href=\"#form-collapse\" class=\"underline\">aquí</a></small> \n            <?php } ?>\n\n          </div>\n\n          <div id=\"form-collapse\" <?php if($due==\"no\"){}else{ echo \"class=\'collapse\'\";} ?>>\n            <div class=\"form-group\">\n              <small>Relacion con el dueño del departamento</small> \n              <select name=\"relacion_dueno_departamento\" class=\"form-control select-override\">\n                <option value=\"\">Seleccione</option>\n                <option value=\"Familiar\" <?php if($rel==\"familiar\"){echo \'selected=\"selected\"\';} ?>>Familiar</option>\n                <option value=\"Amigo\" <?php if($rel==\"amigo\"){echo \'selected=\"selected\"\';} ?>>Amigo</option>\n              </select>\n            </div>\n            <div class=\"form-group\">\n              <small>Nombre del encargado de la atención</small> \n              <input type=\"text\" placeholder=\"Nombre\" name=\"nombre_encargado_atencion\" class=\" form-control\" \n              value=\"{freeform:field:nombre_encargado_atencion}\">\n            </div>\n            <div class=\"form-group\">\n              <small>Celular del encargado de la atención</small> \n              <input type=\"text\" placeholder=\"Celular\" name=\"celular_encargado_atencion\" class=\" form-control\" value=\"{freeform:field:celular_encargado_atencion}\">\n            </div>\n            <div class=\"form-group\">\n              <small>Correo electrónico del encargado de la atención</small> \n              <input type=\"email\" placeholder=\"Correo electrónico\" name=\"email_encargado_atencion\" class=\" form-control\" value=\"{freeform:field:email_encargado_atencion}\">\n            </div>\n            {/exp:freeform:entries}\n\n        </div>\n              <input type=\"hidden\" name=\"XID\" value=\"{XID_HASH}\" /> \n              <input type=\"hidden\" placeholder=\"id_cliente\" name=\"id_cliente\" class=\" form-control input-lg\" value=\"<?php echo $id_cliente; ?>\">\n              <input type=\"hidden\" placeholder=\"id_sol_garantia\" name=\"id_sol_garantia\" class=\" form-control input-lg\" \n              value=\"<?php echo $id_sol_garantia; ?>\">\n              <input type=\"hidden\" placeholder=\"orden_tramite\" name=\"orden_tramite\" class=\" form-control input-lg\" value=\"2\">\n              <input type=\"submit\" class=\"btn btn-sm btn-info\" value=\"Agendar\">\n        </form>\n\n      </div>\n    </div>\n    <div class=\"col-sm-1\"></div>\n  </div>\n{embed=\"includes/footer\"}');
/*!40000 ALTER TABLE `exp_revision_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_rte_tools`
--

DROP TABLE IF EXISTS `exp_rte_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_rte_tools` (
  `tool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `class` varchar(75) DEFAULT NULL,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`tool_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_rte_tools`
--

LOCK TABLES `exp_rte_tools` WRITE;
/*!40000 ALTER TABLE `exp_rte_tools` DISABLE KEYS */;
INSERT INTO `exp_rte_tools` VALUES (1,'Blockquote','Blockquote_rte','y'),(2,'Bold','Bold_rte','y'),(3,'Headings','Headings_rte','y'),(4,'Image','Image_rte','y'),(5,'Italic','Italic_rte','y'),(6,'Link','Link_rte','y'),(7,'Ordered List','Ordered_list_rte','y'),(8,'Underline','Underline_rte','y'),(9,'Unordered List','Unordered_list_rte','y'),(10,'View Source','View_source_rte','y'),(11,'Channel_images','Channel_images_rte','y');
/*!40000 ALTER TABLE `exp_rte_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_rte_toolsets`
--

DROP TABLE IF EXISTS `exp_rte_toolsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_rte_toolsets` (
  `toolset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `tools` text,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`toolset_id`),
  KEY `member_id` (`member_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_rte_toolsets`
--

LOCK TABLES `exp_rte_toolsets` WRITE;
/*!40000 ALTER TABLE `exp_rte_toolsets` DISABLE KEYS */;
INSERT INTO `exp_rte_toolsets` VALUES (1,0,'Default','3|2|5|1|9|7|6|4|10','y');
/*!40000 ALTER TABLE `exp_rte_toolsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_search`
--

DROP TABLE IF EXISTS `exp_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) NOT NULL DEFAULT '1',
  `search_date` int(10) NOT NULL,
  `keywords` varchar(60) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `total_results` int(6) NOT NULL,
  `per_page` tinyint(3) unsigned NOT NULL,
  `query` mediumtext,
  `custom_fields` mediumtext,
  `result_page` varchar(70) NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_search`
--

LOCK TABLES `exp_search` WRITE;
/*!40000 ALTER TABLE `exp_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_search_log`
--

DROP TABLE IF EXISTS `exp_search_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_search_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `search_date` int(10) NOT NULL,
  `search_type` varchar(32) NOT NULL,
  `search_terms` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_search_log`
--

LOCK TABLES `exp_search_log` WRITE;
/*!40000 ALTER TABLE `exp_search_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_search_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_security_hashes`
--

DROP TABLE IF EXISTS `exp_security_hashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_security_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL,
  PRIMARY KEY (`hash_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_security_hashes`
--

LOCK TABLES `exp_security_hashes` WRITE;
/*!40000 ALTER TABLE `exp_security_hashes` DISABLE KEYS */;
INSERT INTO `exp_security_hashes` VALUES (4097,1406918754,'affd2f3e1f2794e6113d402a9e35b877882f6a32','b5a66910fc86b20aacad8995cbc5138c368fbc50'),(4100,1406924619,'718250b9ad4308c44708df775b2f54f8593bf57a','375592fa734a87b174e63347a86dd508fa835ab2'),(4099,1406924044,'e83c174902c5be92251ec3b2bf519fbdb038debc','7ba4fc0000a530c8a4b0dc761c7bbcde6778bbbf');
/*!40000 ALTER TABLE `exp_security_hashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_sessions`
--

DROP TABLE IF EXISTS `exp_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `admin_sess` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `fingerprint` varchar(40) NOT NULL,
  `sess_start` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `member_id` (`member_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_sessions`
--

LOCK TABLES `exp_sessions` WRITE;
/*!40000 ALTER TABLE `exp_sessions` DISABLE KEYS */;
INSERT INTO `exp_sessions` VALUES ('affd2f3e1f2794e6113d402a9e35b877882f6a32',1,0,'190.117.246.63','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36','3706066c501322de9bfd436b004d4bd1',1406924041,1406924043),('718250b9ad4308c44708df775b2f54f8593bf57a',16,1,'190.117.246.111','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.132 Safari/537.36 OPR/21.0.1','93881071a9e940c0cbd3105dc503db66',1406924619,1406924656),('e83c174902c5be92251ec3b2bf519fbdb038debc',1,1,'190.117.246.63','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36','3706066c501322de9bfd436b004d4bd1',1406924043,1406924048);
/*!40000 ALTER TABLE `exp_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_simple_commerce_emails`
--

DROP TABLE IF EXISTS `exp_simple_commerce_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_simple_commerce_emails` (
  `email_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `email_name` varchar(50) NOT NULL DEFAULT '',
  `email_subject` varchar(125) NOT NULL DEFAULT '',
  `email_body` text NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_simple_commerce_emails`
--

LOCK TABLES `exp_simple_commerce_emails` WRITE;
/*!40000 ALTER TABLE `exp_simple_commerce_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_simple_commerce_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_simple_commerce_items`
--

DROP TABLE IF EXISTS `exp_simple_commerce_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_simple_commerce_items` (
  `item_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(8) unsigned NOT NULL,
  `item_enabled` char(1) NOT NULL DEFAULT 'y',
  `item_regular_price` decimal(7,2) NOT NULL DEFAULT '0.00',
  `item_sale_price` decimal(7,2) NOT NULL DEFAULT '0.00',
  `item_use_sale` char(1) NOT NULL DEFAULT 'n',
  `recurring` char(1) NOT NULL DEFAULT 'n',
  `subscription_frequency` int(10) unsigned DEFAULT NULL,
  `subscription_frequency_unit` varchar(10) DEFAULT NULL,
  `item_purchases` int(8) NOT NULL DEFAULT '0',
  `current_subscriptions` int(8) NOT NULL DEFAULT '0',
  `new_member_group` int(8) DEFAULT '0',
  `member_group_unsubscribe` int(8) DEFAULT '0',
  `admin_email_address` varchar(75) DEFAULT NULL,
  `admin_email_template` int(5) DEFAULT '0',
  `customer_email_template` int(5) DEFAULT '0',
  `admin_email_template_unsubscribe` int(5) DEFAULT '0',
  `customer_email_template_unsubscribe` int(5) DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_simple_commerce_items`
--

LOCK TABLES `exp_simple_commerce_items` WRITE;
/*!40000 ALTER TABLE `exp_simple_commerce_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_simple_commerce_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_simple_commerce_purchases`
--

DROP TABLE IF EXISTS `exp_simple_commerce_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_simple_commerce_purchases` (
  `purchase_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(20) NOT NULL DEFAULT '',
  `member_id` varchar(50) NOT NULL DEFAULT '',
  `paypal_subscriber_id` varchar(100) DEFAULT NULL,
  `item_id` int(8) unsigned NOT NULL DEFAULT '0',
  `purchase_date` int(12) unsigned NOT NULL DEFAULT '0',
  `item_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paypal_details` text,
  `subscription_end_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`purchase_id`),
  KEY `item_id` (`item_id`),
  KEY `member_id` (`member_id`),
  KEY `txn_id` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_simple_commerce_purchases`
--

LOCK TABLES `exp_simple_commerce_purchases` WRITE;
/*!40000 ALTER TABLE `exp_simple_commerce_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_simple_commerce_purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_sites`
--

DROP TABLE IF EXISTS `exp_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_sites` (
  `site_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `site_label` varchar(100) NOT NULL DEFAULT '',
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_description` text,
  `site_system_preferences` mediumtext NOT NULL,
  `site_mailinglist_preferences` text NOT NULL,
  `site_member_preferences` text NOT NULL,
  `site_template_preferences` text NOT NULL,
  `site_channel_preferences` text NOT NULL,
  `site_bootstrap_checksums` text NOT NULL,
  `site_pages` text NOT NULL,
  PRIMARY KEY (`site_id`),
  KEY `site_name` (`site_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_sites`
--

LOCK TABLES `exp_sites` WRITE;
/*!40000 ALTER TABLE `exp_sites` DISABLE KEYS */;
INSERT INTO `exp_sites` VALUES (1,'VIVA - GyM','default_site',NULL,'YTo5MDp7czoxMDoic2l0ZV9pbmRleCI7czowOiIiO3M6ODoic2l0ZV91cmwiO3M6MjI6Imh0dHA6Ly8xNjIuMjQzLjIyMi41NC8iO3M6MTY6InRoZW1lX2ZvbGRlcl91cmwiO3M6Mjk6Imh0dHA6Ly8xNjIuMjQzLjIyMi41NC90aGVtZXMvIjtzOjE1OiJ3ZWJtYXN0ZXJfZW1haWwiO3M6MTk6ImpjbW9yb244MkBnbWFpbC5jb20iO3M6MTQ6IndlYm1hc3Rlcl9uYW1lIjtzOjA6IiI7czoyMDoiY2hhbm5lbF9ub21lbmNsYXR1cmUiO3M6NzoiY2hhbm5lbCI7czoxMDoibWF4X2NhY2hlcyI7czozOiIxNTAiO3M6MTE6ImNhcHRjaGFfdXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0L2d5bS9pbWFnZXMvY2FwdGNoYXMvIjtzOjEyOiJjYXB0Y2hhX3BhdGgiO3M6MzI6IkM6XHdhbXBcd3d3XGd5bVxpbWFnZXNcY2FwdGNoYXNcIjtzOjEyOiJjYXB0Y2hhX2ZvbnQiO3M6MToieSI7czoxMjoiY2FwdGNoYV9yYW5kIjtzOjE6InkiO3M6MjM6ImNhcHRjaGFfcmVxdWlyZV9tZW1iZXJzIjtzOjE6Im4iO3M6MTc6ImVuYWJsZV9kYl9jYWNoaW5nIjtzOjE6Im4iO3M6MTg6ImVuYWJsZV9zcWxfY2FjaGluZyI7czoxOiJuIjtzOjE4OiJmb3JjZV9xdWVyeV9zdHJpbmciO3M6MToibiI7czoxMzoic2hvd19wcm9maWxlciI7czoxOiJuIjtzOjE4OiJ0ZW1wbGF0ZV9kZWJ1Z2dpbmciO3M6MToibiI7czoxNToiaW5jbHVkZV9zZWNvbmRzIjtzOjE6Im4iO3M6MTM6ImNvb2tpZV9kb21haW4iO3M6MDoiIjtzOjExOiJjb29raWVfcGF0aCI7czowOiIiO3M6MjA6IndlYnNpdGVfc2Vzc2lvbl90eXBlIjtzOjE6ImMiO3M6MTU6ImNwX3Nlc3Npb25fdHlwZSI7czoxOiJjIjtzOjIxOiJhbGxvd191c2VybmFtZV9jaGFuZ2UiO3M6MToieSI7czoxODoiYWxsb3dfbXVsdGlfbG9naW5zIjtzOjE6InkiO3M6MTY6InBhc3N3b3JkX2xvY2tvdXQiO3M6MToibiI7czoyNToicGFzc3dvcmRfbG9ja291dF9pbnRlcnZhbCI7czozOiIwLjEiO3M6MjA6InJlcXVpcmVfaXBfZm9yX2xvZ2luIjtzOjE6InkiO3M6MjI6InJlcXVpcmVfaXBfZm9yX3Bvc3RpbmciO3M6MToieSI7czoyNDoicmVxdWlyZV9zZWN1cmVfcGFzc3dvcmRzIjtzOjE6Im4iO3M6MTk6ImFsbG93X2RpY3Rpb25hcnlfcHciO3M6MToieSI7czoyMzoibmFtZV9vZl9kaWN0aW9uYXJ5X2ZpbGUiO3M6MDoiIjtzOjE3OiJ4c3NfY2xlYW5fdXBsb2FkcyI7czoxOiJuIjtzOjE1OiJyZWRpcmVjdF9tZXRob2QiO3M6NzoicmVmcmVzaCI7czo5OiJkZWZ0X2xhbmciO3M6Nzoic3BhbmlzaCI7czo4OiJ4bWxfbGFuZyI7czoyOiJlcyI7czoxMjoic2VuZF9oZWFkZXJzIjtzOjE6InkiO3M6MTE6Imd6aXBfb3V0cHV0IjtzOjE6Im4iO3M6MTM6ImxvZ19yZWZlcnJlcnMiO3M6MToieSI7czoxMzoibWF4X3JlZmVycmVycyI7czozOiI1MDAiO3M6MTE6ImRhdGVfZm9ybWF0IjtzOjg6IiVuLyVqLyV5IjtzOjExOiJ0aW1lX2Zvcm1hdCI7czoyOiIxMiI7czoxMzoic2VydmVyX29mZnNldCI7czowOiIiO3M6MjE6ImRlZmF1bHRfc2l0ZV90aW1lem9uZSI7czoxMjoiQW1lcmljYS9MaW1hIjtzOjEzOiJtYWlsX3Byb3RvY29sIjtzOjQ6Im1haWwiO3M6MTE6InNtdHBfc2VydmVyIjtzOjA6IiI7czoxMzoic210cF91c2VybmFtZSI7czowOiIiO3M6MTM6InNtdHBfcGFzc3dvcmQiO3M6MDoiIjtzOjExOiJlbWFpbF9kZWJ1ZyI7czoxOiJuIjtzOjEzOiJlbWFpbF9jaGFyc2V0IjtzOjU6InV0Zi04IjtzOjE1OiJlbWFpbF9iYXRjaG1vZGUiO3M6MToibiI7czoxNjoiZW1haWxfYmF0Y2hfc2l6ZSI7czowOiIiO3M6MTE6Im1haWxfZm9ybWF0IjtzOjQ6Imh0bWwiO3M6OToid29yZF93cmFwIjtzOjE6InkiO3M6MjI6ImVtYWlsX2NvbnNvbGVfdGltZWxvY2siO3M6MToiNSI7czoyMjoibG9nX2VtYWlsX2NvbnNvbGVfbXNncyI7czoxOiJ5IjtzOjg6ImNwX3RoZW1lIjtzOjc6ImRlZmF1bHQiO3M6MjE6ImVtYWlsX21vZHVsZV9jYXB0Y2hhcyI7czoxOiJuIjtzOjE2OiJsb2dfc2VhcmNoX3Rlcm1zIjtzOjE6InkiO3M6MTk6ImRlbnlfZHVwbGljYXRlX2RhdGEiO3M6MToieSI7czoyNDoicmVkaXJlY3Rfc3VibWl0dGVkX2xpbmtzIjtzOjE6Im4iO3M6MTY6ImVuYWJsZV9jZW5zb3JpbmciO3M6MToibiI7czoxNDoiY2Vuc29yZWRfd29yZHMiO3M6MDoiIjtzOjE4OiJjZW5zb3JfcmVwbGFjZW1lbnQiO3M6MDoiIjtzOjEwOiJiYW5uZWRfaXBzIjtzOjA6IiI7czoxMzoiYmFubmVkX2VtYWlscyI7czowOiIiO3M6MTY6ImJhbm5lZF91c2VybmFtZXMiO3M6MDoiIjtzOjE5OiJiYW5uZWRfc2NyZWVuX25hbWVzIjtzOjA6IiI7czoxMDoiYmFuX2FjdGlvbiI7czo4OiJyZXN0cmljdCI7czoxMToiYmFuX21lc3NhZ2UiO3M6MzQ6IlRoaXMgc2l0ZSBpcyBjdXJyZW50bHkgdW5hdmFpbGFibGUiO3M6MTU6ImJhbl9kZXN0aW5hdGlvbiI7czoyMToiaHR0cDovL3d3dy55YWhvby5jb20vIjtzOjE2OiJlbmFibGVfZW1vdGljb25zIjtzOjE6InkiO3M6MTI6ImVtb3RpY29uX3VybCI7czozNjoiaHR0cDovL2xvY2FsaG9zdC9neW0vaW1hZ2VzL3NtaWxleXMvIjtzOjE5OiJyZWNvdW50X2JhdGNoX3RvdGFsIjtzOjQ6IjEwMDAiO3M6MTc6Im5ld192ZXJzaW9uX2NoZWNrIjtzOjE6Im4iO3M6MTc6ImVuYWJsZV90aHJvdHRsaW5nIjtzOjE6Im4iO3M6MTc6ImJhbmlzaF9tYXNrZWRfaXBzIjtzOjE6InkiO3M6MTQ6Im1heF9wYWdlX2xvYWRzIjtzOjI6IjEwIjtzOjEzOiJ0aW1lX2ludGVydmFsIjtzOjE6IjgiO3M6MTI6ImxvY2tvdXRfdGltZSI7czoyOiIzMCI7czoxNToiYmFuaXNobWVudF90eXBlIjtzOjc6Im1lc3NhZ2UiO3M6MTQ6ImJhbmlzaG1lbnRfdXJsIjtzOjA6IiI7czoxODoiYmFuaXNobWVudF9tZXNzYWdlIjtzOjUwOiJZb3UgaGF2ZSBleGNlZWRlZCB0aGUgYWxsb3dlZCBwYWdlIGxvYWQgZnJlcXVlbmN5LiI7czoxNzoiZW5hYmxlX3NlYXJjaF9sb2ciO3M6MToieSI7czoxOToibWF4X2xvZ2dlZF9zZWFyY2hlcyI7czozOiI1MDAiO3M6MTc6InRoZW1lX2ZvbGRlcl9wYXRoIjtzOjM3OiIvdmFyL3d3dy92aXZhZ3ltcG9zdmVudGEvaHRtbC90aGVtZXMvIjtzOjEwOiJpc19zaXRlX29uIjtzOjE6InkiO3M6MTE6InJ0ZV9lbmFibGVkIjtzOjE6InkiO3M6MjI6InJ0ZV9kZWZhdWx0X3Rvb2xzZXRfaWQiO3M6MToiMSI7czoxMjoiY2FjaGVfZHJpdmVyIjtzOjU6ImR1bW15IjtzOjk6InNtdHBfcG9ydCI7czowOiIiO30=','YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==','YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToieSI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NDoibm9uZSI7czoyMzoibmV3X21lbWJlcl9ub3RpZmljYXRpb24iO3M6MToibiI7czoyMzoibWJyX25vdGlmaWNhdGlvbl9lbWFpbHMiO3M6MDoiIjtzOjI0OiJyZXF1aXJlX3Rlcm1zX29mX3NlcnZpY2UiO3M6MToieSI7czoyMjoidXNlX21lbWJlcnNoaXBfY2FwdGNoYSI7czoxOiJuIjtzOjIwOiJkZWZhdWx0X21lbWJlcl9ncm91cCI7czoxOiI2IjtzOjE1OiJwcm9maWxlX3RyaWdnZXIiO3M6NjoibWVtYmVyIjtzOjEyOiJtZW1iZXJfdGhlbWUiO3M6NzoiZGVmYXVsdCI7czoxNDoiZW5hYmxlX2F2YXRhcnMiO3M6MToieSI7czoyMDoiYWxsb3dfYXZhdGFyX3VwbG9hZHMiO3M6MToieSI7czoxMDoiYXZhdGFyX3VybCI7czo1MDoiaHR0cDovL2xvY2FsaG9zdC9WaXZhR3lNX1Bvc3RWZW50YS9pbWFnZXMvYXZhdGFycy8iO3M6MTE6ImF2YXRhcl9wYXRoIjtzOjQ1OiJDOi93YW1wL3d3dy9WaXZhR3lNX1Bvc3RWZW50YS9pbWFnZXMvYXZhdGFycy8iO3M6MTY6ImF2YXRhcl9tYXhfd2lkdGgiO3M6MzoiMTAwIjtzOjE3OiJhdmF0YXJfbWF4X2hlaWdodCI7czozOiIxMDAiO3M6MTM6ImF2YXRhcl9tYXhfa2IiO3M6MjoiNTAiO3M6MTM6ImVuYWJsZV9waG90b3MiO3M6MToieSI7czo5OiJwaG90b191cmwiO3M6NTY6Imh0dHA6Ly9sb2NhbGhvc3QvVml2YUd5TV9Qb3N0VmVudGEvaW1hZ2VzL21lbWJlcl9waG90b3MvIjtzOjEwOiJwaG90b19wYXRoIjtzOjUxOiJDOi93YW1wL3d3dy9WaXZhR3lNX1Bvc3RWZW50YS9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTU6InBob3RvX21heF93aWR0aCI7czozOiIxMDAiO3M6MTY6InBob3RvX21heF9oZWlnaHQiO3M6MzoiMTAwIjtzOjEyOiJwaG90b19tYXhfa2IiO3M6MjoiNTAiO3M6MTY6ImFsbG93X3NpZ25hdHVyZXMiO3M6MToieSI7czoxMzoic2lnX21heGxlbmd0aCI7czozOiI1MDAiO3M6MjE6InNpZ19hbGxvd19pbWdfaG90bGluayI7czoxOiJuIjtzOjIwOiJzaWdfYWxsb3dfaW1nX3VwbG9hZCI7czoxOiJuIjtzOjExOiJzaWdfaW1nX3VybCI7czo2NDoiaHR0cDovL2xvY2FsaG9zdC9WaXZhR3lNX1Bvc3RWZW50YS9pbWFnZXMvc2lnbmF0dXJlX2F0dGFjaG1lbnRzLyI7czoxMjoic2lnX2ltZ19wYXRoIjtzOjU5OiJDOi93YW1wL3d3dy9WaXZhR3lNX1Bvc3RWZW50YS9pbWFnZXMvc2lnbmF0dXJlX2F0dGFjaG1lbnRzLyI7czoxNzoic2lnX2ltZ19tYXhfd2lkdGgiO3M6MzoiNDgwIjtzOjE4OiJzaWdfaW1nX21heF9oZWlnaHQiO3M6MjoiODAiO3M6MTQ6InNpZ19pbWdfbWF4X2tiIjtzOjI6IjMwIjtzOjE5OiJwcnZfbXNnX3VwbG9hZF9wYXRoIjtzOjUyOiJDOi93YW1wL3d3dy9WaXZhR3lNX1Bvc3RWZW50YS9pbWFnZXMvcG1fYXR0YWNobWVudHMvIjtzOjIzOiJwcnZfbXNnX21heF9hdHRhY2htZW50cyI7czoxOiIzIjtzOjIyOiJwcnZfbXNnX2F0dGFjaF9tYXhzaXplIjtzOjM6IjI1MCI7czoyMDoicHJ2X21zZ19hdHRhY2hfdG90YWwiO3M6MzoiMTAwIjtzOjE5OiJwcnZfbXNnX2h0bWxfZm9ybWF0IjtzOjQ6InNhZmUiO3M6MTg6InBydl9tc2dfYXV0b19saW5rcyI7czoxOiJ5IjtzOjE3OiJwcnZfbXNnX21heF9jaGFycyI7czo0OiI2MDAwIjtzOjE5OiJtZW1iZXJsaXN0X29yZGVyX2J5IjtzOjE3OiJ0b3RhbF9mb3J1bV9wb3N0cyI7czoyMToibWVtYmVybGlzdF9zb3J0X29yZGVyIjtzOjQ6ImRlc2MiO3M6MjA6Im1lbWJlcmxpc3Rfcm93X2xpbWl0IjtzOjI6IjIwIjt9','YTo3OntzOjIyOiJlbmFibGVfdGVtcGxhdGVfcm91dGVzIjtzOjE6InkiO3M6MTE6InN0cmljdF91cmxzIjtzOjE6InkiO3M6ODoic2l0ZV80MDQiO3M6MDoiIjtzOjE5OiJzYXZlX3RtcGxfcmV2aXNpb25zIjtzOjE6InkiO3M6MTg6Im1heF90bXBsX3JldmlzaW9ucyI7czoxOiI1IjtzOjE1OiJzYXZlX3RtcGxfZmlsZXMiO3M6MToieSI7czoxODoidG1wbF9maWxlX2Jhc2VwYXRoIjtzOjQwOiIvdmFyL3d3dy92aXZhZ3ltcG9zdmVudGEvaHRtbC90ZW1wbGF0ZXMvIjt9','YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJuIjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=','YToyOntzOjc6ImVtYWlsZWQiO2E6MDp7fXM6Mzk6Ii92YXIvd3d3L3ZpdmFneW1wb3N2ZW50YS9odG1sL2luZGV4LnBocCI7czozMjoiMjQ4NjA2MTFhMWU4MzZmYmUyMDZhNDVjZDEyMzM0NWMiO30=','YToxOntpOjE7YToxOntzOjM6InVybCI7czoyMjoiaHR0cDovLzE2Mi4yNDMuMjIyLjU0LyI7fX0=');
/*!40000 ALTER TABLE `exp_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_snippets`
--

DROP TABLE IF EXISTS `exp_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_snippets` (
  `snippet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) NOT NULL,
  `snippet_name` varchar(75) NOT NULL,
  `snippet_contents` text,
  PRIMARY KEY (`snippet_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_snippets`
--

LOCK TABLES `exp_snippets` WRITE;
/*!40000 ALTER TABLE `exp_snippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_specialty_templates`
--

DROP TABLE IF EXISTS `exp_specialty_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_specialty_templates` (
  `template_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_name` varchar(50) NOT NULL,
  `data_title` varchar(80) NOT NULL,
  `template_data` text NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_specialty_templates`
--

LOCK TABLES `exp_specialty_templates` WRITE;
/*!40000 ALTER TABLE `exp_specialty_templates` DISABLE KEYS */;
INSERT INTO `exp_specialty_templates` VALUES (1,1,'y','offline_template','','<html>\n<head>\n\n<title>System Offline</title>\n\n<style type=\"text/css\">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#999999 1px solid;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n</style>\n\n</head>\n\n<body>\n\n<div id=\"content\">\n\n<h1>System Offline</h1>\n\n<p>This site is currently offline</p>\n\n</div>\n\n</body>\n\n</html>'),(2,1,'y','message_template','','<!doctype html>\n<html>\n  <head>\n    <meta charset=\"utf-8\" />\n\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n\n    <title>{title}</title>\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"http://162.243.222.54/stylesheets/viva.css\" media=\"screen\" />\n    \n    <script type=\"text/javascript\" src=\"http://162.243.222.54/lib/b3/jquery-2_1_1.js\"></script>\n    <script type=\"text/javascript\" src=\"http://162.243.222.54/lib/b3/tab.js\"></script>\n    <script type=\"text/javascript\" src=\"http://162.243.222.54/lib/b3/transition.js\"></script>\n    <script type=\"text/javascript\" src=\"http://162.243.222.54/lib/b3/collapse.js\"></script>\n    <script type=\"text/javascript\" src=\"http://162.243.222.54/lib/vendor/fileinput.js\"></script>\n\n    <!-- FAVICON -->\n    <link rel=\"shortcut icon\" href=\"http://162.243.222.54/img/favicon.ico\">\n\n    <!-- WebFonts  -->\n    <script type=\"text/javascript\" src=\"//use.typekit.net/jfc4vgc.js\"></script>\n    <script type=\"text/javascript\">try{Typekit.load();}catch(e){}</script>\n\n  </head>\n  <body>\n  <header class=\"bg-inverse text-muted\">\n    <div class=\"container-fluid pt-7 pb-7\">\n      <div class=\"row\">\n        <div class=\"col-md-4\">\n          <a href=\"http://162.243.222.54/main/user_select\"><img src=\"http://162.243.222.54/images/logo-viva.png\" style=\"width:120px; height: auto;\"></a>\n        </div>\n        <div class=\"col-md-8 hidden-xs\">\n          <div class=\"row\">\n            <div class=\"col-xs-11 col-md-11 col-sm-11 text-right\">\n            </div>\n            <div class=\"col-xs-1 col-md-1 col-sm-1\">\n            </div>\n          </div>\n        </div>\n      </div>\n    </div>\n  </header>\n  {meta_refresh}\n  <div class=\"container-fluid pt-35 pb-35 mh-630\">\n	<div class=\"row\">\n	  <div class=\"col-md-6 col-md-offset-3\">\n		  <h1>{heading}</h1>\n		  {content}\n		  <p>{link}</p>	  \n	  </div>\n	</div>\n   </div>\n   <footer class=\"bg-inverse\">\n	    <div class=\"container-fluid\">\n	      <div class=\"row pt-14 pb-14 text-center\">\n	        <div class=\"col-md-3 pt-7\">\n	          <p class=\"small\">Copyright 2012. VivaGyM.<br>Todos los derechos reservados</p>\n	        </div>\n	        <div class=\"col-md-3 pt-14\">\n	          <a href=\"#\" class=\"text-gray\">Libro de reclamaciones</a>\n	        </div>\n	        <div class=\"col-md-3 pt-14\">\n	          <a href=\"#\" class=\"uppercase text-gray\">Preguntas frecuentes </a> <i class=\"icon-help\"></i>\n	        </div>\n	        <div class=\"col-md-3 pt-14\">\n	          <a href=\"#\"  class=\"uppercase text-gray\">Emergencia </a> <i class=\"icon-warning\"></i>\n	        </div>\n	      </div>\n	    </div>\n	</footer>'),(3,1,'y','admin_notify_reg','Notification of new member registration','New member registration site: {site_name}\n\nScreen name: {name}\nUser name: {username}\nEmail: {email}\n\nYour control panel URL: {control_panel_url}'),(4,1,'y','admin_notify_entry','A new channel entry has been posted','A new entry has been posted in the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nPosted by: {name}\nEmail: {email}\n\nTo read the entry please visit:\n{entry_url}\n'),(5,1,'y','admin_notify_mailinglist','Someone has subscribed to your mailing list','A new mailing list subscription has been accepted.\n\nEmail Address: {email}\nMailing List: {mailing_list}'),(6,1,'y','admin_notify_comment','You have just received a comment','You have just received a comment for the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nLocated at:\n{comment_url}\n\nPosted by: {name}\nEmail: {email}\nURL: {url}\nLocation: {location}\n\n{comment}'),(7,1,'y','mbr_activation_instructions','Enclosed is your activation code','Thank you for your new member registration.\n\nTo activate your new account, please visit the following URL:\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}\n\n{site_url}'),(8,1,'y','forgot_password_instructions','Instrucciones para recuperar su contraseña','Estimado/a {name},\n\nPara recuperar su contraseña, por favor ingrese a la siguiente pagina.:\n\n{reset_url}\n\nPara recuperar su contraseña, por favor ingrese a la siguiente pagina. {username}\n\nSi no desea recuperar su contraseña, ignore este mensaje, expirará en 24 horas.\n\n{site_name}\n{site_url}'),(9,1,'y','validated_member_notify','Your membership account has been activated','{name},\n\nYour membership account has been activated and is ready for use.\n\nThank You!\n\n{site_name}\n{site_url}'),(10,1,'y','decline_member_validation','Your membership account has been declined','{name},\n\nWe\'re sorry but our staff has decided not to validate your membership.\n\n{site_name}\n{site_url}'),(11,1,'y','mailinglist_activation_instructions','Email Confirmation','Thank you for joining the \"{mailing_list}\" mailing list!\n\nPlease click the link below to confirm your email.\n\nIf you do not want to be added to our list, ignore this email.\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}'),(12,1,'y','comment_notification','Someone just responded to your comment','{name_of_commenter} just responded to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comment at the following URL:\n{comment_url}\n\n{comment}\n\nTo stop receiving notifications for this comment, click here:\n{notification_removal_url}'),(13,1,'y','comments_opened_notification','New comments have been added','Responses have been added to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comments at the following URL:\n{comment_url}\n\n{comments}\n{comment}\n{/comments}\n\nTo stop receiving notifications for this entry, click here:\n{notification_removal_url}'),(14,1,'y','private_message_notification','Someone has sent you a Private Message','\n{recipient_name},\n\n{sender_name} has just sent you a Private Message titled ‘{message_subject}’.\n\nYou can see the Private Message by logging in and viewing your inbox at:\n{site_url}\n\nContent:\n\n{message_content}\n\nTo stop receiving notifications of Private Messages, turn the option off in your Email Settings.\n\n{site_name}\n{site_url}'),(15,1,'y','pm_inbox_full','Your private message mailbox is full','{recipient_name},\n\n{sender_name} has just attempted to send you a Private Message,\nbut your inbox is full, exceeding the maximum of {pm_storage_limit}.\n\nPlease log in and remove unwanted messages from your inbox at:\n{site_url}');
/*!40000 ALTER TABLE `exp_specialty_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_stats`
--

DROP TABLE IF EXISTS `exp_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_stats` (
  `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `total_members` mediumint(7) NOT NULL DEFAULT '0',
  `recent_member_id` int(10) NOT NULL DEFAULT '0',
  `recent_member` varchar(50) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `most_visitors` mediumint(7) NOT NULL DEFAULT '0',
  `most_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_cache_clear` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stat_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_stats`
--

LOCK TABLES `exp_stats` WRITE;
/*!40000 ALTER TABLE `exp_stats` DISABLE KEYS */;
INSERT INTO `exp_stats` VALUES (1,1,46,85,'Cliente Nuevo',59,0,0,0,1398819060,0,0,1406924656,18,1398898748,1406930297);
/*!40000 ALTER TABLE `exp_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_status_groups`
--

DROP TABLE IF EXISTS `exp_status_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_status_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_status_groups`
--

LOCK TABLES `exp_status_groups` WRITE;
/*!40000 ALTER TABLE `exp_status_groups` DISABLE KEYS */;
INSERT INTO `exp_status_groups` VALUES (1,1,'Statuses');
/*!40000 ALTER TABLE `exp_status_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_status_no_access`
--

DROP TABLE IF EXISTS `exp_status_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_status_no_access` (
  `status_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`status_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_status_no_access`
--

LOCK TABLES `exp_status_no_access` WRITE;
/*!40000 ALTER TABLE `exp_status_no_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_status_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_statuses`
--

DROP TABLE IF EXISTS `exp_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_statuses` (
  `status_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_order` int(3) unsigned NOT NULL,
  `highlight` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `group_id` (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_statuses`
--

LOCK TABLES `exp_statuses` WRITE;
/*!40000 ALTER TABLE `exp_statuses` DISABLE KEYS */;
INSERT INTO `exp_statuses` VALUES (1,1,1,'open',1,'009933'),(2,1,1,'closed',2,'990000');
/*!40000 ALTER TABLE `exp_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_groups`
--

DROP TABLE IF EXISTS `exp_template_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `group_order` int(3) unsigned NOT NULL,
  `is_site_default` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`),
  KEY `group_name_idx` (`group_name`),
  KEY `group_order_idx` (`group_order`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_groups`
--

LOCK TABLES `exp_template_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_groups` DISABLE KEYS */;
INSERT INTO `exp_template_groups` VALUES (1,1,'main',1,'y'),(2,1,'calendar_inc',2,'n'),(3,1,'calendar_main',3,'n'),(4,1,'documentation',4,'n'),(5,1,'includes',5,'n'),(6,1,'test',6,'n'),(9,1,'_member',7,'n'),(10,1,'user_inc',8,'n'),(11,1,'user_main',9,'n'),(12,1,'user_notifications',10,'n');
/*!40000 ALTER TABLE `exp_template_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_member_groups`
--

DROP TABLE IF EXISTS `exp_template_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `template_group_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`template_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_member_groups`
--

LOCK TABLES `exp_template_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_member_groups` DISABLE KEYS */;
INSERT INTO `exp_template_member_groups` VALUES (3,9),(6,5);
/*!40000 ALTER TABLE `exp_template_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_no_access`
--

DROP TABLE IF EXISTS `exp_template_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_no_access` (
  `template_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`template_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_no_access`
--

LOCK TABLES `exp_template_no_access` WRITE;
/*!40000 ALTER TABLE `exp_template_no_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_template_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_routes`
--

DROP TABLE IF EXISTS `exp_template_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_routes` (
  `route_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(10) unsigned NOT NULL,
  `route` varchar(512) DEFAULT NULL,
  `route_parsed` varchar(512) DEFAULT NULL,
  `route_required` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`route_id`),
  KEY `template_id` (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_routes`
--

LOCK TABLES `exp_template_routes` WRITE;
/*!40000 ALTER TABLE `exp_template_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_template_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_templates`
--

DROP TABLE IF EXISTS `exp_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `save_template_file` char(1) NOT NULL DEFAULT 'n',
  `template_type` varchar(16) NOT NULL DEFAULT 'webpage',
  `template_data` mediumtext,
  `template_notes` text,
  `edit_date` int(10) NOT NULL DEFAULT '0',
  `last_author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cache` char(1) NOT NULL DEFAULT 'n',
  `refresh` int(6) unsigned NOT NULL DEFAULT '0',
  `no_auth_bounce` varchar(50) NOT NULL DEFAULT '',
  `enable_http_auth` char(1) NOT NULL DEFAULT 'n',
  `allow_php` char(1) NOT NULL DEFAULT 'n',
  `php_parse_location` char(1) NOT NULL DEFAULT 'o',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`template_id`),
  KEY `group_id` (`group_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_templates`
--

LOCK TABLES `exp_templates` WRITE;
/*!40000 ALTER TABLE `exp_templates` DISABLE KEYS */;
INSERT INTO `exp_templates` VALUES (199,1,10,'profile_column','n','webpage','			<div id=\"leftcolumn\">\n				{exp:user:stats member_id=\"{segment_3}\" dynamic=\"off\" limit=\"1\" log_views=\"off\"}\n					<a href=\"{path=user_main/profile}/{member_id}/\"><img src=\"{if avatar_filename}{avatar_url}{avatar_filename}{if:else}{exp:user:theme_folder_url}code_pack/images/icon_profile.gif{/if}\" width=\"150\" alt=\"{screen_name}\'s photo\" /></a><br /><br />\n				<ul>\n<!-- START - if viewing page other than Profile -->\n					{if segment_2 != \"profile\"}<li style=\"margin-bottom: 5px; border-bottom: 1px solid #d5d5d5\"><a href=\"{path=user_main/profile}/{member_id}/\">Back to Profile</a></li>{/if}\n<!-- END - if viewing page other than Profile -->\n\n					<li{if segment_2 == \"user_entries\"} class=\"selected\"{/if}><a href=\"{path=user_main/user_entries}/{member_id}/\">View {if segment_3 == logged_in_member_id}My{if:else}{screen_name}\'s{/if} Entries</a></li>\n					<li{if segment_2 == \"user_comments\"} class=\"selected\"{/if}><a href=\"{path=user_main/user_comments}/{member_id}/\">View {if segment_3 == logged_in_member_id}My{if:else}{screen_name}\'s{/if} Comments</a></li>\n					{if segment_3 != logged_in_member_id}\n					<li><a href=\"{path=member/messages/pm}/{member_id}/\">Send {screen_name} a Message</a></li>\n					{/if}\n\n<!-- START - if Current User -->\n					{if segment_3 == logged_in_member_id}\n					<li style=\"margin-top: 10px; border-top: 1px solid #d5d5d5\"><a href=\"{path=user_main/update_profile}/{member_id}/\"><small>Update My Profile</small></a></li>\n					{/if}\n<!-- END - if Current User -->\n				</ul>\n				{/exp:user:stats}\n			</div>',NULL,1406132365,0,'n',0,'','n','n','o',0),(200,1,11,'delete_account','n','webpage','{embed=\"user_inc/index\" page_title=\"Delete Account\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Delete Account</h3>\n\n			<p></p>\n\n{if logged_out}\n\n{embed=\"user_inc/login\"}\n\n{if:else}\n		\n{embed=\"user_inc/control_column\"}\n\n			<div id=\"middlecolumn\">\n\n				<h5>You must confirm your password to complete this action.</h5>\n				<hr />\n\n				{exp:user:delete_form}\n				<p><label for=\"password\">Current Password:</label><input type=\"password\" name=\"password\" id=\"password\" style=\"width: 450px;\" /></p>\n\n				<p>Are you sure you wish to delete your account? All entries, posts, comments, and other content associated with your account will also be deleted.</p> \n				<p><strong style=\"color: #f00;\">WARNING: THIS ACTION CANNOT BE UNDONE!</strong></p> \n\n				<p><input type=\"submit\" name=\"submit\" value=\"Delete Account\" />\n				{/exp:user:delete_form}\n				\n			</div>\n		\n{/if}\n\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Delete Account\" page allows the currently logged in user to delete their own account, as long as their member group has permissions to delete their own account, and they are not a Super Admin.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_delete_form/\">User:Delete_Form</a> to delete member accounts.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(201,1,11,'forgot_password','n','webpage','{embed=\"user_inc/index\" page_title=\"Forgot Username or Password\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Forgot Username or Password</h3>\n\n			<p></p>\n		\n			<div id=\"fullcolumn\">\n\n\n				<h5>Forgot Username?</h5>\n				<p>If you\'ve forgotten your username, just enter your email address you registered with and you will receive an email informing you of your username.</p>\n \n				{exp:user:forgot_username return=\"user_main/index\" error_page=\"user_inc/error_template\"}\n				<div class=\"label_padding\">\n				<p><label for=\"email\">Email Address <span class=\"required\">*</span></label><input type=\"text\" name=\"email\" id=\"email\" style=\"width: 300px;\" /></p>\n				</div>\n				<p><input type=\"submit\" name=\"submit\" value=\"Submit\" /></p>\n				{/exp:user:forgot_username}\n\n				<hr />\n\n				<h5>Forgot Password?</h5>\n				<p>If you\'ve forgotten your password, just enter your email address you registered with and you will receive an email with instructions for resetting your Password.</p>\n \n				{exp:user:forgot_password}\n				<div class=\"label_padding\">\n				<p><label for=\"email\">Email Address <span class=\"required\">*</span></label><input type=\"text\" name=\"email\" id=\"email\" style=\"width: 300px;\" /></p>\n				</div>\n				<p><input type=\"submit\" name=\"submit\" value=\"Submit\" /></p>\n				{/exp:user:forgot_password} \n\n			</div>\n		\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Forgot Username / Password\" page allows users to have their username mailed to them, or their password reset, in the event they forget it.</p>\n\n			<p>It makes use of the following functions:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_forgot_username/\">User:Forgot_Username</a> to allow users have their username mailed to them.</li>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_forgot_password/\">User:Forgot_Password</a> to allow users reset their account password.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(202,1,11,'index','n','webpage','{embed=\"user_inc/index\" page_title=\"Dashboard\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Dashboard</h3>\n			\n			<p></p>\n			\n{if logged_out}\n\n{embed=\"user_inc/login\"}\n\n{if:else}\n\n{embed=\"user_inc/control_column\"}\n\n			<div id=\"middlecolumn\">\n\n				<h4>{logged_in_screen_name}</h4>\n\n				<hr />\n\n				<h5>Profile Snapshot: (<a href=\"{path=\"user_main/update_profile\"}/\">edit?</a>)</h5>\n				{exp:user:stats member_id=\"{segment_3}\" limit=\"1\"}\n\n				<ul>\n				<li><label>Birthday:</label> {if bday_m}\n{if bday_m == \"01\"}January{if:elseif bday_m == \"02\"}February{if:elseif bday_m == \"03\"}March{if:elseif bday_m == \"04\"}April{if:elseif bday_m == \"05\"}May{if:elseif bday_m == \"06\"}June{if:elseif bday_m == \"07\"}July{if:elseif bday_m == \"08\"}August{if:elseif bday_m == \"09\"}September{if:elseif bday_m == \"10\"}October{if:elseif bday_m == \"11\"}November{if:elseif bday_m == \"12\"}December{if:else}{/if}{/if} {if bday_d}{bday_d}{/if}{if bday_y AND bday_d}, {/if}{if bday_y}{bday_y}{/if}</li>\n				<li><label>Email:</label> {encode=\"{email}\"}</li>\n				{if url}<li><label>Website:</label> <a href=\"{url}\">{url}</a></li>{/if}\n				<li><label>Location:</label> {location}</li>\n				<li><label>Occupation:</label> {occupation}</li>\n				<li><label>Interests:</label> {interests}</li>\n				<li><label>Bio:</label><br /> {bio}</li>\n				</ul>\n\n				{/exp:user:stats}\n\n				<hr />\n\n				<h5>Profile Stats</a></h5>\n				{exp:user:stats member_id=\"{segment_3}\" limit=\"1\"}\n\n				<ul>\n				<li><label>Join Date:</label> {join_date format=\"%F %j, %Y\"}</li>\n				<li><label>Last Activity:</label> {last_activity format=\"%F %j, %Y\"}</li>\n				<li><label>Last Comment:</label> {if last_comment_date == 0}No Comments Yet!{/if}{if last_comment_date != 0}{last_comment_date format=\"%F %j, %Y\"}{/if}</li>\n				<li><label>Last Entry:</label> {last_entry_date format=\"%F %j, %Y\"}</li>\n				</ul>\n\n				{/exp:user:stats}\n\n			</div>\n			\n{/if}\n		\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n		\n			<p>The \"Dashboard\" page (or \"Home\" page) in this case shows the currently logged in user a snapshot of their profile.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_stats/\">User:Stats</a> to show profile information.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',1),(203,1,11,'invite','n','webpage','{embed=\"user_inc/index\" page_title=\"Send Invite (Admins Only)\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Send Invite <span>(Admins Only)</span></h3>\n\n			<p></p>\n\n{if logged_out}\n\n{embed=\"user_inc/login\"}\n\n{if:else}\n\n{if logged_in_group_id == \"1\"}\n		\n{embed=\"user_inc/control_column\"}\n\n			<div id=\"middlecolumn\">\n\n				{if segment_3 == \"success\"}\n				<div class=\"user_success\">Invitation Key successfully sent!</div>\n				{/if}\n\n				<h5>This form allows admins to invite others to join this site. Recipients will receive an email notification with instructions on how to register on this site. They will be taken to a special registration form to handle this feature.</h5>\n				<hr />\n\n				{exp:user:key return=\"user_main/invite/success\" error_page=\"user_inc/error_template\" template=\"user_notifications/key_invite\" html=\"no\" parse=\"none\" word_wrap=\"no\"}\n				<p><label for=\"recipient_email\"><b>Recipient Email:</b></label><br /><input type=\"text\" name=\"recipient_email\" id=\"recipient_email\" style=\"width: 450px;\" /></p>\n				<p><label for=\"group_id\"><b>Member Group:</b></label> \n				<select name=\"group_id\" id=\"group_id\" style=\"width: 150px;\">\n				{member_groups}\n				<option value=\"{group_id}\">{group_title}</option>\n				{/member_groups}\n				</select></p>\n				<hr />\n				<p><label for=\"sender_name\">From Name:</label><br /><input type=\"text\" name=\"sender_name\" id=\"sender_name\" value=\"{site_name}\" style=\"width: 450px;\" /></p>\n				<p><label for=\"sender_email\">From Email:</label><br /><input type=\"text\" name=\"sender_email\" id=\"sender_email\" value=\"{webmaster_email}\" style=\"width: 450px;\" /></p>\n				<p><label for=\"subject\">Subject:</label><br /><input type=\"text\" name=\"subject\" id=\"subject\" value=\"Invitation to join {site_name}!\" style=\"width: 450px;\" /></p>\n<!--\n				<p>Message:<br /><textarea name=\"message\" rows=\"10\" cols=\"50\" style=\"width: 450px; height: 200px;\"></textarea></p>\n-->\n				<hr />\n				<p><input type=\"submit\" name=\"submit\" value=\"Send Invite!\" /></p>\n				{/exp:user:key}\n			</div>\n\n{if:else}\n\n			<div id=\"middlecolumn\">\n				<h5>Error!</h5>\n				<p>You must be a site administrator to view this page.</p>\n			</div>\n\n{/if}\n\n{/if}\n		\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Send Invite\" page allows site admins to send an email notification to people they\'d like to invite to join the site. A member group can be pre-designated as well, so upon signup from the recipient, they\'ll automatically be assigned to that member group.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_key/\">User:Key Invite</a> to allow admins to send site invitations.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(204,1,11,'login','n','webpage','{embed=\"user_inc/index\" page_title=\"Login\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Login</h3>\n\n			<p></p>\n		\n			<div id=\"fullcolumn\">\n\n				<h5>Please login!</h5>\n				<p>To view these pages, please sign in with your username and password below:</p>\n				<p>Don\'t have an Account? <a href=\"{path=user_main/register}/\">Sign up here!</a> | <a href=\"{path=user_main/forgot_password}/\">Forgot Your Username or Password?</a></p>\n				{exp:member:login_form return=\"user_main/index\"}\n				<div class=\"label_padding\">\n				<p><label for=\"username\">Your Username:</label> <input type=\"text\" id=\"username\" name=\"username\" style=\"width: 300px;\" /></p>\n				<p><label for=\"password\">Your Password:</label> <input type=\"password\" name=\"password\" id=\"password\" style=\"width: 300px\" /></p>\n				</div>\n				<p><input type=\"checkbox\" name=\"auto_login\" id=\"auto_login\" value=\"1\" /> <label for=\"auto_login\">Auto-login on future visits?</label></p>\n				<p><input type=\"submit\" name=\"submit\" value=\"Login\" /></p>\n				{/exp:member:login_form}\n\n			</div>\n		\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Login\" page allows site visitors to login to the website.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li>Native EE <a href=\"http://expressionengine.com/docs/modules/member/login_form.html\">Member:Login_Form</a> to display a form for visitors to login.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(205,1,11,'members','n','webpage','{embed=\"user_inc/index\" page_title=\"Member List\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n\n			<h2>User</h2>\n\n			<h3>Member List</h3>\n\n			<p></p>\n\n{if logged_out}\n\n{embed=\"user_inc/guest_column\"}\n\n{if:else}\n\n{embed=\"user_inc/control_column\"}\n\n{/if}\n\n			<div id=\"middlecolumn\">\n\n				<h5>Click on a member below to view their profile. Click on the letters below to filter the list by Screen Names that begin with that letter:</h5>\n				<hr />\n				<p><a href=\"/user_main/members/screen_name/a/\">A</a> <a href=\"/user_main/members/screen_name/b/\">B</a> <a href=\"/user_main/members/screen_name/c/\">C</a> <a href=\"/user_main/members/screen_name/d/\">D</a> <a href=\"/user_main/members/screen_name/e/\">E</a> <a href=\"/user_main/members/screen_name/f/\">F</a> <a href=\"/user_main/members/screen_name/g/\">G</a> <a href=\"/user_main/members/screen_name/h/\">H</a> <a href=\"/user_main/members/screen_name/i/\">I</a> <a href=\"/user_main/members/screen_name/j/\">J</a> <a href=\"/user_main/members/screen_name/k/\">K</a> <a href=\"/user_main/members/screen_name/l/\">L</a> <a href=\"/user_main/members/screen_name/m/\">M</a> <a href=\"/user_main/members/screen_name/n/\">N</a> <a href=\"/user_main/members/screen_name/o/\">O</a> <a href=\"/user_main/members/screen_name/p/\">P</a> <a href=\"/user_main/members/screen_name/q/\">Q</a> <a href=\"/user_main/members/screen_name/r/\">R</a> <a href=\"/user_main/members/screen_name/s/\">S</a> <a href=\"/user_main/members/screen_name/t/\">T</a> <a href=\"/user_main/members/screen_name/u/\">U</a> <a href=\"/user_main/members/screen_name/v/\">V</a> <a href=\"/user_main/members/screen_name/w/\">W</a> <a href=\"/user_main/members/screen_name/x/\">X</a> <a href=\"/user_main/members/screen_name/y/\">Y</a> <a href=\"/user_main/members/screen_name/z/\">Z</a> &nbsp; <a href=\"/user_main/members/screen_name/0/\">0</a> <a href=\"/user_main/members/screen_name/1/\">1</a> <a href=\"/user_main/members/screen_name/2/\">2</a> <a href=\"/user_main/members/screen_name/3/\">3</a> <a href=\"/user_main/members/screen_name/4/\">4</a> <a href=\"/user_main/members/screen_name/5/\">5</a> <a href=\"/user_main/members/screen_name/6/\">6</a> <a href=\"/user_main/members/screen_name/7/\">7</a> <a href=\"/user_main/members/screen_name/8/\">8</a> <a href=\"/user_main/members/screen_name/9/\">9</a>\n				<hr />\n				<ul>\n					{exp:user:users orderby=\"screen_name\" sort=\"asc\" limit=\"10\" paginate=\"bottom\" {if segment_3 == \"screen_name\"}search:screen_name=\"{segment_4}%\"{/if}}\n					<li class=\"forced-height\"><small style=\"float: right;\">Joined {join_date format=\"%F %j, %Y\"}</small><img src=\"{if avatar_filename}{avatar_url}{avatar_filename}{if:else}{exp:user:theme_folder_url}code_pack/images/icon_profile.gif{/if}\" height=\"35\" width=\"35\" alt=\"{screen_name}\'s photo\" style=\"float: left; margin-right: 10px;\" /><a href=\"{path=user_main/profile}/{member_id}/\"><b>{screen_name}</b></a><br />{location}</li>\n					{if user_no_results}<li>No members found.</li>{/if}\n					{paginate}<li>Page {current_page} of {total_pages} page{if total_pages > \"1\"}s{/if} &nbsp; &nbsp; &nbsp; {pagination_links}</li>{/paginate}\n					{/exp:user:users}\n				</ul>\n\n			</div>\n\n		</div>\n\n		<div id=\"sidecolumn\">\n\n			<h3>About This Page</h3>\n\n			<p>The \"Members\" page shows all members of the site. You can further filter this list of members by member group ID, etc.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_users/\">User:Users</a> to display a list of all site members.</li>\n			</ul>\n\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(206,1,11,'profile','n','webpage','{embed=\"user_inc/index\" page_title=\"{if logged_in_member_id == \"{segment_3}\"}My {/if}Profile\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>{if logged_in_member_id == \"{segment_3}\"}My {/if}Profile</h3>\n			\n			<p></p>\n\n			{if segment_3}\n\n{embed=\"user_inc/profile_column\"}\n\n			<div id=\"middlecolumn\">\n\n				{exp:user:stats member_id=\"{segment_3}\" limit=\"1\"}\n				<h4>{screen_name}</h4>\n\n				<hr />\n\n				<h5>Profile:</h5>\n				<ul>\n\n				<li><label>Birthday:</label> {if bday_m}\n{if bday_m == \"01\"}January{if:elseif bday_m == \"02\"}February{if:elseif bday_m == \"03\"}March{if:elseif bday_m == \"04\"}April{if:elseif bday_m == \"05\"}May{if:elseif bday_m == \"06\"}June{if:elseif bday_m == \"07\"}July{if:elseif bday_m == \"08\"}August{if:elseif bday_m == \"09\"}September{if:elseif bday_m == \"10\"}October{if:elseif bday_m == \"11\"}November{if:elseif bday_m == \"12\"}December{if:else}{/if}{/if} {if bday_d}{bday_d}{/if}{if bday_y AND bday_d}, {/if}{if bday_y}{bday_y}{/if}</li>\n				<li><label>Email:</label> {encode=\"{email}\"}</li>\n				{if url}<li><label>Website:</label> <a href=\"{url}\">{url}</a></li>{/if}\n				<li><label>Join Date:</label> {join_date format=\"%F %j, %Y\"}</li>\n				<li><label>Last Activity:</label> {last_activity format=\"%F %j, %Y\"}</li>\n				<li><label>Location:</label> {location}</li>\n				<li><label>Occupation:</label> {occupation}</li>\n				<li><label>Interests:</label> {interests}</li>\n				<li><label>Bio:</label><br /> {bio}</li>\n\n				</ul>\n\n				{/exp:user:stats}\n\n			</div>\n\n			{if:else}\n			<h4>Error!</h4><p>You must specify a member ID to view a profile.</p>\n			{/if}\n		\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Profile\" page shows the profile of a given member. Additionally, a special \"Profile\" menu on the left is called, which creates a shortcut for sending a private message, and links to view that users\' comments and entries.</p>\n\n			<p>It makes use of the following functions:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_stats/\">User:Stats</a> to show profile information.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(207,1,11,'register','n','webpage','{embed=\"user_inc/index\" page_title=\"Register\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Register</h3>\n\n			<p></p>\n		\n			<div id=\"fullcolumn\">\n\n				<h5>To create a new account, just fill in the form below:</h5>\n				{exp:user:register return=\"user_main/register_success\" error_page=\"user_inc/error_template\"}\n\n				<div class=\"label_padding\">\n				<p><label for=\"username\">Username:</label> <input type=\"text\" name=\"username\" id=\"username\" style=\"width: 300px;\" /></p>\n				<p><label for=\"screen_name\">Screen Name:</label> <input type=\"text\" name=\"screen_name\" id=\"screen_name\" style=\"width: 300px;\" /></p>\n				<p><label for=\"email\">Email Address:</label> <input type=\"text\" name=\"email\" id=\"email\" style=\"width: 300px;\" /></p>\n \n				<p><label for=\"password\">Password:</label> <input type=\"password\" name=\"password\" id=\"password\" style=\"width: 300px;\" /></p>\n				<p><label for=\"password_confirm\">Confirm Password:</label> <input type=\"password\" name=\"password_confirm\" id=\"password_confirm\" style=\"width: 300px;\" /></p>\n				</div> \n\n				{if captcha}\n				<p><label for=\"captcha\">Please enter in the word you see below:</label> <input type=\"text\" name=\"captcha\" id=\"captcha\" style=\"width: 150px;\" /></p>\n				<p>{captcha}</p>\n				{/if}\n \n				<p><input type=\"checkbox\" name=\"accept_terms\" id=\"accept_terms\" value=\"y\" /> <label for=\"accept_terms\">Accept Terms?</a></p>\n \n				<p><input type=\"submit\" name=\"submit\" value=\"Register\" /></p>\n\n				{if user_no_results}\n				<p>You\'re currently logged in, and must be logged out to register a new account.</p>\n				{/if}\n\n				{/exp:user:register}\n\n			</div>\n		\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Register\" page allows users to sign up for a member account. This form respects native EE Member registration preferences.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_register/\">User:Register</a> to allow users to register for member accounts.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(208,1,11,'register_key','n','webpage','{embed=\"user_inc/index\" page_title=\"Register\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Register</h3>\n\n			<p></p>\n		\n			<div id=\"fullcolumn\">\n\n				<h5>To create a new account, just fill in the form below:</h5>\n				{exp:user:register return=\"user_main/register_success\" error_page=\"user_inc/error_template\" require_key=\"yes\" key_email_match=\"yes\"}\n\n				<div class=\"label_padding\">\n				<p><label for=\"username\">Username:</label> <input type=\"text\" name=\"username\" id=\"username\" style=\"width: 300px;\" /></p>\n				<p><label for=\"screen_name\">Screen Name:</label> <input type=\"text\" name=\"screen_name\" id=\"screen_name\" style=\"width: 300px;\" /></p>\n				<p><label for=\"email\">Email Address:</label> <input type=\"text\" name=\"email\" id=\"email\" style=\"width: 300px;\" /></p>\n \n				<p><label for=\"password\">Password:</label> <input type=\"password\" name=\"password\" id=\"password\" style=\"width: 300px;\" /></p>\n				<p><label for=\"password_confirm\">Confirm Password:</label> <input type=\"password\" name=\"password_confirm\" id=\"password_confirm\" style=\"width: 300px;\" /></p>\n \n				<p><label for=\"key\">Invite Key:</label> <input type=\"text\" name=\"key\" id=\"key\" value=\"{key}\" style=\"width: 150px;\" /></p>\n				</div>\n\n				{if captcha}\n				<p><label for=\"captcha\">Please enter in the word you see below:</label> <input type=\"text\" name=\"captcha\" id=\"captcha\" style=\"width: 150px;\" /></p>\n				<p>{captcha}</p>\n				{/if}\n \n				<p><input type=\"checkbox\" name=\"accept_terms\" id=\"accept_terms\" value=\"y\" /> <label for=\"accept_terms\">Accept Terms?</a></p>\n \n				<p><input type=\"submit\" name=\"submit\" value=\"Register\" /></p>\n\n				{if user_no_results}\n				<p>You\'re currently logged in, and must be logged out to register a new account.</p>\n				{/if}\n\n				{/exp:user:register}\n\n			</div>\n		\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Login\" page allows site visitors to login to the website.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li>Native EE <a href=\"http://expressionengine.com/docs/modules/member/login_form.html\">Member:Login_Form</a> to display a form for visitors to login.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(209,1,11,'register_success','n','webpage','{embed=\"user_inc/index\" page_title=\"Success!\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Register</h3>\n\n			<p></p>\n		\n			<div id=\"fullcolumn\">\n\n				<div class=\"user_success\">You\'ve successfully created an account!</div>\n\n				<h5>To continue:</h5>\n\n				<p>Dependent on this site\'s Member Activation settings, you\'ll either be able to begin using your account immediately, receive a confirmation email to self activate your account, or an Administrator will need to approve your account manually.</p>\n\n			</div>\n		\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Register\" page allows users to sign up for a member account. This form respects native EE Member registration preferences.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_register/\">User:Register</a> to allow users to register for member accounts.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(210,1,11,'search','n','webpage','{embed=\"user_inc/index\" page_title=\"Member Search\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Member Search</h3>\n\n			<p></p>\n\n{if logged_out}\n\n{embed=\"user_inc/login\"}\n\n{if:else}\n		\n{embed=\"user_inc/control_column\"}\n\n			<div id=\"middlecolumn\">\n\n				<h5>Use the following fields below to perform a search on the member list. Each field searched on generates an inclusive filter.</h5>\n				<hr />\n\n				{exp:user:search return=\"user_main/search_results\" error_page=\"user_inc/error_template\"}\n				<p><label for=\"keywords\"><b>Keywords (all fields):</b></label><input type=\"text\" name=\"keywords\" id=\"keywords\" style=\"width: 450px; font-size: 25px; font-weight: bold;\" /></p>\n\n				<hr />\n\n				<p><label for=\"screen_name\">Screen Name:</label><input type=\"text\" name=\"screen_name\" id=\"screen_name\" style=\"width: 450px;\" /></p>\n				<p><label for=\"location\">Location:</label><input type=\"text\" name=\"location\" id=\"location\" style=\"width: 450px;\" /></p>\n				<p><label for=\"occupation\">Occupation:</label><input type=\"text\" name=\"occupation\" id=\"occupation\" style=\"width: 450px;\" /></p>\n				<p><label for=\"interests\">Interests:</label><input type=\"text\" name=\"interests\" id=\"interests\" style=\"width: 450px;\" /></p>\n				<p><input type=\"submit\" name=\"submit\" value=\"Search\" />\n				{/exp:user:search}  \n			</div>\n		\n{/if}\n\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Member Search\" page allows users to perform keyword and/or field specific searches to find members.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_search/\">User:Search</a> to perform a search on site members.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(211,1,11,'search_results','n','webpage','{embed=\"user_inc/index\" page_title=\"Search Results\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n\n			<h2>User</h2>\n\n			<h3>Search Results</h3>\n\n			<p></p>\n\n{if logged_out}\n\n{embed=\"user_inc/guest_column\"}\n\n{if:else}\n\n{embed=\"user_inc/control_column\"}\n\n{/if}\n\n			<div id=\"middlecolumn\">\n\n				<h5><span>{total_results}</span> results for <span>\"{keywords}\"</span></h5>\n				<hr />\n				<ul>\n					{exp:user:results orderby=\"screen_name\" sort=\"asc\" limit=\"10\" paginate=\"bottom\"}\n					<li class=\"forced-height\"><small style=\"float: right;\">Joined {join_date format=\"%F %j, %Y\"}</small><img src=\"{if avatar_filename}{avatar_url}{avatar_filename}{if:else}{exp:user:theme_folder_url}code_pack/images/icon_profile.gif{/if}\" height=\"35\" width=\"35\" alt=\"{screen_name}\'s photo\" style=\"float: left; margin-right: 10px;\" /><a href=\"{path=user_main/profile}/{member_id}/\"><b>{screen_name}</b></a><br />{location}</li>\n					{if user_no_results}<li>No results found.</li>{/if}\n					{paginate}<li>Page {current_page} of {total_pages} page{if total_pages > \"1\"}s{/if} &nbsp; &nbsp; &nbsp; {pagination_links}</li>{/paginate}\n					{/exp:user:results}\n				</ul>\n\n			</div>\n\n		</div>\n\n		<div id=\"sidecolumn\">\n\n			<h3>About This Page</h3>\n\n			<p>The \"Search Results\" page displays a list of results of members that matched the keyword and/or field search terms provided by the user.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_results/\">User:Results</a> to display a list of site members that match search terms provided.</li>\n			</ul>\n\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(212,1,11,'update_account','n','webpage','{embed=\"user_inc/index\" page_title=\"Update My Account\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Update My Account</h3>\n\n			<p></p>\n\n{if logged_out}\n\n{embed=\"user_inc/login\"}\n\n{if:else}\n		\n{embed=\"user_inc/control_column\"}\n\n			<div id=\"middlecolumn\">\n\n				{if segment_3 == \"success\"}\n				<div class=\"user_success\">You\'ve successfully updated your account!</div>\n				{/if}\n\n				<h5>Fill in or edit the fields below to update your profile:</h5>\n				<hr />\n\n				{exp:user:edit return=\"user_main/update_account/success\" error_page=\"user_inc/error_template\"}\n				<p><label for=\"email\">Email:</label><input type=\"text\" name=\"email\" id=\"email\" value=\"{email}\" style=\"width: 450px;\" /></p>\n				<p><label for=\"username\">Username:</label><input type=\"text\" name=\"username\" id=\"username\" value=\"{username}\" style=\"width: 450px;\" /></p>\n				<p><label for=\"password\">New Password:</label><input type=\"password\" name=\"password\" id=\"password\" style=\"width: 450px;\" /></p>\n				<p><label for=\"password_confirm\">Confirm New Password:</label><input type=\"password\" name=\"password_confirm\" id=\"password_confirm\" style=\"width: 450px;\" /></p>\n\n				<hr />\n				<p>In order to update this page, you\'ll have to submit the current password:</p>\n				<p><label for=\"current_password\">Current Password:</label><input type=\"password\" name=\"current_password\" id=\"current_password\" style=\"width: 450px;\" /></p>\n\n				<p><input type=\"submit\" name=\"submit\" value=\"Update\" />\n				{/exp:user:edit}  \n			</div>\n		\n{/if}\n\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Update Account\" page allows the currently logged in user to edit sensitive account information.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_edit/\">User:Edit</a> to edit profile information.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(213,1,11,'update_avatar_photo','n','webpage','{embed=\"user_inc/index\" page_title=\"Update My Avatar &amp; Photo\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Update My Avatar &amp; Photo</h3>\n\n			<p></p>\n\n{if logged_out}\n\n{embed=\"user_inc/login\"}\n\n{if:else}\n		\n{embed=\"user_inc/control_column\"}\n\n			<div id=\"middlecolumn\">\n\n				{if segment_3 == \"success\"}\n				<div class=\"user_success\">You\'ve successfully updated your Avatar or Profile Photo!</div>\n				{/if}\n\n				<h5>Your Avatar</h5>\n				{exp:user:edit return=\"user_main/update_avatar_photo/success\" override_return=\"user_main/update_avatar_photo/success\" error_page=\"user_inc/error_template\"}\n				<p>{if avatar_filename}<label>Current Avatar: </label><img src=\"{avatar_url}{avatar_filename}\" width=\"{avatar_width}\" height=\"{avatar_height}\" />{if:else}You currently do not have an avatar uploaded.{/if}</p>\n				<p><label for=\"avatar_filename\">Upload a New Avatar: </label><input type=\"file\" name=\"avatar_filename\" id=\"avatar_filename\" /></p>\n				<p><input type=\"submit\" value=\"Update\" /> <input type=\"submit\" name=\"remove_avatar\" value=\"Remove Current Avatar?\" /></p>\n				{/exp:user:edit}\n\n				<hr />\n\n				<h5>Your Profile Photo</h5>\n				{exp:user:edit return=\"user_main/update_avatar_photo/success\" override_return=\"user_main/update_avatar_photo/success\" error_page=\"user_inc/error_template\"}\n				<p>{if photo_filename}<label>Current Profile Photo: </label><img src=\"{photo_url}{photo_filename}\" width=\"{photo_width}\" height=\"{photo_height}\" />{if:else}You currently do not have a profile photo uploaded.{/if}</p>\n				<p><label for=\"photo_filename\">Upload a New Profile Photo: </label><input type=\"file\" name=\"photo_filename\" id=\"photo_filename\" /></p>\n				<p><input type=\"submit\" value=\"Update\" /> <input type=\"submit\" name=\"remove_photo\" value=\"Remove Current Photo?\" /></p>\n				{/exp:user:edit}\n			</div>\n		\n{/if}\n\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Update Avatar/Photo\" page allows the currently logged in user to add/change/remove their avatar or profile photo.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_edit/\">User:Edit</a> to edit profile information.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(214,1,11,'update_profile','n','webpage','{embed=\"user_inc/index\" page_title=\"Update My Profile\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>Update My Profile</h3>\n\n			<p></p>\n\n{if logged_out}\n\n{embed=\"user_inc/login\"}\n\n{if:else}\n		\n{embed=\"user_inc/control_column\"}\n\n			<div id=\"middlecolumn\">\n\n				{if segment_3 == \"success\"}\n				<div class=\"user_success\">You\'ve successfully updated your profile!</div>\n				{/if}\n\n				<h5>Fill in or edit the fields below to update your profile:</h5>\n				<hr />\n\n				{exp:user:edit return=\"user_main/update_profile/success\" screen_name_password_required=\"no\" error_page=\"user_inc/error_template\"}\n				<p><label for=\"screen_name\">Screen Name:</label><input type=\"text\" name=\"screen_name\" id=\"screen_name\" value=\"{screen_name}\" style=\"width: 450px; font-weight: bold;\" /></p>\n				<p><label for=\"bday_d\">Birthday:</label></p>\n\n<select name=\"bday_m\" id=\"bday_m\" style=\"width: 125px;\">\n<option value=\"\">--</option>\n<option value=\"01\" {if bday_m == \"01\"}selected=\"selected\"{/if}>January</option>\n<option value=\"02\" {if bday_m == \"02\"}selected=\"selected\"{/if}>February</option>\n<option value=\"03\" {if bday_m == \"03\"}selected=\"selected\"{/if}>March</option>\n<option value=\"04\" {if bday_m == \"04\"}selected=\"selected\"{/if}>April</option>\n<option value=\"05\" {if bday_m == \"05\"}selected=\"selected\"{/if}>May</option>\n<option value=\"06\" {if bday_m == \"06\"}selected=\"selected\"{/if}>June</option>\n<option value=\"07\" {if bday_m == \"07\"}selected=\"selected\"{/if}>July</option>\n<option value=\"08\" {if bday_m == \"08\"}selected=\"selected\"{/if}>August</option>\n<option value=\"09\" {if bday_m == \"09\"}selected=\"selected\"{/if}>September</option>\n<option value=\"10\" {if bday_m == \"10\"}selected=\"selected\"{/if}>October</option>\n<option value=\"11\" {if bday_m == \"11\"}selected=\"selected\"{/if}>November</option>\n<option value=\"12\" {if bday_m == \"12\"}selected=\"selected\"{/if}>December</option>\n</select>\n\n<select name=\"bday_d\" id=\"bday_d\" style=\"width: 75px;\">\n<option value=\"\">--</option>\n<option value=\"31\" {if bday_d == \"31\"}selected=\"selected\"{/if}>31</option>\n<option value=\"30\" {if bday_d == \"30\"}selected=\"selected\"{/if}>30</option>\n<option value=\"29\" {if bday_d == \"29\"}selected=\"selected\"{/if}>29</option>\n<option value=\"28\" {if bday_d == \"28\"}selected=\"selected\"{/if}>28</option>\n<option value=\"27\" {if bday_d == \"27\"}selected=\"selected\"{/if}>27</option>\n<option value=\"26\" {if bday_d == \"26\"}selected=\"selected\"{/if}>26</option>\n<option value=\"25\" {if bday_d == \"25\"}selected=\"selected\"{/if}>25</option>\n<option value=\"24\" {if bday_d == \"24\"}selected=\"selected\"{/if}>24</option>\n<option value=\"23\" {if bday_d == \"23\"}selected=\"selected\"{/if}>23</option>\n<option value=\"22\" {if bday_d == \"22\"}selected=\"selected\"{/if}>22</option>\n<option value=\"21\" {if bday_d == \"21\"}selected=\"selected\"{/if}>21</option>\n<option value=\"20\" {if bday_d == \"20\"}selected=\"selected\"{/if}>20</option>\n<option value=\"19\" {if bday_d == \"19\"}selected=\"selected\"{/if}>19</option>\n<option value=\"18\" {if bday_d == \"18\"}selected=\"selected\"{/if}>18</option>\n<option value=\"17\" {if bday_d == \"17\"}selected=\"selected\"{/if}>17</option>\n<option value=\"16\" {if bday_d == \"16\"}selected=\"selected\"{/if}>16</option>\n<option value=\"15\" {if bday_d == \"15\"}selected=\"selected\"{/if}>15</option>\n<option value=\"14\" {if bday_d == \"14\"}selected=\"selected\"{/if}>14</option>\n<option value=\"13\" {if bday_d == \"13\"}selected=\"selected\"{/if}>13</option>\n<option value=\"12\" {if bday_d == \"12\"}selected=\"selected\"{/if}>12</option>\n<option value=\"11\" {if bday_d == \"11\"}selected=\"selected\"{/if}>11</option>\n<option value=\"10\" {if bday_d == \"10\"}selected=\"selected\"{/if}>10</option>\n<option value=\"9\" {if bday_d == \"9\"}selected=\"selected\"{/if}>9</option>\n<option value=\"8\" {if bday_d == \"8\"}selected=\"selected\"{/if}>8</option>\n<option value=\"7\" {if bday_d == \"7\"}selected=\"selected\"{/if}>7</option>\n<option value=\"6\" {if bday_d == \"6\"}selected=\"selected\"{/if}>6</option>\n<option value=\"5\" {if bday_d == \"5\"}selected=\"selected\"{/if}>5</option>\n<option value=\"4\" {if bday_d == \"4\"}selected=\"selected\"{/if}>4</option>\n<option value=\"3\" {if bday_d == \"3\"}selected=\"selected\"{/if}>3</option>\n<option value=\"2\" {if bday_d == \"2\"}selected=\"selected\"{/if}>2</option>\n<option value=\"1\" {if bday_d == \"1\"}selected=\"selected\"{/if}>1</option>\n</select>\n\n<select name=\"bday_y\" id=\"bday_y\" style=\"width: 100px;\">\n<option value=\"\">--</option>\n<option value=\"2006\" {if bday_y == \"2006\"}selected=\"selected\"{/if}>2006</option>\n<option value=\"2005\" {if bday_y == \"2005\"}selected=\"selected\"{/if}>2005</option>\n<option value=\"2004\" {if bday_y == \"2004\"}selected=\"selected\"{/if}>2004</option>\n<option value=\"2003\" {if bday_y == \"2003\"}selected=\"selected\"{/if}>2003</option>\n<option value=\"2002\" {if bday_y == \"2002\"}selected=\"selected\"{/if}>2002</option>\n<option value=\"2001\" {if bday_y == \"2001\"}selected=\"selected\"{/if}>2001</option>\n<option value=\"2000\" {if bday_y == \"2000\"}selected=\"selected\"{/if}>2000</option>\n<option value=\"1999\" {if bday_y == \"1999\"}selected=\"selected\"{/if}>1999</option>\n<option value=\"1998\" {if bday_y == \"1998\"}selected=\"selected\"{/if}>1998</option>\n<option value=\"1997\" {if bday_y == \"1997\"}selected=\"selected\"{/if}>1997</option>\n<option value=\"1996\" {if bday_y == \"1996\"}selected=\"selected\"{/if}>1996</option>\n<option value=\"1995\" {if bday_y == \"1995\"}selected=\"selected\"{/if}>1995</option>\n<option value=\"1994\" {if bday_y == \"1994\"}selected=\"selected\"{/if}>1994</option>\n<option value=\"1993\" {if bday_y == \"1993\"}selected=\"selected\"{/if}>1993</option>\n<option value=\"1992\" {if bday_y == \"1992\"}selected=\"selected\"{/if}>1992</option>\n<option value=\"1991\" {if bday_y == \"1991\"}selected=\"selected\"{/if}>1991</option>\n<option value=\"1990\" {if bday_y == \"1990\"}selected=\"selected\"{/if}>1990</option>\n<option value=\"1989\" {if bday_y == \"1989\"}selected=\"selected\"{/if}>1989</option>\n<option value=\"1988\" {if bday_y == \"1988\"}selected=\"selected\"{/if}>1988</option>\n<option value=\"1987\" {if bday_y == \"1987\"}selected=\"selected\"{/if}>1987</option>\n<option value=\"1986\" {if bday_y == \"1986\"}selected=\"selected\"{/if}>1986</option>\n<option value=\"1985\" {if bday_y == \"1985\"}selected=\"selected\"{/if}>1985</option>\n<option value=\"1984\" {if bday_y == \"1984\"}selected=\"selected\"{/if}>1984</option>\n<option value=\"1983\" {if bday_y == \"1983\"}selected=\"selected\"{/if}>1983</option>\n<option value=\"1982\" {if bday_y == \"1982\"}selected=\"selected\"{/if}>1982</option>\n<option value=\"1981\" {if bday_y == \"1981\"}selected=\"selected\"{/if}>1981</option>\n<option value=\"1980\" {if bday_y == \"1980\"}selected=\"selected\"{/if}>1980</option>\n<option value=\"1979\" {if bday_y == \"1979\"}selected=\"selected\"{/if}>1979</option>\n<option value=\"1978\" {if bday_y == \"1978\"}selected=\"selected\"{/if}>1978</option>\n<option value=\"1977\" {if bday_y == \"1977\"}selected=\"selected\"{/if}>1977</option>\n<option value=\"1976\" {if bday_y == \"1976\"}selected=\"selected\"{/if}>1976</option>\n<option value=\"1975\" {if bday_y == \"1975\"}selected=\"selected\"{/if}>1975</option>\n<option value=\"1974\" {if bday_y == \"1974\"}selected=\"selected\"{/if}>1974</option>\n<option value=\"1973\" {if bday_y == \"1973\"}selected=\"selected\"{/if}>1973</option>\n<option value=\"1972\" {if bday_y == \"1972\"}selected=\"selected\"{/if}>1972</option>\n<option value=\"1971\" {if bday_y == \"1971\"}selected=\"selected\"{/if}>1971</option>\n<option value=\"1970\" {if bday_y == \"1970\"}selected=\"selected\"{/if}>1970</option>\n<option value=\"1969\" {if bday_y == \"1969\"}selected=\"selected\"{/if}>1969</option>\n<option value=\"1968\" {if bday_y == \"1968\"}selected=\"selected\"{/if}>1968</option>\n<option value=\"1967\" {if bday_y == \"1967\"}selected=\"selected\"{/if}>1967</option>\n<option value=\"1966\" {if bday_y == \"1966\"}selected=\"selected\"{/if}>1966</option>\n<option value=\"1965\" {if bday_y == \"1965\"}selected=\"selected\"{/if}>1965</option>\n<option value=\"1964\" {if bday_y == \"1964\"}selected=\"selected\"{/if}>1964</option>\n<option value=\"1963\" {if bday_y == \"1963\"}selected=\"selected\"{/if}>1963</option>\n<option value=\"1962\" {if bday_y == \"1962\"}selected=\"selected\"{/if}>1962</option>\n<option value=\"1961\" {if bday_y == \"1961\"}selected=\"selected\"{/if}>1961</option>\n<option value=\"1960\" {if bday_y == \"1960\"}selected=\"selected\"{/if}>1960</option>\n<option value=\"1959\" {if bday_y == \"1959\"}selected=\"selected\"{/if}>1959</option>\n<option value=\"1958\" {if bday_y == \"1958\"}selected=\"selected\"{/if}>1958</option>\n<option value=\"1957\" {if bday_y == \"1957\"}selected=\"selected\"{/if}>1957</option>\n<option value=\"1956\" {if bday_y == \"1956\"}selected=\"selected\"{/if}>1956</option>\n<option value=\"1955\" {if bday_y == \"1955\"}selected=\"selected\"{/if}>1955</option>\n<option value=\"1954\" {if bday_y == \"1954\"}selected=\"selected\"{/if}>1954</option>\n<option value=\"1953\" {if bday_y == \"1953\"}selected=\"selected\"{/if}>1953</option>\n<option value=\"1952\" {if bday_y == \"1952\"}selected=\"selected\"{/if}>1952</option>\n<option value=\"1951\" {if bday_y == \"1951\"}selected=\"selected\"{/if}>1951</option>\n<option value=\"1950\" {if bday_y == \"1950\"}selected=\"selected\"{/if}>1950</option>\n<option value=\"1949\" {if bday_y == \"1949\"}selected=\"selected\"{/if}>1949</option>\n<option value=\"1948\" {if bday_y == \"1948\"}selected=\"selected\"{/if}>1948</option>\n<option value=\"1947\" {if bday_y == \"1947\"}selected=\"selected\"{/if}>1947</option>\n<option value=\"1946\" {if bday_y == \"1946\"}selected=\"selected\"{/if}>1946</option>\n<option value=\"1945\" {if bday_y == \"1945\"}selected=\"selected\"{/if}>1945</option>\n<option value=\"1944\" {if bday_y == \"1944\"}selected=\"selected\"{/if}>1944</option>\n<option value=\"1943\" {if bday_y == \"1943\"}selected=\"selected\"{/if}>1943</option>\n<option value=\"1942\" {if bday_y == \"1942\"}selected=\"selected\"{/if}>1942</option>\n<option value=\"1941\" {if bday_y == \"1941\"}selected=\"selected\"{/if}>1941</option>\n<option value=\"1940\" {if bday_y == \"1940\"}selected=\"selected\"{/if}>1940</option>\n<option value=\"1939\" {if bday_y == \"1939\"}selected=\"selected\"{/if}>1939</option>\n<option value=\"1938\" {if bday_y == \"1938\"}selected=\"selected\"{/if}>1938</option>\n<option value=\"1937\" {if bday_y == \"1937\"}selected=\"selected\"{/if}>1937</option>\n<option value=\"1936\" {if bday_y == \"1936\"}selected=\"selected\"{/if}>1936</option>\n<option value=\"1935\" {if bday_y == \"1935\"}selected=\"selected\"{/if}>1935</option>\n<option value=\"1934\" {if bday_y == \"1934\"}selected=\"selected\"{/if}>1934</option>\n<option value=\"1933\" {if bday_y == \"1933\"}selected=\"selected\"{/if}>1933</option>\n<option value=\"1932\" {if bday_y == \"1932\"}selected=\"selected\"{/if}>1932</option>\n<option value=\"1931\" {if bday_y == \"1931\"}selected=\"selected\"{/if}>1931</option>\n<option value=\"1930\" {if bday_y == \"1930\"}selected=\"selected\"{/if}>1930</option>\n<option value=\"1929\" {if bday_y == \"1929\"}selected=\"selected\"{/if}>1929</option>\n<option value=\"1928\" {if bday_y == \"1928\"}selected=\"selected\"{/if}>1928</option>\n<option value=\"1927\" {if bday_y == \"1927\"}selected=\"selected\"{/if}>1927</option>\n<option value=\"1926\" {if bday_y == \"1926\"}selected=\"selected\"{/if}>1926</option>\n<option value=\"1925\" {if bday_y == \"1925\"}selected=\"selected\"{/if}>1925</option>\n<option value=\"1924\" {if bday_y == \"1924\"}selected=\"selected\"{/if}>1924</option>\n<option value=\"1923\" {if bday_y == \"1923\"}selected=\"selected\"{/if}>1923</option>\n<option value=\"1922\" {if bday_y == \"1922\"}selected=\"selected\"{/if}>1922</option>\n<option value=\"1921\" {if bday_y == \"1921\"}selected=\"selected\"{/if}>1921</option>\n<option value=\"1920\" {if bday_y == \"1920\"}selected=\"selected\"{/if}>1920</option>\n<option value=\"1919\" {if bday_y == \"1919\"}selected=\"selected\"{/if}>1919</option>\n<option value=\"1918\" {if bday_y == \"1918\"}selected=\"selected\"{/if}>1918</option>\n<option value=\"1917\" {if bday_y == \"1917\"}selected=\"selected\"{/if}>1917</option>\n<option value=\"1916\" {if bday_y == \"1916\"}selected=\"selected\"{/if}>1916</option>\n<option value=\"1915\" {if bday_y == \"1915\"}selected=\"selected\"{/if}>1915</option>\n<option value=\"1914\" {if bday_y == \"1914\"}selected=\"selected\"{/if}>1914</option>\n<option value=\"1913\" {if bday_y == \"1913\"}selected=\"selected\"{/if}>1913</option>\n<option value=\"1912\" {if bday_y == \"1912\"}selected=\"selected\"{/if}>1912</option>\n<option value=\"1911\" {if bday_y == \"1911\"}selected=\"selected\"{/if}>1911</option>\n<option value=\"1910\" {if bday_y == \"1910\"}selected=\"selected\"{/if}>1910</option>\n<option value=\"1909\" {if bday_y == \"1909\"}selected=\"selected\"{/if}>1909</option>\n<option value=\"1908\" {if bday_y == \"1908\"}selected=\"selected\"{/if}>1908</option>\n<option value=\"1907\" {if bday_y == \"1907\"}selected=\"selected\"{/if}>1907</option>\n<option value=\"1906\" {if bday_y == \"1906\"}selected=\"selected\"{/if}>1906</option>\n<option value=\"1905\" {if bday_y == \"1905\"}selected=\"selected\"{/if}>1905</option>\n</select>\n\n				<p><label for=\"url\">URL:</label><input type=\"text\" name=\"url\" id=\"url\" value=\"{url}\" style=\"width: 450px;\" /></p>\n				<p><label for=\"location\">Location:</label><input type=\"text\" name=\"location\" id=\"location\" value=\"{location}\" style=\"width: 450px;\" /></p>\n				<p><label for=\"occupation\">Occupation:</label><input type=\"text\" name=\"occupation\" id=\"occupation\" value=\"{occupation}\" style=\"width: 450px;\" /></p>\n				<p><label for=\"interests\">Interests:</label><input type=\"text\" name=\"interests\" id=\"interests\" value=\"{interests}\" style=\"width: 450px;\" /></p>\n				<p><label for=\"bio\">Bio:</label><textarea name=\"bio\" id=\"bio\" rows=\"10\" cols=\"50\" style=\"width: 450px; height: 200px;\">{bio}</textarea></p>\n				<p><input type=\"submit\" name=\"submit\" value=\"Update\" />\n				{/exp:user:edit}  \n			</div>\n		\n{/if}\n\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Update Profile\" page allows the currently logged in user to edit their basic profile information.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_edit/\">User:Edit</a> to edit profile information.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(215,1,11,'update_settings','n','webpage','{embed=\"user_inc/index\" page_title=\"Update My Settings\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n\n			<h2>User</h2>\n\n			<h3>Update My Settings</h3>\n\n			<p></p>\n\n{if logged_out}\n\n{embed=\"user_inc/login\"}\n\n{if:else}\n\n{embed=\"user_inc/control_column\"}\n\n			<div id=\"middlecolumn\">\n\n				{if segment_3 == \"success\"}\n				<div class=\"user_success\">You\'ve successfully updated your settings!</div>\n				{/if}\n\n				{exp:user:edit return=\"user_main/update_settings/success\" error_page=\"user_inc/error_template\"}\n\n				<h5>Email Notifications:</h5>\n				<p><input type=\"checkbox\" name=\"accept_admin_email\" id=\"accept_admin_email\" value=\"y\" {if accept_admin_email == \"y\"}checked=\"checked\"{/if} /> <label for=\"accept_admin_email\">Accept email from site administrators</label></p>\n				<p><input type=\"checkbox\" name=\"accept_user_email\" id=\"accept_user_email\" value=\"y\" {if accept_user_email == \"y\"}checked=\"checked\"{/if} /> <label for=\"accept_user_email\">Accept email from other members of this site</label></p>\n				<p><input type=\"checkbox\" name=\"notify_by_default\" id=\"notify_by_default\" value=\"y\" {if notify_by_default == \"y\"}checked=\"checked\"{/if} /> <label for=\"notify_by_default\">Enable email notifications by default when you post messages</label></p>\n				<p><input type=\"checkbox\" name=\"notify_of_pm\" id=\"notify_of_pm\" value=\"y\" {if notify_of_pm == \"y\"}checked=\"checked\"{/if} /> <label for=\"notify_of_pm\">Notify me via email when someone sends me a private message</label></p>\n				<p><input type=\"checkbox\" name=\"smart_notifications\" id=\"smart_notifications\" value=\"y\" {if smart_notifications == \"y\"}checked=\"checked\"{/if} /> <label for=\"smart_notifications\">Enable Smart Notification</label></p>\n\n				<hr />\n\n				<h5>Localization Settings:</h5>\n				<p><label for=\"timezone\">Time Zone</label>\n				{if version < 2.6.0}\n				<select name=\"timezone\" id=\"timezone\" style=\"width:450px;\">\n					{timezones}\n					<option value=\"{zone_name}\" {selected}>{zone_label}</option>\n					{/timezones}\n				</select>\n				{/if}\n\n				{if version >= 2.6.0}\n					{user:timezone_menu\n						id=\"timezone_select_wrapper\"\n						timezone:id=\"timezone_id\"\n						country:id=\"country_id\"}\n				{/if}\n				</p>\n				{if version < 2.6.0}\n				<p><input type=\"checkbox\" name=\"daylight_savings\" id=\"daylight_savings\" value=\"y\" {if daylight_savings == \"y\"}checked=\"checked\"{/if} /> <label for=\"daylight_savings\">Daylight Saving Time</label></p>\n				{/if}\n				<p><label for=\"time_format\">Time Formatting</label> <select name=\"time_format\" id=\"time_format\" style=\"width:200px;\">\n					{time_formats}\n					<option value=\"{time_format_name}\" {selected}>{time_format_label}</option>\n					{/time_formats}\n				   </select></p>\n				<p><label for=\"language\">Language</label> <select name=\"language\" id=\"language\" style=\"width:200px;\">\n					{languages}\n					<option value=\"{language_name}\" {selected}>{language_label}</option>\n					{/languages}\n				   </select></p>\n\n				<hr />\n\n				<p><input type=\"submit\" name=\"submit\" value=\"Update\" /></p>\n				{/exp:user:edit}\n			</div>\n\n{/if}\n\n		</div>\n\n		<div id=\"sidecolumn\">\n\n			<h3>About This Page</h3>\n\n			<p>The \"Update Settings\" page allows the currently logged in user to adjust account settings like notifications and localization.</p>\n\n			<p>It makes use of the following function:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_edit/\">User:Edit</a> to edit profile information.</li>\n			</ul>\n\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(216,1,11,'user_comments','n','webpage','{embed=\"user_inc/index\" page_title=\"{exp:user:stats member_id=\"{segment_3}\" limit=\"1\"}{screen_name}\'s Comments ({total_comments}){/exp:user:stats}\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>{exp:user:stats member_id=\"{segment_3}\" limit=\"1\"}{screen_name}\'s Comments ({total_comments}){/exp:user:stats}</h3>\n			\n			<p></p>\n\n{embed=\"user_inc/profile_column\"}\n\n			<div id=\"middlecolumn\">\n\n				<h5>The following are comments posted by this user:</h5>\n				<ul>\n				{exp:query limit=\"10\" paginate=\"bottom\" sql=\"SELECT author_id, comment_date, comment, name, entry_id FROM exp_comments WHERE author_id = \'{segment_3}\' AND author_id !=\'0\' ORDER BY comment_date DESC \"}\n				<li><i>\"{comment}\"</i><br style=\"margin-bottom: 3px;\" /><small>Posted in {embed=\"user_inc/comments_search_titles\" entry_id=\"{entry_id}\"} on {comment_date format=\"%F %j, %Y at %g:%i %a\"}</small></li>\n				{if no_results}<li>This user has not posted any comments.</li>{/if}\n				{paginate}<li>Page {current_page} of {total_pages} page{if total_pages > \"1\"}s{/if} &nbsp; &nbsp; &nbsp; {pagination_links}</li>{/paginate}\n				{/exp:query}\n				</ul> \n\n			</div>\n		\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Comments\" page displays a list of comments authored by the given user.</p>\n\n			<p>It makes use of the following functions:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_stats/\">User:Stats</a> to display profile information.</li>\n				<li><a href=\"http://expressionengine.com/user_guide/modules/query/index.html\">Query Module</a> to create and display a list of comments authored by the given user.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(217,1,11,'user_entries','n','webpage','{embed=\"user_inc/index\" page_title=\"{exp:user:stats member_id=\"{segment_3}\" limit=\"1\"}{screen_name}\'s Entries ({total_entries}){/exp:user:stats}\"}\n</head>\n<body id=\"home\">\n{embed=\"user_inc/header\"}\n\n		<div id=\"maincolumn\">\n		\n			<h2>User</h2>\n			\n			<h3>{exp:user:stats member_id=\"{segment_3}\" limit=\"1\"}{screen_name}\'s Entries ({total_entries}){/exp:user:stats}</h3>\n			\n			<p></p>\n\n{embed=\"user_inc/profile_column\"}\n\n			<div id=\"middlecolumn\">\n\n				<h5>The following are entries posted by this user:</h5>\n				<ul>\n\n				{exp:channel:entries author_id=\"{segment_3}\" dynamic=\"no\" limit=\"15\" paginate=\"bottom\"}\n\n\n				<li><span style=\"float: right;\"><small>{entry_date format=\"%F %j, %Y at %g:%i %a\"}</small></span><a href=\"{comment_url_title_auto_path}\">{title}</a></li>\n				{if no_results}<li>This user has not posted any entries.</li>{/if}\n				{paginate}<li>Page {current_page} of {total_pages} page{if total_pages > \"1\"}s{/if} &nbsp; &nbsp; &nbsp; {pagination_links}</li>{/paginate}\n\n				{/exp:channel:entries}\n\n\n				</ul> \n\n			</div>\n		\n		</div>\n		\n		<div id=\"sidecolumn\">\n		\n			<h3>About This Page</h3>\n			\n			<p>The \"Entries\" page displays a list of entries authored by the given user.</p>\n\n			<p>It makes use of the following functions:</p>\n\n			<ul>\n				<li><a href=\"http://www.solspace.com/docs/detail/user_stats/\">User:Stats</a> to display profile information.</li>\n				<li><a href=\"http://expressionengine.com/user_guide/modules/channel/channel_entries.html\">Channel:Entries</a> to show a list of entries authored by the given user.</li>\n			</ul>\n		\n		</div>\n{embed=\"user_inc/footer\"}',NULL,1406132365,0,'n',0,'','n','n','o',0),(218,1,12,'index','n','webpage','',NULL,1406132365,0,'n',0,'','n','n','o',0),(219,1,12,'key_invite','n','webpage','Hello,\n \nYou\'ve received an invitation to join the \"{site_name}\" website.\n \nPlease follow this link to complete your registration:\n{path=\"user_main/register_key\"}/key/{key}/\n \nThank you,\n \n{site_name}\n{site_url}',NULL,1406132365,0,'n',0,'','n','n','o',0),(220,1,1,'datos_user','y','webpage','<li class=\"mb-7\"><strong>Propietario(a)</strong><br>\r\n  {exp:user:stats member_id=\"{embed:user_id}\"}\r\n  {nombre_propietario} {ap_pat} {ap_mat}{/exp:user:stats}\r\n</li>\r\n\r\n<li class=\"mb-7\"><strong>Fecha entrega del dpto.</strong><br>\r\n  {exp:user:stats member_id=\"{embed:user_id}\"}\r\n  {fecha_entrega} {/exp:user:stats}\r\n</li>\r\n\r\n<li class=\"mb-7\"><strong>Departamento</strong><br>\r\n  {exp:user:stats member_id=\"{embed:user_id}\"}{cod_depa}{/exp:user:stats}\r\n</li>\r\n<li class=\"mb-7\"><strong>Complejo</strong><br>\r\n  {exp:user:stats member_id=\"{embed:user_id}\"}{complejo_depa}{/exp:user:stats}\r\n</li>',NULL,1406151102,1,'n',0,'','n','n','o',0),(221,1,5,'archivos_ticket','y','webpage','<?php $id_sol_garantia=\"{embed:entrada}\"; ?>\n\n<div class=\"row\">\n  <div class=\"col-sm-6\">\n\n    {exp:freeform:entries form_id=\"4\" search:id_sol_garantia=\"{embed:entrada}\" search:orden_tramite=\"5\"  limit=\"1\" status=\"open|closed\" }\n    {freeform:field:informe_inspeccion}\n    <?php $archivo_cinco=\"{freeform:field:informe_inspeccion}\";  ?>\n    {/exp:freeform:entries}\n\n    <table class=\"table table-hover table-striped\">\n      <thead>\n          <tr class=\"medium\">\n          <td>Inspeccion</td>\n        </tr>\n      </thead>\n      <tbody>\n        <?php for ($i = 1; $i <= 5; $i++) { \n          $porciones = explode(\" \", $archivo_cinco);?>\n          <tr>\n            <td>icono</td>\n            <td><?php echo $porciones[$i];?></td>\n          </tr>\n        } ?>   \n\n      </tbody>\n    </table>\n  </div>\n\n</div>\n\n\n\n\n\n{exp:freeform:entries form_id=\"4\" search:id_sol_garantia=\"{embed:entrada}\" search:orden_tramite=\"9\"  limit=\"1\" status=\"open|closed\" } \n<?php $archivo_nueve=\"{freeform:field:informe_inspeccion}\";  ?>\n\n{/exp:freeform:entries}\n\n\n<a target=\"_blank\" href=\"{site_url}informes_viva/{freeform:field:informe_inspeccion}\" >Ver reporte</a>\n','',1406235570,1,'n',0,'','n','y','o',0),(222,1,1,'user_request_new_test','y','webpage','{embed=\"includes/header\"}\r\n\r\n<script type=\"text/javascript\">\r\nfunction SwitchHiddenDiv(){\r\n  var evento = document.getElementById(\"SelectedType\").options[document.getElementById(\"SelectedType\").selectedIndex].value;\r\n  switch (evento){\r\n    case \'no\': \r\n  document.getElementById(\'casilla\').style.display=\"none\";\r\n  break;\r\n    case \'si\':\r\n  document.getElementById(\'casilla\').style.display=\"block\";\r\n  break;\r\n    default:\r\n  alert(\"Unknown type\");\r\n  }\r\n}\r\n\r\n$(document).ready(function() {\r\n   $(\"#flUpload\").change(function () \r\n   { \r\n    var fup = document.getElementById(\'flUpload\');\r\n    var fileName = fup.value;\r\n    var ext = fileName.substring(fileName.lastIndexOf(\'.\') + 1);\r\n    if(ext==\"jpg\" || ext==\"JPG\" || ext==\"jpeg\" || ext==\"JPEG\" || ext==\"bmp\" || ext==\"BMP\" || ext==\"gif\" || ext==\"GIF\")\r\n      {document.getElementById(\'lbltype\').style.display=\"none\";}\r\n    else{\r\n      $(\"#lbltype\").html( \"Tipo de archivo no permitido.\");\r\n      document.getElementById(\'lbltype\').style.display=\"block\";\r\n    }\r\n\r\n     var iSize = ($(\"#flUpload\")[0].files[0].size / 1024); \r\n     if (iSize / 1024 > 1) \r\n     { \r\n        if (((iSize / 1024) / 1024) > 1) \r\n        { \r\n            iSize = (Math.round(((iSize / 1024) / 1024) * 100) / 100);\r\n            if (iSize > 1){ \r\n                $(\"#lblSize\").html( \"El peso del archivo \" + iSize + \"Gb. es mayor al permitido.\");\r\n                document.getElementById(\'grupo_boton\').disabled=\"disabled\";\r\n                document.getElementById(\'lblSize\').style.display=\"block\";}\r\n            else\r\n              {\r\n                document.getElementById(\'lblSize\').style.display=\"block\";\r\n              }\r\n        }\r\n        else\r\n        { \r\n            iSize = (Math.round((iSize / 1024) * 100) / 100)\r\n            if (iSize > 2){\r\n              $(\"#lblSize\").html( \"El peso del archivo \" + iSize + \"Mb. es mayor al permitido.\");\r\n              document.getElementById(\'grupo_boton\').disabled=\"disabled\";\r\n              document.getElementById(\'lblSize\').style.display=\"block\";\r\n            }\r\n\r\n            else\r\n              {\r\n                $(\"#lblSize\").html( \"El peso del archivo \" + iSize + \"Mb. está dentro de lo permitido.\");\r\n                document.getElementById(\'lblSize\').style.display=\"block\";\r\n                document.getElementById(\'grupo_boton\').disabled=\"\";\r\n              }\r\n        } \r\n     } \r\n     else \r\n     {\r\n        iSize = (Math.round(iSize * 100) / 100)\r\n        $(\"#lblSize\").html( \"El peso del archivo \" + iSize + \"Kb. está dentro de lo permitido.\");\r\n        document.getElementById(\'lblSize\').style.display=\"block\";\r\n        document.getElementById(\'grupo_boton\').disabled=\"\";\r\n     }    \r\n  }); \r\n});\r\n\r\nfunction mostrar_div()\r\n  {\r\n  document.getElementById(\'lblSize\').style.display=\"none\";\r\n  document.getElementById(\'grupo_boton\').disabled=\"\";\r\n  document.getElementById(\'lbltype\').style.display=\"none\";\r\n  $(\"#lbltype\").html( \"\");\r\n  }\r\n\r\n</script>\r\n\r\n<script language=\"javascript\">\r\n  function validar(frm){\r\n  if(frm.tipo_de_problema.value==\"\"){mensaje1(\"Tipo de problema\",frm.tipo_de_problema);return false;}\r\n  if(frm.descripcion_problema.value==\"\"){mensaje1(\"Descripción del problema\",frm.descripcion_problema);return false;}\r\n  // if(frm.contra.value==\"\"){mensaje1(\"Contraseña\",frm.contra);return false;}\r\n  return true;\r\n  }\r\n\r\n  function mensaje1(campo,obj)\r\n  {\r\n  msg=\"Por favor seleccionar una opción para el campo: \"+campo+\".\";\r\n  alert(msg);\r\n  obj.focus();\r\n  }\r\n\r\n  function mensaje2(campo, obj, cant) {\r\n  msg = \"El campo \"+campo+\" no debe contener caracteres especiales y como minimo \" + cant + \" caracteres\";\r\n  alert(msg);\r\n  obj.focus();\r\n  }\r\n</script>\r\n\r\n{embed=\"includes/bredcrumbs\"}  \r\n\r\n  <div class=\"row\">\r\n    <div class=\"col-md-3\">\r\n      {embed=\"includes/user_dashboard_aside\" seccion=\"1\"}\r\n    </div>\r\n\r\n    <div class=\"col-md-6\">\r\n      \r\n      <div class=\"bg-white border-rounded box-shadow p-14\">\r\n        <h4 class=\"uppercase medium m-0\">Nueva solicitud</h4>\r\n        <small>Requerimiento de atención por garantía</small>\r\n        <hr class=\"mt-7 mb-14\">\r\n\r\n        {exp:freeform:form \r\n        form_name=\"atencion_por_garantia\" \r\n        return=\"main/confirm_solicitud\"   \r\n        form:id=\"frm\"\r\n        form:onSubmit=\"return validar(this)\"}\r\n\r\n          <div class=\"row\">\r\n            <div class=\"col-md-7\">\r\n              <p>Tipo de Problema:</p>\r\n              <div class=\"form-group\">\r\n                <select name=\"tipo_de_problema\" class=\"select-override form-control\">\r\n                  <option value=\"Pisos\">Pisos</option>\r\n                  <option value=\"Paredes\">Paredes</option>\r\n                  <option value=\"Instalaciones eléctricas\">Instalaciones eléctricas</option>\r\n                  <option value=\"Instalaciones sanitarias\">Instalaciones sanitarias</option>\r\n                  <option value=\"Carpintería metálica\">Carpintería metálica</option>\r\n                  <option value=\"Carpintería de madera\">Carpintería de madera</option>\r\n                </select>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-5\">\r\n            </div>\r\n          </div>\r\n          <div class=\"row\">\r\n            <div class=\"col-md-12\">\r\n              <div class=\"form-group\">\r\n                <textarea name=\"descripcion_problema\" class=\"form-control\" rows=\"4\" placeholder=\"Describe aquí el problema. Por favor se lo más específico posible detallando lo ocurrido.\"></textarea>\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\"row mt-14\">\r\n            <div class=\"col-sm-12\">\r\n              <p>Adjuntar foto: Max. 2mb.</p>\r\n              <div class=\"fileinput fileinput-new input-group\" data-provides=\"fileinput\">\r\n                <div class=\"form-control\" data-trigger=\"fileinput\">\r\n                  <span class=\"fileinput-filename\"></span>\r\n                </div>\r\n                <span class=\"input-group-addon btn btn-default btn-file\">\r\n                  <span class=\"fileinput-new\">Seleccionar</span>\r\n                  <span class=\"fileinput-exists\">Cambiar</span>\r\n                  <input type=\"file\" name=\"foto_problema[]\" id=\"flUpload\">\r\n                </span>\r\n                <a href=\"#\" class=\"input-group-addon btn btn-default fileinput-exists\" data-dismiss=\"fileinput\" onClick=\"mostrar_div()\">Quitar</a>\r\n              </div>\r\n              <small id=\"lblSize\"></small><!-- <small id=\"lbltype\"></small> -->\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\"row mt-14\">\r\n            <div class=\"col-md-7\">\r\n              <p>¿El daño involucra a otro departamento?</p>\r\n              <div class=\"form-group\">\r\n                <select name=\"dano_otro_departamento\" id=\'SelectedType\' onchange=\"SwitchHiddenDiv()\" \r\n                class=\"select-override form-control\">\r\n                  <option value=\"no\" >No</option>\r\n                  <option value=\"si\" >Sí</option>\r\n                </select>\r\n              </div>\r\n            </div>\r\n          </div>\r\n          <div class=\"row mt-14\" id=\"casilla\" style=\"display:none;\">\r\n            <div class=\"col-md-9\">\r\n              <p>¿Qué departamento?</p>\r\n              <div class=\"form-group\" >\r\n                <input type=\"text\" placeholder=\"Número del departamento\" name=\"nro_otro_departamento_afectado\" class=\"form-control\">\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\"form-group\" >\r\n            <input type=\"hidden\" name=\"etapa_solicitud\" value=\"1\" >\r\n              {exp:member:custom_profile_data}\r\n              <input type=\"hidden\" name=\"departamento_en_consulta\" value=\"{cod_depa}\" >\r\n              <input type=\"hidden\" name=\"last_name\" value=\"{nombre_propietario} {ap_pat} {ap_mat}\" >\r\n              <input type=\"hidden\" name=\"sigla_complejo\" value=\"{sigla_complejo}\" >\r\n              {/exp:member:custom_profile_data}\r\n              <input type=\"hidden\" name=\"email\" value=\"{email}\" >\r\n              <input type=\"hidden\" name=\"prioridad\" value=\"0\" >\r\n              <input type=\"hidden\" name=\"id_cliente\" value=\"{member_id}\" >\r\n              <input type=\"submit\" name=\"submit\" class=\"btn uppercase btn-success\" value=\"Procesar\" id=\"grupo_boton\">\r\n          </div>\r\n        {/exp:freeform:form}\r\n      </div>\r\n    </div>\r\n    <div class=\"col-md-3\"></div>\r\n  </div>\r\n  \r\n{embed=\"includes/footer\"}',NULL,1406826571,1,'n',0,'','n','n','o',15),(223,1,1,'admin_profile_edit','y','webpage','{embed=\"includes/header\" }\n<script type=\"text/javascript\" src=\"{site_url}lib/user_profile_show.js\"></script>\n  \n  {embed=\"includes/bredcrumbs\"}\n\n  <div class=\"row\">\n    <div class=\"col-md-3 hidden-xs col-sm-3 hidden-sm\">\n      {embed=\"includes/user_dashboard_aside\" seccion=\"3\"}\n    </div>\n    <div class=\"col-md-6 col-sm-9\">\n      <div class=\"panel p-14\">\n        <!--<form id=\"user-profile-form\">-->\n        {exp:user:stats}\n        {exp:user:edit \n        	return=\'main/user_profile_show/{member_id}\' \n        	group_id=\"6\" \n        	form:id=\"user-profile-form\" \n        }        \n          <div class=\"panel-heading bg-white p-0\">\n            <div class=\"panel-title mb-14\">\n              <div class=\"clearfix\">\n                <div class=\"col-sm-6 pl-0 col-xs-6\">\n                  <h4 class=\"uppercase medium\"><i class=\"icon-user\"></i> Mi perfil </h4>\n                    <a href=\"{site_url}main/admin_cambio_clave\" class=\"small text-danger underline\">Cambiar contraseña</a>\n                </div>\n                <div class=\"col-sm-6 col-xs-6\">                  \n                    <a href=\"#\" class=\"text-info block pt-14 edit-form-trigger lowercase not-underline icon-pencil text-right\"></a>\n                  <div class=\"mt-7 hidden submit-form text-right\">\n                    <!-- <a href=\"#\" class=\"text-danger small edit-form-cancel hidden\">Cancelar</a> --> \n                    <input type=\"submit\" class=\"btn btn-sm btn-default\" value=\"Guardar\">\n                  </div>\n                </div>\n              </div>\n            </div>\n            <hr class=\"m-0\">\n          </div>\n          <div class=\"panel-body p-0\">\n            <div class=\"row mt-14\">\n              <div class=\"col-sm-2\">\n                <img src=\"{site_url}images/user.jpg\" alt=\"\" class=\"img-responsive img-thumbnail\">\n              </div>\n\n              <div class=\"col-sm-5\">\n                <h4 class=\"mt-0\">Datos del propietario</h4>\n                <div class=\"form-group\">\n                  <label for=\"\">Nombre:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"nombre_propietario\" placeholder=\"{nombre_propietario}\" value=\"{nombre_propietario}\">\n                </div>\n\n                <div class=\"form-group\">\n                  <label for=\"\">Apellido paterno:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"ap_pat\" placeholder=\"{ap_pat}\" value=\"{ap_pat}\">\n                </div>\n\n                <div class=\"form-group\">\n                  <label for=\"\">Apellido materno:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"ap_mat\" placeholder=\"{ap_mat}\" value=\"{ap_mat}\">\n                </div>\n\n                <div class=\"form-group\">\n                  <label for=\"\">E-mail:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"email_propietario\" placeholder=\"{email_propietario}\" value=\"{email_propietario}\">\n                  {if email_propietario!=\'\'}<!-- plugin para actualizar el mail region -->\n                  {exp:update_email member_id=\"{member_id}\"}\n                  {/if}\n                </div>\n\n                <div class=\"form-group\">\n                  <label for=\"\">Télf. celular:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"t_cel\" placeholder=\"{t_cel}\" value=\"{t_cel}\">\n                </div>\n\n                <div class=\"form-group\">\n                  <label for=\"\">Télf. oficina:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"t_ofic\" placeholder=\"{t_ofic}\" value=\"{t_ofic}\">\n                </div>\n\n                <div class=\"form-group\">\n                  <label for=\"\">Télf. fijo:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"t_fijo\" placeholder=\"{t_fijo}\" value=\"{t_fijo}\">\n                </div>\n\n                <div class=\"form-group\">\n                  <label for=\"\">Télf. conyuge:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"t_conyu\" placeholder=\"{t_conyu}\" value=\"{t_conyu}\">\n                </div>\n\n              </div>\n\n              <div class=\"col-sm-5\">\n                <h4 class=\"mt-0\">Datos del inquilino</h4>\n                <div class=\"form-group\">\n                  <label for=\"\">Nombre:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"nombre_inq\" placeholder=\"{nombre_inq}\" value=\"{nombre_inq}\">\n                </div>\n\n                <div class=\"form-group\">\n                  <label for=\"\">Apellido paterno:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"ap_pat_inq\" placeholder=\"{ap_pat_inq}\" value=\"{ap_pat_inq}\">\n                </div>\n\n                <div class=\"form-group\">\n                  <label for=\"\">Apellido materno:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"ap_mat_inq\" placeholder=\"{ap_mat_inq}\" value=\"{ap_mat_inq}\">\n                </div>\n\n                <div class=\"form-group\">\n                  <label for=\"\">E-mail:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"email_inquilino\" placeholder=\"{email_inquilino}\" value=\"{email_inquilino}\">\n                </div>\n                <div class=\"form-group\">\n                  <label for=\"\">Télf. celular:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"telf_cel_inq\" placeholder=\"{telf_cel_inq}\" value=\"{telf_cel_inq}\">\n                </div>   \n\n                <div class=\"form-group\">\n                  <label for=\"\">Télf. fijo:</label>\n                  <input type=\"text\" class=\"form-control input-blank input-sm\" name=\"telf_inq\" placeholder=\"{telf_inq}\" value=\"{telf_inq}\">\n                </div>  \n              </div>\n\n            </div>\n          </div>\n          {/exp:user:edit}\n        {/exp:user:stats}  \n        <!--</form>-->\n      </div>\n    </div>\n    <div class=\"col-md-3 col-sm-3\">\n      {embed=\"includes/user_new_request_aside\"}\n    </div>\n  </div>\n  \n{embed=\"includes/footer\"}\n',NULL,1406846899,1,'n',0,'','n','n','o',19),(224,1,5,'admin_new_request_aside','y','webpage','\n\n<h4 class=\"medium\">Nueva solicitud</h4>\n<p>Ingresar una solicitud para el cliente</p>\n<div class=\"form-group\">\n  <select name=\"persona_asignada\" id=\"\" class=\"form-control input-sm select-override\">\n  	<option value=\"\">Seleccione</option>\n  	{exp:user:users group_id=\"6\"}\n  		<option value=\"{member_id}\">{screen_name} {ap_pat}</option>\n  	{/exp:user:users}\n  </select>\n</div>\n<a href=\"{site_url}main/user_request_new\" class=\"btn btn-success\">Crear solicitud</a>\n\n',NULL,1406904018,1,'n',0,'','n','n','o',0);
/*!40000 ALTER TABLE `exp_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_throttle`
--

DROP TABLE IF EXISTS `exp_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_throttle` (
  `throttle_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL,
  `locked_out` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`throttle_id`),
  KEY `ip_address` (`ip_address`),
  KEY `last_activity` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_throttle`
--

LOCK TABLES `exp_throttle` WRITE;
/*!40000 ALTER TABLE `exp_throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_upload_no_access`
--

DROP TABLE IF EXISTS `exp_upload_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_upload_no_access` (
  `upload_id` int(6) unsigned NOT NULL,
  `upload_loc` varchar(3) NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`upload_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_upload_no_access`
--

LOCK TABLES `exp_upload_no_access` WRITE;
/*!40000 ALTER TABLE `exp_upload_no_access` DISABLE KEYS */;
INSERT INTO `exp_upload_no_access` VALUES (1,'cp',8),(1,'cp',7);
/*!40000 ALTER TABLE `exp_upload_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_upload_prefs`
--

DROP TABLE IF EXISTS `exp_upload_prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_upload_prefs` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `server_path` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL,
  `allowed_types` varchar(3) NOT NULL DEFAULT 'img',
  `max_size` varchar(16) DEFAULT NULL,
  `max_height` varchar(6) DEFAULT NULL,
  `max_width` varchar(6) DEFAULT NULL,
  `properties` varchar(120) DEFAULT NULL,
  `pre_format` varchar(120) DEFAULT NULL,
  `post_format` varchar(120) DEFAULT NULL,
  `file_properties` varchar(120) DEFAULT NULL,
  `file_pre_format` varchar(120) DEFAULT NULL,
  `file_post_format` varchar(120) DEFAULT NULL,
  `cat_group` varchar(255) DEFAULT NULL,
  `batch_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_upload_prefs`
--

LOCK TABLES `exp_upload_prefs` WRITE;
/*!40000 ALTER TABLE `exp_upload_prefs` DISABLE KEYS */;
INSERT INTO `exp_upload_prefs` VALUES (1,1,'Fotos_problemas','/var/www/vivagymposventa/html/fotos_problemas/','http://162.243.222.54/fotos_problemas/','img','','','','','','','','','','',NULL),(2,1,'informes_viva','/var/www/vivagymposventa/html/informes_viva/','http://162.243.222.54/informes_viva/','all','','','','','','','','','','',NULL);
/*!40000 ALTER TABLE `exp_upload_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_activation_group`
--

DROP TABLE IF EXISTS `exp_user_activation_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_activation_group` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `member_id` (`member_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_activation_group`
--

LOCK TABLES `exp_user_activation_group` WRITE;
/*!40000 ALTER TABLE `exp_user_activation_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_activation_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_authors`
--

DROP TABLE IF EXISTS `exp_user_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `principal` char(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_authors`
--

LOCK TABLES `exp_user_authors` WRITE;
/*!40000 ALTER TABLE `exp_user_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_cache`
--

DROP TABLE IF EXISTS `exp_user_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_cache` (
  `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(150) NOT NULL DEFAULT '',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`cache_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_cache`
--

LOCK TABLES `exp_user_cache` WRITE;
/*!40000 ALTER TABLE `exp_user_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_category_posts`
--

DROP TABLE IF EXISTS `exp_user_category_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_category_posts` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `member_id` (`member_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_category_posts`
--

LOCK TABLES `exp_user_category_posts` WRITE;
/*!40000 ALTER TABLE `exp_user_category_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_category_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_keys`
--

DROP TABLE IF EXISTS `exp_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_keys` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(10) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `hash` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`key_id`),
  KEY `email` (`email`),
  KEY `hash` (`hash`),
  KEY `author_id` (`author_id`),
  KEY `member_id` (`member_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_keys`
--

LOCK TABLES `exp_user_keys` WRITE;
/*!40000 ALTER TABLE `exp_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_params`
--

DROP TABLE IF EXISTS `exp_user_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_params` (
  `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(25) NOT NULL DEFAULT '',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`params_id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=31211 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_params`
--

LOCK TABLES `exp_user_params` WRITE;
/*!40000 ALTER TABLE `exp_user_params` DISABLE KEYS */;
INSERT INTO `exp_user_params` VALUES (31185,'CQGJkafHnEGeKVuoukkpuhxMt',1406913745,'a:11:{s:9:\"member_id\";s:2:\"36\";s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:5:\"cesar\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31186,'RTxGycVTvOMYYUFwaVRnSbBdm',1406913751,'a:11:{s:9:\"member_id\";s:2:\"36\";s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:5:\"cesar\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:1:\"6\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31187,'fFwbhXgcgRuDneyRAsSkTDPTx',1406913751,'a:11:{s:9:\"member_id\";s:2:\"36\";s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:5:\"cesar\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31188,'pIzHPQtOckuZBrURebXePqVxL',1406914120,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31189,'BRQvdiRaaorBeMWzJRyImotHx',1406914122,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31190,'koKLRlHJwBNNGjTUUuYbQvgEL',1406914125,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31191,'VYeJhairUWaaOEVIMPBViZTVR',1406914148,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31192,'TVPzDiuJPZtOlGGeuabAzsNEs',1406914175,'a:12:{s:9:\"member_id\";i:36;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:5:\"cesar\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:37:\"http://162.243.222.54/main/user_setup\";}'),(31193,'gunejLYsxYrykmzstrNPxhdWj',1406914175,'a:12:{s:9:\"member_id\";i:36;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:5:\"cesar\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:44:\"http://162.243.222.54/main/user_dashboard/36\";}'),(31194,'TUJzMdxSpvOJNCvdwixzrxhfY',1406914175,'a:11:{s:9:\"member_id\";i:36;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:5:\"cesar\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31195,'CyEJTeYoVmuxlmRoFQAPfLGTB',1406914178,'a:11:{s:9:\"member_id\";s:2:\"36\";s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:5:\"cesar\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31196,'ajKtMJhyegYHMbIVJTWfnoWXg',1406915808,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31197,'dpVTMRsjlYDGITMyHgLYQdjao',1406918610,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31198,'TunZnPCsKXuvMuQVoZtjoRJOG',1406918636,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31199,'OHZkMaShbeBrptWUhyzGmqDXH',1406919218,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31200,'gFDiBZEeEMbQyLhelnTXhyZnG',1406919333,'a:1:{s:13:\"secure_action\";s:2:\"no\";}'),(31201,'HWuyyBuiHuvDsXPjYQWrKSBWj',1406919781,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31202,'MJBasWQECqIbJPdblJkDrLzqD',1406919840,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31203,'gzGHeqiuFRqNvNprOToEepNUY',1406919844,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}'),(31204,'kqqSwSfyLDelmvdYgWpfmOaoP',1406919845,'a:11:{s:9:\"member_id\";i:16;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:10:\"admin_viva\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";}');
/*!40000 ALTER TABLE `exp_user_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_preferences`
--

DROP TABLE IF EXISTS `exp_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_preferences` (
  `preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `preference_name` varchar(50) NOT NULL DEFAULT '',
  `preference_value` text,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`preference_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_preferences`
--

LOCK TABLES `exp_user_preferences` WRITE;
/*!40000 ALTER TABLE `exp_user_preferences` DISABLE KEYS */;
INSERT INTO `exp_user_preferences` VALUES (43,'email_is_username','n',1),(44,'screen_name_override','',1),(45,'category_groups','',1),(46,'welcome_email_subject','Welcome Email',1),(47,'welcome_email_content','',1),(48,'user_forgot_username_message','{screen_name},\n\nPer your request, we have emailed you your username for {site_name} located at {site_url}.\n\nUsername: {username}',1),(49,'member_update_admin_notification_template','',1),(50,'member_update_admin_notification_emails','',1),(51,'key_expiration','7',1),(52,'channel_ids','a:0:{}',1);
/*!40000 ALTER TABLE `exp_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_search`
--

DROP TABLE IF EXISTS `exp_user_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_search` (
  `search_id` varchar(32) NOT NULL DEFAULT '',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `search_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `categories` text,
  `member_ids` text,
  `fields` text,
  `cfields` text,
  `query` text,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_search`
--

LOCK TABLES `exp_user_search` WRITE;
/*!40000 ALTER TABLE `exp_user_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_welcome_email_list`
--

DROP TABLE IF EXISTS `exp_user_welcome_email_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_welcome_email_list` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_sent` char(1) NOT NULL DEFAULT 'n',
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_welcome_email_list`
--

LOCK TABLES `exp_user_welcome_email_list` WRITE;
/*!40000 ALTER TABLE `exp_user_welcome_email_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_welcome_email_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_whitelisted`
--

DROP TABLE IF EXISTS `exp_whitelisted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_whitelisted` (
  `whitelisted_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `whitelisted_type` varchar(20) DEFAULT NULL,
  `whitelisted_value` longtext,
  PRIMARY KEY (`whitelisted_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_whitelisted`
--

LOCK TABLES `exp_whitelisted` WRITE;
/*!40000 ALTER TABLE `exp_whitelisted` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_whitelisted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_wiki_categories`
--

DROP TABLE IF EXISTS `exp_wiki_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_wiki_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wiki_id` int(8) unsigned NOT NULL,
  `cat_name` varchar(70) NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `cat_namespace` varchar(125) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_wiki_categories`
--

LOCK TABLES `exp_wiki_categories` WRITE;
/*!40000 ALTER TABLE `exp_wiki_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_wiki_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_wiki_category_articles`
--

DROP TABLE IF EXISTS `exp_wiki_category_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_wiki_category_articles` (
  `page_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`page_id`,`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_wiki_category_articles`
--

LOCK TABLES `exp_wiki_category_articles` WRITE;
/*!40000 ALTER TABLE `exp_wiki_category_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_wiki_category_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_wiki_namespaces`
--

DROP TABLE IF EXISTS `exp_wiki_namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_wiki_namespaces` (
  `namespace_id` int(6) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(10) unsigned NOT NULL,
  `namespace_name` varchar(100) NOT NULL,
  `namespace_label` varchar(150) NOT NULL,
  `namespace_users` text,
  `namespace_admins` text,
  PRIMARY KEY (`namespace_id`),
  KEY `wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_wiki_namespaces`
--

LOCK TABLES `exp_wiki_namespaces` WRITE;
/*!40000 ALTER TABLE `exp_wiki_namespaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_wiki_namespaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_wiki_page`
--

DROP TABLE IF EXISTS `exp_wiki_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_wiki_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wiki_id` int(3) unsigned NOT NULL,
  `page_name` varchar(100) NOT NULL,
  `page_namespace` varchar(125) NOT NULL DEFAULT '',
  `page_redirect` varchar(100) DEFAULT NULL,
  `page_locked` char(1) NOT NULL DEFAULT 'n',
  `page_moderated` char(1) NOT NULL DEFAULT 'n',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `last_revision_id` int(10) DEFAULT NULL,
  `has_categories` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`page_id`),
  KEY `wiki_id` (`wiki_id`),
  KEY `page_locked` (`page_locked`),
  KEY `page_moderated` (`page_moderated`),
  KEY `has_categories` (`has_categories`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_wiki_page`
--

LOCK TABLES `exp_wiki_page` WRITE;
/*!40000 ALTER TABLE `exp_wiki_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_wiki_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_wiki_revisions`
--

DROP TABLE IF EXISTS `exp_wiki_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_wiki_revisions` (
  `revision_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `wiki_id` int(3) unsigned NOT NULL,
  `revision_date` int(10) unsigned NOT NULL,
  `revision_author` int(8) NOT NULL,
  `revision_notes` text NOT NULL,
  `revision_status` varchar(10) NOT NULL DEFAULT 'open',
  `page_content` mediumtext NOT NULL,
  PRIMARY KEY (`revision_id`),
  KEY `page_id` (`page_id`),
  KEY `wiki_id` (`wiki_id`),
  KEY `revision_author` (`revision_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_wiki_revisions`
--

LOCK TABLES `exp_wiki_revisions` WRITE;
/*!40000 ALTER TABLE `exp_wiki_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_wiki_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_wiki_search`
--

DROP TABLE IF EXISTS `exp_wiki_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_wiki_search` (
  `wiki_search_id` varchar(32) NOT NULL,
  `search_date` int(10) NOT NULL,
  `wiki_search_query` text,
  `wiki_search_keywords` varchar(150) NOT NULL,
  PRIMARY KEY (`wiki_search_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_wiki_search`
--

LOCK TABLES `exp_wiki_search` WRITE;
/*!40000 ALTER TABLE `exp_wiki_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_wiki_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_wiki_uploads`
--

DROP TABLE IF EXISTS `exp_wiki_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_wiki_uploads` (
  `wiki_upload_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wiki_id` int(3) unsigned NOT NULL,
  `file_name` varchar(60) NOT NULL,
  `file_hash` varchar(32) NOT NULL,
  `upload_summary` text,
  `upload_author` int(8) NOT NULL,
  `image_width` int(5) unsigned NOT NULL,
  `image_height` int(5) unsigned NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `file_size` int(10) unsigned NOT NULL DEFAULT '0',
  `upload_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wiki_upload_id`),
  KEY `wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_wiki_uploads`
--

LOCK TABLES `exp_wiki_uploads` WRITE;
/*!40000 ALTER TABLE `exp_wiki_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_wiki_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_wikis`
--

DROP TABLE IF EXISTS `exp_wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_wikis` (
  `wiki_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `wiki_label_name` varchar(100) NOT NULL,
  `wiki_short_name` varchar(50) NOT NULL,
  `wiki_text_format` varchar(50) NOT NULL,
  `wiki_html_format` varchar(10) NOT NULL,
  `wiki_upload_dir` int(3) unsigned NOT NULL DEFAULT '0',
  `wiki_admins` text,
  `wiki_users` text,
  `wiki_revision_limit` int(8) unsigned NOT NULL,
  `wiki_author_limit` int(5) unsigned NOT NULL,
  `wiki_moderation_emails` text,
  PRIMARY KEY (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_wikis`
--

LOCK TABLES `exp_wikis` WRITE;
/*!40000 ALTER TABLE `exp_wikis` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_wikis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-01 15:26:12