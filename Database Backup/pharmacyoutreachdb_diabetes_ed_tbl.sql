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
-- Table structure for table `diabetes_ed_tbl`
--

DROP TABLE IF EXISTS `diabetes_ed_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diabetes_ed_tbl` (
  `PatientID` int(10) unsigned NOT NULL,
  `Date` date NOT NULL,
  `Confidence1Sugar` varchar(200) DEFAULT NULL,
  `Confidence1Weight` varchar(200) DEFAULT NULL,
  `Confidence1Meds` varchar(200) DEFAULT NULL,
  `Confidence1Exercise` varchar(200) DEFAULT NULL,
  `Confidence2Sugar` varchar(200) DEFAULT NULL,
  `Confidence2Weight` varchar(200) DEFAULT NULL,
  `Confidence2Meds` varchar(200) DEFAULT NULL,
  `Confidence2Exercise` varchar(200) DEFAULT NULL,
  `Dental` int(11) DEFAULT NULL,
  `Foot` int(11) DEFAULT NULL,
  `Eye` int(11) DEFAULT NULL,
  `PCPVisits` int(11) DEFAULT NULL,
  `ERVisits` int(11) DEFAULT NULL,
  `Hospital` int(11) DEFAULT NULL,
  `ExerciseBehaviors` varchar(200) DEFAULT NULL,
  `ExerciseBarriers` varchar(200) DEFAULT NULL,
  `ExerciseRecommendations` varchar(200) DEFAULT NULL,
  `ExerciseIntervention` varchar(200) DEFAULT NULL,
  `MonitoringBehaviors` varchar(200) DEFAULT NULL,
  `MonitoringBarriers` varchar(200) DEFAULT NULL,
  `MonitoringRecommendations` varchar(200) DEFAULT NULL,
  `MonitoringIntervention` varchar(200) DEFAULT NULL,
  `FootBehaviors` varchar(200) DEFAULT NULL,
  `FootBarriers` varchar(200) DEFAULT NULL,
  `FootIntervention` varchar(200) DEFAULT NULL,
  `FootRecommendations` varchar(200) DEFAULT NULL,
  `NutritionBehaviors` varchar(200) DEFAULT NULL,
  `NutritionBarriers` varchar(200) DEFAULT NULL,
  `NutritionRecommendations` varchar(200) DEFAULT NULL,
  `NutritionIntervention` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PatientID`,`Date`),
  UNIQUE KEY `idDiabetesEDTbl_UNIQUE` (`PatientID`),
  CONSTRAINT `fk_diabetes` FOREIGN KEY (`PatientID`) REFERENCES `patients_tbl` (`idpatientstbl`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diabetes_ed_tbl`
--

LOCK TABLES `diabetes_ed_tbl` WRITE;
/*!40000 ALTER TABLE `diabetes_ed_tbl` DISABLE KEYS */;
INSERT INTO `diabetes_ed_tbl` VALUES (1,'2018-10-31','Strongly Agree','Agree','Disagree','Strongly Agree','Strongly Agree','Agree','Agree','Disagree',1,2,1,1,2,0,'Inadequate physical activity','Attitude towards excercise','Exercise Guidelines Review','Exercise Guidelines Review','Level of understanding BG monitoring','Mobility/Dexterity/Vision Issues','Go to the doctor','Review recommended BG schedule','Attitude towards foot exams','Mobility/Dexterity/Vision Issues','Review foot exam technique','See the doctor','Adequate intake (fruit and vegetables)','Inadequate dietary information/understanding','see the doctor','Carbohydrate counting education'),(2,'2018-10-31','Disagree','Agree','Strongly Agree','Agree','Attitude towards excercise','Inadequate physical activity','Exercise Guidelines Review','Exercise Guidelines Review',2,0,3,2,3,2,'Inadequate physical activity','Attitude towards excercise','Exercise Guidelines Review','Exercise Guidelines Review','Level of understanding BG monitoring','Mobility/Dexterity/Vision Issues','Go to the doctor','Review recommended BG schedule','Attitude towards foot exams','Mobility/Dexterity/Vision Issues','Review foot exam technique','See the doctor','Adequate intake (fruit and vegetables)','Inadequate dietary information/understanding','see the doctor','Carbohydrate counting education'),(3,'2018-09-16','Disagree','Agree','Strongly Agree','Agree','Attitude towards excercise','Inadequate physical activity','Exercise Guidelines Review','Exercise Guidelines Review',2,0,3,2,3,2,'Inadequate physical activity','Attitude towards excercise','Exercise Guidelines Review','Exercise Guidelines Review','Level of understanding BG monitoring','Mobility/Dexterity/Vision Issues','Go to the doctor','Review recommended BG schedule','Attitude towards foot exams','Mobility/Dexterity/Vision Issues','Review foot exam technique','See the doctor','Adequate intake (fruit and vegetables)','Inadequate dietary information/understanding','see the doctor','Carbohydrate counting education');
/*!40000 ALTER TABLE `diabetes_ed_tbl` ENABLE KEYS */;
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
