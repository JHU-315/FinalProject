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
-- Table structure for table `Life_Expectancy_By_State`
--

DROP TABLE IF EXISTS `Life_Expectancy_By_State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Life_Expectancy_By_State` (
  `State` varchar(20) NOT NULL,
  `Year` int NOT NULL,
  `Life_Expectancy` float DEFAULT NULL,
  PRIMARY KEY (`State`,`Year`),
  CONSTRAINT `Life_Expectancy_By_State_ibfk_1` FOREIGN KEY (`State`) REFERENCES `State_To_Code` (`State_Name`),
  CONSTRAINT `Life_Expectancy_By_State_chk_1` CHECK ((`Year` >= 0)),
  CONSTRAINT `Life_Expectancy_By_State_chk_2` CHECK ((`Life_Expectancy` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Life_Expectancy_By_State`
--

LOCK TABLES `Life_Expectancy_By_State` WRITE;
/*!40000 ALTER TABLE `Life_Expectancy_By_State` DISABLE KEYS */;
INSERT INTO `Life_Expectancy_By_State` VALUES ('Alabama',2019,75.2),('Alabama',2020,73.2),('Alaska',2019,77.7),('Alaska',2020,76.6),('Arizona',2019,78.8),('Arizona',2020,76.3),('Arkansas',2019,75.7),('Arkansas',2020,73.8),('California',2019,80.9),('California',2020,79),('Colorado',2019,80),('Colorado',2020,78.3),('Connecticut',2019,80.3),('Connecticut',2020,78.4),('Delaware',2019,78.1),('Delaware',2020,76.7),('Florida',2019,79),('Florida',2020,77.5),('Georgia',2019,77.4),('Georgia',2020,75.6),('Hawaii',2019,80.9),('Hawaii',2020,80.7),('Idaho',2019,79.5),('Idaho',2020,78.4),('Illinois',2019,79),('Illinois',2020,76.8),('Indiana',2019,77),('Indiana',2020,75),('Iowa',2019,79),('Iowa',2020,77.5),('Kansas',2019,78.2),('Kansas',2020,76.4),('Kentucky',2019,75.5),('Kentucky',2020,73.5),('Louisiana',2019,75.7),('Louisiana',2020,73.1),('Maine',2019,78.3),('Maine',2020,77.8),('Maryland',2019,78.5),('Maryland',2020,76.8),('Massachusetts',2019,80.4),('Massachusetts',2020,79),('Michigan',2019,78),('Michigan',2020,76),('Minnesota',2019,80.4),('Minnesota',2020,79.1),('Mississippi',2019,74.4),('Mississippi',2020,71.9),('Missouri',2019,76.9),('Missouri',2020,75.1),('Montana',2019,78.4),('Montana',2020,76.8),('Nebraska',2019,79.2),('Nebraska',2020,77.7),('Nevada',2019,78),('Nevada',2020,76.3),('New Hampshire',2019,79.4),('New Hampshire',2020,79),('New Jersey',2019,80.1),('New Jersey',2020,77.5),('New Mexico',2019,76.9),('New Mexico',2020,74.5),('New York',2019,80.7),('New York',2020,77.7),('North Carolina',2019,77.6),('North Carolina',2020,76.1),('North Dakota',2019,78.8),('North Dakota',2020,76.9),('Ohio',2019,76.9),('Ohio',2020,75.3),('Oklahoma',2019,75.7),('Oklahoma',2020,74.1),('Oregon',2019,79.6),('Oregon',2020,78.8),('Pennsylvania',2019,78.3),('Pennsylvania',2020,76.8),('Rhode Island',2019,79.5),('Rhode Island',2020,78.2),('South Carolina',2019,76.8),('South Carolina',2020,74.8),('South Dakota',2019,78.4),('South Dakota',2020,76.7),('Tennessee',2019,75.6),('Tennessee',2020,73.8),('Texas',2019,78.6),('Texas',2020,76.5),('Utah',2019,79.7),('Utah',2020,78.6),('Vermont',2019,79.8),('Vermont',2020,78.8),('Virginia',2019,79.1),('Virginia',2020,77.6),('Washington',2019,80),('Washington',2020,79.2),('West Virginia',2019,74.5),('West Virginia',2020,72.8),('Wisconsin',2019,79.3),('Wisconsin',2020,77.7),('Wyoming',2019,77.7),('Wyoming',2020,76.3);
/*!40000 ALTER TABLE `Life_Expectancy_By_State` ENABLE KEYS */;
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
