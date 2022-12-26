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
-- Table structure for table `Poverty_Estimate_By_State`
--

DROP TABLE IF EXISTS `Poverty_Estimate_By_State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Poverty_Estimate_By_State` (
  `State` varchar(20) NOT NULL,
  `Poverty_Estimate_2019` int DEFAULT NULL,
  `Poverty_Estimate_2020` int DEFAULT NULL,
  `Poverty_Estimate_2021` int DEFAULT NULL,
  PRIMARY KEY (`State`),
  UNIQUE KEY `State` (`State`),
  CONSTRAINT `Poverty_Estimate_By_State_ibfk_1` FOREIGN KEY (`State`) REFERENCES `State_To_Code` (`State_Name`),
  CONSTRAINT `Poverty_Estimate_By_State_chk_1` CHECK ((`Poverty_Estimate_2019` >= 0)),
  CONSTRAINT `Poverty_Estimate_By_State_chk_3` CHECK ((`Poverty_Estimate_2020` >= 0)),
  CONSTRAINT `Poverty_Estimate_By_State_chk_5` CHECK ((`Poverty_Estimate_2021` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Poverty_Estimate_By_State`
--

LOCK TABLES `Poverty_Estimate_By_State` WRITE;
/*!40000 ALTER TABLE `Poverty_Estimate_By_State` DISABLE KEYS */;
INSERT INTO `Poverty_Estimate_By_State` VALUES ('Alabama',747478,714568,800848),('Alaska',73033,68714,77736),('Arizona',963007,932555,919680),('Arkansas',468575,448665,471195),('California',4560419,4419167,4742405),('Colorado',531331,511346,554126),('Connecticut',343101,333435,355861),('Delaware',106227,104400,113026),('District of Columbia',94985,101959,107307),('Florida',2681832,2642642,2830813),('Georgia',1397607,1465328,1493837),('Hawaii',124650,121182,152656),('Idaho',193741,181197,202091),('Illinois',1415838,1351159,1493042),('Indiana',773367,760167,799733),('Iowa',337156,313752,340626),('Kansas',319931,300931,332457),('Kentucky',692875,647158,712023),('Louisiana',847739,802040,878477),('Maine',141566,139614,149571),('Maryland',537717,533561,620829),('Massachusetts',631551,628899,701700),('Michigan',1264445,1232948,1283086),('Minnesota',491782,458302,519437),('Mississippi',559764,536535,549710),('Missouri',766238,725117,765097),('Montana',130974,130711,129910),('Nebraska',186402,172623,201627),('Nevada',384900,386817,433095),('New Hampshire',98310,92404,99562),('New Jersey',795676,818389,925852),('New Mexico',358526,346455,367050),('New York',2471760,2401141,2703053),('North Carolina',1383760,1329685,1383626),('North Dakota',77327,75781,82270),('Ohio',1474285,1428219,1523366),('Oklahoma',578631,552168,599003),('Oregon',474302,457940,507504),('Pennsylvania',1481193,1345976,1503929),('Rhode Island',118095,108306,126971),('South Carolina',695259,703004,736098),('South Dakota',101371,99903,103337),('Tennessee',919850,911097,934856),('Texas',3870944,3862713,4122799),('Utah',279435,234666,286086),('Vermont',60624,56281,63208),('Virginia',822944,769479,862792),('Washington',731216,714653,755589),('West Virginia',281175,274176,291051),('Wisconsin',591404,571049,622948),('Wyoming',55776,52418,60226);
/*!40000 ALTER TABLE `Poverty_Estimate_By_State` ENABLE KEYS */;
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
