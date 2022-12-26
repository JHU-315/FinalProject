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
-- Table structure for table `Education_By_Race`
--

DROP TABLE IF EXISTS `Education_By_Race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Education_By_Race` (
  `Education` varchar(50) NOT NULL,
  `Asian_Total` int DEFAULT NULL,
  `Black_Total` int DEFAULT NULL,
  `Hispanic_Total` int DEFAULT NULL,
  `White_Total` int DEFAULT NULL,
  PRIMARY KEY (`Education`),
  CONSTRAINT `Education_By_Race_chk_1` CHECK ((`Asian_Total` >= 0)),
  CONSTRAINT `Education_By_Race_chk_2` CHECK ((`Black_Total` >= 0)),
  CONSTRAINT `Education_By_Race_chk_3` CHECK ((`Hispanic_Total` >= 0)),
  CONSTRAINT `Education_By_Race_chk_4` CHECK ((`White_Total` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Education_By_Race`
--

LOCK TABLES `Education_By_Race` WRITE;
/*!40000 ALTER TABLE `Education_By_Race` DISABLE KEYS */;
INSERT INTO `Education_By_Race` VALUES ('Associates_degree_academic',644,1958,2121,11610),('Associates_degree_occupational',385,1280,1534,8486),('Bachelors_degree',5219,5177,5635,44351),('Doctoral_degree',777,372,219,3512),('First_to_Eleven',1066,3244,10078,18104),('High_school_graduate',2795,11059,13849,55312),('Masters_degree',2828,2441,1729,18527),('None',133,72,411,545),('Professional_degree',332,264,261,2772),('Some_college_no_degree',1776,6514,6913,33218);
/*!40000 ALTER TABLE `Education_By_Race` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:43
