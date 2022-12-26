-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: jhu315.c8pmcuhtcbcz.us-east-1.rds.amazonaws.com    Database: jhu_315_final_project
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Unemployed_Occupation_By_Gender`
--

DROP TABLE IF EXISTS `Unemployed_Occupation_By_Gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Unemployed_Occupation_By_Gender` (
  `Occupation` varchar(40) NOT NULL,
  `Total_2019` float DEFAULT NULL,
  `Total_2020` float DEFAULT NULL,
  `Men_2019` float DEFAULT NULL,
  `Men_2020` float DEFAULT NULL,
  `Women_2019` float DEFAULT NULL,
  `Women_2020` float DEFAULT NULL,
  PRIMARY KEY (`Occupation`),
  CONSTRAINT `Unemployed_Occupation_By_Gender_chk_1` CHECK ((`Total_2019` >= 0)),
  CONSTRAINT `Unemployed_Occupation_By_Gender_chk_2` CHECK ((`Total_2020` >= 0)),
  CONSTRAINT `Unemployed_Occupation_By_Gender_chk_3` CHECK ((`Men_2019` >= 0)),
  CONSTRAINT `Unemployed_Occupation_By_Gender_chk_4` CHECK ((`Men_2020` >= 0)),
  CONSTRAINT `Unemployed_Occupation_By_Gender_chk_5` CHECK ((`Women_2019` >= 0)),
  CONSTRAINT `Unemployed_Occupation_By_Gender_chk_6` CHECK ((`Women_2020` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Unemployed_Occupation_By_Gender`
--

LOCK TABLES `Unemployed_Occupation_By_Gender` WRITE;
/*!40000 ALTER TABLE `Unemployed_Occupation_By_Gender` DISABLE KEYS */;
INSERT INTO `Unemployed_Occupation_By_Gender` VALUES ('Building_and_grounds_cleaning',5.1,10.9,5.6,9.4,4.4,13.1),('Construction_and_extraction',5.2,10.1,5.1,10,6.1,10.6),('Farming_fishing_and_forestry',9.6,10.3,7.7,8.4,14.8,15.7),('Food_preparation_and_serving',5.5,19.6,6.1,20.8,5,18.5),('Healthcare_support',3.1,7.3,2.8,7.5,3.2,7.3),('Installation_maintenance_and_repair',2.6,6.4,2.5,6.2,3.7,10.9),('Management_business_financial_operations',1.8,4.1,1.7,3.8,2,4.4),('Office_and_administrative_support',3.6,7.3,4.3,7.9,3.3,7.1),('Personal_care',3.9,16,4.4,17.5,3.7,15.5),('Production',3.9,9,3.7,8.5,4.5,10),('Professional',2.1,4.9,2,4.6,2.2,5.1),('Protective_service',2.9,5.1,2.3,3.9,4.8,8.7),('Sales ',3.8,8.8,2.9,6.9,4.7,10.8),('Total',3.7,8.1,3.7,7.8,3.6,8.3),('Transportation_and_material_moving ',4.7,11.1,4.5,10.6,5.4,13.2);
/*!40000 ALTER TABLE `Unemployed_Occupation_By_Gender` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-26 14:29:42
