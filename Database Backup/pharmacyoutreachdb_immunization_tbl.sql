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
  `Vacc1` tinyint(2) DEFAULT NULL,
  `Vacc2` tinyint(2) DEFAULT NULL,
  `Vacc3` tinyint(2) DEFAULT NULL,
  `Vacc4` tinyint(2) DEFAULT NULL,
  `Vacc5` tinyint(2) DEFAULT NULL,
  `Vacc6` tinyint(2) DEFAULT NULL,
  `Vacc7` tinyint(2) DEFAULT NULL,
  `Vacc8` tinyint(2) DEFAULT NULL,
  `Vacc9` tinyint(2) DEFAULT NULL,
  `Vacc10` tinyint(2) DEFAULT NULL,
  `Vacc11` tinyint(2) DEFAULT NULL,
  `Vacc12` tinyint(2) DEFAULT NULL,
  `Vacc13` tinyint(2) DEFAULT NULL,
  `Vacc14` tinyint(2) DEFAULT NULL,
  `Vacc15` tinyint(2) DEFAULT NULL,
  `Vacc16` tinyint(2) DEFAULT NULL,
  `Vacc17` tinyint(2) DEFAULT NULL,
  `Vacc18` tinyint(2) DEFAULT NULL,
  `Vacc19` tinyint(2) DEFAULT NULL,
  `Vacc20` tinyint(2) DEFAULT NULL,
  `Vacc21` tinyint(2) DEFAULT NULL,
  `Vacc22` tinyint(2) DEFAULT NULL,
  `Vacc23` tinyint(2) DEFAULT NULL,
  `Vacc24` tinyint(2) DEFAULT NULL,
  `Vacc25` tinyint(2) DEFAULT NULL,
  `Vacc26` tinyint(2) DEFAULT NULL,
  `Vacc27` tinyint(2) DEFAULT NULL,
  `Vacc28` tinyint(2) DEFAULT NULL,
  `Vacc29` tinyint(2) DEFAULT NULL,
  `Vacc30` tinyint(2) DEFAULT NULL,
  `Vacc31` tinyint(2) DEFAULT NULL,
  `Vacc32` tinyint(2) DEFAULT NULL,
  `Vacc33` tinyint(2) DEFAULT NULL,
  `Vacc34` tinyint(2) DEFAULT NULL,
  `Vacc35` tinyint(2) DEFAULT NULL,
  `Vacc36` tinyint(2) DEFAULT NULL,
  `Vacc37` tinyint(2) DEFAULT NULL,
  `Vacc38` tinyint(2) DEFAULT NULL,
  `Vacc39` tinyint(2) DEFAULT NULL,
  `Vacc40` tinyint(2) DEFAULT NULL,
  `Vacc41` tinyint(2) DEFAULT NULL,
  `Vacc42` tinyint(2) DEFAULT NULL,
  `Vacc43` tinyint(2) DEFAULT NULL,
  `Vacc44` tinyint(2) DEFAULT NULL,
  `Vacc45` tinyint(2) DEFAULT NULL,
  `Vacc46` tinyint(2) DEFAULT NULL,
  `Vacc47` tinyint(2) DEFAULT NULL,
  `Vacc48` tinyint(2) DEFAULT NULL,
  `Vacc49` tinyint(2) DEFAULT NULL,
  `Vacc50` tinyint(2) DEFAULT NULL,
  `Vacc51` tinyint(2) DEFAULT NULL,
  `Vacc52` tinyint(2) DEFAULT NULL,
  `Vacc53` tinyint(2) DEFAULT NULL,
  `Vacc54` tinyint(2) DEFAULT NULL,
  `Vacc55` tinyint(2) DEFAULT NULL,
  `Vacc56` tinyint(2) DEFAULT NULL,
  `Vacc57` tinyint(2) DEFAULT NULL,
  `Vacc58` tinyint(2) DEFAULT NULL,
  `Vacc59` tinyint(2) DEFAULT NULL,
  `Vacc60` tinyint(2) DEFAULT NULL,
  `Vacc61` tinyint(2) DEFAULT NULL,
  `Vacc62` tinyint(2) DEFAULT NULL,
  `Vacc63` tinyint(2) DEFAULT NULL,
  `Vacc64` tinyint(2) DEFAULT NULL,
  `Vacc65` tinyint(2) DEFAULT NULL,
  `Vacc66` tinyint(2) DEFAULT NULL,
  `Vacc67` tinyint(2) DEFAULT NULL,
  `Vacc68` tinyint(2) DEFAULT NULL,
  `Vacc69` tinyint(2) DEFAULT NULL,
  `Vacc70` tinyint(2) DEFAULT NULL,
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
