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
-- Table structure for table `State_Political_Composition`
--

DROP TABLE IF EXISTS `State_Political_Composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `State_Political_Composition` (
  `State_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Republican_lean_rep` double DEFAULT NULL,
  `No_lean` double DEFAULT NULL,
  `Democrat_lean_Dem` double DEFAULT NULL,
  `Sample_size` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `State_Political_Composition`
--

LOCK TABLES `State_Political_Composition` WRITE;
/*!40000 ALTER TABLE `State_Political_Composition` DISABLE KEYS */;
INSERT INTO `State_Political_Composition` VALUES ('Alabama',52,13,35,511),('Alaska',39,29,32,310),('Arizona',40,21,39,653),('Arkansas',46,16,38,311),('California',30,21,49,3697),('Colorado',41,17,42,504),('Connecticut',32,18,50,377),('Delaware',29,17,55,301),('District of Columbia',11,15,73,303),('Florida',37,19,44,2020),('Georgia',41,18,41,968),('Hawaii',28,20,51,312),('Idaho',49,19,32,320),('Illinois',33,19,48,1326),('Indiana',42,20,37,654),('Iowa',41,19,40,330),('Kansas',46,23,31,307),('Kentucky',44,13,43,439),('Louisiana',41,16,43,465),('Maine',36,17,47,303),('Maryland',31,14,55,644),('Massachusetts',27,17,56,704),('Michigan',34,19,47,982),('Minnesota',39,15,46,563),('Mississippi',44,14,42,309),('Missouri',41,18,42,642),('Montana',49,21,30,312),('Nebraska',47,17,36,312),('Nevada',37,18,46,314),('New Hampshire',35,20,44,303),('New Jersey',30,19,51,886),('New Mexico',37,15,48,312),('New York',28,19,53,1966),('North Carolina',41,17,43,1022),('North Dakota',50,18,33,338),('Ohio',42,18,40,1132),('Oklahoma',45,15,40,391),('Oregon',32,21,47,419),('Pennsylvania',39,15,46,1366),('Rhode Island',30,22,48,305),('South Carolina',43,18,39,495),('South Dakota',53,10,37,305),('Tennessee',48,15,36,661),('Texas',39,21,40,2535),('Utah',54,16,30,315),('Vermont',29,14,57,306),('Virginia',43,18,39,882),('Washington',33,23,44,714),('West Virginia',43,16,41,309),('Wisconsin',42,16,42,600),('Wyoming',57,18,25,316);
/*!40000 ALTER TABLE `State_Political_Composition` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:45
