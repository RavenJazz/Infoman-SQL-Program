-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: student
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `edu_background`
--

DROP TABLE IF EXISTS `edu_background`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_background` (
  `StudentID` varchar(8) NOT NULL,
  `Record_ID` int NOT NULL AUTO_INCREMENT,
  `Level` varchar(20) DEFAULT NULL,
  `School_Graduated` varchar(50) NOT NULL,
  `School_Address` varchar(50) DEFAULT NULL,
  `Sector` char(7) DEFAULT NULL,
  `YearGraduated` int NOT NULL,
  PRIMARY KEY (`Record_ID`,`StudentID`),
  KEY `fk_edu_background_studentid` (`StudentID`),
  CONSTRAINT `fk_edu_background_studentid` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_background`
--

LOCK TABLES `edu_background` WRITE;
/*!40000 ALTER TABLE `edu_background` DISABLE KEYS */;
INSERT INTO `edu_background` VALUES ('2026-001',1,'E','Quezon City Elem School','Quezon City','Public',2012),('2026-001',2,'HS','Quezon City National HS','Quezon City','Public',2018),('2026-002',4,'E','Manila Central Elem','Manila','Public',2011),('2026-002',5,'HS','Manila Science HS','Manila','Public',2017),('2026-003',7,'E','Pasig City Elem School','Pasig City','Public',2013),('2026-003',8,'HS','Pasig City National HS','Pasig City','Public',2019),('2026-004',10,'E','QC Pilot Elem School','Quezon City','Public',2010),('2026-004',11,'HS','QC Science HS','Quezon City','Public',2016),('2026-005',13,'E','Makati Elem School','Makati City','Public',2012),('2026-005',14,'HS','Makati Science HS','Makati City','Public',2018),('2026-006',16,'E','Caloocan Elem School','Caloocan','Public',2012),('2026-006',17,'HS','Caloocan National HS','Caloocan','Public',2018),('2026-007',19,'E','Las Pinas Elem School','Las Pinas','Public',2013),('2026-007',20,'HS','Las Pinas National HS','Las Pinas','Public',2019),('2026-008',22,'E','Valenzuela Elem School','Valenzuela','Public',2009),('2026-008',23,'HS','Valenzuela National HS','Valenzuela','Public',2015),('2026-009',25,'E','Muntinlupa Elem School','Muntinlupa','Public',2013),('2026-009',26,'HS','Muntinlupa National HS','Muntinlupa','Public',2019),('2026-010',28,'E','Paranaque Elem School','Paranaque','Public',2011),('2026-010',29,'HS','Paranaque National HS','Paranaque','Public',2017);
/*!40000 ALTER TABLE `edu_background` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `med_consultations`
--

DROP TABLE IF EXISTS `med_consultations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `med_consultations` (
  `StudentID` varchar(8) NOT NULL,
  `Consult_ID` int NOT NULL AUTO_INCREMENT,
  `PrevConsult` char(15) DEFAULT NULL,
  `ConsultDate` date DEFAULT NULL,
  `ConsultPurpose` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Consult_ID`,`StudentID`),
  KEY `fk_med_consultations_studentid` (`StudentID`),
  CONSTRAINT `fk_med_consultations_studentid` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `med_consultations`
--

LOCK TABLES `med_consultations` WRITE;
/*!40000 ALTER TABLE `med_consultations` DISABLE KEYS */;
INSERT INTO `med_consultations` VALUES ('2026-001',1,'PT','2025-11-10','Stress Management'),('2026-001',2,'C','2026-02-18','Emotional Concerns'),('2026-002',3,'PT','2026-01-05','Anxiety'),('2026-002',4,'C','2026-02-20','Career Guidance'),('2026-003',5,'PC','2025-09-20','Stress'),('2026-003',6,'PT','2026-02-10','Frequent Stress'),('2026-003',7,'C','2026-03-01','Academic Counseling'),('2026-004',8,'PT','2026-01-12','Anxiety'),('2026-004',9,'C','2026-03-05','Academic Counseling'),('2026-005',10,'PC','2026-01-15','Insomnia'),('2026-005',11,'PT','2026-02-28','Therapy'),('2026-005',12,'C','2026-03-10','Family Concerns'),('2026-006',13,'C','2026-01-28','Academic Counseling'),('2026-006',14,'PT','2026-03-07','Depression'),('2026-007',15,'C','2026-01-23','Career Guidance'),('2026-008',16,'PC','2025-12-29','Sleep Disorder'),('2026-008',17,'C','2026-02-17','Behavioral Concerns'),('2026-009',18,'PT','2026-02-02','Social Anxiety'),('2026-009',19,'C','2026-03-09','Family Concerns'),('2026-010',20,'C','2025-12-19','Hypertension Check'),('2026-010',21,'C','2026-02-25','Stress Management');
/*!40000 ALTER TABLE `med_consultations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents` (
  `StudentID` varchar(8) NOT NULL,
  `Parents_ID` int NOT NULL AUTO_INCREMENT,
  `Parents_Name` varchar(30) NOT NULL,
  `Relationship` char(6) DEFAULT NULL,
  `Parents_Age` int DEFAULT NULL,
  `Parents_EducAttainment` varchar(15) DEFAULT NULL,
  `Parents_Occupation` varchar(20) DEFAULT NULL,
  `Parents_VitalStatus` char(8) DEFAULT NULL,
  PRIMARY KEY (`Parents_ID`,`StudentID`),
  KEY `fk_parents_studentid` (`StudentID`),
  CONSTRAINT `fk_parents_studentid` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` VALUES ('2026-001',1,'Jose Santos','Father',48,'High School','Tricycle Driver','Living'),('2026-001',2,'Elena Santos','Mother',45,'College','Housewife','Living'),('2026-002',3,'Roberto Reyes','Father',50,'College','Security Guard','Living'),('2026-002',4,'Liza Reyes','Mother',47,'High School','Vendor','Living'),('2026-003',5,'Ramon Villanueva','Father',52,'Elementary','Farmer','Living'),('2026-003',6,'Gina Villanueva','Mother',49,'High School','Housewife','Living'),('2026-004',7,'Arturo Cruz','Father',55,'College','OFW (Driver)','Living'),('2026-004',8,'Teresa Cruz','Mother',50,'College','Housewife','Living'),('2026-005',9,'Nestor Dela Cruz','Father',49,'College','Construction Worker','Living'),('2026-005',10,'Felicity Dela Cruz','Mother',46,'College','Business Owner','Living'),('2026-006',11,'Eduardo Garcia','Father',50,'High School','Jeepney Driver','Living'),('2026-006',12,'Rosa Garcia','Mother',47,'College','Teacher','Living'),('2026-007',13,'Marco Mendoza','Father',52,'College','Engineer','Living'),('2026-007',14,'Luz Mendoza','Mother',48,'College','Nurse','Living'),('2026-008',15,'Antonio Torres','Father',58,'High School','Retired','Deceased'),('2026-008',16,'Carla Torres','Mother',53,'College','Government Employee','Living'),('2026-009',17,'Domingo Ramos','Father',45,'High School','Fisherman','Living'),('2026-009',18,'Evelyn Ramos','Mother',43,'High School','Housewife','Living'),('2026-010',19,'Rodrigo Flores','Father',52,'College','Accountant','Living'),('2026-010',20,'Linda Flores','Mother',49,'College','Admin Officer','Living');
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `StudentID` varchar(8) NOT NULL,
  `Date` date DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Age` int NOT NULL,
  `CivilStatus` char(2) DEFAULT NULL,
  `Course` varchar(10) NOT NULL,
  `Year` int NOT NULL,
  `Section` varchar(2) NOT NULL,
  `Religion` varchar(50) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `Birthplace` varchar(20) DEFAULT NULL,
  `Height_m` int DEFAULT NULL,
  `Weight_kg` int DEFAULT NULL,
  `CityAddress` varchar(30) DEFAULT NULL,
  `ProvincialAddress` varchar(30) DEFAULT NULL,
  `EmailAddress` varchar(50) NOT NULL,
  `MobileNum` varchar(11) NOT NULL,
  `TelephoneNum` varchar(10) DEFAULT NULL,
  `HS_GenAve` decimal(5,2) DEFAULT NULL,
  `FinancesSchool` char(10) DEFAULT NULL,
  `EC_Name` varchar(30) NOT NULL,
  `EC_Address` varchar(50) DEFAULT NULL,
  `EC_Relationship` char(15) DEFAULT NULL,
  `EC_ContactNum` varchar(11) NOT NULL,
  `NatureOfSchooling` char(11) DEFAULT NULL,
  `ParentsMaritalRS` varchar(20) DEFAULT NULL,
  `NoOfSiblings` int DEFAULT NULL,
  `OrdinalPosition` varchar(4) DEFAULT NULL,
  `NoOfSiblingsEmployed` int DEFAULT NULL,
  `SiblingsSupportFam` char(3) DEFAULT NULL,
  `SiblingsSupportStudies` char(3) DEFAULT NULL,
  `SiblingsSupportOwnFam` char(3) DEFAULT NULL,
  `WeeklyAllowance` decimal(7,2) DEFAULT NULL,
  `TotalMonthlyIncome` decimal(8,2) DEFAULT NULL,
  `QuietPlaceToStudy` char(3) DEFAULT NULL,
  `ShareRoom` char(3) DEFAULT NULL,
  `ShareRoomWith` varchar(10) DEFAULT NULL,
  `ResidenceWhileStudying` varchar(20) DEFAULT NULL,
  `VisionProb` char(3) NOT NULL,
  `HearingProb` char(3) NOT NULL,
  `SpeechProb` char(3) NOT NULL,
  `GenHealthProb` char(3) NOT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('2026-001','2026-03-15','Santos, Maria Angelica','F',19,'S','BSIT',2,'01','Roman Catholic','2006-02-10','Manila',155,52,'Quezon City','San Pablo, Laguna','mariasantos@gmail.com','09171234567',NULL,90.00,'P','Jose Santos','Quezon City','Father','09181234567','C','MS',3,'2nd',1,'Yes','Yes','No',1500.00,18000.00,'No','Yes','Siblings','Rented Apartment','No','No','No','Yes'),('2026-002','2026-03-16','Reyes, John Mark','M',21,'S','BSBA',3,'02','Iglesia ni Cristo','2004-07-22','Tarlac City',170,68,'Manila','Tarlac City','johnreyes@yahoo.com','09192345678',NULL,85.00,'P','Liza Reyes','Manila','Mother','09202345678','C','MS',2,'1st',1,'Yes','No','Yes',2000.00,25000.00,'Yes','No',NULL,'Family Home','No','No','No','No'),('2026-003','2026-03-15','Villanueva, Carla Mae','F',18,'S','BSED',1,'03','Roman Catholic','2007-05-14','Batangas',158,50,'Pasig City','Batangas','carla.villanueva@gmail.com','09213456789',NULL,88.00,'Sch','Gina Villanueva','Pasig City','Mother','09212345678','C','MS',4,'3rd',2,'Yes','No','Yes',1200.00,15000.00,'No','Yes','Sister','Dorm','No','No','No','No'),('2026-004','2026-03-16','Cruz, Kevin Paolo','M',22,'S','BSCS',4,'01','Born Again Christian','2003-09-12','Nueva Ecija',175,72,'Quezon City','Nueva Ecija','kp.cruz@gmail.com','09223456789',NULL,92.00,'P','Teresa Cruz','Quezon City','Mother','09234567891','C','MSE',1,'1st',0,'No','No','No',3000.00,60000.00,'Yes','No',NULL,'Family Home','No','No','No','No'),('2026-005','2026-03-16','Dela Cruz, Princess Anne','F',20,'S','BSN',2,'04','Roman Catholic','2005-04-26','Pampanga',160,55,'Makati City','Pampanga','p.anne@gmail.com','09245678910',NULL,87.00,'S','Felicity Dela Cruz','Makati City','Mother','09256789101','C','MS',5,'4th',2,'Yes','No','Yes',1000.00,20000.00,'No','Yes','2 Siblings','Rented Apartment','No','No','No','Yes'),('2026-006','2026-03-17','Garcia, Luis Miguel','M',20,'S','BSIT',3,'01','Roman Catholic','2005-07-02','Cebu City',172,65,'Caloocan City','Cebu City','luis.garcia@gmail.com','09301234567',NULL,83.00,'P','Rosa Garcia','Caloocan City','Mother','09311234567','C','MS',2,'1st',1,'Yes','Yes','No',1800.00,22000.00,'Yes','No',NULL,'Family Home','No','No','No','No'),('2026-007','2026-03-18','Mendoza, Angela Claire','F',19,'S','BSA',2,'02','Roman Catholic','2006-07-02','Davao City',162,53,'Las Pinas','Davao City','angela.mendoza@gmail.com','09321234567',NULL,89.00,'P','Marco Mendoza','Las Pinas','Father','09331234567','C','MS',3,'2nd',1,'Yes','Yes','No',1300.00,16000.00,'No','Yes','Siblings','Dorm','No','No','No','No'),('2026-008','2026-03-17','Torres, Rafael Andres','M',23,'S','BSME',4,'02','Born Again Christian','2002-09-12','Iloilo City',178,75,'Valenzuela','Iloilo City','rafael.torres@gmail.com','09341234567',NULL,86.00,'Sch','Carla Torres','Valenzuela','Mother','09351234567','C','SP',1,'1st',1,'No','Yes','No',2500.00,30000.00,'Yes','No',NULL,'Family Home','No','No','No','No'),('2026-009','2026-03-18','Ramos, Jessa Marie','F',18,'S','BSED',1,'01','Iglesia ni Cristo','2007-08-14','Cagayan de Oro',157,48,'Muntinlupa','Cagayan de Oro','jessa.ramos@gmail.com','09361234567',NULL,91.00,'P','Domingo Ramos','Muntinlupa','Father','09371234567','C','MS',4,'3rd',0,'No','No','Yes',900.00,12000.00,'No','Yes','Siblings','Rented Apartment','No','No','No','No'),('2026-010','2026-03-19','Flores, Marco Antonio','M',21,'S','BSCS',3,'03','Roman Catholic','2004-07-02','Bacolod City',169,62,'Paranaque','Bacolod City','marco.flores@gmail.com','09381234567',NULL,84.00,'P','Linda Flores','Paranaque','Mother','09391234567','C','MS',2,'2nd',1,'Yes','Yes','No',2200.00,28000.00,'Yes','No',NULL,'Family Home','No','No','No','Yes');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `TestName` varchar(10) NOT NULL,
  `TestDesc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TestName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES ('ACET','Ateneo College Entrance Test'),('DCAT','De La Salle College Admission Test'),('LSAT','Law School Admission Test'),('NCAE','National Career Assessment Examination'),('NMAT','National Medical Admission Test'),('PUPCET','PUP College Entrance Test'),('UPCAT','UP College Admission Test'),('USTET','University of Santo Tomas Entrance Test');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_results`
--

DROP TABLE IF EXISTS `test_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_results` (
  `StudentID` varchar(10) NOT NULL,
  `TestName` varchar(10) NOT NULL,
  `TestDate` date DEFAULT NULL,
  `RawScore` int DEFAULT NULL,
  `PercentileRank` int DEFAULT NULL,
  PRIMARY KEY (`TestName`,`StudentID`),
  KEY `fk_test_results_studentid` (`StudentID`),
  CONSTRAINT `fk_test_results_studentid` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  CONSTRAINT `fk_test_results_testname` FOREIGN KEY (`TestName`) REFERENCES `test` (`TestName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_results`
--

LOCK TABLES `test_results` WRITE;
/*!40000 ALTER TABLE `test_results` DISABLE KEYS */;
INSERT INTO `test_results` VALUES ('2026-002','ACET','2025-11-15',82,75),('2026-005','ACET','2025-11-28',89,86),('2026-007','ACET','2025-11-14',92,91),('2026-003','DCAT','2025-11-10',83,78),('2026-007','DCAT','2025-12-04',88,85),('2026-010','DCAT','2025-11-11',85,80),('2026-006','NCAE','2025-10-30',91,88),('2026-009','NCAE','2025-10-28',89,87),('2026-010','NMAT','2025-12-09',77,69),('2026-001','PUPCET','2025-10-12',85,80),('2026-002','PUPCET','2025-10-20',76,68),('2026-003','PUPCET','2025-09-30',80,72),('2026-004','PUPCET','2025-10-05',90,89),('2026-005','PUPCET','2025-10-25',84,79),('2026-006','PUPCET','2025-10-18',78,70),('2026-007','PUPCET','2025-10-02',86,82),('2026-008','PUPCET','2025-10-10',74,65),('2026-009','PUPCET','2025-10-08',93,92),('2026-010','PUPCET','2025-10-15',81,76),('2026-001','UPCAT','2025-11-25',88,84),('2026-004','UPCAT','2025-11-18',87,83),('2026-009','UPCAT','2025-11-21',95,94),('2026-003','USTET','2025-12-05',86,81),('2026-005','USTET','2025-10-12',81,74),('2026-008','USTET','2025-11-19',79,71);
/*!40000 ALTER TABLE `test_results` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-22 13:04:22
