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
-- Table structure for table `Unemployment_Rate`
--

DROP TABLE IF EXISTS `Unemployment_Rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Unemployment_Rate` (
  `Date` date NOT NULL,
  `Total` decimal(3,1) NOT NULL,
  `Men_20_plus` decimal(3,1) DEFAULT NULL,
  `Women_20_plus` decimal(3,1) DEFAULT NULL,
  `Yrs_16_19` decimal(3,1) DEFAULT NULL,
  `White` decimal(3,1) DEFAULT NULL,
  `Black` decimal(3,1) DEFAULT NULL,
  `Asian` decimal(3,1) DEFAULT NULL,
  `Hispanic` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`Date`),
  UNIQUE KEY `Date` (`Date`),
  CONSTRAINT `Unemployment_Rate_chk_1` CHECK ((`Men_20_plus` >= 0)),
  CONSTRAINT `Unemployment_Rate_chk_2` CHECK ((`Women_20_plus` >= 0)),
  CONSTRAINT `Unemployment_Rate_chk_3` CHECK ((`Yrs_16_19` >= 0)),
  CONSTRAINT `Unemployment_Rate_chk_4` CHECK ((`White` >= 0)),
  CONSTRAINT `Unemployment_Rate_chk_5` CHECK ((`Black` >= 0)),
  CONSTRAINT `Unemployment_Rate_chk_6` CHECK ((`Asian` >= 0)),
  CONSTRAINT `Unemployment_Rate_chk_7` CHECK ((`Hispanic` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Unemployment_Rate`
--

LOCK TABLES `Unemployment_Rate` WRITE;
/*!40000 ALTER TABLE `Unemployment_Rate` DISABLE KEYS */;
INSERT INTO `Unemployment_Rate` VALUES ('2018-01-01',4.0,3.7,3.6,13.7,3.5,7.5,2.9,4.9),('2018-02-01',4.1,3.6,3.8,14.3,3.6,6.8,3.0,4.9),('2018-03-01',4.0,3.6,3.7,13.1,3.5,6.7,3.0,4.9),('2018-04-01',4.0,3.7,3.6,12.6,3.6,6.3,2.9,4.7),('2018-05-01',3.8,3.6,3.4,12.9,3.5,5.9,2.2,4.8),('2018-06-01',4.0,3.7,3.6,12.7,3.5,6.4,3.3,4.6),('2018-07-01',3.8,3.4,3.6,13.1,3.4,6.5,3.0,4.5),('2018-08-01',3.8,3.5,3.5,12.7,3.5,6.3,2.9,4.7),('2018-09-01',3.7,3.5,3.3,12.4,3.3,6.1,3.5,4.6),('2018-10-01',3.8,3.6,3.4,12.1,3.4,6.5,3.2,4.4),('2018-11-01',3.8,3.4,3.5,12.4,3.4,6.1,2.9,4.7),('2018-12-01',3.9,3.6,3.5,12.6,3.4,6.7,3.4,4.5),('2019-01-01',4.0,3.7,3.6,12.9,3.5,7.0,3.0,4.7),('2019-02-01',3.8,3.4,3.4,13.7,3.2,7.1,3.1,4.3),('2019-03-01',3.8,3.5,3.4,12.4,3.3,6.5,3.0,4.5),('2019-04-01',3.6,3.4,3.2,12.7,3.2,6.5,2.3,4.1),('2019-05-01',3.6,3.3,3.3,12.8,3.3,6.1,2.5,4.2),('2019-06-01',3.6,3.3,3.3,12.7,3.3,5.8,2.1,4.3),('2019-07-01',3.7,3.3,3.3,12.9,3.3,5.8,2.7,4.4),('2019-08-01',3.7,3.4,3.3,12.5,3.5,5.4,2.8,4.2),('2019-09-01',3.5,3.3,3.1,12.2,3.2,5.4,2.5,4.0),('2019-10-01',3.6,3.4,3.2,12.2,3.3,5.6,2.9,4.2),('2019-11-01',3.6,3.3,3.3,12.1,3.2,5.6,2.7,4.3),('2019-12-01',3.6,3.2,3.3,12.5,3.2,6.0,2.7,4.3),('2020-01-01',3.5,3.2,3.2,12.2,3.1,6.3,3.0,4.3),('2020-02-01',3.5,3.2,3.1,11.3,3.0,6.0,2.5,4.4),('2020-03-01',4.4,4.1,4.0,14.0,3.9,6.8,4.1,5.9),('2020-04-01',14.7,13.0,15.4,32.6,14.1,16.6,14.4,18.8),('2020-05-01',13.2,11.5,13.8,30.5,12.3,16.8,14.8,17.6),('2020-06-01',11.0,10.1,11.2,22.5,10.0,15.2,13.8,14.5),('2020-07-01',10.2,9.3,10.4,19.3,9.2,14.4,11.9,12.8),('2020-08-01',8.4,7.9,8.3,16.5,7.4,12.8,10.6,10.6),('2020-09-01',7.9,7.4,7.8,16.1,7.0,12.1,8.9,10.4),('2020-10-01',6.9,6.7,6.5,13.9,6.0,10.9,7.6,8.9),('2020-11-01',6.7,6.7,6.2,13.8,6.0,10.4,6.8,8.6),('2020-12-01',6.7,6.4,6.3,15.8,6.1,10.0,6.1,9.4),('2021-01-01',6.4,6.1,6.0,14.6,5.7,9.2,6.6,8.6),('2021-02-01',6.2,6.0,5.9,13.9,5.5,9.8,5.1,8.4),('2021-03-01',6.0,5.8,5.7,12.7,5.3,9.5,5.9,7.7),('2021-04-01',6.0,6.0,5.6,11.6,5.3,9.7,5.7,7.7),('2021-05-01',5.8,5.8,5.3,9.6,5.1,9.1,5.5,7.1),('2021-06-01',5.9,5.9,5.5,11.3,5.3,9.2,5.7,7.2),('2021-07-01',5.4,5.3,5.0,10.7,4.8,8.2,5.2,6.4),('2021-08-01',5.2,5.1,4.8,11.3,4.5,8.7,4.5,6.2),('2021-09-01',4.7,4.7,4.3,11.3,4.2,7.8,4.2,6.1),('2021-10-01',4.6,4.3,4.3,11.7,3.9,7.8,4.2,5.7),('2021-11-01',4.2,3.9,3.9,10.9,3.7,6.5,3.9,5.2),('2021-12-01',3.9,3.6,3.6,10.9,3.2,7.1,3.8,4.9),('2022-01-01',4.0,3.8,3.6,10.9,3.4,6.9,3.6,4.9),('2022-02-01',3.8,3.5,3.6,10.3,3.3,6.6,3.1,4.4),('2022-03-01',3.6,3.4,3.3,10.0,3.2,6.2,2.8,4.2),('2022-04-01',3.6,3.5,3.2,10.2,3.2,5.9,3.1,4.1),('2022-05-01',3.6,3.4,3.4,10.4,3.2,6.2,2.4,4.3),('2022-06-01',3.6,3.3,3.3,11.0,3.3,5.8,3.0,4.3),('2022-07-01',3.5,3.2,3.1,11.5,3.1,6.0,2.6,3.9),('2022-08-01',3.7,3.5,3.3,10.4,3.2,6.4,2.8,4.5),('2022-09-01',3.5,3.3,3.1,11.4,3.1,5.8,2.5,3.8),('2022-10-01',3.7,3.3,3.4,11.0,3.2,5.9,2.9,4.2);
/*!40000 ALTER TABLE `Unemployment_Rate` ENABLE KEYS */;
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
