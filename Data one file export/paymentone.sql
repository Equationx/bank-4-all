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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `b_account_number` int NOT NULL,
  `b_ssn` char(9) NOT NULL,
  `checking` decimal(65,2) DEFAULT NULL,
  `savings` decimal(65,2) DEFAULT NULL,
  PRIMARY KEY (`b_account_number`),
  UNIQUE KEY `b_account_number` (`b_account_number`),
  KEY `b_ssn` (`b_ssn`),
  CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`b_ssn`) REFERENCES `person` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (3,'111111113',3000.50,5000.43),(4,'111111112',8000.23,9500000.55),(5,'111111111',300.11,80000.23),(6,'111111114',400.34,535000.11),(7,'111111115',7500.00,7500.00),(8,'111111116',35000.00,55000.23),(9,'111111117',3000.00,7000.00),(10,'111111118',1300.00,7000.00);
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `transaction_credit_issued`
--

DROP TABLE IF EXISTS `transaction_credit_issued`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_credit_issued` (
  `t_person_ssn` char(9) NOT NULL,
  `t_purchased_order_id` int DEFAULT NULL,
  `t_employer_id` char(5) DEFAULT NULL,
  `t_person_online_id` int DEFAULT NULL,
  `income` varchar(10) DEFAULT NULL,
  `missed_payment` varchar(4) DEFAULT NULL,
  `complete_payments` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`t_person_ssn`),
  KEY `t_purchased_order_id` (`t_purchased_order_id`),
  KEY `t_person_online_id` (`t_person_online_id`),
  CONSTRAINT `transaction_credit_issued_ibfk_1` FOREIGN KEY (`t_purchased_order_id`) REFERENCES `onlineactivity` (`purchased_oder_id`),
  CONSTRAINT `transaction_credit_issued_ibfk_2` FOREIGN KEY (`t_person_ssn`) REFERENCES `employment` (`emp_ssn`),
  CONSTRAINT `transaction_credit_issued_ibfk_3` FOREIGN KEY (`t_person_online_id`) REFERENCES `person` (`online_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_credit_issued`
--

LOCK TABLES `transaction_credit_issued` WRITE;
/*!40000 ALTER TABLE `transaction_credit_issued` DISABLE KEYS */;
INSERT INTO `transaction_credit_issued` VALUES ('111111111',2,'43441',3,'100000','0','y'),('111111112',3,'43441',2,'143020','2','y'),('111111113',1,'43441',1,'30000','0','y'),('111111114',4,'43441',4,'40000','0','y'),('111111115',5,'36184',5,'15000','1','y'),('111111116',8,'36184',6,'80000','0','y'),('111111117',13,'36184',7,'10000','2','y'),('111111118',16,'36184',8,'20000','0','y');
/*!40000 ALTER TABLE `transaction_credit_issued` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-04 20:48:55
