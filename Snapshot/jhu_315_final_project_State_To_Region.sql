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
-- Table structure for table `State_To_Region`
--

DROP TABLE IF EXISTS `State_To_Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `State_To_Region` (
  `State` varchar(20) NOT NULL,
  `Region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `State_To_Region`
--

LOCK TABLES `State_To_Region` WRITE;
/*!40000 ALTER TABLE `State_To_Region` DISABLE KEYS */;
INSERT INTO `State_To_Region` VALUES ('Alabama','South'),('Alaska','West'),('Arizona','West'),('Arkansas','South'),('California','West'),('Colorado','West'),('Connecticut','Northeast'),('Delaware','South'),('District of Columbia','South'),('Florida','South'),('Georgia','South'),('Hawaii','West'),('Idaho','West'),('Illinois','Midwest'),('Indiana','Midwest'),('Iowa','Midwest'),('Kansas','Midwest'),('Kentucky','South'),('Louisiana','South'),('Maine','Northeast'),('Maryland','South'),('Massachusetts','Northeast'),('Michigan','Midwest'),('Minnesota','Midwest'),('Mississippi','South'),('Missouri','Midwest'),('Montana','West'),('Nebraska','Midwest'),('Nevada','West'),('New Hampshire','Northeast'),('New Jersey','Northeast'),('New Mexico','West'),('New York','Northeast'),('North Carolina','South'),('North Dakota','Midwest'),('Ohio','Midwest'),('Oklahoma','South'),('Oregon','West'),('Pennsylvania','Northeast'),('Rhode Island','Northeast'),('South Carolina','South'),('South Dakota','Midwest'),('Tennessee','South'),('Texas','South'),('Utah','West'),('Vermont','Northeast'),('Virginia','South'),('Washington','West'),('West Virginia','South'),('Wisconsin','Midwest'),('Wyoming','West');
/*!40000 ALTER TABLE `State_To_Region` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:32
