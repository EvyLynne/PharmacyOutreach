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
-- Table structure for table `health_tbl`
--

DROP TABLE IF EXISTS `health_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `health_tbl` (
  `PatientID` int(10) unsigned NOT NULL,
  `Date` date NOT NULL,
  `History` mediumtext,
  `Allergies` mediumtext,
  `A1C` decimal(4,2) DEFAULT NULL,
  `systolic` smallint(6) DEFAULT NULL,
  `diastolic` smallint(6) DEFAULT NULL,
  `Fasting` mediumint(10) DEFAULT NULL,
  `Meal` mediumint(10) DEFAULT NULL,
  `Random` mediumint(10) DEFAULT NULL,
  `HDL` smallint(6) DEFAULT NULL,
  `LDL` smallint(6) DEFAULT NULL,
  `Triglycerides` mediumint(9) DEFAULT NULL,
  `Cholesterol` mediumint(10) DEFAULT NULL,
  `Weight` mediumint(20) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `BMI` int(11) DEFAULT NULL,
  PRIMARY KEY (`PatientID`,`Date`),
  CONSTRAINT `fk_health` FOREIGN KEY (`PatientID`) REFERENCES `patients_tbl` (`idpatientstbl`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_tbl`
--

LOCK TABLES `health_tbl` WRITE;
/*!40000 ALTER TABLE `health_tbl` DISABLE KEYS */;
INSERT INTO `health_tbl` VALUES (1,'2018-09-16','Health History for this person','Allergic to life and cranky people',6.10,140,82,125,130,122,123,110,125,130,63,150,30),(2,'2018-09-16','Yet another Health History for this person','Allergic to fast food and pop rocks',5.90,130,78,98,122,112,110,98,130,130,200,72,40),(2,'2018-12-16','3 month Followup Health History for this person','Still Allergic to fast food and pop rocks',5.40,120,78,98,118,120,110,98,125,128,180,72,35),(3,'2018-12-16','First counselling session for this person','No allergies - happy with life',6.30,140,91,98,130,110,121,130,200,200,250,67,35);
/*!40000 ALTER TABLE `health_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-28 14:07:23
