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
-- Table structure for table `employment`
--

DROP TABLE IF EXISTS `employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employment` (
  `employer_id` varchar(5) NOT NULL,
  `emp_ssn` varchar(9) NOT NULL,
  `company_name` varchar(15) DEFAULT NULL,
  `total_weekly_hours` varchar(3) DEFAULT NULL,
  `total_hours_missed` varchar(5) DEFAULT NULL,
  `started` date DEFAULT NULL,
  `salary` varchar(10) DEFAULT NULL,
  `position` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`emp_ssn`,`employer_id`),
  CONSTRAINT `employment_ibfk_1` FOREIGN KEY (`emp_ssn`) REFERENCES `person` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment`
--

LOCK TABLES `employment` WRITE;
/*!40000 ALTER TABLE `employment` DISABLE KEYS */;
INSERT INTO `employment` VALUES ('43441','111111111','Jupiter','40','2','2010-01-01','55.25','Barber'),('43441','111111112','Jupiter','20','4','1998-01-01','2.25','singer'),('43441','111111113','Jupiter','60','1','1990-01-01','55.25','cleaner'),('43441','111111114','Jupiter','10','0','2005-01-01','100.35','cleaner'),('36184','111111115','saturn','80','0','0200-01-01','400.35','manager'),('36184','111111116','saturn','50','0','2100-01-01','11','catrubber'),('36184','111111117','saturn','50','3','2100-01-01','1123.1','racer'),('36184','111111118','saturn','0','0','2100-01-01','1','sleeper');
/*!40000 ALTER TABLE `employment` ENABLE KEYS */;
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
