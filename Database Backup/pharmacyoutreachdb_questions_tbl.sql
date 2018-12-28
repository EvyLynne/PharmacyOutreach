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
-- Table structure for table `questions_tbl`
--

DROP TABLE IF EXISTS `questions_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `questions_tbl` (
  `idQuestionsTbl` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `SessionID` int(11) NOT NULL,
  `q1` varchar(200) DEFAULT NULL,
  `q2` varchar(200) DEFAULT NULL,
  `q3` varchar(200) DEFAULT NULL,
  `q4` varchar(200) DEFAULT NULL,
  `q5` varchar(200) DEFAULT NULL,
  `a1` varchar(200) DEFAULT NULL,
  `a2` varchar(200) DEFAULT NULL,
  `a3` varchar(200) DEFAULT NULL,
  `a4` varchar(200) DEFAULT NULL,
  `a5` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idQuestionsTbl`,`Date`,`SessionID`),
  UNIQUE KEY `idQuestionsTbl_UNIQUE` (`idQuestionsTbl`),
  KEY `fk_questions` (`SessionID`),
  CONSTRAINT `fk_questions` FOREIGN KEY (`SessionID`) REFERENCES `session_tbl` (`idsessiontbl`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_tbl`
--

LOCK TABLES `questions_tbl` WRITE;
/*!40000 ALTER TABLE `questions_tbl` DISABLE KEYS */;
INSERT INTO `questions_tbl` VALUES (1,'2018-09-16',2,'How did you hear about the support group?','How helpful was today’s session?','Do you feel that attending these sessions has helped you understand and manage your\nown condition better?','Are there any other health benefits you have experienced from attending these sessions? ','What would you like covered in future sessions?','My Answer 1','My Answer 2','My Answer 3','My Answer 4','My Answer 5'),(2,'2018-09-16',1,'How did you hear about the support group?','How helpful was today’s session?','Do you feel that attending these sessions has helped you understand and manage your\nown condition better?','Are there any other health benefits you have experienced from attending these sessions? ','What would you like covered in future sessions?','My Answer 1','My Answer 2','My Answer 3','My Answer 4','My Answer 5'),(3,'2018-09-16',3,'How did you hear about the support group?','How helpful was today’s session?','Do you feel that attending these sessions has helped you understand and manage your\nown condition better?','Are there any other health benefits you have experienced from attending these sessions? ','What would you like covered in future sessions?','My Answer 1','My Answer 2','My Answer 3','My Answer 4','My Answer 5'),(4,'2018-09-16',4,'How did you hear about the support group?','How helpful was today’s session?','Do you feel that attending these sessions has helped you understand and manage your\nown condition better?','Are there any other health benefits you have experienced from attending these sessions? ','What would you like covered in future sessions?','My Answer 1','My Answer 2','My Answer 3','My Answer 4','My Answer 5');
/*!40000 ALTER TABLE `questions_tbl` ENABLE KEYS */;
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
