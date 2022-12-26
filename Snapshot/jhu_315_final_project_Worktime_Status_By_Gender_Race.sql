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
-- Table structure for table `Worktime_Status_By_Gender_Race`
--

DROP TABLE IF EXISTS `Worktime_Status_By_Gender_Race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Worktime_Status_By_Gender_Race` (
  `Worktime_Status` varchar(60) NOT NULL,
  `Total` int DEFAULT NULL,
  `Men_Total` int DEFAULT NULL,
  `Women_Total` int DEFAULT NULL,
  `White_Total` int DEFAULT NULL,
  `Black_Total` int DEFAULT NULL,
  `Hispanic_Total` int DEFAULT NULL,
  `Asian_Total` int DEFAULT NULL,
  PRIMARY KEY (`Worktime_Status`),
  UNIQUE KEY `Worktime_Status` (`Worktime_Status`),
  CONSTRAINT `Worktime_Status_By_Gender_Race_chk_1` CHECK ((`Total` >= 0)),
  CONSTRAINT `Worktime_Status_By_Gender_Race_chk_2` CHECK ((`Men_Total` >= 0)),
  CONSTRAINT `Worktime_Status_By_Gender_Race_chk_3` CHECK ((`Women_Total` >= 0)),
  CONSTRAINT `Worktime_Status_By_Gender_Race_chk_4` CHECK ((`White_Total` >= 0)),
  CONSTRAINT `Worktime_Status_By_Gender_Race_chk_5` CHECK ((`Black_Total` >= 0)),
  CONSTRAINT `Worktime_Status_By_Gender_Race_chk_6` CHECK ((`Hispanic_Total` >= 0)),
  CONSTRAINT `Worktime_Status_By_Gender_Race_chk_7` CHECK ((`Asian_Total` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Worktime_Status_By_Gender_Race`
--

LOCK TABLES `Worktime_Status_By_Gender_Race` WRITE;
/*!40000 ALTER TABLE `Worktime_Status_By_Gender_Race` DISABLE KEYS */;
INSERT INTO `Worktime_Status_By_Gender_Race` VALUES ('2019_Full_time_less35_hours',9233,4694,4539,7287,1080,499,1666),('2019_Full_time_more35_hours',117625,67313,50313,90844,14928,7964,21042),('2019_Part_time_economic_reasons',3207,1514,1693,2271,595,159,849),('2019_Part_time_noneconomic_reasons',22175,7622,14553,17826,2198,1245,3462),('2020_Full_time_less35_hours',12623,6521,6102,10045,1391,719,2401),('2020_Full_time_more35_hours',105693,60567,45126,82068,13024,7072,18424),('2020_Part_time_economic_reasons',3781,1815,1966,2761,613,221,1097),('2020_Part_time_noneconomic_reasons',18965,6674,12290,15290,1965,1001,2909),('2021_Full_time',122928,69415,53513,94959,15323,8324,22281),('2021_Full_time_less35_hours',9653,4967,4687,7541,1136,559,1755),('2021_Full_time_more35_hours',113275,64448,48826,87418,14187,7765,20526),('2021_Part_time',23831,8795,15036,18768,2663,1404,4228),('2021_Part_time_economic_reasons',3446,1649,1797,2483,552,239,1049),('2021_Part_time_noneconomic_reasons',20385,7146,13239,16285,2111,1165,3179);
/*!40000 ALTER TABLE `Worktime_Status_By_Gender_Race` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:42
