CREATE DATABASE  IF NOT EXISTS `cs157a_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cs157a_project`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cs157a_project
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Hired date` date DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `Phone` varchar(60) DEFAULT NULL,
  `Job Title` varchar(50) DEFAULT NULL,
  `DepartmentTaskID` int DEFAULT NULL,
  `Group ID` int DEFAULT NULL,
  `Department ID` int DEFAULT NULL,
  `SalaryID` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE KEY `EmployeeID` (`EmployeeID`),
  KEY `DepartmentTaskID` (`DepartmentTaskID`),
  KEY `Group ID` (`Group ID`),
  KEY `Department ID` (`Department ID`),
  KEY `SalaryID` (`SalaryID`),
  CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`DepartmentTaskID`) REFERENCES `department task` (`DepartmentTaskID`),
  CONSTRAINT `Employee_ibfk_2` FOREIGN KEY (`Group ID`) REFERENCES `group` (`GroupID`),
  CONSTRAINT `Employee_ibfk_3` FOREIGN KEY (`Department ID`) REFERENCES `department` (`DepartmentID`),
  CONSTRAINT `Employee_ibfk_4` FOREIGN KEY (`SalaryID`) REFERENCES `salary` (`SalaryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Larry Gibs','1998-12-05','2005-02-03','larrygibs@gmail.com','925-456-2653','Plumber',13579,3,222,1),(2,'Dhruv Sanchez','2000-12-11','2020-01-01','Dhruvsanchez@gmail.com','111-222-3333','Plumber',13579,3,222,1),(3,'Kacie Knowles','1980-09-09','2000-08-01','KacieKnowles@gmail.com','222-444-6665','Gardener',12345,1,111,3),(4,'Luke Bray','1990-11-20','2010-07-08','LBray@gmail.com','123-456-7890','Gardener',12345,1,111,2),(5,'Joyce Walter','2000-08-08','2020-07-05','JoyWalt123@gmail.com','861-902-4567','Regular employee',24680,2,333,1),(6,'Keyaan Vazquez','1990-04-02','2005-09-09','Keyaan789@gmail.com','432-698-0980','Regular Employee',24680,2,333,2);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 17:14:13
