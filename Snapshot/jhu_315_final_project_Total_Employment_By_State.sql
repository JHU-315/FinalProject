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
-- Table structure for table `Total_Employment_By_State`
--

DROP TABLE IF EXISTS `Total_Employment_By_State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Total_Employment_By_State` (
  `State` varchar(20) NOT NULL,
  `Employment_2019` int DEFAULT NULL,
  `Employment_2020` int DEFAULT NULL,
  `Employment_2021` int DEFAULT NULL,
  PRIMARY KEY (`State`),
  UNIQUE KEY `State` (`State`),
  CONSTRAINT `Total_Employment_By_State_ibfk_1` FOREIGN KEY (`State`) REFERENCES `State_To_Code` (`State_Name`),
  CONSTRAINT `Total_Employment_By_State_chk_1` CHECK ((`Employment_2019` >= 0)),
  CONSTRAINT `Total_Employment_By_State_chk_2` CHECK ((`Employment_2020` >= 0)),
  CONSTRAINT `Total_Employment_By_State_chk_3` CHECK ((`Employment_2021` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Total_Employment_By_State`
--

LOCK TABLES `Total_Employment_By_State` WRITE;
/*!40000 ALTER TABLE `Total_Employment_By_State` DISABLE KEYS */;
INSERT INTO `Total_Employment_By_State` VALUES ('Alabama',2712163,2671253,2738167),('Alaska',454785,430824,441257),('Arizona',3929985,3920036,4055932),('Arkansas',1664214,1640442,1675644),('California',24227775,23155486,23906353),('Colorado',3895377,3821923,3945819),('Connecticut',2298065,2217497,2282570),('Delaware',602812,592045,609399),('District of Columbia',915189,865878,869482),('Florida',12761585,12720098,13221011),('Georgia',6399395,6326942,6541518),('Hawaii',914163,817748,850603),('Idaho',1064118,1078122,1125054),('Illinois',7859703,7519502,7684747),('Indiana',3970076,3843507,3950184),('Iowa',2071092,2010409,2049278),('Kansas',1924539,1879086,1912187),('Kentucky',2550230,2472056,2548204),('Louisiana',2717896,2593066,2639156),('Maine',842473,813207,842366),('Maryland',3743604,3620521,3714211),('Massachusetts',4872989,4600345,4761271),('Michigan',5713882,5388167,5579513),('Minnesota',3783623,3608149,3695240),('Mississippi',1607696,1573592,1609386),('Missouri',3779850,3693351,3772958),('Montana',686459,684333,709342),('Nebraska',1328812,1305987,1330296),('Nevada',1884215,1770936,1875709),('New Hampshire',890110,858502,888593),('New Jersey',5571414,5319600,5537228),('New Mexico',1116979,1069680,1087348),('New York',12746559,11872381,12186762),('North Carolina',6149574,6055314,6275500),('North Dakota',581826,560682,566374),('Ohio',7072285,6853595,7010299),('Oklahoma',2309852,2263126,2289520),('Oregon',2578253,2493784,2559454),('Pennsylvania',7773246,7413333,7618631),('Rhode Island',651037,615726,639211),('South Carolina',2882340,2825222,2904842),('South Dakota',610900,606699,622335),('Tennessee',4168951,4121399,4248764),('Texas',17902900,17706662,18276115),('Utah',2103036,2135409,2229147),('Vermont',433602,409390,420288),('Virginia',5329887,5224997,5350774),('Washington',4589563,4436065,4558011),('West Virginia',881598,841019,858231),('Wisconsin',3719288,3582636,3669140),('Wyoming',408235,401871,409176);
/*!40000 ALTER TABLE `Total_Employment_By_State` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:28
