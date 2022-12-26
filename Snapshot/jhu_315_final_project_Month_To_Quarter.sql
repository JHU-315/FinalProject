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
-- Table structure for table `Month_To_Quarter`
--

DROP TABLE IF EXISTS `Month_To_Quarter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Month_To_Quarter` (
  `Month` varchar(10) NOT NULL,
  `Quarter` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Month_To_Quarter`
--

LOCK TABLES `Month_To_Quarter` WRITE;
/*!40000 ALTER TABLE `Month_To_Quarter` DISABLE KEYS */;
INSERT INTO `Month_To_Quarter` VALUES ('Apr-19','2019Q2'),('Apr-20','2020Q2'),('Apr-21','2021Q2'),('Apr-22','2022Q2'),('Aug-19','2019Q3'),('Aug-20','2020Q3'),('Aug-21','2021Q3'),('Aug-22','2022Q3'),('Dec-19','2019Q4'),('Dec-20','2020Q4'),('Dec-21','2021Q4'),('Feb-19','2019Q1'),('Feb-20','2020Q1'),('Feb-21','2021Q1'),('Feb-22','2022Q1'),('Jan-19','2019Q1'),('Jan-20','2020Q1'),('Jan-21','2021Q1'),('Jan-22','2022Q1'),('Jul-19','2019Q3'),('Jul-20','2020Q3'),('Jul-21','2021Q3'),('Jul-22','2022Q3'),('Jun-19','2019Q2'),('Jun-20','2020Q2'),('Jun-21','2021Q2'),('Jun-22','2022Q2'),('Mar-19','2019Q1'),('Mar-20','2020Q1'),('Mar-21','2021Q1'),('Mar-22','2022Q1'),('May-19','2019Q2'),('May-20','2020Q2'),('May-21','2021Q2'),('May-22','2022Q2'),('Nov-19','2019Q4'),('Nov-20','2020Q4'),('Nov-21','2021Q4'),('Nov-22','2022Q4'),('Oct-19','2019Q4'),('Oct-20','2020Q4'),('Oct-21','2021Q4'),('Oct-22','2022Q4'),('Sep-19','2019Q3'),('Sep-20','2020Q3'),('Sep-21','2021Q3'),('Sep-22','2022Q3');
/*!40000 ALTER TABLE `Month_To_Quarter` ENABLE KEYS */;
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
