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
-- Table structure for table `session_tbl`
--

DROP TABLE IF EXISTS `session_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `session_tbl` (
  `idSessionTbl` int(11) NOT NULL AUTO_INCREMENT,
  `PatientsID` int(10) unsigned DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Rph` varchar(20) DEFAULT NULL,
  `Type` varchar(5) DEFAULT NULL,
  `PrepTime` time DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `DocumentationTime` time DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `WrittenCMRSummary` tinyint(2) DEFAULT NULL,
  `WrittenTMRSummary` tinyint(2) DEFAULT NULL,
  `WrittenDESSSummary` tinyint(2) DEFAULT NULL,
  `EducationMaterials` tinyint(2) DEFAULT NULL,
  `ReminderList` tinyint(2) DEFAULT NULL,
  `BGDiary` tinyint(2) DEFAULT NULL,
  `Translations` tinyint(2) DEFAULT NULL,
  `WalletCard` tinyint(2) DEFAULT NULL,
  `MedHistory` tinyint(2) DEFAULT NULL,
  `LabHistory` tinyint(2) DEFAULT NULL,
  `Facility` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idSessionTbl`),
  UNIQUE KEY `idSessionTbl_UNIQUE` (`idSessionTbl`),
  KEY `ptid` (`PatientsID`),
  CONSTRAINT `fk_session` FOREIGN KEY (`PatientsID`) REFERENCES `patients_tbl` (`idpatientstbl`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_tbl`
--

LOCK TABLES `session_tbl` WRITE;
/*!40000 ALTER TABLE `session_tbl` DISABLE KEYS */;
INSERT INTO `session_tbl` VALUES (1,1,'2018-09-16','NRD','TMR','00:10:00','05:00:00','05:15:00','00:40:00','00:05:00','To obtain a complete list of my medications',1,0,0,1,1,0,1,0,1,0,'None'),(2,2,'2018-09-16','NRD','TMR','00:10:00','05:50:00','06:05:00','00:40:00','00:05:00','To understand what my medications are for',1,0,0,1,1,0,1,0,1,0,'None'),(3,3,'2018-09-16','NRD','DESS','00:10:00','06:15:00','06:30:00','00:40:00','00:05:00','To review lifestyle medications',0,0,1,1,1,1,1,1,1,1,'None'),(4,3,'2018-09-16','NRD','CMR','00:10:00','06:45:00','07:00:00','00:40:00','00:05:00','To review how to take or use my medications',1,0,0,1,0,1,1,0,1,1,'None'),(5,2,'2018-10-31','NRD','DESS','00:10:00','05:00:00','05:15:00','00:40:00','00:05:00','To Review insulin administration',0,0,1,1,0,1,1,0,1,1,'None'),(6,1,'2018-10-31','NRD','DESS','00:10:00','05:30:00','05:45:00','00:40:00','00:05:00','To review nutrition',0,0,1,1,0,1,1,0,1,1,'None'),(7,1,'2018-10-31','NRD','CMR','00:10:00','06:05:00','06:20:00','00:40:00','00:05:00','To know when to take my medications',1,0,0,1,1,0,1,0,1,1,'None');
/*!40000 ALTER TABLE `session_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-28 14:07:24
