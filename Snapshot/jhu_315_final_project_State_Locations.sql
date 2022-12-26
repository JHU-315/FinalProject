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
-- Table structure for table `State_Locations`
--

DROP TABLE IF EXISTS `State_Locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `State_Locations` (
  `State_Name` varchar(100) DEFAULT NULL,
  `Capital_Name` varchar(50) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `State_Locations`
--

LOCK TABLES `State_Locations` WRITE;
/*!40000 ALTER TABLE `State_Locations` DISABLE KEYS */;
INSERT INTO `State_Locations` VALUES ('Alabama','Montgomery',32.377716,-86.300568),('Alaska','Juneau',58.301598,-134.420212),('Arizona','Phoenix',33.448143,-112.096962),('Arkansas','Little Rock',34.746613,-92.288986),('California','Sacramento',38.576668,-121.493629),('Colorado','Denver',39.739227,-104.984856),('Connecticut','Hartford<br>',41.764046,-72.682198),('Delaware','Dover',39.157307,-75.519722),('Hawaii','Honolulu',21.307442,-157.857376),('Florida','Tallahassee',30.438118,-84.281296),('Georgia','Atlanta<br>',33.749027,-84.388229),('Idaho','Boise',43.617775,-116.199722),('Illinois','Springfield',39.798363,-89.654961),('Indiana','Indianapolis',39.768623,-86.162643),('Iowa','Des Moines',41.591087,-93.603729),('Kansas','Topeka',39.048191,-95.677956),('Kentucky','Frankfort',38.186722,-84.875374),('Louisiana','Baton Rouge',30.457069,-91.187393),('Maine','Augusta',44.307167,-69.781693),('Maryland','Annapolis',38.978764,-76.490936),('Massachusetts','Boston',42.358162,-71.063698),('Michigan','Lansing',42.733635,-84.555328),('Minnesota','St. Paul',44.955097,-93.102211),('Mississippi','Jackson',32.303848,-90.182106),('Missouri','Jefferson City',38.579201,-92.172935),('Montana','Helena',46.585709,-112.018417),('Nebraska','Lincoln',40.808075,-96.699654),('Nevada','Carson City',39.163914,-119.766121),('New Hampshire','Concord',43.206898,-71.537994),('New Jersey','Trenton',40.220596,-74.769913),('New Mexico','Santa Fe',35.68224,-105.939728),('North Carolina','Raleigh',35.78043,-78.639099),('North Dakota','Bismarck',46.82085,-100.783318),('New York','Albany',42.652843,-73.757874),('Ohio','Columbus',39.961346,-82.999069),('Oklahoma','Oklahoma City',35.492207,-97.503342),('Oregon','Salem',44.938461,-123.030403),('Pennsylvania','Harrisburg',40.264378,-76.883598),('Rhode Island','Providence',41.830914,-71.414963),('South Carolina','Columbia',34.000343,-81.033211),('South Dakota','Pierre',44.367031,-100.346405),('Tennessee','Nashville',36.16581,-86.784241),('Texas','Austin',30.27467,-97.740349),('Utah','Salt Lake City',40.777477,-111.888237),('Vermont','Montpelier',44.262436,-72.580536),('Virginia','Richmond',37.538857,-77.43364),('Washington','Olympia',47.035805,-122.905014),('West Virginia','Charleston',38.336246,-81.612328),('Wisconsin','Madison',43.074684,-89.384445),('Wyoming','Cheyenne',41.140259,-104.820236);
/*!40000 ALTER TABLE `State_Locations` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:49
