-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: paymentone
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `onlineactivity`
--

DROP TABLE IF EXISTS `onlineactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onlineactivity` (
  `purchased_oder_id` int NOT NULL AUTO_INCREMENT,
  `activity_online_id` int DEFAULT NULL,
  `ip_source` char(12) DEFAULT NULL,
  `url` varchar(30) NOT NULL,
  `purchased` char(1) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `date_visit` date DEFAULT NULL,
  `session_time` datetime DEFAULT NULL,
  PRIMARY KEY (`purchased_oder_id`),
  KEY `onlineactivity_ibfk_1` (`activity_online_id`),
  CONSTRAINT `onlineactivity_ibfk_1` FOREIGN KEY (`activity_online_id`) REFERENCES `profile1` (`p_online_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onlineactivity`
--

LOCK TABLES `onlineactivity` WRITE;
/*!40000 ALTER TABLE `onlineactivity` DISABLE KEYS */;
INSERT INTO `onlineactivity` VALUES (1,1,'10.10.2.3','https://www.amazon.com/','y',33.40,'2021-01-01','2021-06-23 12:03:33'),(2,3,'10.10.2.55','https://www.gap.com/','y',533.11,'2021-12-22','2021-12-22 01:44:51'),(3,2,'109.10.2.3','https://www.wendys.com/','y',3.80,'2021-06-11','2021-06-11 10:03:33'),(4,4,'127.10.2.3','https://www.cisco.com/','y',323.40,'2021-01-01','2021-06-23 12:03:33'),(5,5,'198.10.2.60','https://www.walmart.com/','y',23433.11,'2020-03-12','2020-03-12 01:00:51'),(8,6,'138.0.2.0','https://www.spiceishot.com/','y',11.00,'2020-03-12','2020-03-12 04:00:51'),(9,6,'1.0.0.00','https://www.james.com/','y',1223.11,'2020-08-30','2020-08-30 02:00:51'),(11,3,'198.10.2.60','https://www.walmart.com/','y',234.11,'2020-03-12','2020-03-12 01:40:51'),(12,3,'198.10.2.60','https://www.walmart.com/','y',2.11,'2020-03-12','2020-03-12 01:00:51'),(13,7,'191.0.234.23','https://www.game.com/','y',555.11,'2020-01-12','2020-03-12 12:45:51'),(14,7,'191.0.234.23','https://www.game.com/','y',878.35,'2020-01-12','2020-03-12 12:50:51'),(15,7,'191.0.234.23','https://www.game.com/','y',9999.11,'2018-01-12','2020-03-12 04:45:51'),(16,8,'1.1.2.2','https://www.samsung.com/','y',555.11,'2020-01-12','2020-03-12 12:45:51');
/*!40000 ALTER TABLE `onlineactivity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-04 20:49:05
