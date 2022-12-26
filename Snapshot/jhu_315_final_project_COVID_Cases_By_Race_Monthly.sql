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
-- Table structure for table `COVID_Cases_By_Race_Monthly`
--

DROP TABLE IF EXISTS `COVID_Cases_By_Race_Monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COVID_Cases_By_Race_Monthly` (
  `MonthDate` date NOT NULL,
  `Cases_Total` decimal(32,0) DEFAULT NULL,
  `Cases_White` decimal(32,0) DEFAULT NULL,
  `Cases_Black` decimal(32,0) DEFAULT NULL,
  `Cases_LatinX` decimal(32,0) DEFAULT NULL,
  `Cases_Asian` decimal(32,0) DEFAULT NULL,
  PRIMARY KEY (`MonthDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COVID_Cases_By_Race_Monthly`
--

LOCK TABLES `COVID_Cases_By_Race_Monthly` WRITE;
/*!40000 ALTER TABLE `COVID_Cases_By_Race_Monthly` DISABLE KEYS */;
INSERT INTO `COVID_Cases_By_Race_Monthly` VALUES ('2019-12-01',0,0,0,0,0),('2020-01-01',0,0,0,0,0),('2020-02-01',0,0,0,0,0),('2020-03-01',0,0,0,0,0),('2020-04-01',2261331,706520,395819,192474,53330),('2020-05-01',12220439,2628168,1470823,1366170,230728),('2020-06-01',17176324,3751763,2010530,2304606,341793),('2020-07-01',31698194,7188858,3619748,4365646,552901),('2020-08-01',47974217,11952571,5759452,6924918,800639),('2020-09-01',59717032,16452095,7026394,8792759,1034252),('2020-10-01',64389659,19949946,7198756,9038244,1131294),('2020-11-01',99159884,34276464,9900438,12786389,1705238),('2020-12-01',151131630,54449830,13348310,18402477,2662682),('2021-01-01',210655471,76411674,16892828,26876752,3968394),('2021-02-01',219384637,79969510,18221273,28333534,4266944),('2021-03-01',57465067,21041825,4781332,7415719,1124073);
/*!40000 ALTER TABLE `COVID_Cases_By_Race_Monthly` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:46