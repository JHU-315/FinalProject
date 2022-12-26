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
-- Table structure for table `Multiple_Job_Holders_by_Age_Gender`
--

DROP TABLE IF EXISTS `Multiple_Job_Holders_by_Age_Gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Multiple_Job_Holders_by_Age_Gender` (
  `Age_Group` varchar(50) NOT NULL,
  `Total_2019` int DEFAULT NULL,
  `Total_2020` int DEFAULT NULL,
  `Men_2019` int DEFAULT NULL,
  `Men_2020` int DEFAULT NULL,
  `Women_2019` int DEFAULT NULL,
  `Women_2020` int DEFAULT NULL,
  PRIMARY KEY (`Age_Group`),
  CONSTRAINT `Multiple_Job_Holders_by_Age_Gender_chk_1` CHECK ((`Total_2019` >= 0)),
  CONSTRAINT `Multiple_Job_Holders_by_Age_Gender_chk_2` CHECK ((`Total_2020` >= 0)),
  CONSTRAINT `Multiple_Job_Holders_by_Age_Gender_chk_3` CHECK ((`Men_2019` >= 0)),
  CONSTRAINT `Multiple_Job_Holders_by_Age_Gender_chk_4` CHECK ((`Men_2020` >= 0)),
  CONSTRAINT `Multiple_Job_Holders_by_Age_Gender_chk_5` CHECK ((`Women_2019` >= 0)),
  CONSTRAINT `Multiple_Job_Holders_by_Age_Gender_chk_6` CHECK ((`Women_2020` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Multiple_Job_Holders_by_Age_Gender`
--

LOCK TABLES `Multiple_Job_Holders_by_Age_Gender` WRITE;
/*!40000 ALTER TABLE `Multiple_Job_Holders_by_Age_Gender` DISABLE KEYS */;
INSERT INTO `Multiple_Job_Holders_by_Age_Gender` VALUES ('16_to_19_years',201,155,82,63,119,92),('20_to_24_years',769,548,297,202,472,346),('25_to_54_years',5365,4551,2634,2253,2731,2299),('55_to_64_years',1275,1058,646,529,628,530),('65plus',440,375,249,212,191,163);
/*!40000 ALTER TABLE `Multiple_Job_Holders_by_Age_Gender` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:30
