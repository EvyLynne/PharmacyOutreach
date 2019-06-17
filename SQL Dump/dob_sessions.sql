-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: dob
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sessions` (
  `Session_ID` int(11) NOT NULL,
  `Patient_ID` int(11) DEFAULT NULL,
  `Facility` varchar(255) DEFAULT NULL,
  `Session_Date` date DEFAULT NULL,
  `Rph` varchar(255) DEFAULT NULL,
  `Type_Of_Session` varchar(255) DEFAULT NULL,
  `Reason_For_Session` varchar(255) DEFAULT NULL,
  `Documentation_Time` timestamp NULL DEFAULT NULL,
  `Prep_Time` int(11) DEFAULT NULL,
  `Start_Time` timestamp NULL DEFAULT NULL,
  `End_Time` timestamp NULL DEFAULT NULL,
  `Total_Session_Time` int(11) DEFAULT NULL,
  `Written_CMR_Summary` tinyint(1) DEFAULT NULL,
  `written_TMR_Summary` tinyint(1) DEFAULT NULL,
  `written_DESS_Summary` tinyint(1) DEFAULT NULL,
  `Education_Materials` tinyint(1) DEFAULT NULL,
  `Reminder_List` tinyint(1) DEFAULT NULL,
  `Blood_Glucose_Diary` tinyint(1) DEFAULT NULL,
  `Wallet_Card` tinyint(1) DEFAULT NULL,
  `Medication_History` tinyint(1) DEFAULT NULL,
  `Labratories_History` tinyint(1) DEFAULT NULL,
  `Alternative_Language_Translations` tinyint(1) DEFAULT NULL,
  `FollowUp_Recommendation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Session_ID`),
  KEY `PatientID` (`Patient_ID`),
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 15:21:29
