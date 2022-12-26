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
-- Table structure for table `State_To_Code`
--

DROP TABLE IF EXISTS `State_To_Code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `State_To_Code` (
  `State_Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `abbrev` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`State_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `State_To_Code`
--

LOCK TABLES `State_To_Code` WRITE;
/*!40000 ALTER TABLE `State_To_Code` DISABLE KEYS */;
INSERT INTO `State_To_Code` VALUES ('Alabama','Ala.','AL'),('Alaska','Alaska','AK'),('Arizona','Ariz.','AZ'),('Arkansas','Ark.','AR'),('California','Calif.','CA'),('Colorado','Colo.','CO'),('Connecticut','Conn.','CT'),('Delaware','Del.','DE'),('District of Columbia','D.C.','DC'),('Florida','Fla.','FL'),('Georgia','Ga.','GA'),('Hawaii','Hawaii','HI'),('Idaho','Idaho','ID'),('Illinois','Ill.','IL'),('Indiana','Ind.','IN'),('Iowa','Iowa','IA'),('Kansas','Kans.','KS'),('Kentucky','Ky.','KY'),('Louisiana','La.','LA'),('Maine','Maine','ME'),('Maryland','Md.','MD'),('Massachusetts','Mass.','MA'),('Michigan','Mich.','MI'),('Minnesota','Minn.','MN'),('Mississippi','Miss.','MS'),('Missouri','Mo.','MO'),('Montana','Mont.','MT'),('Nebraska','Nebr.','NE'),('Nevada','Nev.','NV'),('New Hampshire','N.H.','NH'),('New Jersey','N.J.','NJ'),('New Mexico','N.M.','NM'),('New York','N.Y.','NY'),('North Carolina','N.C.','NC'),('North Dakota','N.D.','ND'),('Ohio','Ohio','OH'),('Oklahoma','Okla.','OK'),('Oregon','Ore.','OR'),('Pennsylvania','Pa.','PA'),('Rhode Island','R.I.','RI'),('South Carolina','S.C.','SC'),('South Dakota','S.D.','SD'),('Tennessee','Tenn.','TN'),('Texas','Tex.','TX'),('Utah','Utah','UT'),('Vermont','Vt.','VT'),('Virginia','Va.','VA'),('Washington','Wash.','WA'),('West Virginia','W.Va.','WV'),('Wisconsin','Wis.','WI'),('Wyoming','Wyo.','WY');
/*!40000 ALTER TABLE `State_To_Code` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:39
