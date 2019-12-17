-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: chung19204768
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Applicant_applied_job`
--

DROP TABLE IF EXISTS `Applicant_applied_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Applicant_applied_job` (
  `jid` int(11) NOT NULL COMMENT 'Jod id',
  `aid` int(11) NOT NULL COMMENT 'Applicant id',
  PRIMARY KEY (`aid`,`jid`),
  KEY `jid3_idx` (`jid`),
  CONSTRAINT `aid3` FOREIGN KEY (`aid`) REFERENCES `Applicant_details` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jid3` FOREIGN KEY (`jid`) REFERENCES `Job_description_details` (`jid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applicant_applied_job`
--

LOCK TABLES `Applicant_applied_job` WRITE;
/*!40000 ALTER TABLE `Applicant_applied_job` DISABLE KEYS */;
INSERT INTO `Applicant_applied_job` VALUES (20,2),(21,2),(21,4),(22,1),(22,3),(22,7),(23,1),(23,3),(24,1),(24,6),(24,8),(25,4),(25,10),(26,7),(27,7),(28,7),(29,4),(29,6),(29,7),(30,6),(31,6),(31,8),(32,2),(32,6),(32,7),(32,8),(32,9),(32,11),(33,2),(33,6),(33,7),(33,8),(33,9),(33,11),(34,10),(35,10),(36,5),(36,10),(36,11),(37,5),(37,11);
/*!40000 ALTER TABLE `Applicant_applied_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Applicant_details`
--

DROP TABLE IF EXISTS `Applicant_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Applicant_details` (
  `aid` int(11) NOT NULL COMMENT 'applicant identifier',
  `firstname` varchar(30) NOT NULL COMMENT 'firstname',
  `surname` varchar(30) NOT NULL COMMENT 'surname',
  `a_address` varchar(45) NOT NULL COMMENT 'Applicant address',
  `a_phone` int(8) DEFAULT NULL COMMENT 'Applicant telephone number',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `phonenumber_UNIQUE` (`a_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applicant_details`
--

LOCK TABLES `Applicant_details` WRITE;
/*!40000 ALTER TABLE `Applicant_details` DISABLE KEYS */;
INSERT INTO `Applicant_details` VALUES (1,'Wing ki','Chung','Hong Kong',48573965),(2,'Ben','Chan','Taiwan',10295647),(3,'Mary','Wong','China',12345678),(4,'Dora','Chung','Macau',23456789),(5,'Vitoria','Tang','Korea',34567890),(6,'Jason','Tsang','Japan',13243654),(7,'Peter','Wu','Vietnam',47563847),(8,'Apple','Wong','Thailand',95746384),(9,'Orange','Siu','Malaysia',18273647),(10,'Banana','Lee','Singapore',59847589),(11,'Pineapple','Siu','Canada',45963745);
/*!40000 ALTER TABLE `Applicant_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Applicant_Skills`
--

DROP TABLE IF EXISTS `Applicant_Skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Applicant_Skills` (
  `aid` int(11) NOT NULL COMMENT 'Applicant id',
  `sid` int(11) NOT NULL COMMENT 'Skill id',
  PRIMARY KEY (`sid`,`aid`),
  KEY `aid54321_idx` (`aid`),
  CONSTRAINT `aid54321` FOREIGN KEY (`aid`) REFERENCES `Applicant_details` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sid54321` FOREIGN KEY (`sid`) REFERENCES `Skills` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applicant_Skills`
--

LOCK TABLES `Applicant_Skills` WRITE;
/*!40000 ALTER TABLE `Applicant_Skills` DISABLE KEYS */;
INSERT INTO `Applicant_Skills` VALUES (1,9001),(1,9002),(1,9003),(2,9002),(2,9003),(2,9005),(2,9112),(3,9003),(3,9008),(3,9009),(4,9002),(4,9005),(4,9006),(4,9112),(5,9003),(5,9111),(6,9001),(6,9002),(6,9003),(6,9004),(6,9005),(6,9009),(6,9100),(7,9002),(7,9003),(7,9005),(7,9007),(7,9008),(7,9009),(8,9003),(8,9004),(8,9005),(9,9003),(9,9005),(9,9100),(10,9003),(10,9004),(10,9005),(10,9007),(10,9008),(10,9111),(10,9113),(11,9111);
/*!40000 ALTER TABLE `Applicant_Skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hire`
--

DROP TABLE IF EXISTS `Hire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hire` (
  `jid` int(11) NOT NULL,
  `aid` int(11) NOT NULL COMMENT 'Applicant id ',
  `offer` varchar(45) NOT NULL,
  PRIMARY KEY (`jid`,`aid`),
  KEY `aid4321_idx` (`aid`),
  CONSTRAINT `aid4321` FOREIGN KEY (`aid`) REFERENCES `Interview_Details` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jid4321` FOREIGN KEY (`jid`) REFERENCES `Interview_Details` (`jid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hire`
--

LOCK TABLES `Hire` WRITE;
/*!40000 ALTER TABLE `Hire` DISABLE KEYS */;
INSERT INTO `Hire` VALUES (20,2,'Yes'),(21,2,'No'),(21,4,'Yes'),(22,3,'Yes'),(22,7,'Yes'),(23,3,'No'),(24,1,'Yes'),(24,6,'No'),(25,4,'Yes'),(26,7,'No'),(27,7,'Yes'),(28,7,'Yes'),(29,6,'Yes'),(29,7,'No'),(30,6,'No'),(31,6,'Yes'),(31,8,'No'),(32,2,'Yes'),(32,6,'No'),(32,7,'Yes'),(32,8,'No'),(32,9,'Yes'),(33,2,'Yes'),(33,6,'No'),(33,7,'Yes'),(33,8,'Yes'),(33,9,'No'),(34,10,'Yes'),(35,10,'Yes'),(36,10,'Yes'),(37,5,'Yes');
/*!40000 ALTER TABLE `Hire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interview_Details`
--

DROP TABLE IF EXISTS `Interview_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Interview_Details` (
  `jid` int(11) NOT NULL COMMENT 'Job id',
  `aid` int(11) NOT NULL,
  `i_Round` varchar(45) NOT NULL COMMENT 'Which round in multiple interview process',
  `i_date` date NOT NULL COMMENT 'interview date',
  `i_time` time NOT NULL COMMENT 'interview time',
  `i_Venue` varchar(45) NOT NULL COMMENT 'Interview venue',
  `i_Language` varchar(45) DEFAULT 'English' COMMENT 'Interview language',
  PRIMARY KEY (`jid`,`aid`,`i_Round`),
  KEY `aid1234_idx` (`aid`),
  KEY `jid1234_idx` (`jid`),
  CONSTRAINT `aid1234` FOREIGN KEY (`aid`) REFERENCES `Applicant_applied_job` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jid1234` FOREIGN KEY (`jid`) REFERENCES `Applicant_applied_job` (`jid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interview_Details`
--

LOCK TABLES `Interview_Details` WRITE;
/*!40000 ALTER TABLE `Interview_Details` DISABLE KEYS */;
INSERT INTO `Interview_Details` VALUES (20,2,'First round','2020-01-01','12:30:00','UCD Student Centre','English'),(21,2,'First round','2020-02-01','14:30:00','C1, Academic & Administration Building ','English'),(21,2,'Second round','2020-02-01','16:00:00','C1, Academic & Administration Building ','English'),(21,4,'First round','2020-02-01','14:30:00','C1, Academic & Administration Building ','English'),(21,4,'Second round','2020-02-01','16:00:00','C1, Academic & Administration Building ','English'),(22,3,'First round','2020-01-04','13:30:00','UCD Student Centre','English'),(22,3,'Second round','2020-01-05','12:30:00','UCD Student Centre','English'),(22,3,'Third round','2020-01-06','14:00:00','UCD Student Centre','English'),(22,7,'First round','2020-01-04','13:30:00','UCD Student Centre','English'),(22,7,'Second round','2020-01-05','12:30:00','UCD Student Centre','English'),(22,7,'Third round','2020-01-06','14:00:00','UCD Student Centre','English'),(23,3,'First round','2020-01-08','12:00:00','C4, T C Cheng Building','English'),(24,1,'First round','2020-01-10','15:30:00','C4, T C Cheng Building','English'),(24,1,'Second round','2020-01-10','15:30:00','C9, Sir Run Run Hall','Chinese'),(24,6,'First round','2020-01-10','15:30:00','C4, T C Cheng Building','English'),(24,6,'Second round','2020-01-10','15:30:00','C9, Sir Run Run Hall','Chinese'),(25,4,'First round','2020-01-01','16:00:00','Secretary\'s Office Conference Room','English'),(26,7,'First round','2020-01-11','15:00:00','Secretary\'s Office Conference Room','English'),(26,7,'Second round','2020-02-02','13:00:00','Secretary\'s Office Conference Room','English'),(27,7,'First round','2020-01-16','12:00:00','Henry Grattan Building','English'),(27,7,'Second round','2020-02-03','14:00:00','Henry Grattan Building','English'),(27,7,'Third round','2020-02-05','12:00:00','Henry Grattan Building','English'),(28,7,'First round','2020-01-14','12:00:00','Secretary\'s Office Conference Room','English'),(28,7,'Second round','2020-01-15','12:00:00','Secretary\'s Office Conference Room','English'),(29,6,'First round','2020-01-15','14:00:00','Stephen A. Schwarzman Centre','English'),(29,7,'First round','2020-01-15','14:00:00','Stephen A. Schwarzman Centre','English'),(30,6,'First round','2020-01-09','14:30:00','N101, 1/F, Core N','English'),(31,6,'First round','2020-01-03','12:00:00','Grand Hall, Lee Shau Kee Lecture Centre','Cantonese'),(31,8,'First round','2020-01-03','12:00:00','Grand Hall, Lee Shau Kee Lecture Centre','Cantonese'),(32,2,'First round','2020-01-07','14:40:00','Grand Hall, Lee Shau Kee Lecture Centre','English'),(32,6,'First round','2020-01-07','14:40:00','Grand Hall, Lee Shau Kee Lecture Centre','English'),(32,7,'First round','2020-01-07','14:40:00','Grand Hall, Lee Shau Kee Lecture Centre','English'),(32,8,'First round','2020-01-07','14:40:00','Grand Hall, Lee Shau Kee Lecture Centre','English'),(32,9,'First round','2020-01-07','14:40:00','Grand Hall, Lee Shau Kee Lecture Centre','English'),(33,2,'First round','2020-01-12','15:00:00','N101, 1/F, Core N','English'),(33,6,'First round','2020-01-12','15:00:00','N101, 1/F, Core N','English'),(33,7,'First round','2020-01-12','15:00:00','N101, 1/F, Core N','English'),(33,8,'First round','2020-01-12','15:00:00','N101, 1/F, Core N','English'),(33,9,'First round','2020-01-12','15:00:00','N101, 1/F, Core N','English'),(34,10,'First round','2020-01-04','16:00:00','LG1, Yeung Kin Man Academic Building','English'),(34,10,'Second round','2020-01-13','12:00:00','LG1, Yeung Kin Man Academic Building','English'),(35,10,'First round','2020-01-17','12:00:00','Stephen A. Schwarzman Centre','English'),(35,10,'Second round','2020-01-18','12:00:00','Stephen A. Schwarzman Centre','English'),(36,10,'First round','2020-01-02','12:00:00','N101, 1/F, Core N','English'),(37,5,'First round','2020-01-19','12:00:00','Yale Ctr Medical Informatics','English');
/*!40000 ALTER TABLE `Interview_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Job_description_details`
--

DROP TABLE IF EXISTS `Job_description_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Job_description_details` (
  `jid` int(11) NOT NULL COMMENT 'job identifier',
  `uid` int(11) NOT NULL COMMENT 'University id',
  `jtype` varchar(45) NOT NULL COMMENT 'type of job',
  PRIMARY KEY (`jid`),
  KEY `uid1_idx` (`uid`),
  CONSTRAINT `uid1` FOREIGN KEY (`uid`) REFERENCES `University_details` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Job_description_details`
--

LOCK TABLES `Job_description_details` WRITE;
/*!40000 ALTER TABLE `Job_description_details` DISABLE KEYS */;
INSERT INTO `Job_description_details` VALUES (20,820,'Law Tutor'),(21,824,'Law Tutor'),(22,820,'Research Assistant'),(23,821,'Research Assistant'),(24,821,'Computer Science Tutor'),(25,822,'Accountancy Tutor'),(26,822,'Senior Lecturer'),(27,823,'Senior Lecturer'),(28,822,'Skills Development Coach'),(29,828,'Skills Development Coach'),(30,826,'Student Recruitment Officer'),(31,825,'Public Relations and Media director'),(32,825,'Client Service Executive'),(33,826,'Client Service Executive'),(34,827,'Finance Analyst'),(35,828,'Finance Analyst'),(36,826,'Security Guard'),(37,829,'Security Guard');
/*!40000 ALTER TABLE `Job_description_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Job_required_skills`
--

DROP TABLE IF EXISTS `Job_required_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Job_required_skills` (
  `jid` int(11) NOT NULL COMMENT 'Job id',
  `sid` int(11) NOT NULL COMMENT 'Skill id',
  PRIMARY KEY (`jid`,`sid`),
  KEY `sid2_idx` (`sid`),
  CONSTRAINT `jid2` FOREIGN KEY (`jid`) REFERENCES `Job_description_details` (`jid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sid2` FOREIGN KEY (`sid`) REFERENCES `Skills` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Job_required_skills`
--

LOCK TABLES `Job_required_skills` WRITE;
/*!40000 ALTER TABLE `Job_required_skills` DISABLE KEYS */;
INSERT INTO `Job_required_skills` VALUES (24,9001),(20,9002),(21,9002),(24,9002),(25,9002),(26,9002),(27,9002),(28,9002),(29,9002),(22,9003),(23,9003),(24,9003),(30,9003),(31,9003),(32,9003),(33,9003),(36,9003),(37,9003),(30,9004),(31,9004),(36,9004),(26,9005),(27,9005),(28,9005),(29,9005),(30,9005),(31,9005),(32,9005),(33,9005),(34,9005),(35,9005),(25,9006),(27,9007),(28,9007),(34,9007),(35,9007),(22,9008),(23,9008),(26,9008),(27,9008),(22,9009),(23,9009),(26,9009),(27,9009),(29,9009),(30,9100),(36,9111),(37,9111),(20,9112),(21,9112),(34,9113),(35,9113);
/*!40000 ALTER TABLE `Job_required_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Skills`
--

DROP TABLE IF EXISTS `Skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Skills` (
  `sid` int(11) NOT NULL COMMENT 'Skill id ',
  `skills` varchar(45) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Skills`
--

LOCK TABLES `Skills` WRITE;
/*!40000 ALTER TABLE `Skills` DISABLE KEYS */;
INSERT INTO `Skills` VALUES (9001,'Programming'),(9002,'Teaching'),(9003,'Problem_Solving'),(9004,'Teamwork'),(9005,'Communication'),(9006,'Accounting'),(9007,'Analytical_Skills'),(9008,'Project_Management'),(9009,'Research'),(9100,'Interviewing'),(9111,'Physical Strength'),(9112,'Law knowledge'),(9113,'Financial Knowledge');
/*!40000 ALTER TABLE `Skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `University_details`
--

DROP TABLE IF EXISTS `University_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `University_details` (
  `uid` int(11) NOT NULL COMMENT 'university identifier',
  `uname` varchar(45) NOT NULL COMMENT 'university name',
  `uaddress` varchar(45) NOT NULL COMMENT 'University address',
  `uphone` int(7) DEFAULT NULL COMMENT 'University telephone number',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uphone_UNIQUE` (`uphone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `University_details`
--

LOCK TABLES `University_details` WRITE;
/*!40000 ALTER TABLE `University_details` DISABLE KEYS */;
INSERT INTO `University_details` VALUES (820,'UCD','Belfield',1234567),(821,'CUHK','Shatin',2384759),(822,'TCD','Ashfield',4958745),(823,'DCU','Belgrove',3847596),(824,'BU','Kowloon',2837495),(825,'HKU','Pokfulam',3847594),(826,'Poly','Hungham',283749),(827,'City','Kowloon Tong',3817289),(828,'Oxford',' OxfordOX1',1637845),(829,'Yale','New Haven',1827348);
/*!40000 ALTER TABLE `University_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'chung19204768'
--

--
-- Dumping routines for database 'chung19204768'
--
/*!50003 DROP PROCEDURE IF EXISTS `applicants_who_have_a_skill_required_by_a_given_job_identifier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `applicants_who_have_a_skill_required_by_a_given_job_identifier`(in job_id int(11))
BEGIN
select distinct ad.*
from Job_description_details jd,Job_required_skills jsk, Applicant_Skills ask, Applicant_details ad
where jd.jid = jsk.jid and jsk.sid = ask.sid and ask.aid = ad.aid and jd.jid = job_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `applicants_with_a_given_applicant_identifier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `applicants_with_a_given_applicant_identifier`(in applicant_id int(11))
BEGIN
select *
from Applicant_details ad
where ad.aid = applicant_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `applicants_with_a_given_surname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `applicants_with_a_given_surname`(in applicant_surname varchar(30))
BEGIN
select *
from Applicant_details ad
where ad.surname = applicant_surname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Applicant_applied_job` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_Applicant_applied_job`(in job_id int(11), in applicant_id int(11))
BEGIN
insert into Applicant_applied_job(jid, aid) 
values (job_id, applicant_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Applicant_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_Applicant_details`(in applicant_id int(11), in firstname varchar(30),
in surname varchar(30), in address varchar(45), in phone_number int(8))
BEGIN
insert into Applicant_details(aid, firstname, surname, a_address, a_phone) 
values (applicant_id, firstname, surname, address, phone_number);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Applicant_Skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_Applicant_Skills`(in applicant_id int(11), in skill_id int(11))
BEGIN
insert into Applicant_Skills(aid, sid) 
values (applicant_id, skill_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Hire` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_Hire`( in job_id int(11), in applicant_id int(11)
, in offer varchar(10))
BEGIN
insert into Hire(jid,aid,offer) 
values (job_id,applicant_id, offer);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Interview_Details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_Interview_Details`(in job_id int(11),in applicant_id int(11),
in interview_round varchar(45),in interview_date date, 
in interview_time time, in interview_Venue varchar(45), in interview_language varchar(45))
BEGIN
insert into Interview_Details(jid,aid,i_Round, i_date, i_time, i_Venue, i_Language ) 
values (job_id ,applicant_id, interview_round ,interview_date, interview_time, interview_Venue , 
interview_language);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Job_description_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_Job_description_details`(in job_id int(11),university_id int(11),
in job_type varchar(45))
BEGIN
insert into Job_description_details(jid, uid, jtype) 
values (job_id, university_id, job_type);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Job_required_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_Job_required_skills`(in job_id int(11), in skill_id int(11))
BEGIN
insert into Job_required_skills(jid, sid) 
values (job_id, skill_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_Skills`(in skill_id int(11), in skills varchar(45))
BEGIN
insert into Skills(sid, skills) 
values (skill_id, skills);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_University_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_University_details`(in university_id int(11), in university_name varchar(45),
in univeristy_address varchar(45), in university_phone_number int(7))
BEGIN
insert into University_details(uid, uname, uaddress, uphone) 
values (university_id, university_name, univeristy_address, university_phone_number);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `interviews_that_occurred_on_a_particular_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `interviews_that_occurred_on_a_particular_date`()
BEGIN
select *
from Interview_Details
where i_date = "2020-01-15";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `job_descriptions_requiring_a_given_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `job_descriptions_requiring_a_given_skill`(in skill varchar(45))
BEGIN
select jd.*,s1.skills
from Skills s, Job_required_skills jsk, Job_description_details jd, Skills s1, Job_required_skills jsk1
where s.sid = jsk.sid and jsk.jid = jd.jid and s.skills = skill and jsk1.jid = jd.jid and jsk1.sid = s1.sid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `job_sorted_according_to_the_universities_who_are_offering_them.` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `job_sorted_according_to_the_universities_who_are_offering_them.`()
BEGIN
select jd.jtype, ud.uname
from Job_description_details jd,University_details ud
where jd.uid = ud.uid
order by ud.uid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `name_and_id_of_applicants_interviewed_at_least_twice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `name_and_id_of_applicants_interviewed_at_least_twice`()
BEGIN
select ad.firstname, ad.surname, id.aid
from Applicant_details ad, Interview_Details id
where ad.aid = id.aid
group by id.aid
having count(distinct id.aid,id.jid)>=2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `number_of_applicants_that_have_been_offered_a_job` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `number_of_applicants_that_have_been_offered_a_job`()
BEGIN
select count(distinct aid)
from Hire h
where h.offer = "Yes";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `number_of_job_descriptions_that_require_research_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `number_of_job_descriptions_that_require_research_skills`()
BEGIN
select count(distinct jid)
from Job_required_skills jsk, Skills s
where jsk.sid = s.sid and s.skills = "Research";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `universities_with_a_given_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `universities_with_a_given_name`(in university_name varchar(45))
BEGIN
select *
from University_details ud
where ud.uname = university_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `universities_with_a_given_university_identifier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `universities_with_a_given_university_identifier`(university_id int(11))
BEGIN
select *
from University_details ud
where ud.uid = university_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-18 16:56:21
