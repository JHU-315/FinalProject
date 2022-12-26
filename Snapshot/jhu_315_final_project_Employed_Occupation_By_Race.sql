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
-- Table structure for table `Employed_Occupation_By_Race`
--

DROP TABLE IF EXISTS `Employed_Occupation_By_Race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employed_Occupation_By_Race` (
  `Occupation` varchar(50) NOT NULL,
  `Racial_Group` varchar(20) NOT NULL,
  `Total_2019` float DEFAULT NULL,
  `Total_2020` float DEFAULT NULL,
  PRIMARY KEY (`Occupation`,`Racial_Group`),
  CONSTRAINT `Employed_Occupation_By_Race_chk_1` CHECK ((`Total_2019` >= 0)),
  CONSTRAINT `Employed_Occupation_By_Race_chk_2` CHECK ((`Total_2020` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employed_Occupation_By_Race`
--

LOCK TABLES `Employed_Occupation_By_Race` WRITE;
/*!40000 ALTER TABLE `Employed_Occupation_By_Race` DISABLE KEYS */;
INSERT INTO `Employed_Occupation_By_Race` VALUES ('Construction_and_extraction','Asian',1.3,1.3),('Construction_and_extraction','Black',3.1,3),('Construction_and_extraction','Hispanic',10.9,10.6),('Construction_and_extraction','Total',5.3,5.2),('Construction_and_extraction','White',5.9,5.9),('Farming_fishing_and_forestry','Asian',0.2,0.2),('Farming_fishing_and_forestry','Black',0.3,0.3),('Farming_fishing_and_forestry','Hispanic',2,1.7),('Farming_fishing_and_forestry','Total',0.7,0.7),('Farming_fishing_and_forestry','White',0.8,0.8),('Installation_maintenance_and_repair','Asian',1.6,1.5),('Installation_maintenance_and_repair','Black',2.3,2.4),('Installation_maintenance_and_repair','Hispanic',3.6,3.7),('Installation_maintenance_and_repair','Total',3.1,3.1),('Installation_maintenance_and_repair','White',3.3,3.4),('Management_business_financial_operations','Asian',18.5,19.3),('Management_business_financial_operations','Black',11.7,13.4),('Management_business_financial_operations','Hispanic',10.1,11.4),('Management_business_financial_operations','Total',17.1,18.4),('Management_business_financial_operations','White',18.1,19.2),('Office_and_administrative_support','Asian',8.8,7.7),('Office_and_administrative_support','Black',13.3,12.5),('Office_and_administrative_support','Hispanic',11.2,10.4),('Office_and_administrative_support','Total',11.3,10.5),('Office_and_administrative_support','White',11.1,10.4),('Production','Asian',5.1,4.5),('Production','Black',5.9,5.6),('Production','Hispanic',7.1,6.9),('Production','Total',5.4,5.1),('Production','White',5.4,5.1),('Professional','Asian',36.6,38.9),('Professional','Black',20.2,21.4),('Professional','Hispanic',13.3,14.1),('Professional','Total',23.6,24.7),('Professional','White',23.3,24.2),('Sales ','Asian',8.2,8.3),('Sales ','Black',9,8.4),('Sales ','Hispanic',9.4,9.3),('Sales ','Total',9.9,9.6),('Sales ','White',10.2,9.9),('Service_occupations ','Asian',15.8,13.7),('Service_occupations ','Black',23.8,21.7),('Service_occupations ','Hispanic',24.2,22),('Service_occupations ','Total',17.1,15.5),('Service_occupations ','White',15.9,14.5),('Transportation_and_material_moving ','Asian',4,4.7),('Transportation_and_material_moving ','Black',10.4,11.5),('Transportation_and_material_moving ','Hispanic',8.3,9.8),('Transportation_and_material_moving ','Total',6.4,7.2),('Transportation_and_material_moving ','White',5.9,6.7);
/*!40000 ALTER TABLE `Employed_Occupation_By_Race` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:29
