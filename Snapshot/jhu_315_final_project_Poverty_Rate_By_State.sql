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
-- Table structure for table `Poverty_Rate_By_State`
--

DROP TABLE IF EXISTS `Poverty_Rate_By_State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Poverty_Rate_By_State` (
  `State` varchar(20) NOT NULL,
  `Year` date NOT NULL,
  `Poverty_Percent` float DEFAULT NULL,
  PRIMARY KEY (`State`,`Year`),
  CONSTRAINT `Poverty_Rate_By_State_ibfk_1` FOREIGN KEY (`State`) REFERENCES `State_To_Code` (`State_Name`),
  CONSTRAINT `Poverty_Rate_By_State_chk_1` CHECK ((`Poverty_Percent` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Poverty_Rate_By_State`
--

LOCK TABLES `Poverty_Rate_By_State` WRITE;
/*!40000 ALTER TABLE `Poverty_Rate_By_State` DISABLE KEYS */;
INSERT INTO `Poverty_Rate_By_State` VALUES ('Alabama','2019-12-31',15.6),('Alabama','2020-12-31',14.9),('Alabama','2021-12-31',16.3),('Alaska','2019-12-31',10.2),('Alaska','2020-12-31',9.6),('Alaska','2021-12-31',10.8),('Arizona','2019-12-31',13.5),('Arizona','2020-12-31',12.8),('Arizona','2021-12-31',12.9),('Arkansas','2019-12-31',16),('Arkansas','2020-12-31',15.2),('Arkansas','2021-12-31',16),('California','2019-12-31',11.8),('California','2020-12-31',11.5),('California','2021-12-31',12.3),('Colorado','2019-12-31',9.4),('Colorado','2020-12-31',9),('Colorado','2021-12-31',9.7),('Connecticut','2019-12-31',9.9),('Connecticut','2020-12-31',9.7),('Connecticut','2021-12-31',10.1),('Delaware','2019-12-31',11.2),('Delaware','2020-12-31',10.9),('Delaware','2021-12-31',11.5),('District of Columbia','2019-12-31',14.1),('District of Columbia','2020-12-31',15),('District of Columbia','2021-12-31',16.8),('Florida','2019-12-31',12.7),('Florida','2020-12-31',12.4),('Florida','2021-12-31',13.2),('Georgia','2019-12-31',13.5),('Georgia','2020-12-31',14),('Georgia','2021-12-31',14.2),('Hawaii','2019-12-31',9),('Hawaii','2020-12-31',8.9),('Hawaii','2021-12-31',10.9),('Idaho','2019-12-31',11),('Idaho','2020-12-31',10.1),('Idaho','2021-12-31',10.8),('Illinois','2019-12-31',11.4),('Illinois','2020-12-31',11),('Illinois','2021-12-31',12.1),('Indiana','2019-12-31',11.9),('Indiana','2020-12-31',11.6),('Indiana','2021-12-31',12.1),('Iowa','2019-12-31',11),('Iowa','2020-12-31',10.2),('Iowa','2021-12-31',11),('Kansas','2019-12-31',11.3),('Kansas','2020-12-31',10.6),('Kansas','2021-12-31',11.6),('Kentucky','2019-12-31',16),('Kentucky','2020-12-31',14.9),('Kentucky','2021-12-31',16.3),('Louisiana','2019-12-31',18.8),('Louisiana','2020-12-31',17.8),('Louisiana','2021-12-31',19.5),('Maine','2019-12-31',10.9),('Maine','2020-12-31',10.6),('Maine','2021-12-31',11.2),('Maryland','2019-12-31',9.1),('Maryland','2020-12-31',9),('Maryland','2021-12-31',10.3),('Massachusetts','2019-12-31',9.5),('Massachusetts','2020-12-31',9.4),('Massachusetts','2021-12-31',10.4),('Michigan','2019-12-31',12.9),('Michigan','2020-12-31',12.6),('Michigan','2021-12-31',13),('Minnesota','2019-12-31',8.9),('Minnesota','2020-12-31',8.3),('Minnesota','2021-12-31',9.3),('Mississippi','2019-12-31',19.5),('Mississippi','2020-12-31',18.7),('Mississippi','2021-12-31',19.2),('Missouri','2019-12-31',12.9),('Missouri','2020-12-31',12.1),('Missouri','2021-12-31',12.8),('Montana','2019-12-31',12.6),('Montana','2020-12-31',12.4),('Montana','2021-12-31',12),('Nebraska','2019-12-31',9.9),('Nebraska','2020-12-31',9.2),('Nebraska','2021-12-31',10.5),('Nevada','2019-12-31',12.7),('Nevada','2020-12-31',12.5),('Nevada','2021-12-31',14),('New Hampshire','2019-12-31',7.5),('New Hampshire','2020-12-31',7),('New Hampshire','2021-12-31',7.4),('New Jersey','2019-12-31',9.1),('New Jersey','2020-12-31',9.4),('New Jersey','2021-12-31',10.2),('New Mexico','2019-12-31',17.5),('New Mexico','2020-12-31',16.8),('New Mexico','2021-12-31',17.7),('New York','2019-12-31',13.1),('New York','2020-12-31',12.7),('New York','2021-12-31',14),('North Carolina','2019-12-31',13.6),('North Carolina','2020-12-31',12.9),('North Carolina','2021-12-31',13.5),('North Dakota','2019-12-31',10.5),('North Dakota','2020-12-31',10.2),('North Dakota','2021-12-31',10.9),('Ohio','2019-12-31',13),('Ohio','2020-12-31',12.6),('Ohio','2021-12-31',13.3),('Oklahoma','2019-12-31',15.1),('Oklahoma','2020-12-31',14.3),('Oklahoma','2021-12-31',15.4),('Oregon','2019-12-31',11.5),('Oregon','2020-12-31',11),('Oregon','2021-12-31',12.2),('Pennsylvania','2019-12-31',12),('Pennsylvania','2020-12-31',10.9),('Pennsylvania','2021-12-31',12),('Rhode Island','2019-12-31',11.6),('Rhode Island','2020-12-31',10.6),('Rhode Island','2021-12-31',12.1),('South Carolina','2019-12-31',13.9),('South Carolina','2020-12-31',13.8),('South Carolina','2021-12-31',14.5),('South Dakota','2019-12-31',11.9),('South Dakota','2020-12-31',11.6),('South Dakota','2021-12-31',11.9),('Tennessee','2019-12-31',13.8),('Tennessee','2020-12-31',13.6),('Tennessee','2021-12-31',13.7),('Texas','2019-12-31',13.6),('Texas','2020-12-31',13.4),('Texas','2021-12-31',14.2),('Utah','2019-12-31',8.8),('Utah','2020-12-31',7.3),('Utah','2021-12-31',8.7),('Vermont','2019-12-31',10.1),('Vermont','2020-12-31',9.4),('Vermont','2021-12-31',10.2),('Virginia','2019-12-31',9.9),('Virginia','2020-12-31',9.2),('Virginia','2021-12-31',10.3),('Washington','2019-12-31',9.8),('Washington','2020-12-31',9.5),('Washington','2021-12-31',9.9),('West Virginia','2019-12-31',16.2),('West Virginia','2020-12-31',15.8),('West Virginia','2021-12-31',16.8),('Wisconsin','2019-12-31',10.4),('Wisconsin','2020-12-31',10),('Wisconsin','2021-12-31',10.8),('Wyoming','2019-12-31',9.9),('Wyoming','2020-12-31',9.2),('Wyoming','2021-12-31',10.6);
/*!40000 ALTER TABLE `Poverty_Rate_By_State` ENABLE KEYS */;
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
