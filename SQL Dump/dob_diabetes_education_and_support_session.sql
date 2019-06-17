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
-- Table structure for table `diabetes_education_and_support_session`
--

DROP TABLE IF EXISTS `diabetes_education_and_support_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diabetes_education_and_support_session` (
  `Patient_ID` int(11) NOT NULL,
  `Session_Date` date DEFAULT NULL,
  `Initial_Level_Of_Confidence_Blood_Sugar` varchar(255) DEFAULT NULL,
  `Initial_Level_Of_Confidence_Weight_Control` varchar(255) DEFAULT NULL,
  `Initial_Level_Of_Confidence_Medication` varchar(255) DEFAULT NULL,
  `Initial_Level_Of_Confidence_Exercise` varchar(255) DEFAULT NULL,
  `Post_Session_Level_Of_Confidence` varchar(255) DEFAULT NULL,
  `Frequency_Of_Dental_Care` varchar(255) DEFAULT NULL,
  `Frequency_Of_Foot_Care` varchar(255) DEFAULT NULL,
  `Frequency_Of_Eye_Care` varchar(255) DEFAULT NULL,
  `Diabetic_Primary_Care_Visits` varchar(255) DEFAULT NULL,
  `Diabetic_Emergency_Room_Visits` varchar(255) DEFAULT NULL,
  `Diabetic_Hospital_Visits` varchar(255) DEFAULT NULL,
  `Exercise_Behaviors` varchar(255) DEFAULT NULL,
  `Exerrcise_Barriers` varchar(255) DEFAULT NULL,
  `Exercise_Recommendations` varchar(255) DEFAULT NULL,
  `Exercise_Intervention` varchar(255) DEFAULT NULL,
  `Blood_Glucose_Monitoring_Behaviors` varchar(255) DEFAULT NULL,
  `Blood_Glucose_Monitoring_Barriers` varchar(255) DEFAULT NULL,
  `Blood_Glucose_Monitoring_Recommendations` varchar(255) DEFAULT NULL,
  `Blood_Glucose_Monitoring_Intervention` varchar(255) DEFAULT NULL,
  `Foot_Exam_Behaviors` varchar(255) DEFAULT NULL,
  `Foot_Exam__Barriers` varchar(255) DEFAULT NULL,
  `Foot_Exam__Recommendations` varchar(255) DEFAULT NULL,
  `Foot_Exam__Intervention` varchar(255) DEFAULT NULL,
  `Nutrition_Behaviors` varchar(255) DEFAULT NULL,
  `Nutrition_Barriers` varchar(255) DEFAULT NULL,
  `Nutrition__Recommendations` varchar(255) DEFAULT NULL,
  `Nutrition__Intervention` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`),
  KEY `CompositeDESS` (`Patient_ID`,`Session_Date`),
  CONSTRAINT `diabetes_education_and_support_session_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diabetes_education_and_support_session`
--

LOCK TABLES `diabetes_education_and_support_session` WRITE;
/*!40000 ALTER TABLE `diabetes_education_and_support_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `diabetes_education_and_support_session` ENABLE KEYS */;
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
