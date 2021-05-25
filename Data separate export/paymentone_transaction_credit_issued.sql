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

-- Dump completed on 2021-05-04 20:49:05
