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
-- Table structure for table `Unemployed_Marital_Status_By_Race_Gender`
--

DROP TABLE IF EXISTS `Unemployed_Marital_Status_By_Race_Gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Unemployed_Marital_Status_By_Race_Gender` (
  `Marital_Status` varchar(50) NOT NULL,
  `Total_2019` int DEFAULT NULL,
  `Total_2020` int DEFAULT NULL,
  `Men_2019` int DEFAULT NULL,
  `Men_2020` int DEFAULT NULL,
  `Women_2019` int DEFAULT NULL,
  `Women_2020` int DEFAULT NULL,
  PRIMARY KEY (`Marital_Status`),
  CONSTRAINT `Unemployed_Marital_Status_By_Race_Gender_chk_1` CHECK ((`Total_2019` >= 0)),
  CONSTRAINT `Unemployed_Marital_Status_By_Race_Gender_chk_2` CHECK ((`Total_2020` >= 0)),
  CONSTRAINT `Unemployed_Marital_Status_By_Race_Gender_chk_3` CHECK ((`Men_2019` >= 0)),
  CONSTRAINT `Unemployed_Marital_Status_By_Race_Gender_chk_4` CHECK ((`Men_2020` >= 0)),
  CONSTRAINT `Unemployed_Marital_Status_By_Race_Gender_chk_5` CHECK ((`Women_2019` >= 0)),
  CONSTRAINT `Unemployed_Marital_Status_By_Race_Gender_chk_6` CHECK ((`Women_2020` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Unemployed_Marital_Status_By_Race_Gender`
--

LOCK TABLES `Unemployed_Marital_Status_By_Race_Gender` WRITE;
/*!40000 ALTER TABLE `Unemployed_Marital_Status_By_Race_Gender` DISABLE KEYS */;
INSERT INTO `Unemployed_Marital_Status_By_Race_Gender` VALUES ('Asian_Married',128,475,66,215,62,260),('Asian_Never_Married',125,330,71,172,54,158),('Asian_Widowed_Divorced_Separated',27,90,12,40,15,50),('Black_Married',183,490,99,259,84,231),('Black_Never_Married',892,1475,470,754,422,721),('Black_Widowed_Divorced_Separated',176,340,75,137,101,203),('Hispanic_Married',376,1061,192,568,184,493),('Hispanic_Never_Married',709,1524,398,856,311,668),('Hispanic_Widowed_Divorced_Separated',163,433,68,173,95,260),('Total_Married',1693,4618,857,2271,836,2347),('Total_Never_Married',3327,6339,1941,3526,1386,2813),('Total_Widowed_Divorced_Separated',981,1990,429,847,552,1143),('White_Married',1327,3497,667,1723,660,1774),('White_Never_Married',2102,4136,1277,2371,825,1765),('White_Widowed_Divorced_Separated',730,1457,323,631,407,826);
/*!40000 ALTER TABLE `Unemployed_Marital_Status_By_Race_Gender` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:44
