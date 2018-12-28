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
-- Table structure for table `med_review_tbl`
--

DROP TABLE IF EXISTS `med_review_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `med_review_tbl` (
  `PatientsID` int(10) unsigned NOT NULL,
  `Date` date NOT NULL,
  `DrugId` int(11) NOT NULL,
  `Instructions` varchar(200) DEFAULT NULL,
  `Indication` varchar(200) DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Adherence` tinyint(2) DEFAULT NULL,
  `SideEffects` tinyint(2) DEFAULT NULL,
  `Administration` varchar(200) DEFAULT NULL,
  `Formulary` tinyint(2) DEFAULT NULL,
  `RecommendTechnique` varchar(200) DEFAULT NULL,
  `RecommendIndications` varchar(200) DEFAULT NULL,
  `RecommendEducation` varchar(200) DEFAULT NULL,
  `RecommendInitiate` varchar(200) DEFAULT NULL,
  `RecommendChange` varchar(200) DEFAULT NULL,
  `RecommendMonitoring` varchar(200) DEFAULT NULL,
  `RecommendDiscontinue` varchar(200) DEFAULT NULL,
  `RecommendDisease` varchar(200) DEFAULT NULL,
  `RecommendSpecialty` varchar(200) DEFAULT NULL,
  `RecommendCase` varchar(200) DEFAULT NULL,
  `D7` tinyint(2) DEFAULT NULL,
  `D6` tinyint(2) DEFAULT NULL,
  `D5` tinyint(2) DEFAULT NULL,
  `D4` tinyint(2) DEFAULT NULL,
  `D3` tinyint(2) DEFAULT NULL,
  `D2` tinyint(2) DEFAULT NULL,
  `D1` tinyint(2) DEFAULT NULL,
  `A7` tinyint(2) DEFAULT NULL,
  `A6` tinyint(2) DEFAULT NULL,
  `A5` tinyint(2) DEFAULT NULL,
  `A4` tinyint(2) DEFAULT NULL,
  `A3` tinyint(2) DEFAULT NULL,
  `A2` tinyint(2) DEFAULT NULL,
  `A1` tinyint(2) DEFAULT NULL,
  `E4` tinyint(2) DEFAULT NULL,
  `E3` tinyint(2) DEFAULT NULL,
  `E2` tinyint(2) DEFAULT NULL,
  `E1` tinyint(2) DEFAULT NULL,
  `S5` tinyint(2) DEFAULT NULL,
  `S4` tinyint(2) DEFAULT NULL,
  `S3` tinyint(2) DEFAULT NULL,
  `S2` tinyint(2) DEFAULT NULL,
  `S1` tinyint(2) DEFAULT NULL,
  `M1` tinyint(2) DEFAULT NULL,
  `I3` tinyint(2) DEFAULT NULL,
  `I2` tinyint(2) DEFAULT NULL,
  `I1` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`PatientsID`,`Date`,`DrugId`),
  KEY `fk_drug` (`DrugId`),
  CONSTRAINT `fk_drug` FOREIGN KEY (`DrugId`) REFERENCES `drug_tbl` (`iddrugtbl`) ON UPDATE CASCADE,
  CONSTRAINT `fk_med_review` FOREIGN KEY (`PatientsID`) REFERENCES `patients_tbl` (`idpatientstbl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `med_review_tbl`
--

LOCK TABLES `med_review_tbl` WRITE;
/*!40000 ALTER TABLE `med_review_tbl` DISABLE KEYS */;
INSERT INTO `med_review_tbl` VALUES (1,'2018-09-16',1,'Take 1 tablet daily','For pain','22:21:57',1,0,'By mouth',0,'Do Stuff','Conditions','Learn stuff','Start stuff','Change Stuff','Watch Stuff','Stop Stuff','Sick Stuff','Expensive Stuff','Go to stuff',1,0,0,1,0,0,1,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,1,0,1,1,1),(1,'2018-10-31',3,'Take 1 tablet daily','For pain','22:21:23',1,0,'By mouth',0,'Do Stuff','Conditions','Learn stuff','Start stuff','Change Stuff','Watch Stuff','Stop Stuff','Sick Stuff','Expensive Stuff','Go to stuff',1,0,0,1,0,0,1,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,1,0,1,1,1),(2,'2018-09-16',2,'Take 1 tablet daily','For pain','22:22:13',1,0,'By mouth',0,'Do Stuff','Conditions','Learn stuff','Start stuff','Change Stuff','Watch Stuff','Stop Stuff','Sick Stuff','Expensive Stuff','Go to stuff',1,0,0,1,0,0,1,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,1,0,1,1,1),(3,'2018-09-16',3,'Take 1 tablet daily','For pain','22:22:39',1,0,'By mouth',0,'Do Stuff','Conditions','Learn stuff','Start stuff','Change Stuff','Watch Stuff','Stop Stuff','Sick Stuff','Expensive Stuff','Go to stuff',1,0,0,1,0,0,1,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,1,0,1,1,1);
/*!40000 ALTER TABLE `med_review_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-28 14:07:22
