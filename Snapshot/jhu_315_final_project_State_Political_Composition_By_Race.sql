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
-- Table structure for table `State_Political_Composition_By_Race`
--

DROP TABLE IF EXISTS `State_Political_Composition_By_Race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `State_Political_Composition_By_Race` (
  `State_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `White` int DEFAULT NULL,
  `Black` int DEFAULT NULL,
  `Asian` int DEFAULT NULL,
  `Latinx` int DEFAULT NULL,
  `Other/Mixed` int DEFAULT NULL,
  `Sample size` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `State_Political_Composition_By_Race`
--

LOCK TABLES `State_Political_Composition_By_Race` WRITE;
/*!40000 ALTER TABLE `State_Political_Composition_By_Race` DISABLE KEYS */;
INSERT INTO `State_Political_Composition_By_Race` VALUES ('Alabama',37,56,1,4,2,181),('Alaska',63,6,8,3,19,105),('Arizona',53,6,5,27,8,241),('Arkansas',62,28,1,6,2,121),('California',40,9,13,35,3,1),('Colorado',70,7,1,20,2,211),('Connecticut',64,15,2,14,4,190),('Delaware',57,31,3,7,2,157),('District of Columbia',40,47,3,6,3,223),('Florida',51,24,1,22,3,866),('Georgia',35,51,1,8,5,392),('Hawaii',20,4,39,11,26,158),('Idaho',81,1,1,16,1,110),('Illinois',58,23,3,13,3,622),('Indiana',74,17,1,5,3,252),('Iowa',86,5,1,4,4,136),('Kentucky',83,13,1,2,2,195),('Louisiana',36,56,1,5,2,197),('Maine',95,3,1,1,2,152),('Maryland',43,43,3,6,5,367),('Massachusetts',72,8,4,9,6,397),('Michigan',67,23,1,4,4,466),('Minnesota',82,8,1,3,6,268),('Mississippi',31,63,1,5,1,128),('Missouri',72,21,2,3,2,267),('Montana',88,1,2,1,10,106),('Nebraska',76,8,2,11,3,112),('Nevada',44,14,3,29,10,132),('New Hampshire',94,1,1,2,1,139),('New Jersey',51,17,8,21,3,437),('New Mexico',36,1,1,52,11,163),('New York',51,20,5,19,5,1),('North Carolina',51,38,1,8,3,454),('North Dakota',87,1,3,3,8,107),('Ohio',73,20,2,3,3,463),('Oklahoma',63,14,1,7,16,161),('Oregon',83,1,2,8,6,203),('Pennsylvania',73,17,2,5,3,636),('Rhode Island',76,9,1,11,4,153),('South Carolina',41,51,1,6,1,188),('South Dakota',86,1,1,2,12,107),('Tennessee',65,26,1,5,2,229),('Texas',34,22,3,37,4,975),('Vermont',94,1,1,3,2,176),('Virginia',46,35,5,11,3,356),('Washington',71,6,6,11,5,336),('West Virginia',89,6,1,1,4,137),('Wisconsin',81,7,3,5,4,239);
/*!40000 ALTER TABLE `State_Political_Composition_By_Race` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:47
