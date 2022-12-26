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
-- Table structure for table `Real_Personal_Income_By_State`
--

DROP TABLE IF EXISTS `Real_Personal_Income_By_State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Real_Personal_Income_By_State` (
  `State` varchar(20) NOT NULL,
  `RPI_2019` float DEFAULT NULL,
  `RPI_2020` float DEFAULT NULL,
  `RPI_2021` float DEFAULT NULL,
  PRIMARY KEY (`State`),
  UNIQUE KEY `State` (`State`),
  CONSTRAINT `Real_Personal_Income_By_State_ibfk_1` FOREIGN KEY (`State`) REFERENCES `State_To_Code` (`State_Name`),
  CONSTRAINT `Real_Personal_Income_By_State_chk_1` CHECK ((`RPI_2019` >= 0)),
  CONSTRAINT `Real_Personal_Income_By_State_chk_2` CHECK ((`RPI_2020` >= 0)),
  CONSTRAINT `Real_Personal_Income_By_State_chk_3` CHECK ((`RPI_2021` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Real_Personal_Income_By_State`
--

LOCK TABLES `Real_Personal_Income_By_State` WRITE;
/*!40000 ALTER TABLE `Real_Personal_Income_By_State` DISABLE KEYS */;
INSERT INTO `Real_Personal_Income_By_State` VALUES ('Alabama',223626,239485,246874),('Alaska',39945.8,41161.8,40052.1),('Arizona',316996,341318,362114),('Arkansas',138378,145094,148569),('California',2108670,2250420,2332660),('Colorado',317157,328502,346082),('Connecticut',239456,243003,253920),('Delaware',49097.1,52229.5,53406),('District of Columbia',48432.6,50237.2,50398.4),('Florida',1063740,1107490,1160010),('Georgia',504913,533033,545636),('Hawaii',65080.5,66553.5,67312.3),('Idaho',81848.1,90742.6,94097.1),('Illinois',687638,712987,728883),('Indiana',323719,348012,359702),('Iowa',159421,169973,176780),('Kansas',152426,160786,164557),('Kentucky',200945,216980,225019),('Louisiana',222219,234480,238269),('Maine',66174.8,69102.6,71621.7),('Maryland',332934,343877,351519),('Massachusetts',436144,455315,475687),('Michigan',473797,513048,522601),('Minnesota',306558,327803,333418),('Mississippi',123432,132800,135580),('Missouri',296463,313874,321702),('Montana',52336.7,57876.7,59577.9),('Nebraska',104518,109953,113636),('Nevada',148906,160354,171884),('New Hampshire',77808,80981.2,86042.2),('New Jersey',519258,541200,567509),('New Mexico',90282.6,97529.9,102712),('New York',1133230,1182580,1207420),('North Carolina',501343,535676,548116),('North Dakota',43297.5,46388.6,47613.4),('Ohio',576409,618686,628660),('Oklahoma',195244,201107,206387),('Oregon',194953,211001,220212),('Pennsylvania',687678,727607,750119),('Rhode Island',54393.8,58170.3,59937.3),('South Carolina',235951,249793,252155),('South Dakota',48422,53347.4,55542.1),('Tennessee',338398,361140,376695),('Texas',1443760,1484890,1556770),('Utah',147396,162511,171487),('Vermont',32615,33687.4,35126.6),('Virginia',462258,479242,486026),('Washington',413716,441320,454854),('West Virginia',79811.1,83651.3,82629.1),('Wisconsin',300040,321085,326703),('Wyoming',35840.6,37498.1,38263.6);
/*!40000 ALTER TABLE `Real_Personal_Income_By_State` ENABLE KEYS */;
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
