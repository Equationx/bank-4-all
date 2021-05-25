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
-- Table structure for table `profile1`
--

DROP TABLE IF EXISTS `profile1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile1` (
  `p_ssn` char(9) NOT NULL,
  `p_online_id` int DEFAULT NULL,
  `credit_score` char(4) NOT NULL,
  `party_affiliation` varchar(10) DEFAULT NULL,
  `gamble` char(1) DEFAULT NULL,
  `criminal_record` char(1) NOT NULL,
  `employment` char(1) DEFAULT NULL,
  `education` char(1) DEFAULT NULL,
  `highest_diploma` varchar(10) DEFAULT NULL,
  `social_media` char(1) DEFAULT NULL,
  `marsta` char(1) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `f_songs` varchar(15) DEFAULT NULL,
  `f_foods` varchar(15) DEFAULT NULL,
  `f_shows` varchar(15) DEFAULT NULL,
  `pets` char(1) DEFAULT NULL,
  `gamer` char(1) DEFAULT NULL,
  PRIMARY KEY (`p_ssn`),
  KEY `profile1_ibfk_1` (`p_online_id`),
  CONSTRAINT `profile1_ibfk_1` FOREIGN KEY (`p_online_id`) REFERENCES `person` (`online_id`) ON UPDATE CASCADE,
  CONSTRAINT `profile1_ibfk_2` FOREIGN KEY (`p_ssn`) REFERENCES `person` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile1`
--

LOCK TABLES `profile1` WRITE;
/*!40000 ALTER TABLE `profile1` DISABLE KEYS */;
INSERT INTO `profile1` VALUES ('111111111',3,'625','republican','n','y','y','n','9','y','s','m','rap','chicken','action','n','n'),('111111112',2,'800','republican','n','y','y','n','associates','y','M','m','techno','vegetarian','drama','y','y'),('111111113',1,'700','democrat','y','n','y','y','masters','y','s','m','jazz','spanish','comedy','n','y'),('111111114',4,'690','democrat','n','y','y','n','hs','y','s','m','cumbia','rice','action','n','n'),('111111115',5,'1700','green','n','n','y','y','masters','y','m','m','house','italian','suspense','y','y'),('111111116',6,'200','repuclican','y','n','y','y','9','y','s','m','rap','italian','action','y','y'),('111111117',7,'900','other','y','y','y','y','Doctorate ','n','s','f','trance','american','action','y','y'),('111111118',8,'200','other','n','n','n','n','non ','y','s','m','other','chinese','drama','n','y');
/*!40000 ALTER TABLE `profile1` ENABLE KEYS */;
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
