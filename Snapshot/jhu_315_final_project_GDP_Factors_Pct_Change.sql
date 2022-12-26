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
-- Table structure for table `GDP_Factors_Pct_Change`
--

DROP TABLE IF EXISTS `GDP_Factors_Pct_Change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GDP_Factors_Pct_Change` (
  `GDP_Factor` varchar(60) NOT NULL,
  `Quarter` varchar(6) NOT NULL,
  `Pct_Change` float DEFAULT NULL,
  PRIMARY KEY (`GDP_Factor`,`Quarter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GDP_Factors_Pct_Change`
--

LOCK TABLES `GDP_Factors_Pct_Change` WRITE;
/*!40000 ALTER TABLE `GDP_Factors_Pct_Change` DISABLE KEYS */;
INSERT INTO `GDP_Factors_Pct_Change` VALUES ('Exports_goods_services','2018Q4',1.2),('Exports_goods_services','2019Q1',4.8),('Exports_goods_services','2019Q2',-2.3),('Exports_goods_services','2019Q3',0),('Exports_goods_services','2019Q4',0.8),('Exports_goods_services','2020Q1',-15.3),('Exports_goods_services','2020Q2',-60.9),('Exports_goods_services','2020Q3',59.5),('Exports_goods_services','2020Q4',24.2),('Exports_goods_services','2021Q1',0.4),('Exports_goods_services','2021Q2',4.9),('Exports_goods_services','2021Q3',-1.1),('Exports_goods_services','2021Q4',23.5),('Exports_goods_services','2022Q1',-4.6),('Exports_goods_services','2022Q2',13.8),('Exports_goods_services','2022Q3',15.3),('Federal_consumption_investment','2018Q4',2.1),('Federal_consumption_investment','2019Q1',2.9),('Federal_consumption_investment','2019Q2',6.3),('Federal_consumption_investment','2019Q3',4.9),('Federal_consumption_investment','2019Q4',1.8),('Federal_consumption_investment','2020Q1',3.7),('Federal_consumption_investment','2020Q2',31.5),('Federal_consumption_investment','2020Q3',-10.9),('Federal_consumption_investment','2020Q4',1.8),('Federal_consumption_investment','2021Q1',17.3),('Federal_consumption_investment','2021Q2',-6.9),('Federal_consumption_investment','2021Q3',-7.2),('Federal_consumption_investment','2021Q4',0),('Federal_consumption_investment','2022Q1',-5.3),('Federal_consumption_investment','2022Q2',-3.4),('Federal_consumption_investment','2022Q3',3.4),('GDP','2018Q4',0.7),('GDP','2019Q1',2.2),('GDP','2019Q2',2.7),('GDP','2019Q3',3.6),('GDP','2019Q4',1.8),('GDP','2020Q1',-4.6),('GDP','2020Q2',-29.9),('GDP','2020Q3',35.3),('GDP','2020Q4',3.9),('GDP','2021Q1',6.3),('GDP','2021Q2',7),('GDP','2021Q3',2.7),('GDP','2021Q4',7),('GDP','2022Q1',-1.6),('GDP','2022Q2',-0.6),('GDP','2022Q3',2.9),('Gross_private_domestic_investment','2018Q4',-0.3),('Gross_private_domestic_investment','2019Q1',4),('Gross_private_domestic_investment','2019Q2',2.4),('Gross_private_domestic_investment','2019Q3',2.6),('Gross_private_domestic_investment','2019Q4',-8),('Gross_private_domestic_investment','2020Q1',-5.1),('Gross_private_domestic_investment','2020Q2',-48.8),('Gross_private_domestic_investment','2020Q3',91.8),('Gross_private_domestic_investment','2020Q4',18),('Gross_private_domestic_investment','2021Q1',-5.4),('Gross_private_domestic_investment','2021Q2',0.9),('Gross_private_domestic_investment','2021Q3',10.4),('Gross_private_domestic_investment','2021Q4',32),('Gross_private_domestic_investment','2022Q1',5.4),('Gross_private_domestic_investment','2022Q2',-14.1),('Gross_private_domestic_investment','2022Q3',-9.1),('Imports_goods_services','2018Q4',3.9),('Imports_goods_services','2019Q1',1.3),('Imports_goods_services','2019Q2',0.7),('Imports_goods_services','2019Q3',-1.7),('Imports_goods_services','2019Q4',-8),('Imports_goods_services','2020Q1',-12.2),('Imports_goods_services','2020Q2',-53.7),('Imports_goods_services','2020Q3',88.2),('Imports_goods_services','2020Q4',32.9),('Imports_goods_services','2021Q1',7.6),('Imports_goods_services','2021Q2',7.9),('Imports_goods_services','2021Q3',6.6),('Imports_goods_services','2021Q4',18.6),('Imports_goods_services','2022Q1',18.4),('Imports_goods_services','2022Q2',2.2),('Imports_goods_services','2022Q3',-7.3),('Personal_Consumption_Goods','2018Q4',3.3),('Personal_Consumption_Goods','2019Q1',0),('Personal_Consumption_Goods','2019Q2',5.5),('Personal_Consumption_Goods','2019Q3',5.8),('Personal_Consumption_Goods','2019Q4',2.8),('Personal_Consumption_Goods','2020Q1',0),('Personal_Consumption_Goods','2020Q2',-10.7),('Personal_Consumption_Goods','2020Q3',55.2),('Personal_Consumption_Goods','2020Q4',0.3),('Personal_Consumption_Goods','2021Q1',25.3),('Personal_Consumption_Goods','2021Q2',11.6),('Personal_Consumption_Goods','2021Q3',-7.9),('Personal_Consumption_Goods','2021Q4',2.3),('Personal_Consumption_Goods','2022Q1',-0.1),('Personal_Consumption_Goods','2022Q2',-2.6),('Personal_Consumption_Goods','2022Q3',-0.2),('Personal_Consumption_Services','2018Q4',1.1),('Personal_Consumption_Services','2019Q1',0.6),('Personal_Consumption_Services','2019Q2',1.3),('Personal_Consumption_Services','2019Q3',2.3),('Personal_Consumption_Services','2019Q4',2.1),('Personal_Consumption_Services','2020Q1',-8.9),('Personal_Consumption_Services','2020Q2',-40.4),('Personal_Consumption_Services','2020Q3',37.1),('Personal_Consumption_Services','2020Q4',5.7),('Personal_Consumption_Services','2021Q1',4),('Personal_Consumption_Services','2021Q2',12.3),('Personal_Consumption_Services','2021Q3',9.2),('Personal_Consumption_Services','2021Q4',3.5),('Personal_Consumption_Services','2022Q1',2.1),('Personal_Consumption_Services','2022Q2',4.6),('Personal_Consumption_Services','2022Q3',2.7),('State_and_local_consumption_investment','2018Q4',-1.1),('State_and_local_consumption_investment','2019Q1',6.1),('State_and_local_consumption_investment','2019Q2',4.7),('State_and_local_consumption_investment','2019Q3',2.4),('State_and_local_consumption_investment','2019Q4',2.7),('State_and_local_consumption_investment','2020Q1',3),('State_and_local_consumption_investment','2020Q2',-5.5),('State_and_local_consumption_investment','2020Q3',-2.5),('State_and_local_consumption_investment','2020Q4',-1.3),('State_and_local_consumption_investment','2021Q1',0.1),('State_and_local_consumption_investment','2021Q2',-0.4),('State_and_local_consumption_investment','2021Q3',4.5),('State_and_local_consumption_investment','2021Q4',-1.6),('State_and_local_consumption_investment','2022Q1',-0.4),('State_and_local_consumption_investment','2022Q2',-0.6),('State_and_local_consumption_investment','2022Q3',2.8);
/*!40000 ALTER TABLE `GDP_Factors_Pct_Change` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:45
