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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `online_id` int NOT NULL AUTO_INCREMENT,
  `ssn` char(9) NOT NULL,
  `bank_account_id` int DEFAULT NULL,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `dob` date DEFAULT NULL,
  `cob` varchar(15) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `street_number` varchar(15) DEFAULT NULL,
  `street_name` varchar(15) DEFAULT NULL,
  `apt_number` varchar(5) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `zip_code` int DEFAULT NULL,
  `employer_id` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ssn`),
  UNIQUE KEY `online_id` (`online_id`),
  KEY `bank_account_id_idx` (`bank_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (3,'111111111',5,'ren','olla','2000-03-06','Colorado',68,'2344','janet','4C','New York','NY',10023,'43441'),(2,'111111112',4,'willi','chilli','1990-02-03','Florida',70,'266','Arlinton','1B','Bronx','NY',10483,'43441'),(1,'111111113',3,'Oscar','Soup','2010-04-11','Denmark',72,'266','Candy Vally','A','New York','NY',10012,'43441'),(4,'111111114',6,'carpa','gamucha','1998-12-12','chicago',75,'3322','ripple town','54',' queens','NY',12345,'43441'),(5,'111111115',7,'jose','sicer','1920-03-03','new york',3,'555','never mind','8',' Boston','MA',1002,'36184'),(6,'111111116',8,'bill','dicosimo','2002-07-05','canada',80,'235','south par','3j','new haven','ct',6506,'36184'),(7,'111111117',9,'lara','croft','1905-06-16','new york',65,'321','playstation','1','new york','ny',2000,'36184'),(8,'111111118',10,'rosw','welldone','1999-11-09','illinois',89,'33','pamper','6n','chicago','ch',60612,'36184');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
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
