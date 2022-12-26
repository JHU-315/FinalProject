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
-- Table structure for table `MonthString_To_MonthDate`
--

DROP TABLE IF EXISTS `MonthString_To_MonthDate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MonthString_To_MonthDate` (
  `MonthString` varchar(50) NOT NULL,
  `MonthDate` date DEFAULT NULL,
  PRIMARY KEY (`MonthString`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonthString_To_MonthDate`
--

LOCK TABLES `MonthString_To_MonthDate` WRITE;
/*!40000 ALTER TABLE `MonthString_To_MonthDate` DISABLE KEYS */;
INSERT INTO `MonthString_To_MonthDate` VALUES ('Apr-18','2018-04-01'),('Apr-19','2019-04-01'),('Apr-20','2020-04-01'),('Apr-21','2021-04-01'),('Apr-22','2022-04-01'),('Aug-18','2018-08-01'),('Aug-19','2019-08-01'),('Aug-20','2020-08-01'),('Aug-21','2021-08-01'),('Aug-22','2022-08-01'),('Dec-18','2018-12-01'),('Dec-19','2019-12-01'),('Dec-20','2020-12-01'),('Dec-21','2021-12-01'),('Dec-22','2022-12-01'),('Feb-18','2018-02-01'),('Feb-19','2019-02-01'),('Feb-20','2020-02-01'),('Feb-21','2021-02-01'),('Feb-22','2022-02-01'),('Jan-18','2018-01-01'),('Jan-19','2019-01-01'),('Jan-20','2020-01-01'),('Jan-21','2021-01-01'),('Jan-22','2022-01-01'),('Jul-18','2018-07-01'),('Jul-19','2019-07-01'),('Jul-20','2020-07-01'),('Jul-21','2021-07-01'),('Jul-22','2022-07-01'),('Jun-18','2018-06-01'),('Jun-19','2019-06-01'),('Jun-20','2020-06-01'),('Jun-21','2021-06-01'),('Jun-22','2022-06-01'),('Mar-18','2018-03-01'),('Mar-19','2019-03-01'),('Mar-20','2020-03-01'),('Mar-21','2021-03-01'),('Mar-22','2022-03-01'),('May-18','2018-05-01'),('May-19','2019-05-01'),('May-20','2020-05-01'),('May-21','2021-05-01'),('May-22','2022-05-01'),('Nov-18','2018-11-01'),('Nov-19','2019-11-01'),('Nov-20','2020-11-01'),('Nov-21','2021-11-01'),('Nov-22','2022-11-01'),('Oct-18','2018-10-01'),('Oct-19','2019-10-01'),('Oct-20','2020-10-01'),('Oct-21','2021-10-01'),('Oct-22','2022-10-01'),('Sep-18','2018-09-01'),('Sep-19','2019-09-01'),('Sep-20','2020-09-01'),('Sep-21','2021-09-01'),('Sep-22','2022-09-01');
/*!40000 ALTER TABLE `MonthString_To_MonthDate` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:31
