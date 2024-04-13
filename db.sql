CREATE DATABASE  IF NOT EXISTS `ktx_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ktx_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ktx_db
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id_account` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `id_role` int DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_account`),
  KEY `id_role` (`id_role`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'username',1,'password',_binary ''),(2,'username',3,'password',_binary ''),(3,'username',3,'password',_binary ''),(4,'username',1,'password',_binary ''),(5,'username',3,'password',_binary ''),(6,'username',2,'password',_binary ''),(7,'username',3,'password',_binary ''),(8,'username',2,'password',_binary ''),(9,'username',3,'password',_binary ''),(10,'username',3,'password',_binary ''),(11,'username ',3,'password',_binary ''),(12,'username ',3,'password',_binary ''),(13,'username ',3,'password',_binary ''),(14,'username ',3,'password',_binary ''),(15,'username ',3,'password',_binary ''),(16,'username ',3,'password',_binary ''),(17,'username ',3,'password',_binary ''),(18,'username ',3,'password',_binary ''),(19,'username ',3,'password',_binary ''),(20,'username ',3,'password',_binary ''),(21,'username ',3,'password',_binary ''),(22,'username ',3,'password',_binary ''),(23,'username ',3,'password',_binary ''),(24,'username ',3,'password',_binary ''),(25,'username ',3,'password',_binary ''),(26,'username ',3,'password',_binary ''),(27,'username ',3,'password',_binary ''),(28,'username ',3,'password',_binary ''),(29,'username ',3,'password',_binary ''),(30,'username ',3,'password',_binary ''),(31,'username ',3,'password',_binary ''),(32,'username ',3,'password',_binary ''),(33,'username ',3,'password',_binary ''),(34,'username ',3,'password',_binary ''),(35,'username ',3,'password',_binary ''),(36,'username ',3,'password',_binary ''),(37,'username ',3,'password',_binary ''),(38,'username ',3,'password',_binary ''),(39,'username ',3,'password',_binary ''),(40,'username ',3,'password',_binary '');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `id_account` int DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `id_account` (`id_account`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,1,'long');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bed`
--

DROP TABLE IF EXISTS `bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bed` (
  `id_bed` int NOT NULL AUTO_INCREMENT,
  `bed_number` int DEFAULT NULL,
  `id_room` int DEFAULT NULL,
  `bed_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_bed`),
  KEY `id_room` (`id_room`),
  CONSTRAINT `bed_ibfk_1` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed`
--

LOCK TABLES `bed` WRITE;
/*!40000 ALTER TABLE `bed` DISABLE KEYS */;
INSERT INTO `bed` VALUES (1,1,1,'trống'),(2,2,1,'trống'),(3,3,1,'trống'),(4,4,1,'trống'),(5,1,2,'trống'),(6,2,2,'trống'),(7,3,2,'trống'),(8,4,2,'trống'),(9,1,3,'trống'),(10,2,3,'trống'),(11,3,3,'trống'),(12,4,3,'trống'),(13,1,4,'trống'),(14,2,4,'trống'),(15,3,4,'trống'),(16,4,4,'trống'),(17,1,5,'trống'),(18,2,5,'trống'),(19,3,5,'trống'),(20,4,5,'trống'),(21,1,6,'trống'),(22,2,6,'trống'),(23,3,6,'trống'),(24,4,6,'trống'),(25,1,7,'trống'),(26,2,7,'trống'),(27,3,7,'trống'),(28,4,7,'trống'),(29,5,7,'trống'),(30,1,8,'trống'),(31,2,8,'trống'),(32,3,8,'trống'),(33,4,8,'trống'),(34,5,8,'trống'),(35,1,9,'trống'),(36,2,9,'trống'),(37,3,9,'trống'),(38,4,9,'trống'),(39,5,9,'trống'),(40,1,10,'trống'),(41,2,10,'trống'),(42,3,10,'trống'),(43,4,10,'trống'),(44,5,10,'trống'),(45,1,11,'trống'),(46,2,11,'trống'),(47,3,11,'trống'),(48,4,11,'trống'),(49,5,11,'trống'),(50,1,12,'trống'),(51,2,12,'trống'),(52,3,12,'trống'),(53,4,12,'trống'),(54,5,12,'trống'),(55,1,13,'trống'),(56,2,13,'trống'),(57,3,13,'trống'),(58,4,13,'trống'),(59,5,13,'trống'),(60,6,13,'trống'),(61,1,14,'trống'),(62,2,14,'trống'),(63,3,14,'trống'),(64,4,14,'trống'),(65,5,14,'trống'),(66,6,14,'trống'),(67,1,15,'trống'),(68,2,15,'trống'),(69,3,15,'trống'),(70,4,15,'trống'),(71,5,15,'trống'),(72,6,15,'trống'),(73,1,16,'trống'),(74,2,16,'trống'),(75,3,16,'trống'),(76,4,16,'trống'),(77,5,16,'trống'),(78,6,16,'trống'),(79,1,17,'trống'),(80,2,17,'trống'),(81,3,17,'trống'),(82,4,17,'trống'),(83,5,17,'trống'),(84,6,17,'trống'),(85,1,18,'trống'),(86,2,18,'trống'),(87,3,18,'trống'),(88,4,18,'trống'),(89,5,18,'trống'),(90,6,18,'trống'),(91,1,19,'trống'),(92,2,19,'trống'),(93,3,19,'trống'),(94,4,19,'trống'),(95,5,19,'trống'),(96,6,19,'trống'),(97,7,19,'trống'),(98,1,20,'trống'),(99,2,20,'trống'),(100,3,20,'trống'),(101,4,20,'trống'),(102,5,20,'trống'),(103,6,20,'trống'),(104,7,20,'trống'),(105,1,21,'trống'),(106,2,21,'trống'),(107,3,21,'trống'),(108,4,21,'trống'),(109,5,21,'trống'),(110,6,21,'trống'),(111,7,21,'trống'),(112,1,22,'trống'),(113,2,22,'trống'),(114,3,22,'trống'),(115,4,22,'trống'),(116,5,22,'trống'),(117,6,22,'trống'),(118,7,22,'trống'),(119,1,23,'trống'),(120,2,23,'trống'),(121,3,23,'trống'),(122,4,23,'trống'),(123,5,23,'trống'),(124,6,23,'trống'),(125,7,23,'trống'),(126,1,24,'trống'),(127,2,24,'trống'),(128,3,24,'trống'),(129,4,24,'trống'),(130,5,24,'trống'),(131,6,24,'trống'),(132,7,24,'trống'),(133,1,25,'trống'),(134,2,25,'trống'),(135,3,25,'trống'),(136,4,25,'trống'),(137,1,26,'trống'),(138,2,26,'trống'),(139,3,26,'trống'),(140,4,26,'trống'),(141,1,27,'trống'),(142,2,27,'trống'),(143,3,27,'trống'),(144,4,27,'trống'),(145,1,28,'trống'),(146,2,28,'trống'),(147,3,28,'trống'),(148,4,28,'trống'),(149,1,29,'trống'),(150,2,29,'trống'),(151,3,29,'trống'),(152,4,29,'trống'),(153,1,30,'trống'),(154,2,30,'trống'),(155,3,30,'trống'),(156,4,30,'trống'),(157,1,31,'trống'),(158,2,31,'trống'),(159,3,31,'trống'),(160,4,31,'trống'),(161,5,31,'trống'),(162,1,32,'trống'),(163,2,32,'trống'),(164,3,32,'trống'),(165,4,32,'trống'),(166,5,32,'trống'),(167,1,33,'trống'),(168,2,33,'trống'),(169,3,33,'trống'),(170,4,33,'trống'),(171,5,33,'trống'),(172,1,34,'trống'),(173,2,34,'trống'),(174,3,34,'trống'),(175,4,34,'trống'),(176,5,34,'trống'),(177,1,35,'trống'),(178,2,35,'trống'),(179,3,35,'trống'),(180,4,35,'trống'),(181,5,35,'trống'),(182,1,36,'trống'),(183,2,36,'trống'),(184,3,36,'trống'),(185,4,36,'trống'),(186,5,36,'trống'),(187,1,37,'trống'),(188,2,37,'trống'),(189,3,37,'trống'),(190,4,37,'trống'),(191,5,37,'trống'),(192,6,37,'trống'),(193,1,38,'trống'),(194,2,38,'trống'),(195,3,38,'trống'),(196,4,38,'trống'),(197,5,38,'trống'),(198,6,38,'trống'),(199,1,39,'trống'),(200,2,39,'trống'),(201,3,39,'trống'),(202,4,39,'trống'),(203,5,39,'trống'),(204,6,39,'trống'),(205,1,40,'trống'),(206,2,40,'trống'),(207,3,40,'trống'),(208,4,40,'trống'),(209,5,40,'trống'),(210,6,40,'trống'),(211,1,41,'trống'),(212,2,41,'trống'),(213,3,41,'trống'),(214,4,41,'trống'),(215,5,41,'trống'),(216,6,41,'trống'),(217,1,42,'trống'),(218,2,42,'trống'),(219,3,42,'trống'),(220,4,42,'trống'),(221,5,42,'trống'),(222,6,42,'trống'),(223,1,43,'trống'),(224,2,43,'trống'),(225,3,43,'trống'),(226,4,43,'trống'),(227,5,43,'trống'),(228,6,43,'trống'),(229,7,43,'trống'),(230,1,44,'trống'),(231,2,44,'trống'),(232,3,44,'trống'),(233,4,44,'trống'),(234,5,44,'trống'),(235,6,44,'trống'),(236,7,44,'trống'),(237,1,45,'trống'),(238,2,45,'trống'),(239,3,45,'trống'),(240,4,45,'trống'),(241,5,45,'trống'),(242,6,45,'trống'),(243,7,45,'trống'),(244,1,46,'trống'),(245,2,46,'trống'),(246,3,46,'trống'),(247,4,46,'trống'),(248,5,46,'trống'),(249,6,46,'trống'),(250,7,46,'trống'),(251,1,47,'trống'),(252,2,47,'trống'),(253,3,47,'trống'),(254,4,47,'trống'),(255,5,47,'trống'),(256,6,47,'trống'),(257,7,47,'trống'),(258,1,48,'trống'),(259,2,48,'trống'),(260,3,48,'trống'),(261,4,48,'trống'),(262,5,48,'trống'),(263,6,48,'trống'),(264,7,48,'trống');
/*!40000 ALTER TABLE `bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookinghistory`
--

DROP TABLE IF EXISTS `bookinghistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookinghistory` (
  `id_booking_room` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `id_bed` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  PRIMARY KEY (`id_booking_room`),
  KEY `id_user` (`id_user`),
  KEY `id_bed` (`id_bed`),
  CONSTRAINT `bookinghistory_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `bookinghistory_ibfk_2` FOREIGN KEY (`id_bed`) REFERENCES `bed` (`id_bed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookinghistory`
--

LOCK TABLES `bookinghistory` WRITE;
/*!40000 ALTER TABLE `bookinghistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookinghistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `id_building` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_building`),
  UNIQUE KEY `id_user` (`id_user`),
  CONSTRAINT `building_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,NULL,'Tòa A'),(2,NULL,'Tòa B'),(3,NULL,'Tòa C'),(4,NULL,'Tòa D');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imageroom`
--

DROP TABLE IF EXISTS `imageroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imageroom` (
  `id_image` int NOT NULL AUTO_INCREMENT,
  `id_type_room` int DEFAULT NULL,
  `image_room` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id_image`),
  KEY `id_type_room` (`id_type_room`),
  CONSTRAINT `imageroom_ibfk_1` FOREIGN KEY (`id_type_room`) REFERENCES `typeroom` (`id_type_room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imageroom`
--

LOCK TABLES `imageroom` WRITE;
/*!40000 ALTER TABLE `imageroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `imageroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id_news` int NOT NULL AUTO_INCREMENT,
  `id_admin` int DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`id_news`),
  KEY `id_admin` (`id_admin`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id_payment` int NOT NULL AUTO_INCREMENT,
  `id_booking_room` int DEFAULT NULL,
  `paymentDate` datetime DEFAULT NULL,
  `type_of_service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_payment`),
  KEY `id_booking_room` (`id_booking_room`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id_booking_room`) REFERENCES `bookinghistory` (`id_booking_room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id_request` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `date_resolved` date DEFAULT NULL,
  PRIMARY KEY (`id_request`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `request_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'manager'),(3,'renter');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `id_room` int NOT NULL AUTO_INCREMENT,
  `id_building` int DEFAULT NULL,
  `name_room` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price_room` bigint DEFAULT NULL,
  `total_bed` int DEFAULT NULL,
  `id_type_room` int DEFAULT NULL,
  PRIMARY KEY (`id_room`),
  KEY `id_building` (`id_building`),
  KEY `id_type_room` (`id_type_room`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`id_building`) REFERENCES `building` (`id_building`),
  CONSTRAINT `room_ibfk_2` FOREIGN KEY (`id_type_room`) REFERENCES `typeroom` (`id_type_room`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,'A101','nam',1000000,4,1),(2,1,'A102','nam',900000,4,2),(3,1,'A103','nữ',1000000,4,1),(4,1,'A104','nữ',1000000,4,1),(5,1,'A105','nữ',900000,4,2),(6,1,'A106','nam',900000,4,2),(7,1,'A107','nam',800000,5,3),(8,1,'A108','nữ',700000,5,4),(9,1,'A109','nam',800000,5,3),(10,1,'A110','nam',700000,5,4),(11,1,'A111','nữ',700000,5,4),(12,1,'A112','nữ',800000,5,3),(13,1,'A113','nam',600000,6,5),(14,1,'A114','nữ',500000,6,6),(15,1,'A115','nam',600000,6,5),(16,1,'A116','nam',500000,6,6),(17,1,'A117','nữ',600000,6,5),(18,1,'A118','nữ',500000,6,6),(19,1,'A119','nam',400000,7,7),(20,1,'A120','nữ',300000,7,8),(21,1,'A121','nam',400000,7,7),(22,1,'A122','nam',300000,7,8),(23,1,'A123','nữ',400000,7,7),(24,1,'A124','nữ',300000,7,8),(25,2,'B101','nam',1000000,4,1),(26,2,'B102','nam',900000,4,2),(27,2,'B103','nữ',1000000,4,1),(28,2,'B104','nữ',1000000,4,1),(29,2,'B105','nữ',900000,4,2),(30,2,'B106','nam',900000,4,2),(31,2,'B107','nam',800000,5,3),(32,2,'B108','nữ',700000,5,4),(33,2,'B109','nam',800000,5,3),(34,2,'B110','nam',700000,5,4),(35,2,'B111','nữ',700000,5,4),(36,2,'B112','nữ',800000,5,3),(37,2,'B113','nam',600000,6,5),(38,2,'B114','nữ',500000,6,6),(39,2,'B115','nam',600000,6,5),(40,2,'B116','nam',500000,6,6),(41,2,'B117','nữ',600000,6,5),(42,2,'B118','nữ',500000,6,6),(43,2,'B119','nam',400000,7,7),(44,2,'B120','nữ',300000,7,8),(45,2,'B121','nam',400000,7,7),(46,2,'B122','nam',300000,7,8),(47,2,'B123','nữ',400000,7,7),(48,2,'B124','nữ',300000,7,8);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id_service` int NOT NULL AUTO_INCREMENT,
  `name_service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price_service` bigint DEFAULT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceusage`
--

DROP TABLE IF EXISTS `serviceusage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceusage` (
  `id_usage` int NOT NULL AUTO_INCREMENT,
  `id_service` int DEFAULT NULL,
  `id_room` int DEFAULT NULL,
  `number_service` int DEFAULT NULL,
  `amount_service` bigint DEFAULT NULL,
  `calculation_day` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usage`),
  KEY `id_service` (`id_service`),
  KEY `id_room` (`id_room`),
  CONSTRAINT `serviceusage_ibfk_1` FOREIGN KEY (`id_service`) REFERENCES `service` (`id_service`),
  CONSTRAINT `serviceusage_ibfk_2` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceusage`
--

LOCK TABLES `serviceusage` WRITE;
/*!40000 ALTER TABLE `serviceusage` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceusage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeroom`
--

DROP TABLE IF EXISTS `typeroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeroom` (
  `id_type_room` int NOT NULL AUTO_INCREMENT,
  `name_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `describe_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id_type_room`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeroom`
--

LOCK TABLES `typeroom` WRITE;
/*!40000 ALTER TABLE `typeroom` DISABLE KEYS */;
INSERT INTO `typeroom` VALUES (1,'phòng 4 người có điều hòa','Phòng 4 người thoải mái với điều hòa không khí, tạo môi trường lý tưởng cho việc sinh hoạt và nghỉ ngơi'),(2,'phòng 4 người không có  hòa','Phòng 4 người thoải mái với điều hòa không khí, tạo môi trường lý tưởng cho việc sinh hoạt và nghỉ ngơi'),(3,'phòng 5 người có điều hòa','Phòng 5 người thoải mái với điều hòa không khí, tạo môi trường lý tưởng cho việc sinh hoạt và nghỉ ngơi'),(4,'phòng 5 người không điều hòa','Phòng 5 người thoải mái với điều hòa không khí, tạo môi trường lý tưởng cho việc sinh hoạt và nghỉ ngơi'),(5,'phòng 6 người có điều hòa','Phòng 6 người thoải mái với điều hòa không khí, tạo môi trường lý tưởng cho việc sinh hoạt và nghỉ ngơi'),(6,'phòng 6 người không điều hòa','Phòng 6 người thoải mái với điều hòa không khí, tạo môi trường lý tưởng cho việc sinh hoạt và nghỉ ngơi'),(7,'phòng 7 người có điều hòa','Phòng 7 người thoải mái với điều hòa không khí, tạo môi trường lý tưởng cho việc sinh hoạt và nghỉ ngơi'),(8,'phòng 7 người không điều hòa','Phòng 7 người thoải mái với điều hòa không khí, tạo môi trường lý tưởng cho việc sinh hoạt và nghỉ ngơi');
/*!40000 ALTER TABLE `typeroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `id_account` int DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `number_cccd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name_university` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image_renter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `id_account` (`id_account`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'Nguyễn Văn A','2000-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image1.jpg','male','sample@email.com'),(2,2,'Nguyễn Thị A','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(3,3,'Nguyễn Văn B','2000-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image1.jpg','male','sample@email.com'),(4,4,'Nguyễn Thị B','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(5,5,'Nguyễn Văn C','2000-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image1.jpg','male','sample@email.com'),(6,6,'Nguyễn Thị C','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(7,7,'Nguyễn Văn D','2000-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image1.jpg','male','sample@email.com'),(8,8,'Nguyễn Thị D','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(9,9,'Nguyễn Văn E','2000-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image1.jpg','male','sample@email.com'),(10,10,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(11,11,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(12,12,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(13,13,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(14,14,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(15,15,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(16,16,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(17,17,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(18,18,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(19,19,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(20,20,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(21,21,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(22,22,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(23,23,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(24,24,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(25,25,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(26,26,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(27,27,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(28,28,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(29,29,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(30,30,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(31,31,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(32,32,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(33,33,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(34,34,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(35,35,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(36,36,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(37,37,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com'),(38,38,'Nguyễn Thị E','1998-01-01','Hà Nội','xxxxxxxxxx123','Đại học FPT Hà Nội','0123456789','image2.jpg','female','sample@email.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-14  5:09:33
