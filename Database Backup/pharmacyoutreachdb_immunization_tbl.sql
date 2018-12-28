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
-- Table structure for table `immunization_tbl`
--

DROP TABLE IF EXISTS `immunization_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `immunization_tbl` (
  `PatientID` int(10) unsigned NOT NULL,
  `Date` date NOT NULL,
  `Comments` mediumtext,
  `Influenza` tinyint(2) DEFAULT NULL,
  `PPSV23` tinyint(2) DEFAULT NULL,
  `PCV13` tinyint(2) DEFAULT NULL,
  `HepA` tinyint(2) DEFAULT NULL,
  `HepB` tinyint(2) DEFAULT NULL,
  `ZosterR` tinyint(2) DEFAULT NULL,
  `ZosterL` tinyint(2) DEFAULT NULL,
  `Varicella` tinyint(2) DEFAULT NULL,
  `Tdap` tinyint(2) DEFAULT NULL,
  `Td` tinyint(2) DEFAULT NULL,
  `MMR` tinyint(2) DEFAULT NULL,
  `Other` tinyint(2) DEFAULT NULL,
  `NeedsFlu` varchar(45) DEFAULT NULL,
  `NeedsPneu` varchar(45) DEFAULT NULL,
  `NeedShingles` varchar(45) DEFAULT NULL,
  `NeedsTetanus` varchar(45) DEFAULT NULL,
  `NeedsHepB` varchar(45) DEFAULT NULL,
  `NeedsRecords` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PatientID`,`Date`),
  CONSTRAINT `fk_immunization` FOREIGN KEY (`PatientID`) REFERENCES `patients_tbl` (`idpatientstbl`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immunization_tbl`
--

LOCK TABLES `immunization_tbl` WRITE;
/*!40000 ALTER TABLE `immunization_tbl` DISABLE KEYS */;
INSERT INTO `immunization_tbl` VALUES (1,'2018-12-05','No new needles',0,1,1,0,1,0,1,0,1,0,0,1,'Got Flu','','Shingles','','HepB','Call the doctor!'),(2,'2018-12-05','Needles, needles, needles!',1,0,1,1,0,0,1,0,1,0,0,1,'No Flu','','Shingles','Tetanus','HepB','Fax'),(3,'2018-12-05','Got no needles',0,1,1,0,1,0,1,0,1,0,0,1,'Got Flu','','Shingles','','HepB',''),(3,'2019-03-05','Got more needles',1,1,0,1,0,0,1,1,0,0,1,1,'No Flu','No Pneu','Shingles!','Tetanus','HepB Series','');
/*!40000 ALTER TABLE `immunization_tbl` ENABLE KEYS */;
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
