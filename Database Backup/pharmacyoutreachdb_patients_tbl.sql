-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: pharmacyoutreachdb
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `patients_tbl`
--

DROP TABLE IF EXISTS `patients_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `patients_tbl` (
  `idPatientsTbl` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(90) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` tinyint(2) DEFAULT NULL,
  `Race` varchar(45) DEFAULT NULL,
  `Ethnicity` varchar(45) DEFAULT NULL,
  `NumberOfPharmacies` tinyint(11) DEFAULT NULL,
  `MailOrderScript` tinyint(2) DEFAULT NULL,
  `Diabetes` tinyint(2) DEFAULT NULL,
  `Hypertension` tinyint(2) DEFAULT NULL,
  `Dyslipidemia` tinyint(2) DEFAULT NULL,
  `CHF` tinyint(2) DEFAULT NULL,
  `ESRD` tinyint(2) DEFAULT NULL,
  `Cardio` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`idPatientsTbl`),
  UNIQUE KEY `idPatientsTbl_UNIQUE` (`idPatientsTbl`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients_tbl`
--

LOCK TABLES `patients_tbl` WRITE;
/*!40000 ALTER TABLE `patients_tbl` DISABLE KEYS */;
INSERT INTO `patients_tbl` VALUES (1,'Suzie Shoemocker','2000-09-15',0,'Asian','Chinese',2,1,1,0,0,1,0,0),(2,'Fred Frankenstien','1967-08-15',0,'White','Italian',3,0,1,0,1,0,0,1),(3,'Shadowe Madison II','1987-07-09',1,'Asian','Japanese',1,1,1,0,1,0,0,0);
/*!40000 ALTER TABLE `patients_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-28 14:07:25
