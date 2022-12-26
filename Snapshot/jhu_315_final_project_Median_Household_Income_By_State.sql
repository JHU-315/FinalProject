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
-- Table structure for table `Median_Household_Income_By_State`
--

DROP TABLE IF EXISTS `Median_Household_Income_By_State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Median_Household_Income_By_State` (
  `State` varchar(20) NOT NULL,
  `MHI_2019` int DEFAULT NULL,
  `MHI_2020` int DEFAULT NULL,
  `MHI_2021` int DEFAULT NULL,
  PRIMARY KEY (`State`),
  UNIQUE KEY `State` (`State`),
  CONSTRAINT `Median_Household_Income_By_State_ibfk_1` FOREIGN KEY (`State`) REFERENCES `State_To_Code` (`State_Name`),
  CONSTRAINT `Median_Household_Income_By_State_chk_1` CHECK ((`MHI_2019` >= 0)),
  CONSTRAINT `Median_Household_Income_By_State_chk_2` CHECK ((`MHI_2020` >= 0)),
  CONSTRAINT `Median_Household_Income_By_State_chk_3` CHECK ((`MHI_2021` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Median_Household_Income_By_State`
--

LOCK TABLES `Median_Household_Income_By_State` WRITE;
/*!40000 ALTER TABLE `Median_Household_Income_By_State` DISABLE KEYS */;
INSERT INTO `Median_Household_Income_By_State` VALUES ('Alabama',51771,53958,53990),('Alaska',77203,79961,78437),('Arizona',62027,64652,68967),('Arkansas',49020,51146,52577),('California',80423,83001,84831),('Colorado',77104,77688,82228),('Connecticut',78920,79723,83628),('Delaware',70348,71335,71636),('District of Columbia',90395,91957,91072),('Florida',59198,61724,63054),('Georgia',61950,62800,66507),('Hawaii',83734,86878,85547),('Idaho',60830,62603,66318),('Illinois',69212,71243,72215),('Indiana',57617,60794,62723),('Iowa',61807,62362,65645),('Kansas',62028,63214,64128),('Kentucky',52256,54074,55532),('Louisiana',51108,51730,52090),('Maine',58824,59145,64823),('Maryland',86644,88589,90129),('Massachusetts',85700,87288,89577),('Michigan',59522,61352,63444),('Minnesota',74529,75489,77712),('Mississippi',45928,47368,48871),('Missouri',57375,58812,61815),('Montana',57248,57730,63357),('Nebraska',63290,64735,66949),('Nevada',63268,64608,66194),('New Hampshire',78571,81415,88268),('New Jersey',85786,87095,89227),('New Mexico',52021,52285,54304),('New York',72038,73354,74230),('North Carolina',57388,59616,61997),('North Dakota',67402,64289,67603),('Ohio',58704,60360,62286),('Oklahoma',54447,54512,55829),('Oregon',66955,67832,71441),('Pennsylvania',63455,64898,68931),('Rhode Island',70383,73919,73324),('South Carolina',56360,57216,59447),('South Dakota',60414,61149,66843),('Tennessee',56047,56962,59698),('Texas',64044,66048,66959),('Utah',75705,77785,79449),('Vermont',63293,67717,72415),('Virginia',76471,79154,80926),('Washington',78674,80319,84155),('West Virginia',48659,49202,51122),('Wisconsin',64177,64901,67150),('Wyoming',66152,67284,66508);
/*!40000 ALTER TABLE `Median_Household_Income_By_State` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:48
