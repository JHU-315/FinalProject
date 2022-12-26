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
-- Table structure for table `Real_Personal_Consumption_By_State`
--

DROP TABLE IF EXISTS `Real_Personal_Consumption_By_State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Real_Personal_Consumption_By_State` (
  `State` varchar(20) NOT NULL,
  `RPC_2019` float DEFAULT NULL,
  `RPC_2020` float DEFAULT NULL,
  `RPC_2021` float DEFAULT NULL,
  PRIMARY KEY (`State`),
  UNIQUE KEY `State` (`State`),
  CONSTRAINT `Real_Personal_Consumption_By_State_ibfk_1` FOREIGN KEY (`State`) REFERENCES `State_To_Code` (`State_Name`),
  CONSTRAINT `Real_Personal_Consumption_By_State_chk_1` CHECK ((`RPC_2019` >= 0)),
  CONSTRAINT `Real_Personal_Consumption_By_State_chk_2` CHECK ((`RPC_2020` >= 0)),
  CONSTRAINT `Real_Personal_Consumption_By_State_chk_3` CHECK ((`RPC_2021` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Real_Personal_Consumption_By_State`
--

LOCK TABLES `Real_Personal_Consumption_By_State` WRITE;
/*!40000 ALTER TABLE `Real_Personal_Consumption_By_State` DISABLE KEYS */;
INSERT INTO `Real_Personal_Consumption_By_State` VALUES ('Alabama',182791,182200,196127),('Alaska',33391.5,31986.2,32965.8),('Arizona',267067,261631,291985),('Arkansas',108010,106700,114240),('California',1571310,1486160,1611320),('Colorado',242286,235846,260465),('Connecticut',162109,154420,169605),('Delaware',42116.9,42042.5,45411.7),('District of Columbia',40786.4,38602,41045.4),('Florida',878524,853048,941447),('Georgia',400908,390984,424022),('Hawaii',54559.9,51114.6,54126.6),('Idaho',62895.5,64395.2,71190.1),('Illinois',523671,497667,535572),('Indiana',254537,253202,271024),('Iowa',120697,118925,128752),('Kansas',112298,110676,120137),('Kentucky',167424,165863,178612),('Louisiana',175542,172000,185316),('Maine',59471.6,56513.2,61731.5),('Maryland',242285,227839,244214),('Massachusetts',318760,297282,331844),('Michigan',403074,392014,420483),('Minnesota',240405,231905,243822),('Mississippi',101473,100958,107372),('Missouri',247260,240966,260823),('Montana',43933.9,45180.1,49947.8),('Nebraska',79331.5,77909.7,85501.9),('Nevada',115721,114909,127591),('New Hampshire',62836,60801.9,66480),('New Jersey',373918,363999,401858),('New Mexico',74383.4,73040,81474.1),('New York',838695,789404,834352),('North Carolina',402809,401049,427646),('North Dakota',33893.3,32987.2,35447.8),('Ohio',462835,456882,485840),('Oklahoma',140973,138225,147633),('Oregon',157819,155827,170303),('Pennsylvania',549921,526948,570570),('Rhode Island',41782,40193.9,43543.6),('South Carolina',195020,194492,207502),('South Dakota',37127.7,37167.5,41010.7),('Tennessee',259440,257744,281997),('Texas',1081690,1064980,1169660),('Utah',112127,115765,130179),('Vermont',28095.8,26167.1,28727.5),('Virginia',342189,329026,352616),('Washington',304762,297348,318114),('West Virginia',70025.7,68523.4,69920.5),('Wisconsin',234814,233021,246727),('Wyoming',24050.2,24182.2,26192.8);
/*!40000 ALTER TABLE `Real_Personal_Consumption_By_State` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:33
