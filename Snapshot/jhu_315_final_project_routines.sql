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
-- Temporary view structure for view `COVID_Deaths_Age_F_Breakdown`
--

DROP TABLE IF EXISTS `COVID_Deaths_Age_F_Breakdown`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_Age_F_Breakdown`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_Age_F_Breakdown` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_F_WT`,
 1 AS `Total_Deaths_F_Alpha`,
 1 AS `Total_Deaths_F_Delta`,
 1 AS `Total_Deaths_F_Omicron`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Personal_Income_State`
--

DROP TABLE IF EXISTS `Personal_Income_State`;
/*!50001 DROP VIEW IF EXISTS `Personal_Income_State`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Personal_Income_State` AS SELECT 
 1 AS `Quarter`,
 1 AS `State`,
 1 AS `Personal Income`,
 1 AS `MonthDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `GenderRemoteWorkYearCol`
--

DROP TABLE IF EXISTS `GenderRemoteWorkYearCol`;
/*!50001 DROP VIEW IF EXISTS `GenderRemoteWorkYearCol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `GenderRemoteWorkYearCol` AS SELECT 
 1 AS `Men_16to24_years_2020`,
 1 AS `Men_25to54_years_2020`,
 1 AS `Men_55Plus_2020`,
 1 AS `Men_16to24_years_2021`,
 1 AS `Men_25to54_years_2021`,
 1 AS `Men_55Plus_2021`,
 1 AS `Men_16to24_years_2022`,
 1 AS `Men_25to54_years_2022`,
 1 AS `Men_55Plus_2022`,
 1 AS `Women_16to24_years_2020`,
 1 AS `Women_25to54_years_2020`,
 1 AS `Women_55Plus_2020`,
 1 AS `Women_16to24_years_2021`,
 1 AS `Women_25to54_years_2021`,
 1 AS `Women_55Plus_2021`,
 1 AS `Women_16to24_years_2022`,
 1 AS `Women_25to54_years_2022`,
 1 AS `Women_55Plus_2022`,
 1 AS `Total_16to24_years_2020`,
 1 AS `Total_25to54_years_2020`,
 1 AS `Total_55Plus_2020`,
 1 AS `Total_16to24_years_2021`,
 1 AS `Total_25to54_years_2021`,
 1 AS `Total_55Plus_2021`,
 1 AS `Total_16to24_years_2022`,
 1 AS `Total_25to54_years_2022`,
 1 AS `Total_55Plus_2022`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Tests`
--

DROP TABLE IF EXISTS `COVID_Tests`;
/*!50001 DROP VIEW IF EXISTS `COVID_Tests`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Tests` AS SELECT 
 1 AS `Date`,
 1 AS `Tests_Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxHospAlpha`
--

DROP TABLE IF EXISTS `MaxHospAlpha`;
/*!50001 DROP VIEW IF EXISTS `MaxHospAlpha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxHospAlpha` AS SELECT 
 1 AS `Date`,
 1 AS `Hosp_Total`,
 1 AS `Hosp_White`,
 1 AS `Hosp_Black`,
 1 AS `Hosp_Latinx`,
 1 AS `Hosp_Asian`,
 1 AS `Hosp_AIAN`,
 1 AS `Hosp_NHPI`,
 1 AS `Hosp_Multiracial`,
 1 AS `Hosp_Other`,
 1 AS `Hosp_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `South_UR_Peaks`
--

DROP TABLE IF EXISTS `South_UR_Peaks`;
/*!50001 DROP VIEW IF EXISTS `South_UR_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `South_UR_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_T_By_Gender_Alpha`
--

DROP TABLE IF EXISTS `COVID_Deaths_T_By_Gender_Alpha`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_T_By_Gender_Alpha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_T_By_Gender_Alpha` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_T_Alpha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_Gender_AllVariants`
--

DROP TABLE IF EXISTS `COVID_Cases_By_Gender_AllVariants`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_AllVariants`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_Gender_AllVariants` AS SELECT 
 1 AS `State`,
 1 AS `Total_Count_Alpha`,
 1 AS `Male_Count_Alpha`,
 1 AS `Female_Count_Alpha`,
 1 AS `Total_Count_WT`,
 1 AS `Male_Count_WT`,
 1 AS `Female_Count_WT`,
 1 AS `Total_Count_Delta`,
 1 AS `Male_Count_Delta`,
 1 AS `Female_Count_Delta`,
 1 AS `Total_Count_Omicron`,
 1 AS `Male_Count_Omicron`,
 1 AS `Female_Count_Omicron`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxDeathsOmicron`
--

DROP TABLE IF EXISTS `MaxDeathsOmicron`;
/*!50001 DROP VIEW IF EXISTS `MaxDeathsOmicron`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxDeathsOmicron` AS SELECT 
 1 AS `Date`,
 1 AS `Deaths_Total`,
 1 AS `Deaths_White`,
 1 AS `Deaths_Black`,
 1 AS `Deaths_Latinx`,
 1 AS `Deaths_Asian`,
 1 AS `Deaths_AIAN`,
 1 AS `Deaths_NHPI`,
 1 AS `Deaths_Multiracial`,
 1 AS `Deaths_Other`,
 1 AS `Deaths_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DeathsDelta`
--

DROP TABLE IF EXISTS `DeathsDelta`;
/*!50001 DROP VIEW IF EXISTS `DeathsDelta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DeathsDelta` AS SELECT 
 1 AS `Date`,
 1 AS `Total_Deaths`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinBlackUnempRate`
--

DROP TABLE IF EXISTS `MinBlackUnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinBlackUnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinBlackUnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_Monthly`
--

DROP TABLE IF EXISTS `COVID_Cases_Monthly`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_Monthly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_Monthly` AS SELECT 
 1 AS `MonthDate`,
 1 AS `Cases_Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `CasesAlpha`
--

DROP TABLE IF EXISTS `CasesAlpha`;
/*!50001 DROP VIEW IF EXISTS `CasesAlpha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CasesAlpha` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Cases_Total`,
 1 AS `Cases_White`,
 1 AS `Cases_Black`,
 1 AS `Cases_LatinX`,
 1 AS `Cases_Asian`,
 1 AS `Cases_AIAN`,
 1 AS `Cases_NHPI`,
 1 AS `Cases_Multiracial`,
 1 AS `Cases_Other`,
 1 AS `Cases_Unknown`,
 1 AS `Cases_Ethnicity_Hispanic`,
 1 AS `Cases_Ethnicity_Non_Hispanic`,
 1 AS `Cases_Ethnicity_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Northeast_UR_Peaks`
--

DROP TABLE IF EXISTS `Northeast_UR_Peaks`;
/*!50001 DROP VIEW IF EXISTS `Northeast_UR_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Northeast_UR_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCaseOmicronWeekly`
--

DROP TABLE IF EXISTS `MaxCaseOmicronWeekly`;
/*!50001 DROP VIEW IF EXISTS `MaxCaseOmicronWeekly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCaseOmicronWeekly` AS SELECT 
 1 AS `mx`,
 1 AS `Date`,
 1 AS `MonthDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `White_UR_Peaks`
--

DROP TABLE IF EXISTS `White_UR_Peaks`;
/*!50001 DROP VIEW IF EXISTS `White_UR_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `White_UR_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_State_With_Name`
--

DROP TABLE IF EXISTS `COVID_Cases_By_State_With_Name`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_State_With_Name`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_State_With_Name` AS SELECT 
 1 AS `Date`,
 1 AS `State_Code`,
 1 AS `tot_cases`,
 1 AS `new_cases`,
 1 AS `State_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_F_By_Gender_WT`
--

DROP TABLE IF EXISTS `COVID_Deaths_F_By_Gender_WT`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_F_By_Gender_WT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_F_By_Gender_WT` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_F_WT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_Race_Totals`
--

DROP TABLE IF EXISTS `COVID_Cases_By_Race_Totals`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Race_Totals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_Race_Totals` AS SELECT 
 1 AS `State`,
 1 AS `Cases_Total`,
 1 AS `Cases_White`,
 1 AS `Cases_Black`,
 1 AS `Cases_Latinx`,
 1 AS `Cases_Asian`,
 1 AS `Cases_AIAN`,
 1 AS `Cases_NHPI`,
 1 AS `Cases_Multiracial`,
 1 AS `Cases_Other`,
 1 AS `Cases_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `CasesOmicron`
--

DROP TABLE IF EXISTS `CasesOmicron`;
/*!50001 DROP VIEW IF EXISTS `CasesOmicron`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CasesOmicron` AS SELECT 
 1 AS `Date`,
 1 AS `Total_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxHospDelta`
--

DROP TABLE IF EXISTS `MaxHospDelta`;
/*!50001 DROP VIEW IF EXISTS `MaxHospDelta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxHospDelta` AS SELECT 
 1 AS `Date`,
 1 AS `Hosp_Total`,
 1 AS `Hosp_White`,
 1 AS `Hosp_Black`,
 1 AS `Hosp_Latinx`,
 1 AS `Hosp_Asian`,
 1 AS `Hosp_AIAN`,
 1 AS `Hosp_NHPI`,
 1 AS `Hosp_Multiracial`,
 1 AS `Hosp_Other`,
 1 AS `Hosp_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCaseDate`
--

DROP TABLE IF EXISTS `MaxCaseDate`;
/*!50001 DROP VIEW IF EXISTS `MaxCaseDate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCaseDate` AS SELECT 
 1 AS `mx`,
 1 AS `Date`,
 1 AS `MonthDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxDeathsDeltaGeneral`
--

DROP TABLE IF EXISTS `MaxDeathsDeltaGeneral`;
/*!50001 DROP VIEW IF EXISTS `MaxDeathsDeltaGeneral`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxDeathsDeltaGeneral` AS SELECT 
 1 AS `Date`,
 1 AS `Total_Deaths`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Democratic_State`
--

DROP TABLE IF EXISTS `Democratic_State`;
/*!50001 DROP VIEW IF EXISTS `Democratic_State`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Democratic_State` AS SELECT 
 1 AS `State_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinL20UnempRate`
--

DROP TABLE IF EXISTS `MinL20UnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinL20UnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinL20UnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths`
--

DROP TABLE IF EXISTS `COVID_Deaths`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths` AS SELECT 
 1 AS `Date`,
 1 AS `Deaths_Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_Race_Monthly_View`
--

DROP TABLE IF EXISTS `COVID_Cases_By_Race_Monthly_View`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Race_Monthly_View`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_Race_Monthly_View` AS SELECT 
 1 AS `MonthDate`,
 1 AS `Cases_Total`,
 1 AS `Cases_White`,
 1 AS `Cases_Black`,
 1 AS `Cases_LatinX`,
 1 AS `Cases_Asian`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinMidwestUnempRate`
--

DROP TABLE IF EXISTS `MinMidwestUnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinMidwestUnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinMidwestUnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `HospOmicron`
--

DROP TABLE IF EXISTS `HospOmicron`;
/*!50001 DROP VIEW IF EXISTS `HospOmicron`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `HospOmicron` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Hosp_Total`,
 1 AS `Hosp_White`,
 1 AS `Hosp_Black`,
 1 AS `Hosp_Latinx`,
 1 AS `Hosp_Asian`,
 1 AS `Hosp_AIAN`,
 1 AS `Hosp_NHPI`,
 1 AS `Hosp_Multiracial`,
 1 AS `Hosp_Other`,
 1 AS `Hosp_Unknown`,
 1 AS `Hosp_Ethnicity_Hispanic`,
 1 AS `Hosp_Ethnicity_NonHispanic`,
 1 AS `Hosp_Ethnicity_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `GDP_Priv_Peaks`
--

DROP TABLE IF EXISTS `GDP_Priv_Peaks`;
/*!50001 DROP VIEW IF EXISTS `GDP_Priv_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `GDP_Priv_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_M_By_Gender_Alpha`
--

DROP TABLE IF EXISTS `COVID_Deaths_M_By_Gender_Alpha`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_M_By_Gender_Alpha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_M_By_Gender_Alpha` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_M_Alpha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxPrivateGDP`
--

DROP TABLE IF EXISTS `MaxPrivateGDP`;
/*!50001 DROP VIEW IF EXISTS `MaxPrivateGDP`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxPrivateGDP` AS SELECT 
 1 AS `mx`,
 1 AS `Quarter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_Age_M_Breakdown`
--

DROP TABLE IF EXISTS `COVID_Deaths_Age_M_Breakdown`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_Age_M_Breakdown`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_Age_M_Breakdown` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_M_WT`,
 1 AS `Total_Deaths_M_Alpha`,
 1 AS `Total_Deaths_M_Delta`,
 1 AS `Total_Deaths_M_Omicron`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_Age_Breakdown_All_Genders`
--

DROP TABLE IF EXISTS `COVID_Deaths_Age_Breakdown_All_Genders`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_Age_Breakdown_All_Genders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_Age_Breakdown_All_Genders` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_M_WT`,
 1 AS `Total_Deaths_M_Alpha`,
 1 AS `Total_Deaths_M_Delta`,
 1 AS `Total_Deaths_M_Omicron`,
 1 AS `Total_Deaths_F_WT`,
 1 AS `Total_Deaths_F_Alpha`,
 1 AS `Total_Deaths_F_Delta`,
 1 AS `Total_Deaths_F_Omicron`,
 1 AS `Total_Deaths_T_WT`,
 1 AS `Total_Deaths_T_Alpha`,
 1 AS `Total_Deaths_T_Delta`,
 1 AS `Total_Deaths_T_Omicron`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCaseWTWeekly`
--

DROP TABLE IF EXISTS `MaxCaseWTWeekly`;
/*!50001 DROP VIEW IF EXISTS `MaxCaseWTWeekly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCaseWTWeekly` AS SELECT 
 1 AS `mx`,
 1 AS `Date`,
 1 AS `MonthDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_Gender_Alpha`
--

DROP TABLE IF EXISTS `COVID_Cases_By_Gender_Alpha`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_Alpha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_Gender_Alpha` AS SELECT 
 1 AS `State`,
 1 AS `Total_Count_Alpha`,
 1 AS `Male_Count_Alpha`,
 1 AS `Female_Count_Alpha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_M_By_Gender_Omicron`
--

DROP TABLE IF EXISTS `COVID_Deaths_M_By_Gender_Omicron`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_M_By_Gender_Omicron`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_M_By_Gender_Omicron` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_M_Omicron`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `HospWT`
--

DROP TABLE IF EXISTS `HospWT`;
/*!50001 DROP VIEW IF EXISTS `HospWT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `HospWT` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Hosp_Total`,
 1 AS `Hosp_White`,
 1 AS `Hosp_Black`,
 1 AS `Hosp_Latinx`,
 1 AS `Hosp_Asian`,
 1 AS `Hosp_AIAN`,
 1 AS `Hosp_NHPI`,
 1 AS `Hosp_Multiracial`,
 1 AS `Hosp_Other`,
 1 AS `Hosp_Unknown`,
 1 AS `Hosp_Ethnicity_Hispanic`,
 1 AS `Hosp_Ethnicity_NonHispanic`,
 1 AS `Hosp_Ethnicity_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Jabs_Per_Population`
--

DROP TABLE IF EXISTS `Jabs_Per_Population`;
/*!50001 DROP VIEW IF EXISTS `Jabs_Per_Population`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Jabs_Per_Population` AS SELECT 
 1 AS `State`,
 1 AS `SUM(Admin_Daily)/Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DeathsWT`
--

DROP TABLE IF EXISTS `DeathsWT`;
/*!50001 DROP VIEW IF EXISTS `DeathsWT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DeathsWT` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Deaths_Total`,
 1 AS `Deaths_White`,
 1 AS `Deaths_Black`,
 1 AS `Deaths_LatinX`,
 1 AS `Deaths_Asian`,
 1 AS `Deaths_AIAN`,
 1 AS `Deaths_NHPI`,
 1 AS `Deaths_Multiracial`,
 1 AS `Deaths_Other`,
 1 AS `Deaths_Unknown`,
 1 AS `Deaths_Ethnicity_Hispanic`,
 1 AS `Deaths_Ethnicity_Non_Hispanic`,
 1 AS `Deaths_Ethnicity_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxGovGDP`
--

DROP TABLE IF EXISTS `MaxGovGDP`;
/*!50001 DROP VIEW IF EXISTS `MaxGovGDP`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxGovGDP` AS SELECT 
 1 AS `mx`,
 1 AS `Quarter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_Gender_Delta`
--

DROP TABLE IF EXISTS `COVID_Cases_By_Gender_Delta`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_Delta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_Gender_Delta` AS SELECT 
 1 AS `State`,
 1 AS `Total_Count_Delta`,
 1 AS `Male_Count_Delta`,
 1 AS `Female_Count_Delta`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `State_Loc_MeshedWithInsurance`
--

DROP TABLE IF EXISTS `State_Loc_MeshedWithInsurance`;
/*!50001 DROP VIEW IF EXISTS `State_Loc_MeshedWithInsurance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `State_Loc_MeshedWithInsurance` AS SELECT 
 1 AS `State_Name`,
 1 AS `Employer`,
 1 AS `NonGroup`,
 1 AS `Medicaid`,
 1 AS `Medicare`,
 1 AS `Military`,
 1 AS `Uninsured`,
 1 AS `Total`,
 1 AS `Footnotes`,
 1 AS `Capital_Name`,
 1 AS `latitude`,
 1 AS `longitude`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCaseDeltaWeekly`
--

DROP TABLE IF EXISTS `MaxCaseDeltaWeekly`;
/*!50001 DROP VIEW IF EXISTS `MaxCaseDeltaWeekly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCaseDeltaWeekly` AS SELECT 
 1 AS `mx`,
 1 AS `Date`,
 1 AS `MonthDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Natl_PS_Peaks`
--

DROP TABLE IF EXISTS `Natl_PS_Peaks`;
/*!50001 DROP VIEW IF EXISTS `Natl_PS_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Natl_PS_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Women_UR_Peaks`
--

DROP TABLE IF EXISTS `Women_UR_Peaks`;
/*!50001 DROP VIEW IF EXISTS `Women_UR_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Women_UR_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCasesAlpha`
--

DROP TABLE IF EXISTS `MaxCasesAlpha`;
/*!50001 DROP VIEW IF EXISTS `MaxCasesAlpha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCasesAlpha` AS SELECT 
 1 AS `Date`,
 1 AS `Cases_Total`,
 1 AS `Cases_White`,
 1 AS `Cases_Black`,
 1 AS `Cases_Latinx`,
 1 AS `Cases_Asian`,
 1 AS `Cases_AIAN`,
 1 AS `Cases_NHPI`,
 1 AS `Cases_Multiracial`,
 1 AS `Cases_Other`,
 1 AS `Cases_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Asian_UR_Peaks`
--

DROP TABLE IF EXISTS `Asian_UR_Peaks`;
/*!50001 DROP VIEW IF EXISTS `Asian_UR_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Asian_UR_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Hospitalizations_National`
--

DROP TABLE IF EXISTS `COVID_Hospitalizations_National`;
/*!50001 DROP VIEW IF EXISTS `COVID_Hospitalizations_National`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Hospitalizations_National` AS SELECT 
 1 AS `Date`,
 1 AS `Hosp_Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCasesDelta`
--

DROP TABLE IF EXISTS `MaxCasesDelta`;
/*!50001 DROP VIEW IF EXISTS `MaxCasesDelta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCasesDelta` AS SELECT 
 1 AS `Date`,
 1 AS `Total_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_T_By_Gender_Omicron`
--

DROP TABLE IF EXISTS `COVID_Deaths_T_By_Gender_Omicron`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_T_By_Gender_Omicron`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_T_By_Gender_Omicron` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_T_Omicron`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_Quarterly`
--

DROP TABLE IF EXISTS `COVID_Cases_Quarterly`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_Quarterly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_Quarterly` AS SELECT 
 1 AS `Quarter`,
 1 AS `Cases_Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `UnempRateRegionCol`
--

DROP TABLE IF EXISTS `UnempRateRegionCol`;
/*!50001 DROP VIEW IF EXISTS `UnempRateRegionCol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `UnempRateRegionCol` AS SELECT 
 1 AS `Date`,
 1 AS `West`,
 1 AS `South`,
 1 AS `Northeast`,
 1 AS `Midwest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCaseOmicron`
--

DROP TABLE IF EXISTS `MaxCaseOmicron`;
/*!50001 DROP VIEW IF EXISTS `MaxCaseOmicron`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCaseOmicron` AS SELECT 
 1 AS `mx`,
 1 AS `MonthDate`,
 1 AS `Quarter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVIDCasesMonthlyRegionCol`
--

DROP TABLE IF EXISTS `COVIDCasesMonthlyRegionCol`;
/*!50001 DROP VIEW IF EXISTS `COVIDCasesMonthlyRegionCol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVIDCasesMonthlyRegionCol` AS SELECT 
 1 AS `MonthDate`,
 1 AS `Cases_West`,
 1 AS `Cases_South`,
 1 AS `Cases_Northeast`,
 1 AS `Cases_Midwest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DeathsAlpha`
--

DROP TABLE IF EXISTS `DeathsAlpha`;
/*!50001 DROP VIEW IF EXISTS `DeathsAlpha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DeathsAlpha` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Deaths_Total`,
 1 AS `Deaths_White`,
 1 AS `Deaths_Black`,
 1 AS `Deaths_LatinX`,
 1 AS `Deaths_Asian`,
 1 AS `Deaths_AIAN`,
 1 AS `Deaths_NHPI`,
 1 AS `Deaths_Multiracial`,
 1 AS `Deaths_Other`,
 1 AS `Deaths_Unknown`,
 1 AS `Deaths_Ethnicity_Hispanic`,
 1 AS `Deaths_Ethnicity_Non_Hispanic`,
 1 AS `Deaths_Ethnicity_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCaseAlphaWeekly`
--

DROP TABLE IF EXISTS `MaxCaseAlphaWeekly`;
/*!50001 DROP VIEW IF EXISTS `MaxCaseAlphaWeekly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCaseAlphaWeekly` AS SELECT 
 1 AS `mx`,
 1 AS `Date`,
 1 AS `MonthDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Black_UR_Peaks`
--

DROP TABLE IF EXISTS `Black_UR_Peaks`;
/*!50001 DROP VIEW IF EXISTS `Black_UR_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Black_UR_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `CasesDelta`
--

DROP TABLE IF EXISTS `CasesDelta`;
/*!50001 DROP VIEW IF EXISTS `CasesDelta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CasesDelta` AS SELECT 
 1 AS `Date`,
 1 AS `Total_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Hispanic_UR_Peaks`
--

DROP TABLE IF EXISTS `Hispanic_UR_Peaks`;
/*!50001 DROP VIEW IF EXISTS `Hispanic_UR_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Hispanic_UR_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCasesOmicron`
--

DROP TABLE IF EXISTS `MaxCasesOmicron`;
/*!50001 DROP VIEW IF EXISTS `MaxCasesOmicron`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCasesOmicron` AS SELECT 
 1 AS `Date`,
 1 AS `Cases_Total`,
 1 AS `Cases_White`,
 1 AS `Cases_Black`,
 1 AS `Cases_Latinx`,
 1 AS `Cases_Asian`,
 1 AS `Cases_AIAN`,
 1 AS `Cases_NHPI`,
 1 AS `Cases_Multiracial`,
 1 AS `Cases_Other`,
 1 AS `Cases_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_F_By_Gender_Omicron`
--

DROP TABLE IF EXISTS `COVID_Deaths_F_By_Gender_Omicron`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_F_By_Gender_Omicron`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_F_By_Gender_Omicron` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_F_Omicron`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCasesWT`
--

DROP TABLE IF EXISTS `MaxCasesWT`;
/*!50001 DROP VIEW IF EXISTS `MaxCasesWT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCasesWT` AS SELECT 
 1 AS `Date`,
 1 AS `Cases_Total`,
 1 AS `Cases_White`,
 1 AS `Cases_Black`,
 1 AS `Cases_Latinx`,
 1 AS `Cases_Asian`,
 1 AS `Cases_AIAN`,
 1 AS `Cases_NHPI`,
 1 AS `Cases_Multiracial`,
 1 AS `Cases_Other`,
 1 AS `Cases_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_T_By_Gender_WT`
--

DROP TABLE IF EXISTS `COVID_Deaths_T_By_Gender_WT`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_T_By_Gender_WT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_T_By_Gender_WT` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_T_WT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `EmpLevelAgeCol`
--

DROP TABLE IF EXISTS `EmpLevelAgeCol`;
/*!50001 DROP VIEW IF EXISTS `EmpLevelAgeCol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `EmpLevelAgeCol` AS SELECT 
 1 AS `Date`,
 1 AS `Yrs_16_19`,
 1 AS `Yrs_20_24`,
 1 AS `Yrs_25_34`,
 1 AS `Yrs_35_44`,
 1 AS `Yrs_45_54`,
 1 AS `Yrs_55_up`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_By_With_State_Name`
--

DROP TABLE IF EXISTS `COVID_Deaths_By_With_State_Name`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_By_With_State_Name`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_By_With_State_Name` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Deaths_Total`,
 1 AS `Deaths_White`,
 1 AS `Deaths_Black`,
 1 AS `Deaths_LatinX`,
 1 AS `Deaths_Asian`,
 1 AS `Deaths_AIAN`,
 1 AS `Deaths_NHPI`,
 1 AS `Deaths_Multiracial`,
 1 AS `Deaths_Other`,
 1 AS `Deaths_Unknown`,
 1 AS `Deaths_Ethnicity_Hispanic`,
 1 AS `Deaths_Ethnicity_Non_Hispanic`,
 1 AS `Deaths_Ethnicity_Unknown`,
 1 AS `State_Name`,
 1 AS `abbrev`,
 1 AS `code`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinPersonalSav`
--

DROP TABLE IF EXISTS `MinPersonalSav`;
/*!50001 DROP VIEW IF EXISTS `MinPersonalSav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinPersonalSav` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinPersonalInc`
--

DROP TABLE IF EXISTS `MinPersonalInc`;
/*!50001 DROP VIEW IF EXISTS `MinPersonalInc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinPersonalInc` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `State_Vaccinations`
--

DROP TABLE IF EXISTS `State_Vaccinations`;
/*!50001 DROP VIEW IF EXISTS `State_Vaccinations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `State_Vaccinations` AS SELECT 
 1 AS `Date`,
 1 AS `Location`,
 1 AS `Admin_Dose_1_Daily`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinUnempRate`
--

DROP TABLE IF EXISTS `MinUnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinUnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinUnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinG20UnempRate`
--

DROP TABLE IF EXISTS `MinG20UnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinG20UnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinG20UnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_M_By_Gender_Delta`
--

DROP TABLE IF EXISTS `COVID_Deaths_M_By_Gender_Delta`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_M_By_Gender_Delta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_M_By_Gender_Delta` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_M_Delta`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `West_UR_Peaks`
--

DROP TABLE IF EXISTS `West_UR_Peaks`;
/*!50001 DROP VIEW IF EXISTS `West_UR_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `West_UR_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Natl_UR_Peaks`
--

DROP TABLE IF EXISTS `Natl_UR_Peaks`;
/*!50001 DROP VIEW IF EXISTS `Natl_UR_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Natl_UR_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Jabs_Per_Population_State`
--

DROP TABLE IF EXISTS `Jabs_Per_Population_State`;
/*!50001 DROP VIEW IF EXISTS `Jabs_Per_Population_State`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Jabs_Per_Population_State` AS SELECT 
 1 AS `State`,
 1 AS `JabPerPop`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Men_UR_Peaks`
--

DROP TABLE IF EXISTS `Men_UR_Peaks`;
/*!50001 DROP VIEW IF EXISTS `Men_UR_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Men_UR_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCaseWT`
--

DROP TABLE IF EXISTS `MaxCaseWT`;
/*!50001 DROP VIEW IF EXISTS `MaxCaseWT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCaseWT` AS SELECT 
 1 AS `mx`,
 1 AS `MonthDate`,
 1 AS `Quarter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Natl_GDP_Peaks`
--

DROP TABLE IF EXISTS `Natl_GDP_Peaks`;
/*!50001 DROP VIEW IF EXISTS `Natl_GDP_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Natl_GDP_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxHospOmicron`
--

DROP TABLE IF EXISTS `MaxHospOmicron`;
/*!50001 DROP VIEW IF EXISTS `MaxHospOmicron`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxHospOmicron` AS SELECT 
 1 AS `Date`,
 1 AS `Hosp_Total`,
 1 AS `Hosp_White`,
 1 AS `Hosp_Black`,
 1 AS `Hosp_Latinx`,
 1 AS `Hosp_Asian`,
 1 AS `Hosp_AIAN`,
 1 AS `Hosp_NHPI`,
 1 AS `Hosp_Multiracial`,
 1 AS `Hosp_Other`,
 1 AS `Hosp_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinWestUnempRate`
--

DROP TABLE IF EXISTS `MinWestUnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinWestUnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinWestUnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Hospitalizations_By_With_State_Name`
--

DROP TABLE IF EXISTS `COVID_Hospitalizations_By_With_State_Name`;
/*!50001 DROP VIEW IF EXISTS `COVID_Hospitalizations_By_With_State_Name`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Hospitalizations_By_With_State_Name` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Hosp_Total`,
 1 AS `Hosp_White`,
 1 AS `Hosp_Black`,
 1 AS `Hosp_Latinx`,
 1 AS `Hosp_Asian`,
 1 AS `Hosp_AIAN`,
 1 AS `Hosp_NHPI`,
 1 AS `Hosp_Multiracial`,
 1 AS `Hosp_Other`,
 1 AS `Hosp_Unknown`,
 1 AS `Hosp_Ethnicity_Hispanic`,
 1 AS `Hosp_Ethnicity_NonHispanic`,
 1 AS `Hosp_Ethnicity_Unknown`,
 1 AS `State_Name`,
 1 AS `abbrev`,
 1 AS `code`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `HospAlpha`
--

DROP TABLE IF EXISTS `HospAlpha`;
/*!50001 DROP VIEW IF EXISTS `HospAlpha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `HospAlpha` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Hosp_Total`,
 1 AS `Hosp_White`,
 1 AS `Hosp_Black`,
 1 AS `Hosp_Latinx`,
 1 AS `Hosp_Asian`,
 1 AS `Hosp_AIAN`,
 1 AS `Hosp_NHPI`,
 1 AS `Hosp_Multiracial`,
 1 AS `Hosp_Other`,
 1 AS `Hosp_Unknown`,
 1 AS `Hosp_Ethnicity_Hispanic`,
 1 AS `Hosp_Ethnicity_NonHispanic`,
 1 AS `Hosp_Ethnicity_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_T_By_Gender_Delta`
--

DROP TABLE IF EXISTS `COVID_Deaths_T_By_Gender_Delta`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_T_By_Gender_Delta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_T_By_Gender_Delta` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_T_Delta`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxEmpLevel`
--

DROP TABLE IF EXISTS `MaxEmpLevel`;
/*!50001 DROP VIEW IF EXISTS `MaxEmpLevel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxEmpLevel` AS SELECT 
 1 AS `max`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_Age_T_Breakdown`
--

DROP TABLE IF EXISTS `COVID_Deaths_Age_T_Breakdown`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_Age_T_Breakdown`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_Age_T_Breakdown` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_T_WT`,
 1 AS `Total_Deaths_T_Alpha`,
 1 AS `Total_Deaths_T_Delta`,
 1 AS `Total_Deaths_T_Omicron`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_M_By_Gender_WT`
--

DROP TABLE IF EXISTS `COVID_Deaths_M_By_Gender_WT`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_M_By_Gender_WT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_M_By_Gender_WT` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_M_WT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxDeathsDelta`
--

DROP TABLE IF EXISTS `MaxDeathsDelta`;
/*!50001 DROP VIEW IF EXISTS `MaxDeathsDelta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxDeathsDelta` AS SELECT 
 1 AS `Date`,
 1 AS `Deaths_Total`,
 1 AS `Deaths_White`,
 1 AS `Deaths_Black`,
 1 AS `Deaths_Latinx`,
 1 AS `Deaths_Asian`,
 1 AS `Deaths_AIAN`,
 1 AS `Deaths_NHPI`,
 1 AS `Deaths_Multiracial`,
 1 AS `Deaths_Other`,
 1 AS `Deaths_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_Gender_Omicron`
--

DROP TABLE IF EXISTS `COVID_Cases_By_Gender_Omicron`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_Omicron`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_Gender_Omicron` AS SELECT 
 1 AS `State`,
 1 AS `Total_Count_Omicron`,
 1 AS `Male_Count_Omicron`,
 1 AS `Female_Count_Omicron`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `EmpLevelYearCol`
--

DROP TABLE IF EXISTS `EmpLevelYearCol`;
/*!50001 DROP VIEW IF EXISTS `EmpLevelYearCol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `EmpLevelYearCol` AS SELECT 
 1 AS `Yrs_16_19_High`,
 1 AS `Yrs_20_24_High`,
 1 AS `Yrs_25_34_High`,
 1 AS `Yrs_35_44_High`,
 1 AS `Yrs_45_54_High`,
 1 AS `Yrs_55_up_High`,
 1 AS `Yrs_16_19_Low`,
 1 AS `Yrs_20_24_Low`,
 1 AS `Yrs_25_34_Low`,
 1 AS `Yrs_35_44_Low`,
 1 AS `Yrs_45_54_Low`,
 1 AS `Yrs_55_up_Low`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinNortheastUnempRate`
--

DROP TABLE IF EXISTS `MinNortheastUnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinNortheastUnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinNortheastUnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Midwest_UR_Peaks`
--

DROP TABLE IF EXISTS `Midwest_UR_Peaks`;
/*!50001 DROP VIEW IF EXISTS `Midwest_UR_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Midwest_UR_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxHospWT`
--

DROP TABLE IF EXISTS `MaxHospWT`;
/*!50001 DROP VIEW IF EXISTS `MaxHospWT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxHospWT` AS SELECT 
 1 AS `Date`,
 1 AS `Hosp_Total`,
 1 AS `Hosp_White`,
 1 AS `Hosp_Black`,
 1 AS `Hosp_Latinx`,
 1 AS `Hosp_Asian`,
 1 AS `Hosp_AIAN`,
 1 AS `Hosp_NHPI`,
 1 AS `Hosp_Multiracial`,
 1 AS `Hosp_Other`,
 1 AS `Hosp_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `State_Political_ID`
--

DROP TABLE IF EXISTS `State_Political_ID`;
/*!50001 DROP VIEW IF EXISTS `State_Political_ID`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `State_Political_ID` AS SELECT 
 1 AS `State_Name`,
 1 AS `Affiliations`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Natl_PI_Peaks`
--

DROP TABLE IF EXISTS `Natl_PI_Peaks`;
/*!50001 DROP VIEW IF EXISTS `Natl_PI_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Natl_PI_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_With_State_Name`
--

DROP TABLE IF EXISTS `COVID_Cases_By_With_State_Name`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_With_State_Name`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_With_State_Name` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Cases_Total`,
 1 AS `Cases_White`,
 1 AS `Cases_Black`,
 1 AS `Cases_LatinX`,
 1 AS `Cases_Asian`,
 1 AS `Cases_AIAN`,
 1 AS `Cases_NHPI`,
 1 AS `Cases_Multiracial`,
 1 AS `Cases_Other`,
 1 AS `Cases_Unknown`,
 1 AS `Cases_Ethnicity_Hispanic`,
 1 AS `Cases_Ethnicity_Non_Hispanic`,
 1 AS `Cases_Ethnicity_Unknown`,
 1 AS `State_Name`,
 1 AS `abbrev`,
 1 AS `code`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_Gender_WT`
--

DROP TABLE IF EXISTS `COVID_Cases_By_Gender_WT`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_WT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_Gender_WT` AS SELECT 
 1 AS `State`,
 1 AS `Total_Count_WT`,
 1 AS `Male_Count_WT`,
 1 AS `Female_Count_WT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_F_By_Gender_Delta`
--

DROP TABLE IF EXISTS `COVID_Deaths_F_By_Gender_Delta`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_F_By_Gender_Delta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_F_By_Gender_Delta` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_F_Delta`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Test_By_With_State_Name`
--

DROP TABLE IF EXISTS `COVID_Test_By_With_State_Name`;
/*!50001 DROP VIEW IF EXISTS `COVID_Test_By_With_State_Name`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Test_By_With_State_Name` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Tests_Total`,
 1 AS `Tests_White`,
 1 AS `Tests_Black`,
 1 AS `Tests_Latinx`,
 1 AS `Tests_Asian`,
 1 AS `Tests_AIAN`,
 1 AS `Tests_NHPI`,
 1 AS `Tests_Multiracial`,
 1 AS `Tests_Other`,
 1 AS `Tests_Unknown`,
 1 AS `Tests_Ethnicity_Hispanic`,
 1 AS `Tests_Ethnicity_NonHispanic`,
 1 AS `Tests_Ethnicity_Unknown`,
 1 AS `State_Name`,
 1 AS `abbrev`,
 1 AS `code`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_Gender_Monthly`
--

DROP TABLE IF EXISTS `COVID_Cases_By_Gender_Monthly`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_Monthly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_Gender_Monthly` AS SELECT 
 1 AS `MonthDate`,
 1 AS `Cases_Total`,
 1 AS `Cases_Male`,
 1 AS `Cases_Female`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Deaths_F_By_Gender_Alpha`
--

DROP TABLE IF EXISTS `COVID_Deaths_F_By_Gender_Alpha`;
/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_F_By_Gender_Alpha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Deaths_F_By_Gender_Alpha` AS SELECT 
 1 AS `Age_Group`,
 1 AS `Total_Deaths_F_Alpha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxGDP`
--

DROP TABLE IF EXISTS `MaxGDP`;
/*!50001 DROP VIEW IF EXISTS `MaxGDP`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxGDP` AS SELECT 
 1 AS `mx`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `CasesWT`
--

DROP TABLE IF EXISTS `CasesWT`;
/*!50001 DROP VIEW IF EXISTS `CasesWT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CasesWT` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Cases_Total`,
 1 AS `Cases_White`,
 1 AS `Cases_Black`,
 1 AS `Cases_LatinX`,
 1 AS `Cases_Asian`,
 1 AS `Cases_AIAN`,
 1 AS `Cases_NHPI`,
 1 AS `Cases_Multiracial`,
 1 AS `Cases_Other`,
 1 AS `Cases_Unknown`,
 1 AS `Cases_Ethnicity_Hispanic`,
 1 AS `Cases_Ethnicity_Non_Hispanic`,
 1 AS `Cases_Ethnicity_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MonthDate_To_Quarter`
--

DROP TABLE IF EXISTS `MonthDate_To_Quarter`;
/*!50001 DROP VIEW IF EXISTS `MonthDate_To_Quarter`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MonthDate_To_Quarter` AS SELECT 
 1 AS `MonthDate`,
 1 AS `Quarter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Republican_States`
--

DROP TABLE IF EXISTS `Republican_States`;
/*!50001 DROP VIEW IF EXISTS `Republican_States`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Republican_States` AS SELECT 
 1 AS `State_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_Weekly`
--

DROP TABLE IF EXISTS `COVID_Cases_Weekly`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_Weekly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_Weekly` AS SELECT 
 1 AS `Date`,
 1 AS `Cases_Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `HospDelta`
--

DROP TABLE IF EXISTS `HospDelta`;
/*!50001 DROP VIEW IF EXISTS `HospDelta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `HospDelta` AS SELECT 
 1 AS `Date`,
 1 AS `State`,
 1 AS `Hosp_Total`,
 1 AS `Hosp_White`,
 1 AS `Hosp_Black`,
 1 AS `Hosp_Latinx`,
 1 AS `Hosp_Asian`,
 1 AS `Hosp_AIAN`,
 1 AS `Hosp_NHPI`,
 1 AS `Hosp_Multiracial`,
 1 AS `Hosp_Other`,
 1 AS `Hosp_Unknown`,
 1 AS `Hosp_Ethnicity_Hispanic`,
 1 AS `Hosp_Ethnicity_NonHispanic`,
 1 AS `Hosp_Ethnicity_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `GDP_Gov_Peaks`
--

DROP TABLE IF EXISTS `GDP_Gov_Peaks`;
/*!50001 DROP VIEW IF EXISTS `GDP_Gov_Peaks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `GDP_Gov_Peaks` AS SELECT 
 1 AS `Pre_COVID`,
 1 AS `WildType_Peak`,
 1 AS `Alpha_Peak`,
 1 AS `Delta_Peak`,
 1 AS `Omicron_Peak`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCaseDelta`
--

DROP TABLE IF EXISTS `MaxCaseDelta`;
/*!50001 DROP VIEW IF EXISTS `MaxCaseDelta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCaseDelta` AS SELECT 
 1 AS `mx`,
 1 AS `MonthDate`,
 1 AS `Quarter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinMenUnempRate`
--

DROP TABLE IF EXISTS `MinMenUnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinMenUnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinMenUnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinAsianUnempRate`
--

DROP TABLE IF EXISTS `MinAsianUnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinAsianUnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinAsianUnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Unemployment_Rate_By_Region`
--

DROP TABLE IF EXISTS `Unemployment_Rate_By_Region`;
/*!50001 DROP VIEW IF EXISTS `Unemployment_Rate_By_Region`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Unemployment_Rate_By_Region` AS SELECT 
 1 AS `Date`,
 1 AS `Region`,
 1 AS `Unemp_Rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `RaceRemoteWorkYearCol`
--

DROP TABLE IF EXISTS `RaceRemoteWorkYearCol`;
/*!50001 DROP VIEW IF EXISTS `RaceRemoteWorkYearCol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RaceRemoteWorkYearCol` AS SELECT 
 1 AS `White_2020`,
 1 AS `Black_2020`,
 1 AS `Hispanic_2020`,
 1 AS `Asian_2020`,
 1 AS `Total_2020`,
 1 AS `White_2021`,
 1 AS `Black_2021`,
 1 AS `Hispanic_2021`,
 1 AS `Asian_2021`,
 1 AS `Total_2021`,
 1 AS `White_2022`,
 1 AS `Black_2022`,
 1 AS `Hispanic_2022`,
 1 AS `Asian_2022`,
 1 AS `Total_2022`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxDeathsWT`
--

DROP TABLE IF EXISTS `MaxDeathsWT`;
/*!50001 DROP VIEW IF EXISTS `MaxDeathsWT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxDeathsWT` AS SELECT 
 1 AS `Date`,
 1 AS `Deaths_Total`,
 1 AS `Deaths_White`,
 1 AS `Deaths_Black`,
 1 AS `Deaths_Latinx`,
 1 AS `Deaths_Asian`,
 1 AS `Deaths_AIAN`,
 1 AS `Deaths_NHPI`,
 1 AS `Deaths_Multiracial`,
 1 AS `Deaths_Other`,
 1 AS `Deaths_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinHispanicUnempRate`
--

DROP TABLE IF EXISTS `MinHispanicUnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinHispanicUnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinHispanicUnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinWhiteUnempRate`
--

DROP TABLE IF EXISTS `MinWhiteUnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinWhiteUnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinWhiteUnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DeathsOmicron`
--

DROP TABLE IF EXISTS `DeathsOmicron`;
/*!50001 DROP VIEW IF EXISTS `DeathsOmicron`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DeathsOmicron` AS SELECT 
 1 AS `Date`,
 1 AS `Total_Deaths`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinSouthUnempRate`
--

DROP TABLE IF EXISTS `MinSouthUnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinSouthUnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinSouthUnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxDeathsAlpha`
--

DROP TABLE IF EXISTS `MaxDeathsAlpha`;
/*!50001 DROP VIEW IF EXISTS `MaxDeathsAlpha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxDeathsAlpha` AS SELECT 
 1 AS `Date`,
 1 AS `Deaths_Total`,
 1 AS `Deaths_White`,
 1 AS `Deaths_Black`,
 1 AS `Deaths_Latinx`,
 1 AS `Deaths_Asian`,
 1 AS `Deaths_AIAN`,
 1 AS `Deaths_NHPI`,
 1 AS `Deaths_Multiracial`,
 1 AS `Deaths_Other`,
 1 AS `Deaths_Unknown`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_Region_Monthly`
--

DROP TABLE IF EXISTS `COVID_Cases_By_Region_Monthly`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Region_Monthly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_Region_Monthly` AS SELECT 
 1 AS `MonthDate`,
 1 AS `Region`,
 1 AS `Cases_Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `COVID_Cases_By_Race_Per`
--

DROP TABLE IF EXISTS `COVID_Cases_By_Race_Per`;
/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Race_Per`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `COVID_Cases_By_Race_Per` AS SELECT 
 1 AS `State`,
 1 AS `Per_White`,
 1 AS `Per_Black`,
 1 AS `Per_Asian`,
 1 AS `Per_Latinx`,
 1 AS `Per_AIAN`,
 1 AS `Per_NHPI`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MaxCaseAlpha`
--

DROP TABLE IF EXISTS `MaxCaseAlpha`;
/*!50001 DROP VIEW IF EXISTS `MaxCaseAlpha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MaxCaseAlpha` AS SELECT 
 1 AS `mx`,
 1 AS `MonthDate`,
 1 AS `Quarter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `US_Population_Racial_Percentages`
--

DROP TABLE IF EXISTS `US_Population_Racial_Percentages`;
/*!50001 DROP VIEW IF EXISTS `US_Population_Racial_Percentages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `US_Population_Racial_Percentages` AS SELECT 
 1 AS `State`,
 1 AS `White`,
 1 AS `Black`,
 1 AS `NHPI`,
 1 AS `Asian`,
 1 AS `AIAN`,
 1 AS `Latinx`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MinWomenUnempRate`
--

DROP TABLE IF EXISTS `MinWomenUnempRate`;
/*!50001 DROP VIEW IF EXISTS `MinWomenUnempRate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MinWomenUnempRate` AS SELECT 
 1 AS `min`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `COVID_Deaths_Age_F_Breakdown`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_Age_F_Breakdown`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_Age_F_Breakdown` AS select `a`.`Age_Group` AS `Age_Group`,`a`.`Total_Deaths_F_WT` AS `Total_Deaths_F_WT`,`a`.`Total_Deaths_F_Alpha` AS `Total_Deaths_F_Alpha`,`a`.`Total_Deaths_F_Delta` AS `Total_Deaths_F_Delta`,`a`.`Total_Deaths_F_Omicron` AS `Total_Deaths_F_Omicron` from (select `COVID_Deaths_F_By_Gender_WT`.`Age_Group` AS `Age_Group`,`COVID_Deaths_F_By_Gender_WT`.`Total_Deaths_F_WT` AS `Total_Deaths_F_WT`,`COVID_Deaths_F_By_Gender_Alpha`.`Total_Deaths_F_Alpha` AS `Total_Deaths_F_Alpha`,`COVID_Deaths_F_By_Gender_Delta`.`Total_Deaths_F_Delta` AS `Total_Deaths_F_Delta`,`COVID_Deaths_F_By_Gender_Omicron`.`Total_Deaths_F_Omicron` AS `Total_Deaths_F_Omicron` from (((`COVID_Deaths_F_By_Gender_WT` join `COVID_Deaths_F_By_Gender_Alpha` on((`COVID_Deaths_F_By_Gender_WT`.`Age_Group` = `COVID_Deaths_F_By_Gender_Alpha`.`Age_Group`))) join `COVID_Deaths_F_By_Gender_Delta` on((`COVID_Deaths_F_By_Gender_WT`.`Age_Group` = `COVID_Deaths_F_By_Gender_Delta`.`Age_Group`))) join `COVID_Deaths_F_By_Gender_Omicron` on((`COVID_Deaths_F_By_Gender_WT`.`Age_Group` = `COVID_Deaths_F_By_Gender_Omicron`.`Age_Group`)))) `a` where (`a`.`Age_Group` <> 'All Ages') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Personal_Income_State`
--

/*!50001 DROP VIEW IF EXISTS `Personal_Income_State`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Personal_Income_State` AS select `Personal_Income_By_State`.`Quarter` AS `Quarter`,`Personal_Income_By_State`.`State` AS `State`,`Personal_Income_By_State`.`Personal Income` AS `Personal Income`,`MonthDate_To_Quarter`.`MonthDate` AS `MonthDate` from (`Personal_Income_By_State` join `MonthDate_To_Quarter` on((`Personal_Income_By_State`.`Quarter` = `MonthDate_To_Quarter`.`Quarter`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `GenderRemoteWorkYearCol`
--

/*!50001 DROP VIEW IF EXISTS `GenderRemoteWorkYearCol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `GenderRemoteWorkYearCol` AS select sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Men_16to24_years` else 0 end)) AS `Men_16to24_years_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Men_25to54_years` else 0 end)) AS `Men_25to54_years_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Men_55Plus` else 0 end)) AS `Men_55Plus_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Men_16to24_years` else 0 end)) AS `Men_16to24_years_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Men_25to54_years` else 0 end)) AS `Men_25to54_years_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Men_55Plus` else 0 end)) AS `Men_55Plus_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Men_16to24_years` else 0 end)) AS `Men_16to24_years_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Men_25to54_years` else 0 end)) AS `Men_25to54_years_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Men_55Plus` else 0 end)) AS `Men_55Plus_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Women_16to24_years` else 0 end)) AS `Women_16to24_years_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Women_25to54_years` else 0 end)) AS `Women_25to54_years_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Women_55Plus` else 0 end)) AS `Women_55Plus_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Women_16to24_years` else 0 end)) AS `Women_16to24_years_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Women_25to54_years` else 0 end)) AS `Women_25to54_years_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Women_55Plus` else 0 end)) AS `Women_55Plus_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Women_16to24_years` else 0 end)) AS `Women_16to24_years_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Women_25to54_years` else 0 end)) AS `Women_25to54_years_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Women_55Plus` else 0 end)) AS `Women_55Plus_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Total_16to24_years` else 0 end)) AS `Total_16to24_years_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Total_25to54_years` else 0 end)) AS `Total_25to54_years_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Total_55Plus` else 0 end)) AS `Total_55Plus_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Total_16to24_years` else 0 end)) AS `Total_16to24_years_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Total_25to54_years` else 0 end)) AS `Total_25to54_years_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Total_55Plus` else 0 end)) AS `Total_55Plus_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Total_16to24_years` else 0 end)) AS `Total_16to24_years_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Total_25to54_years` else 0 end)) AS `Total_25to54_years_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Total_55Plus` else 0 end)) AS `Total_55Plus_2022` from `Remote_Work_By_Gender_Race` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Tests`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Tests`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Tests` AS select `COVID_Test_By_Race`.`Date` AS `Date`,sum(`COVID_Test_By_Race`.`Tests_Total`) AS `Tests_Total` from `COVID_Test_By_Race` group by `COVID_Test_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxHospAlpha`
--

/*!50001 DROP VIEW IF EXISTS `MaxHospAlpha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxHospAlpha` AS select `COVID_Hospitalizations_By_Race`.`Date` AS `Date`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Total`) AS `Hosp_Total`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_White`) AS `Hosp_White`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Black`) AS `Hosp_Black`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Latinx`) AS `Hosp_Latinx`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Asian`) AS `Hosp_Asian`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_AIAN`) AS `Hosp_AIAN`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_NHPI`) AS `Hosp_NHPI`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Multiracial`) AS `Hosp_Multiracial`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Other`) AS `Hosp_Other`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Unknown`) AS `Hosp_Unknown` from `COVID_Hospitalizations_By_Race` where ((`COVID_Hospitalizations_By_Race`.`Date` >= '2020-11-01') and (`COVID_Hospitalizations_By_Race`.`Date` < '2021-06-01')) group by `COVID_Hospitalizations_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `South_UR_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `South_UR_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `South_UR_Peaks` AS select `urate`.`SUR1` AS `Pre_COVID`,`urate`.`SUR2` AS `WildType_Peak`,`urate`.`SUR3` AS `Alpha_Peak`,`urate`.`SUR4` AS `Delta_Peak`,`urate`.`SUR5` AS `Omicron_Peak` from (select sum((case when (`u`.`Date` = `m`.`Date`) then `u`.`South` else 0 end)) AS `SUR1`,sum((case when (`u`.`Date` = `wt`.`MonthDate`) then `u`.`South` else 0 end)) AS `SUR2`,sum((case when (`u`.`Date` = `a`.`MonthDate`) then `u`.`South` else 0 end)) AS `SUR3`,sum((case when (`u`.`Date` = `d`.`MonthDate`) then `u`.`South` else 0 end)) AS `SUR4`,sum((case when (`u`.`Date` = `o`.`MonthDate`) then `u`.`South` else 0 end)) AS `SUR5` from (((((`UnempRateRegionCol` `u` join `MinSouthUnempRate` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`u`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `urate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_T_By_Gender_Alpha`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_T_By_Gender_Alpha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_T_By_Gender_Alpha` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_T_Alpha` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2020-11-01') and (`COVID_Deaths_By_Age_Gender`.`Date` < '2021-06-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'All Sex')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_Gender_AllVariants`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_AllVariants`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_Gender_AllVariants` AS select `COVID_Cases_By_Gender_Alpha`.`State` AS `State`,`COVID_Cases_By_Gender_Alpha`.`Total_Count_Alpha` AS `Total_Count_Alpha`,`COVID_Cases_By_Gender_Alpha`.`Male_Count_Alpha` AS `Male_Count_Alpha`,`COVID_Cases_By_Gender_Alpha`.`Female_Count_Alpha` AS `Female_Count_Alpha`,`COVID_Cases_By_Gender_WT`.`Total_Count_WT` AS `Total_Count_WT`,`COVID_Cases_By_Gender_WT`.`Male_Count_WT` AS `Male_Count_WT`,`COVID_Cases_By_Gender_WT`.`Female_Count_WT` AS `Female_Count_WT`,`COVID_Cases_By_Gender_Delta`.`Total_Count_Delta` AS `Total_Count_Delta`,`COVID_Cases_By_Gender_Delta`.`Male_Count_Delta` AS `Male_Count_Delta`,`COVID_Cases_By_Gender_Delta`.`Female_Count_Delta` AS `Female_Count_Delta`,`COVID_Cases_By_Gender_Omicron`.`Total_Count_Omicron` AS `Total_Count_Omicron`,`COVID_Cases_By_Gender_Omicron`.`Male_Count_Omicron` AS `Male_Count_Omicron`,`COVID_Cases_By_Gender_Omicron`.`Female_Count_Omicron` AS `Female_Count_Omicron` from (((`COVID_Cases_By_Gender_Alpha` join `COVID_Cases_By_Gender_WT` on((`COVID_Cases_By_Gender_Alpha`.`State` = `COVID_Cases_By_Gender_WT`.`State`))) join `COVID_Cases_By_Gender_Delta` on((`COVID_Cases_By_Gender_Alpha`.`State` = `COVID_Cases_By_Gender_Delta`.`State`))) join `COVID_Cases_By_Gender_Omicron` on((`COVID_Cases_By_Gender_Alpha`.`State` = `COVID_Cases_By_Gender_Omicron`.`State`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxDeathsOmicron`
--

/*!50001 DROP VIEW IF EXISTS `MaxDeathsOmicron`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxDeathsOmicron` AS select `COVID_Deaths_By_Race`.`Date` AS `Date`,sum(`COVID_Deaths_By_Race`.`Deaths_Total`) AS `Deaths_Total`,sum(`COVID_Deaths_By_Race`.`Deaths_White`) AS `Deaths_White`,sum(`COVID_Deaths_By_Race`.`Deaths_Black`) AS `Deaths_Black`,sum(`COVID_Deaths_By_Race`.`Deaths_LatinX`) AS `Deaths_Latinx`,sum(`COVID_Deaths_By_Race`.`Deaths_Asian`) AS `Deaths_Asian`,sum(`COVID_Deaths_By_Race`.`Deaths_AIAN`) AS `Deaths_AIAN`,sum(`COVID_Deaths_By_Race`.`Deaths_NHPI`) AS `Deaths_NHPI`,sum(`COVID_Deaths_By_Race`.`Deaths_Multiracial`) AS `Deaths_Multiracial`,sum(`COVID_Deaths_By_Race`.`Deaths_Other`) AS `Deaths_Other`,sum(`COVID_Deaths_By_Race`.`Deaths_Unknown`) AS `Deaths_Unknown` from `COVID_Deaths_By_Race` where (`COVID_Deaths_By_Race`.`Date` >= '2021-11-01') group by `COVID_Deaths_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DeathsDelta`
--

/*!50001 DROP VIEW IF EXISTS `DeathsDelta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DeathsDelta` AS select `COVID_Deaths_By_Age_Gender`.`Date` AS `Date`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2021-06-01') and (`COVID_Deaths_By_Age_Gender`.`Date` < '2021-11-01')) group by `COVID_Deaths_By_Age_Gender`.`Date` order by `Total_Deaths` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinBlackUnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinBlackUnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinBlackUnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`Unemployment_Rate` `u2` join (select min(`Unemployment_Rate`.`Black`) AS `min` from `Unemployment_Rate` where ((`Unemployment_Rate`.`Date` >= '2019-06-01') and (`Unemployment_Rate`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`Black`) and (`u2`.`Date` = '2019-09-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_Monthly`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_Monthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_Monthly` AS select `md`.`MonthDate` AS `MonthDate`,sum(`c`.`Cases_Total`) AS `Cases_Total` from (`COVID_Cases_Weekly` `c` join `Date_To_MonthDate` `md`) where (`c`.`Date` = `md`.`Date`) group by `md`.`MonthDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CasesAlpha`
--

/*!50001 DROP VIEW IF EXISTS `CasesAlpha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CasesAlpha` AS select `COVID_Cases_By_Race`.`Date` AS `Date`,`COVID_Cases_By_Race`.`State` AS `State`,`COVID_Cases_By_Race`.`Cases_Total` AS `Cases_Total`,`COVID_Cases_By_Race`.`Cases_White` AS `Cases_White`,`COVID_Cases_By_Race`.`Cases_Black` AS `Cases_Black`,`COVID_Cases_By_Race`.`Cases_LatinX` AS `Cases_LatinX`,`COVID_Cases_By_Race`.`Cases_Asian` AS `Cases_Asian`,`COVID_Cases_By_Race`.`Cases_AIAN` AS `Cases_AIAN`,`COVID_Cases_By_Race`.`Cases_NHPI` AS `Cases_NHPI`,`COVID_Cases_By_Race`.`Cases_Multiracial` AS `Cases_Multiracial`,`COVID_Cases_By_Race`.`Cases_Other` AS `Cases_Other`,`COVID_Cases_By_Race`.`Cases_Unknown` AS `Cases_Unknown`,`COVID_Cases_By_Race`.`Cases_Ethnicity_Hispanic` AS `Cases_Ethnicity_Hispanic`,`COVID_Cases_By_Race`.`Cases_Ethnicity_Non_Hispanic` AS `Cases_Ethnicity_Non_Hispanic`,`COVID_Cases_By_Race`.`Cases_Ethnicity_Unknown` AS `Cases_Ethnicity_Unknown` from `COVID_Cases_By_Race` where ((`COVID_Cases_By_Race`.`Date` >= '2020-11-01') and (`COVID_Cases_By_Race`.`Date` < '2021-06-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Northeast_UR_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `Northeast_UR_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Northeast_UR_Peaks` AS select `urate`.`NEUR1` AS `Pre_COVID`,`urate`.`NEUR2` AS `WildType_Peak`,`urate`.`NEUR3` AS `Alpha_Peak`,`urate`.`NEUR4` AS `Delta_Peak`,`urate`.`NEUR5` AS `Omicron_Peak` from (select sum((case when (`u`.`Date` = `m`.`Date`) then `u`.`Northeast` else 0 end)) AS `NEUR1`,sum((case when (`u`.`Date` = `wt`.`MonthDate`) then `u`.`Northeast` else 0 end)) AS `NEUR2`,sum((case when (`u`.`Date` = `a`.`MonthDate`) then `u`.`Northeast` else 0 end)) AS `NEUR3`,sum((case when (`u`.`Date` = `d`.`MonthDate`) then `u`.`Northeast` else 0 end)) AS `NEUR4`,sum((case when (`u`.`Date` = `o`.`MonthDate`) then `u`.`Northeast` else 0 end)) AS `NEUR5` from (((((`UnempRateRegionCol` `u` join `MinNortheastUnempRate` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`u`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `urate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCaseOmicronWeekly`
--

/*!50001 DROP VIEW IF EXISTS `MaxCaseOmicronWeekly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCaseOmicronWeekly` AS select `c1`.`mx` AS `mx`,`c2`.`Date` AS `Date`,`md`.`MonthDate` AS `MonthDate` from ((`COVID_Cases_Weekly` `c2` join `Date_To_MonthDate` `md`) join (select max(`COVID_Cases_Weekly`.`Cases_Total`) AS `mx` from `COVID_Cases_Weekly` where (`COVID_Cases_Weekly`.`Date` >= '2021-11-01')) `c1`) where ((`c1`.`mx` = `c2`.`Cases_Total`) and (`c2`.`Date` = `md`.`Date`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `White_UR_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `White_UR_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `White_UR_Peaks` AS select `urate`.`WUR1` AS `Pre_COVID`,`urate`.`WUR2` AS `WildType_Peak`,`urate`.`WUR3` AS `Alpha_Peak`,`urate`.`WUR4` AS `Delta_Peak`,`urate`.`WUR5` AS `Omicron_Peak` from (select sum((case when (`u`.`Date` = `m`.`Date`) then `u`.`White` else 0 end)) AS `WUR1`,sum((case when (`u`.`Date` = `wt`.`MonthDate`) then `u`.`White` else 0 end)) AS `WUR2`,sum((case when (`u`.`Date` = `a`.`MonthDate`) then `u`.`White` else 0 end)) AS `WUR3`,sum((case when (`u`.`Date` = `d`.`MonthDate`) then `u`.`White` else 0 end)) AS `WUR4`,sum((case when (`u`.`Date` = `o`.`MonthDate`) then `u`.`White` else 0 end)) AS `WUR5` from (((((`Unemployment_Rate` `u` join `MinWhiteUnempRate` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`u`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `urate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_State_With_Name`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_State_With_Name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_State_With_Name` AS select `c`.`Date` AS `Date`,`c`.`State_Code` AS `State_Code`,`c`.`tot_cases` AS `tot_cases`,`c`.`new_cases` AS `new_cases`,`o`.`State_Name` AS `State_Name` from (`COVID_Cases_By_State` `c` join `State_To_Code` `o`) where (`c`.`State_Code` = `o`.`code`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_F_By_Gender_WT`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_F_By_Gender_WT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_F_By_Gender_WT` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_F_WT` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2020-01-01') and (`COVID_Deaths_By_Age_Gender`.`Date` < '2020-11-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'Female')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_Race_Totals`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Race_Totals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_Race_Totals` AS select `COVID_Cases_By_Race`.`State` AS `State`,sum(`COVID_Cases_By_Race`.`Cases_Total`) AS `Cases_Total`,sum(`COVID_Cases_By_Race`.`Cases_White`) AS `Cases_White`,sum(`COVID_Cases_By_Race`.`Cases_Black`) AS `Cases_Black`,sum(`COVID_Cases_By_Race`.`Cases_LatinX`) AS `Cases_Latinx`,sum(`COVID_Cases_By_Race`.`Cases_Asian`) AS `Cases_Asian`,sum(`COVID_Cases_By_Race`.`Cases_AIAN`) AS `Cases_AIAN`,sum(`COVID_Cases_By_Race`.`Cases_NHPI`) AS `Cases_NHPI`,sum(`COVID_Cases_By_Race`.`Cases_Multiracial`) AS `Cases_Multiracial`,sum(`COVID_Cases_By_Race`.`Cases_Other`) AS `Cases_Other`,sum(`COVID_Cases_By_Race`.`Cases_Unknown`) AS `Cases_Unknown` from `COVID_Cases_By_Race` group by `COVID_Cases_By_Race`.`State` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CasesOmicron`
--

/*!50001 DROP VIEW IF EXISTS `CasesOmicron`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CasesOmicron` AS select `COVID_Cases_By_Gender`.`Date` AS `Date`,sum(`COVID_Cases_By_Gender`.`Total_Count`) AS `Total_Count` from `COVID_Cases_By_Gender` where (`COVID_Cases_By_Gender`.`Date` >= '2021-11-01') group by `COVID_Cases_By_Gender`.`Date` order by `Total_Count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxHospDelta`
--

/*!50001 DROP VIEW IF EXISTS `MaxHospDelta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxHospDelta` AS select `COVID_Hospitalizations_By_Race`.`Date` AS `Date`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Total`) AS `Hosp_Total`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_White`) AS `Hosp_White`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Black`) AS `Hosp_Black`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Latinx`) AS `Hosp_Latinx`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Asian`) AS `Hosp_Asian`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_AIAN`) AS `Hosp_AIAN`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_NHPI`) AS `Hosp_NHPI`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Multiracial`) AS `Hosp_Multiracial`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Other`) AS `Hosp_Other`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Unknown`) AS `Hosp_Unknown` from `COVID_Hospitalizations_By_Race` where ((`COVID_Hospitalizations_By_Race`.`Date` >= '2021-06-01') and (`COVID_Hospitalizations_By_Race`.`Date` < '2021-11-01')) group by `COVID_Hospitalizations_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCaseDate`
--

/*!50001 DROP VIEW IF EXISTS `MaxCaseDate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCaseDate` AS select `c1`.`mx` AS `mx`,`c2`.`Date` AS `Date`,`md`.`MonthDate` AS `MonthDate` from ((`COVID_Cases_Weekly` `c2` join `Date_To_MonthDate` `md`) join (select max(`COVID_Cases_Weekly`.`Cases_Total`) AS `mx` from `COVID_Cases_Weekly`) `c1`) where ((`c1`.`mx` = `c2`.`Cases_Total`) and (`c2`.`Date` = `md`.`Date`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxDeathsDeltaGeneral`
--

/*!50001 DROP VIEW IF EXISTS `MaxDeathsDeltaGeneral`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxDeathsDeltaGeneral` AS select `COVID_Deaths_By_Age_Gender`.`Date` AS `Date`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths` from `COVID_Deaths_By_Age_Gender` group by `COVID_Deaths_By_Age_Gender`.`Date` order by `Total_Deaths` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Democratic_State`
--

/*!50001 DROP VIEW IF EXISTS `Democratic_State`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Democratic_State` AS select `State_Political_ID`.`State_Name` AS `State_Name` from `State_Political_ID` where (`State_Political_ID`.`Affiliations` = 'Democratic') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinL20UnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinL20UnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinL20UnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`Unemployment_Rate` `u2` join (select min(`Unemployment_Rate`.`Yrs_16_19`) AS `min` from `Unemployment_Rate` where ((`Unemployment_Rate`.`Date` >= '2019-06-01') and (`Unemployment_Rate`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`Yrs_16_19`) and (`u2`.`Date` >= '2019-06-01') and (`u2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths` AS select `COVID_Deaths_By_Race`.`Date` AS `Date`,sum(`COVID_Deaths_By_Race`.`Deaths_Total`) AS `Deaths_Total` from `COVID_Deaths_By_Race` group by `COVID_Deaths_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_Race_Monthly_View`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Race_Monthly_View`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_Race_Monthly_View` AS select `md`.`MonthDate` AS `MonthDate`,sum(`c`.`Cases_Total`) AS `Cases_Total`,sum(`c`.`Cases_White`) AS `Cases_White`,sum(`c`.`Cases_Black`) AS `Cases_Black`,sum(`c`.`Cases_LatinX`) AS `Cases_LatinX`,sum(`c`.`Cases_Asian`) AS `Cases_Asian` from (`COVID_Cases_By_Race` `c` join `Date_To_MonthDate` `md`) where (`c`.`Date` = `md`.`Date`) group by `md`.`MonthDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinMidwestUnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinMidwestUnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinMidwestUnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`UnempRateRegionCol` `u2` join (select min(`UnempRateRegionCol`.`Midwest`) AS `min` from `UnempRateRegionCol` where ((`UnempRateRegionCol`.`Date` >= '2019-06-01') and (`UnempRateRegionCol`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`Midwest`) and (`u2`.`Date` >= '2019-06-01') and (`u2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HospOmicron`
--

/*!50001 DROP VIEW IF EXISTS `HospOmicron`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `HospOmicron` AS select `COVID_Hospitalizations_By_Race`.`Date` AS `Date`,`COVID_Hospitalizations_By_Race`.`State` AS `State`,`COVID_Hospitalizations_By_Race`.`Hosp_Total` AS `Hosp_Total`,`COVID_Hospitalizations_By_Race`.`Hosp_White` AS `Hosp_White`,`COVID_Hospitalizations_By_Race`.`Hosp_Black` AS `Hosp_Black`,`COVID_Hospitalizations_By_Race`.`Hosp_Latinx` AS `Hosp_Latinx`,`COVID_Hospitalizations_By_Race`.`Hosp_Asian` AS `Hosp_Asian`,`COVID_Hospitalizations_By_Race`.`Hosp_AIAN` AS `Hosp_AIAN`,`COVID_Hospitalizations_By_Race`.`Hosp_NHPI` AS `Hosp_NHPI`,`COVID_Hospitalizations_By_Race`.`Hosp_Multiracial` AS `Hosp_Multiracial`,`COVID_Hospitalizations_By_Race`.`Hosp_Other` AS `Hosp_Other`,`COVID_Hospitalizations_By_Race`.`Hosp_Unknown` AS `Hosp_Unknown`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_Hispanic` AS `Hosp_Ethnicity_Hispanic`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_NonHispanic` AS `Hosp_Ethnicity_NonHispanic`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_Unknown` AS `Hosp_Ethnicity_Unknown` from `COVID_Hospitalizations_By_Race` where (`COVID_Hospitalizations_By_Race`.`Date` >= '2021-11-01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `GDP_Priv_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `GDP_Priv_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `GDP_Priv_Peaks` AS select round(`priv`.`PEL1`,1) AS `Pre_COVID`,round(`priv`.`PEL2`,1) AS `WildType_Peak`,round(`priv`.`PEL3`,1) AS `Alpha_Peak`,round(`priv`.`PEL4`,1) AS `Delta_Peak`,round(`priv`.`PEL5`,1) AS `Omicron_Peak` from (select sum((case when (`g`.`Quarter` = `p`.`Quarter`) then `g`.`Total_Private` else 0 end)) AS `PEL1`,sum((case when (`g`.`Quarter` = `wt`.`Quarter`) then `g`.`Total_Private` else 0 end)) AS `PEL2`,sum((case when (`g`.`Quarter` = `a`.`Quarter`) then `g`.`Total_Private` else 0 end)) AS `PEL3`,sum((case when (`g`.`Quarter` = `d`.`Quarter`) then `g`.`Total_Private` else 0 end)) AS `PEL4`,sum((case when (`g`.`Quarter` = `o`.`Quarter`) then `g`.`Total_Private` else 0 end)) AS `PEL5` from (((((`GDP_By_Industry` `g` join `MaxPrivateGDP` `p`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`g`.`Quarter` in (`p`.`Quarter`,`wt`.`Quarter`,`a`.`Quarter`,`d`.`Quarter`,`o`.`Quarter`))) `priv` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_M_By_Gender_Alpha`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_M_By_Gender_Alpha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_M_By_Gender_Alpha` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_M_Alpha` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2020-11-01') and (`COVID_Deaths_By_Age_Gender`.`Date` < '2021-06-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'Male')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxPrivateGDP`
--

/*!50001 DROP VIEW IF EXISTS `MaxPrivateGDP`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxPrivateGDP` AS select `g1`.`mx` AS `mx`,`g2`.`Quarter` AS `Quarter` from (`GDP_By_Industry` `g2` join (select max(`GDP_By_Industry`.`Total_Private`) AS `mx` from `GDP_By_Industry` where ((`GDP_By_Industry`.`Quarter` >= '2019Q2') and (`GDP_By_Industry`.`Quarter` <= '2019Q4'))) `g1`) where (`g1`.`mx` = `g2`.`Total_Private`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_Age_M_Breakdown`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_Age_M_Breakdown`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_Age_M_Breakdown` AS select `a`.`Age_Group` AS `Age_Group`,`a`.`Total_Deaths_M_WT` AS `Total_Deaths_M_WT`,`a`.`Total_Deaths_M_Alpha` AS `Total_Deaths_M_Alpha`,`a`.`Total_Deaths_M_Delta` AS `Total_Deaths_M_Delta`,`a`.`Total_Deaths_M_Omicron` AS `Total_Deaths_M_Omicron` from (select `COVID_Deaths_M_By_Gender_WT`.`Age_Group` AS `Age_Group`,`COVID_Deaths_M_By_Gender_WT`.`Total_Deaths_M_WT` AS `Total_Deaths_M_WT`,`COVID_Deaths_M_By_Gender_Alpha`.`Total_Deaths_M_Alpha` AS `Total_Deaths_M_Alpha`,`COVID_Deaths_M_By_Gender_Delta`.`Total_Deaths_M_Delta` AS `Total_Deaths_M_Delta`,`COVID_Deaths_M_By_Gender_Omicron`.`Total_Deaths_M_Omicron` AS `Total_Deaths_M_Omicron` from (((`COVID_Deaths_M_By_Gender_WT` join `COVID_Deaths_M_By_Gender_Alpha` on((`COVID_Deaths_M_By_Gender_WT`.`Age_Group` = `COVID_Deaths_M_By_Gender_Alpha`.`Age_Group`))) join `COVID_Deaths_M_By_Gender_Delta` on((`COVID_Deaths_M_By_Gender_WT`.`Age_Group` = `COVID_Deaths_M_By_Gender_Delta`.`Age_Group`))) join `COVID_Deaths_M_By_Gender_Omicron` on((`COVID_Deaths_M_By_Gender_WT`.`Age_Group` = `COVID_Deaths_M_By_Gender_Omicron`.`Age_Group`)))) `a` where (`a`.`Age_Group` <> 'All Ages') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_Age_Breakdown_All_Genders`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_Age_Breakdown_All_Genders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_Age_Breakdown_All_Genders` AS select `a`.`Age_Group` AS `Age_Group`,`a`.`Total_Deaths_M_WT` AS `Total_Deaths_M_WT`,`a`.`Total_Deaths_M_Alpha` AS `Total_Deaths_M_Alpha`,`a`.`Total_Deaths_M_Delta` AS `Total_Deaths_M_Delta`,`a`.`Total_Deaths_M_Omicron` AS `Total_Deaths_M_Omicron`,`a`.`Total_Deaths_F_WT` AS `Total_Deaths_F_WT`,`a`.`Total_Deaths_F_Alpha` AS `Total_Deaths_F_Alpha`,`a`.`Total_Deaths_F_Delta` AS `Total_Deaths_F_Delta`,`a`.`Total_Deaths_F_Omicron` AS `Total_Deaths_F_Omicron`,`a`.`Total_Deaths_T_WT` AS `Total_Deaths_T_WT`,`a`.`Total_Deaths_T_Alpha` AS `Total_Deaths_T_Alpha`,`a`.`Total_Deaths_T_Delta` AS `Total_Deaths_T_Delta`,`a`.`Total_Deaths_T_Omicron` AS `Total_Deaths_T_Omicron` from (select `COVID_Deaths_Age_M_Breakdown`.`Age_Group` AS `Age_Group`,`COVID_Deaths_Age_M_Breakdown`.`Total_Deaths_M_WT` AS `Total_Deaths_M_WT`,`COVID_Deaths_Age_M_Breakdown`.`Total_Deaths_M_Alpha` AS `Total_Deaths_M_Alpha`,`COVID_Deaths_Age_M_Breakdown`.`Total_Deaths_M_Delta` AS `Total_Deaths_M_Delta`,`COVID_Deaths_Age_M_Breakdown`.`Total_Deaths_M_Omicron` AS `Total_Deaths_M_Omicron`,`COVID_Deaths_Age_F_Breakdown`.`Total_Deaths_F_WT` AS `Total_Deaths_F_WT`,`COVID_Deaths_Age_F_Breakdown`.`Total_Deaths_F_Alpha` AS `Total_Deaths_F_Alpha`,`COVID_Deaths_Age_F_Breakdown`.`Total_Deaths_F_Delta` AS `Total_Deaths_F_Delta`,`COVID_Deaths_Age_F_Breakdown`.`Total_Deaths_F_Omicron` AS `Total_Deaths_F_Omicron`,`COVID_Deaths_Age_T_Breakdown`.`Total_Deaths_T_WT` AS `Total_Deaths_T_WT`,`COVID_Deaths_Age_T_Breakdown`.`Total_Deaths_T_Alpha` AS `Total_Deaths_T_Alpha`,`COVID_Deaths_Age_T_Breakdown`.`Total_Deaths_T_Delta` AS `Total_Deaths_T_Delta`,`COVID_Deaths_Age_T_Breakdown`.`Total_Deaths_T_Omicron` AS `Total_Deaths_T_Omicron` from ((`COVID_Deaths_Age_M_Breakdown` join `COVID_Deaths_Age_F_Breakdown` on((`COVID_Deaths_Age_M_Breakdown`.`Age_Group` = `COVID_Deaths_Age_F_Breakdown`.`Age_Group`))) join `COVID_Deaths_Age_T_Breakdown` on((`COVID_Deaths_Age_M_Breakdown`.`Age_Group` = `COVID_Deaths_Age_T_Breakdown`.`Age_Group`)))) `a` where (`a`.`Age_Group` <> 'All Ages') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCaseWTWeekly`
--

/*!50001 DROP VIEW IF EXISTS `MaxCaseWTWeekly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCaseWTWeekly` AS select `c1`.`mx` AS `mx`,`c2`.`Date` AS `Date`,`md`.`MonthDate` AS `MonthDate` from ((`COVID_Cases_Weekly` `c2` join `Date_To_MonthDate` `md`) join (select max(`COVID_Cases_Weekly`.`Cases_Total`) AS `mx` from `COVID_Cases_Weekly` where ((`COVID_Cases_Weekly`.`Date` >= '2020-01-01') and (`COVID_Cases_Weekly`.`Date` < '2020-11-01'))) `c1`) where ((`c1`.`mx` = `c2`.`Cases_Total`) and (`c2`.`Date` = `md`.`Date`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_Gender_Alpha`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_Alpha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_Gender_Alpha` AS select `COVID_Cases_By_Gender`.`State` AS `State`,sum(`COVID_Cases_By_Gender`.`Total_Count`) AS `Total_Count_Alpha`,sum(`COVID_Cases_By_Gender`.`Male_Count`) AS `Male_Count_Alpha`,sum(`COVID_Cases_By_Gender`.`Female_Count`) AS `Female_Count_Alpha` from `COVID_Cases_By_Gender` where ((`COVID_Cases_By_Gender`.`Date` >= '2020-11-01') and (`COVID_Cases_By_Gender`.`Date` < '2021-06-01')) group by `COVID_Cases_By_Gender`.`State` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_M_By_Gender_Omicron`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_M_By_Gender_Omicron`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_M_By_Gender_Omicron` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_M_Omicron` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2021-11-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'Male')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HospWT`
--

/*!50001 DROP VIEW IF EXISTS `HospWT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `HospWT` AS select `COVID_Hospitalizations_By_Race`.`Date` AS `Date`,`COVID_Hospitalizations_By_Race`.`State` AS `State`,`COVID_Hospitalizations_By_Race`.`Hosp_Total` AS `Hosp_Total`,`COVID_Hospitalizations_By_Race`.`Hosp_White` AS `Hosp_White`,`COVID_Hospitalizations_By_Race`.`Hosp_Black` AS `Hosp_Black`,`COVID_Hospitalizations_By_Race`.`Hosp_Latinx` AS `Hosp_Latinx`,`COVID_Hospitalizations_By_Race`.`Hosp_Asian` AS `Hosp_Asian`,`COVID_Hospitalizations_By_Race`.`Hosp_AIAN` AS `Hosp_AIAN`,`COVID_Hospitalizations_By_Race`.`Hosp_NHPI` AS `Hosp_NHPI`,`COVID_Hospitalizations_By_Race`.`Hosp_Multiracial` AS `Hosp_Multiracial`,`COVID_Hospitalizations_By_Race`.`Hosp_Other` AS `Hosp_Other`,`COVID_Hospitalizations_By_Race`.`Hosp_Unknown` AS `Hosp_Unknown`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_Hispanic` AS `Hosp_Ethnicity_Hispanic`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_NonHispanic` AS `Hosp_Ethnicity_NonHispanic`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_Unknown` AS `Hosp_Ethnicity_Unknown` from `COVID_Hospitalizations_By_Race` where ((`COVID_Hospitalizations_By_Race`.`Date` >= '2020-01-01') and (`COVID_Hospitalizations_By_Race`.`Date` < '2020-11-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Jabs_Per_Population`
--

/*!50001 DROP VIEW IF EXISTS `Jabs_Per_Population`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Jabs_Per_Population` AS select `upr`.`State` AS `State`,(sum(`b`.`Admin_Daily`) / `upr`.`Total`) AS `SUM(Admin_Daily)/Total` from ((select `COVID_Vaccinations`.`Date` AS `Date`,`COVID_Vaccinations`.`Date1` AS `Date1`,`COVID_Vaccinations`.`date_type` AS `date_type`,`COVID_Vaccinations`.`MMWR_week` AS `MMWR_week`,`COVID_Vaccinations`.`Location` AS `Location`,`COVID_Vaccinations`.`Administered_Daily` AS `Administered_Daily`,`COVID_Vaccinations`.`Admin_Daily` AS `Admin_Daily`,`COVID_Vaccinations`.`Admin_Dose_1_Daily` AS `Admin_Dose_1_Daily`,`COVID_Vaccinations`.`Admin_Dose_1` AS `Admin_Dose_1`,`COVID_Vaccinations`.`Booster_Daily` AS `Booster_Daily`,`COVID_Vaccinations`.`Boost_Daily` AS `Boost_Daily`,`State_To_Code`.`State_Name` AS `State_Name`,`State_To_Code`.`abbrev` AS `abbrev`,`State_To_Code`.`code` AS `code` from (`COVID_Vaccinations` join `State_To_Code` on((`COVID_Vaccinations`.`Location` = `State_To_Code`.`code`)))) `b` join `US_Population_Racial` `upr` on((`b`.`State_Name` = `upr`.`State`))) group by `upr`.`State` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DeathsWT`
--

/*!50001 DROP VIEW IF EXISTS `DeathsWT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DeathsWT` AS select `COVID_Deaths_By_Race`.`Date` AS `Date`,`COVID_Deaths_By_Race`.`State` AS `State`,`COVID_Deaths_By_Race`.`Deaths_Total` AS `Deaths_Total`,`COVID_Deaths_By_Race`.`Deaths_White` AS `Deaths_White`,`COVID_Deaths_By_Race`.`Deaths_Black` AS `Deaths_Black`,`COVID_Deaths_By_Race`.`Deaths_LatinX` AS `Deaths_LatinX`,`COVID_Deaths_By_Race`.`Deaths_Asian` AS `Deaths_Asian`,`COVID_Deaths_By_Race`.`Deaths_AIAN` AS `Deaths_AIAN`,`COVID_Deaths_By_Race`.`Deaths_NHPI` AS `Deaths_NHPI`,`COVID_Deaths_By_Race`.`Deaths_Multiracial` AS `Deaths_Multiracial`,`COVID_Deaths_By_Race`.`Deaths_Other` AS `Deaths_Other`,`COVID_Deaths_By_Race`.`Deaths_Unknown` AS `Deaths_Unknown`,`COVID_Deaths_By_Race`.`Deaths_Ethnicity_Hispanic` AS `Deaths_Ethnicity_Hispanic`,`COVID_Deaths_By_Race`.`Deaths_Ethnicity_Non_Hispanic` AS `Deaths_Ethnicity_Non_Hispanic`,`COVID_Deaths_By_Race`.`Deaths_Ethnicity_Unknown` AS `Deaths_Ethnicity_Unknown` from `COVID_Deaths_By_Race` where ((`COVID_Deaths_By_Race`.`Date` >= '2020-01-01') and (`COVID_Deaths_By_Race`.`Date` < '2020-11-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxGovGDP`
--

/*!50001 DROP VIEW IF EXISTS `MaxGovGDP`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxGovGDP` AS select `g1`.`mx` AS `mx`,`g2`.`Quarter` AS `Quarter` from (`GDP_By_Industry` `g2` join (select max(`GDP_By_Industry`.`Government`) AS `mx` from `GDP_By_Industry` where ((`GDP_By_Industry`.`Quarter` >= '2019Q2') and (`GDP_By_Industry`.`Quarter` <= '2019Q4'))) `g1`) where (`g1`.`mx` = `g2`.`Government`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_Gender_Delta`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_Delta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_Gender_Delta` AS select `COVID_Cases_By_Gender`.`State` AS `State`,sum(`COVID_Cases_By_Gender`.`Total_Count`) AS `Total_Count_Delta`,sum(`COVID_Cases_By_Gender`.`Male_Count`) AS `Male_Count_Delta`,sum(`COVID_Cases_By_Gender`.`Female_Count`) AS `Female_Count_Delta` from `COVID_Cases_By_Gender` where ((`COVID_Cases_By_Gender`.`Date` >= '2021-06-01') and (`COVID_Cases_By_Gender`.`Date` < '2021-11-01')) group by `COVID_Cases_By_Gender`.`State` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `State_Loc_MeshedWithInsurance`
--

/*!50001 DROP VIEW IF EXISTS `State_Loc_MeshedWithInsurance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `State_Loc_MeshedWithInsurance` AS select `Insurance`.`State_Name` AS `State_Name`,`Insurance`.`Employer` AS `Employer`,`Insurance`.`NonGroup` AS `NonGroup`,`Insurance`.`Medicaid` AS `Medicaid`,`Insurance`.`Medicare` AS `Medicare`,`Insurance`.`Military` AS `Military`,`Insurance`.`Uninsured` AS `Uninsured`,`Insurance`.`Total` AS `Total`,`Insurance`.`Footnotes` AS `Footnotes`,`sl`.`Capital_Name` AS `Capital_Name`,`sl`.`latitude` AS `latitude`,`sl`.`longitude` AS `longitude` from (`Insurance` join `State_Locations` `sl` on((`Insurance`.`State_Name` = `sl`.`State_Name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCaseDeltaWeekly`
--

/*!50001 DROP VIEW IF EXISTS `MaxCaseDeltaWeekly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCaseDeltaWeekly` AS select `c1`.`mx` AS `mx`,`c2`.`Date` AS `Date`,`md`.`MonthDate` AS `MonthDate` from ((`COVID_Cases_Weekly` `c2` join `Date_To_MonthDate` `md`) join (select max(`COVID_Cases_Weekly`.`Cases_Total`) AS `mx` from `COVID_Cases_Weekly` where ((`COVID_Cases_Weekly`.`Date` >= '2021-06-01') and (`COVID_Cases_Weekly`.`Date` < '2021-11-01'))) `c1`) where ((`c1`.`mx` = `c2`.`Cases_Total`) and (`c2`.`Date` = `md`.`Date`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Natl_PS_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `Natl_PS_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Natl_PS_Peaks` AS select round(`econ`.`PS1`,2) AS `Pre_COVID`,round(`econ`.`PS2`,2) AS `WildType_Peak`,round(`econ`.`PS3`,2) AS `Alpha_Peak`,round(`econ`.`PS4`,2) AS `Delta_Peak`,round(`econ`.`PS5`,2) AS `Omicron_Peak` from (select sum((case when (`t`.`Date` = `m`.`Date`) then `t`.`Personal_Saving_Rate` else 0 end)) AS `PS1`,sum((case when (`t`.`Date` = `wt`.`MonthDate`) then `t`.`Personal_Saving_Rate` else 0 end)) AS `PS2`,sum((case when (`t`.`Date` = `a`.`MonthDate`) then `t`.`Personal_Saving_Rate` else 0 end)) AS `PS3`,sum((case when (`t`.`Date` = `d`.`MonthDate`) then `t`.`Personal_Saving_Rate` else 0 end)) AS `PS4`,sum((case when (`t`.`Date` = `o`.`MonthDate`) then `t`.`Personal_Saving_Rate` else 0 end)) AS `PS5` from (((((`Total_Economic_Factors` `t` join `MinPersonalSav` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`t`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `econ` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Women_UR_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `Women_UR_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Women_UR_Peaks` AS select `urate`.`WUR1` AS `Pre_COVID`,`urate`.`WUR2` AS `WildType_Peak`,`urate`.`WUR3` AS `Alpha_Peak`,`urate`.`WUR4` AS `Delta_Peak`,`urate`.`WUR5` AS `Omicron_Peak` from (select sum((case when (`u`.`Date` = `m`.`Date`) then `u`.`Women_20_plus` else 0 end)) AS `WUR1`,sum((case when (`u`.`Date` = `wt`.`MonthDate`) then `u`.`Women_20_plus` else 0 end)) AS `WUR2`,sum((case when (`u`.`Date` = `a`.`MonthDate`) then `u`.`Women_20_plus` else 0 end)) AS `WUR3`,sum((case when (`u`.`Date` = `d`.`MonthDate`) then `u`.`Women_20_plus` else 0 end)) AS `WUR4`,sum((case when (`u`.`Date` = `o`.`MonthDate`) then `u`.`Women_20_plus` else 0 end)) AS `WUR5` from (((((`Unemployment_Rate` `u` join `MinWomenUnempRate` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`u`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `urate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCasesAlpha`
--

/*!50001 DROP VIEW IF EXISTS `MaxCasesAlpha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCasesAlpha` AS select `COVID_Cases_By_Race`.`Date` AS `Date`,sum(`COVID_Cases_By_Race`.`Cases_Total`) AS `Cases_Total`,sum(`COVID_Cases_By_Race`.`Cases_White`) AS `Cases_White`,sum(`COVID_Cases_By_Race`.`Cases_Black`) AS `Cases_Black`,sum(`COVID_Cases_By_Race`.`Cases_LatinX`) AS `Cases_Latinx`,sum(`COVID_Cases_By_Race`.`Cases_Asian`) AS `Cases_Asian`,sum(`COVID_Cases_By_Race`.`Cases_AIAN`) AS `Cases_AIAN`,sum(`COVID_Cases_By_Race`.`Cases_NHPI`) AS `Cases_NHPI`,sum(`COVID_Cases_By_Race`.`Cases_Multiracial`) AS `Cases_Multiracial`,sum(`COVID_Cases_By_Race`.`Cases_Other`) AS `Cases_Other`,sum(`COVID_Cases_By_Race`.`Cases_Unknown`) AS `Cases_Unknown` from `COVID_Cases_By_Race` where ((`COVID_Cases_By_Race`.`Date` >= '2020-11-01') and (`COVID_Cases_By_Race`.`Date` < '2021-06-01')) group by `COVID_Cases_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Asian_UR_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `Asian_UR_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Asian_UR_Peaks` AS select `urate`.`AUR1` AS `Pre_COVID`,`urate`.`AUR2` AS `WildType_Peak`,`urate`.`AUR3` AS `Alpha_Peak`,`urate`.`AUR4` AS `Delta_Peak`,`urate`.`AUR5` AS `Omicron_Peak` from (select sum((case when (`u`.`Date` = `m`.`Date`) then `u`.`Asian` else 0 end)) AS `AUR1`,sum((case when (`u`.`Date` = `wt`.`MonthDate`) then `u`.`Asian` else 0 end)) AS `AUR2`,sum((case when (`u`.`Date` = `a`.`MonthDate`) then `u`.`Asian` else 0 end)) AS `AUR3`,sum((case when (`u`.`Date` = `d`.`MonthDate`) then `u`.`Asian` else 0 end)) AS `AUR4`,sum((case when (`u`.`Date` = `o`.`MonthDate`) then `u`.`Asian` else 0 end)) AS `AUR5` from (((((`Unemployment_Rate` `u` join `MinAsianUnempRate` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`u`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `urate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Hospitalizations_National`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Hospitalizations_National`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Hospitalizations_National` AS select `COVID_Hospitalizations_By_Race`.`Date` AS `Date`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Total`) AS `Hosp_Total` from `COVID_Hospitalizations_By_Race` group by `COVID_Hospitalizations_By_Race`.`State` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCasesDelta`
--

/*!50001 DROP VIEW IF EXISTS `MaxCasesDelta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCasesDelta` AS select `ccbg`.`Date` AS `Date`,sum(`ccbg`.`Total_Count`) AS `Total_Count` from `COVID_Cases_By_Gender` `ccbg` group by `ccbg`.`Date` order by `Total_Count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_T_By_Gender_Omicron`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_T_By_Gender_Omicron`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_T_By_Gender_Omicron` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_T_Omicron` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2021-11-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'All Sex')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_Quarterly`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_Quarterly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_Quarterly` AS select `mq`.`Quarter` AS `Quarter`,sum(`c`.`Cases_Total`) AS `Cases_Total` from (`COVID_Cases_Monthly` `c` join `MonthDate_To_Quarter` `mq`) where (`c`.`MonthDate` = `mq`.`MonthDate`) group by `mq`.`Quarter` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UnempRateRegionCol`
--

/*!50001 DROP VIEW IF EXISTS `UnempRateRegionCol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `UnempRateRegionCol` AS select `u`.`Date` AS `Date`,sum((case when (`u`.`Region` = 'West') then `u`.`Unemp_Rate` else 0 end)) AS `West`,sum((case when (`u`.`Region` = 'South') then `u`.`Unemp_Rate` else 0 end)) AS `South`,sum((case when (`u`.`Region` = 'Northeast') then `u`.`Unemp_Rate` else 0 end)) AS `Northeast`,sum((case when (`u`.`Region` = 'Midwest') then `u`.`Unemp_Rate` else 0 end)) AS `Midwest` from `Unemployment_Rate_By_Region` `u` group by `u`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCaseOmicron`
--

/*!50001 DROP VIEW IF EXISTS `MaxCaseOmicron`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCaseOmicron` AS select `c1`.`mx` AS `mx`,`c2`.`MonthDate` AS `MonthDate`,`mq`.`Quarter` AS `Quarter` from ((`COVID_Cases_Monthly` `c2` join `MonthDate_To_Quarter` `mq`) join (select max(`COVID_Cases_Monthly`.`Cases_Total`) AS `mx` from `COVID_Cases_Monthly` where (`COVID_Cases_Monthly`.`MonthDate` >= '2021-11-01')) `c1`) where ((`c1`.`mx` = `c2`.`Cases_Total`) and (`c2`.`MonthDate` = `mq`.`MonthDate`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVIDCasesMonthlyRegionCol`
--

/*!50001 DROP VIEW IF EXISTS `COVIDCasesMonthlyRegionCol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVIDCasesMonthlyRegionCol` AS select `c`.`MonthDate` AS `MonthDate`,sum((case when (`c`.`Region` = 'West') then `c`.`Cases_Total` else 0 end)) AS `Cases_West`,sum((case when (`c`.`Region` = 'South') then `c`.`Cases_Total` else 0 end)) AS `Cases_South`,sum((case when (`c`.`Region` = 'Northeast') then `c`.`Cases_Total` else 0 end)) AS `Cases_Northeast`,sum((case when (`c`.`Region` = 'Midwest') then `c`.`Cases_Total` else 0 end)) AS `Cases_Midwest` from `COVID_Cases_By_Region_Monthly` `c` group by `c`.`MonthDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DeathsAlpha`
--

/*!50001 DROP VIEW IF EXISTS `DeathsAlpha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DeathsAlpha` AS select `COVID_Deaths_By_Race`.`Date` AS `Date`,`COVID_Deaths_By_Race`.`State` AS `State`,`COVID_Deaths_By_Race`.`Deaths_Total` AS `Deaths_Total`,`COVID_Deaths_By_Race`.`Deaths_White` AS `Deaths_White`,`COVID_Deaths_By_Race`.`Deaths_Black` AS `Deaths_Black`,`COVID_Deaths_By_Race`.`Deaths_LatinX` AS `Deaths_LatinX`,`COVID_Deaths_By_Race`.`Deaths_Asian` AS `Deaths_Asian`,`COVID_Deaths_By_Race`.`Deaths_AIAN` AS `Deaths_AIAN`,`COVID_Deaths_By_Race`.`Deaths_NHPI` AS `Deaths_NHPI`,`COVID_Deaths_By_Race`.`Deaths_Multiracial` AS `Deaths_Multiracial`,`COVID_Deaths_By_Race`.`Deaths_Other` AS `Deaths_Other`,`COVID_Deaths_By_Race`.`Deaths_Unknown` AS `Deaths_Unknown`,`COVID_Deaths_By_Race`.`Deaths_Ethnicity_Hispanic` AS `Deaths_Ethnicity_Hispanic`,`COVID_Deaths_By_Race`.`Deaths_Ethnicity_Non_Hispanic` AS `Deaths_Ethnicity_Non_Hispanic`,`COVID_Deaths_By_Race`.`Deaths_Ethnicity_Unknown` AS `Deaths_Ethnicity_Unknown` from `COVID_Deaths_By_Race` where ((`COVID_Deaths_By_Race`.`Date` >= '2020-11-01') and (`COVID_Deaths_By_Race`.`Date` < '2021-06-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCaseAlphaWeekly`
--

/*!50001 DROP VIEW IF EXISTS `MaxCaseAlphaWeekly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCaseAlphaWeekly` AS select `c1`.`mx` AS `mx`,`c2`.`Date` AS `Date`,`md`.`MonthDate` AS `MonthDate` from ((`COVID_Cases_Weekly` `c2` join `Date_To_MonthDate` `md`) join (select max(`COVID_Cases_Weekly`.`Cases_Total`) AS `mx` from `COVID_Cases_Weekly` where ((`COVID_Cases_Weekly`.`Date` >= '2020-11-01') and (`COVID_Cases_Weekly`.`Date` < '2021-06-01'))) `c1`) where ((`c1`.`mx` = `c2`.`Cases_Total`) and (`c2`.`Date` = `md`.`Date`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Black_UR_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `Black_UR_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Black_UR_Peaks` AS select `urate`.`BUR1` AS `Pre_COVID`,`urate`.`BUR2` AS `WildType_Peak`,`urate`.`BUR3` AS `Alpha_Peak`,`urate`.`BUR4` AS `Delta_Peak`,`urate`.`BUR5` AS `Omicron_Peak` from (select sum((case when (`u`.`Date` = `m`.`Date`) then `u`.`Black` else 0 end)) AS `BUR1`,sum((case when (`u`.`Date` = `wt`.`MonthDate`) then `u`.`Black` else 0 end)) AS `BUR2`,sum((case when (`u`.`Date` = `a`.`MonthDate`) then `u`.`Black` else 0 end)) AS `BUR3`,sum((case when (`u`.`Date` = `d`.`MonthDate`) then `u`.`Black` else 0 end)) AS `BUR4`,sum((case when (`u`.`Date` = `o`.`MonthDate`) then `u`.`Black` else 0 end)) AS `BUR5` from (((((`Unemployment_Rate` `u` join `MinBlackUnempRate` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`u`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `urate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CasesDelta`
--

/*!50001 DROP VIEW IF EXISTS `CasesDelta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CasesDelta` AS select `COVID_Cases_By_Gender`.`Date` AS `Date`,sum(`COVID_Cases_By_Gender`.`Total_Count`) AS `Total_Count` from `COVID_Cases_By_Gender` where ((`COVID_Cases_By_Gender`.`Date` >= '2021-06-01') and (`COVID_Cases_By_Gender`.`Date` < '2021-11-01')) group by `COVID_Cases_By_Gender`.`Date` order by `Total_Count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Hispanic_UR_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `Hispanic_UR_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Hispanic_UR_Peaks` AS select `urate`.`HUR1` AS `Pre_COVID`,`urate`.`HUR2` AS `WildType_Peak`,`urate`.`HUR3` AS `Alpha_Peak`,`urate`.`HUR4` AS `Delta_Peak`,`urate`.`HUR5` AS `Omicron_Peak` from (select sum((case when (`u`.`Date` = `m`.`Date`) then `u`.`Hispanic` else 0 end)) AS `HUR1`,sum((case when (`u`.`Date` = `wt`.`MonthDate`) then `u`.`Hispanic` else 0 end)) AS `HUR2`,sum((case when (`u`.`Date` = `a`.`MonthDate`) then `u`.`Hispanic` else 0 end)) AS `HUR3`,sum((case when (`u`.`Date` = `d`.`MonthDate`) then `u`.`Hispanic` else 0 end)) AS `HUR4`,sum((case when (`u`.`Date` = `o`.`MonthDate`) then `u`.`Hispanic` else 0 end)) AS `HUR5` from (((((`Unemployment_Rate` `u` join `MinHispanicUnempRate` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`u`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `urate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCasesOmicron`
--

/*!50001 DROP VIEW IF EXISTS `MaxCasesOmicron`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCasesOmicron` AS select `COVID_Cases_By_Race`.`Date` AS `Date`,sum(`COVID_Cases_By_Race`.`Cases_Total`) AS `Cases_Total`,sum(`COVID_Cases_By_Race`.`Cases_White`) AS `Cases_White`,sum(`COVID_Cases_By_Race`.`Cases_Black`) AS `Cases_Black`,sum(`COVID_Cases_By_Race`.`Cases_LatinX`) AS `Cases_Latinx`,sum(`COVID_Cases_By_Race`.`Cases_Asian`) AS `Cases_Asian`,sum(`COVID_Cases_By_Race`.`Cases_AIAN`) AS `Cases_AIAN`,sum(`COVID_Cases_By_Race`.`Cases_NHPI`) AS `Cases_NHPI`,sum(`COVID_Cases_By_Race`.`Cases_Multiracial`) AS `Cases_Multiracial`,sum(`COVID_Cases_By_Race`.`Cases_Other`) AS `Cases_Other`,sum(`COVID_Cases_By_Race`.`Cases_Unknown`) AS `Cases_Unknown` from `COVID_Cases_By_Race` where (`COVID_Cases_By_Race`.`Date` >= '2021-11-01') group by `COVID_Cases_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_F_By_Gender_Omicron`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_F_By_Gender_Omicron`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_F_By_Gender_Omicron` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_F_Omicron` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2021-11-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'Female')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCasesWT`
--

/*!50001 DROP VIEW IF EXISTS `MaxCasesWT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCasesWT` AS select `COVID_Cases_By_Race`.`Date` AS `Date`,sum(`COVID_Cases_By_Race`.`Cases_Total`) AS `Cases_Total`,sum(`COVID_Cases_By_Race`.`Cases_White`) AS `Cases_White`,sum(`COVID_Cases_By_Race`.`Cases_Black`) AS `Cases_Black`,sum(`COVID_Cases_By_Race`.`Cases_LatinX`) AS `Cases_Latinx`,sum(`COVID_Cases_By_Race`.`Cases_Asian`) AS `Cases_Asian`,sum(`COVID_Cases_By_Race`.`Cases_AIAN`) AS `Cases_AIAN`,sum(`COVID_Cases_By_Race`.`Cases_NHPI`) AS `Cases_NHPI`,sum(`COVID_Cases_By_Race`.`Cases_Multiracial`) AS `Cases_Multiracial`,sum(`COVID_Cases_By_Race`.`Cases_Other`) AS `Cases_Other`,sum(`COVID_Cases_By_Race`.`Cases_Unknown`) AS `Cases_Unknown` from `COVID_Cases_By_Race` where ((`COVID_Cases_By_Race`.`Date` >= '2020-01-01') and (`COVID_Cases_By_Race`.`Date` < '2020-11-01')) group by `COVID_Cases_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_T_By_Gender_WT`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_T_By_Gender_WT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_T_By_Gender_WT` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_T_WT` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2020-01-01') and (`COVID_Deaths_By_Age_Gender`.`Date` < '2020-11-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'All Sex')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `EmpLevelAgeCol`
--

/*!50001 DROP VIEW IF EXISTS `EmpLevelAgeCol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `EmpLevelAgeCol` AS select `e`.`Date` AS `Date`,sum((case when (`e`.`Age_Group` = 'Yrs_16_19') then `e`.`Employment_Level` else 0 end)) AS `Yrs_16_19`,sum((case when (`e`.`Age_Group` = 'Yrs_20_24') then `e`.`Employment_Level` else 0 end)) AS `Yrs_20_24`,sum((case when (`e`.`Age_Group` = 'Yrs_25_34') then `e`.`Employment_Level` else 0 end)) AS `Yrs_25_34`,sum((case when (`e`.`Age_Group` = 'Yrs_35_44') then `e`.`Employment_Level` else 0 end)) AS `Yrs_35_44`,sum((case when (`e`.`Age_Group` = 'Yrs_45_54') then `e`.`Employment_Level` else 0 end)) AS `Yrs_45_54`,sum((case when (`e`.`Age_Group` = 'Yrs_55_up') then `e`.`Employment_Level` else 0 end)) AS `Yrs_55_up`,sum((case when (`e`.`Age_Group` = 'Total') then `e`.`Employment_Level` else 0 end)) AS `Total` from `Employment_Level_By_Age` `e` group by `e`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_By_With_State_Name`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_By_With_State_Name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_By_With_State_Name` AS select `COVID_Deaths_By_Race`.`Date` AS `Date`,`COVID_Deaths_By_Race`.`State` AS `State`,`COVID_Deaths_By_Race`.`Deaths_Total` AS `Deaths_Total`,`COVID_Deaths_By_Race`.`Deaths_White` AS `Deaths_White`,`COVID_Deaths_By_Race`.`Deaths_Black` AS `Deaths_Black`,`COVID_Deaths_By_Race`.`Deaths_LatinX` AS `Deaths_LatinX`,`COVID_Deaths_By_Race`.`Deaths_Asian` AS `Deaths_Asian`,`COVID_Deaths_By_Race`.`Deaths_AIAN` AS `Deaths_AIAN`,`COVID_Deaths_By_Race`.`Deaths_NHPI` AS `Deaths_NHPI`,`COVID_Deaths_By_Race`.`Deaths_Multiracial` AS `Deaths_Multiracial`,`COVID_Deaths_By_Race`.`Deaths_Other` AS `Deaths_Other`,`COVID_Deaths_By_Race`.`Deaths_Unknown` AS `Deaths_Unknown`,`COVID_Deaths_By_Race`.`Deaths_Ethnicity_Hispanic` AS `Deaths_Ethnicity_Hispanic`,`COVID_Deaths_By_Race`.`Deaths_Ethnicity_Non_Hispanic` AS `Deaths_Ethnicity_Non_Hispanic`,`COVID_Deaths_By_Race`.`Deaths_Ethnicity_Unknown` AS `Deaths_Ethnicity_Unknown`,`State_To_Code`.`State_Name` AS `State_Name`,`State_To_Code`.`abbrev` AS `abbrev`,`State_To_Code`.`code` AS `code` from (`COVID_Deaths_By_Race` join `State_To_Code` on((`State_To_Code`.`code` = `COVID_Deaths_By_Race`.`State`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinPersonalSav`
--

/*!50001 DROP VIEW IF EXISTS `MinPersonalSav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinPersonalSav` AS select `t1`.`min` AS `min`,`t2`.`Date` AS `Date` from (`Total_Economic_Factors` `t2` join (select min(`Total_Economic_Factors`.`Personal_Saving_Rate`) AS `min` from `Total_Economic_Factors` where ((`Total_Economic_Factors`.`Date` >= '2019-06-01') and (`Total_Economic_Factors`.`Date` <= '2019-12-01'))) `t1`) where ((`t1`.`min` = `t2`.`Personal_Saving_Rate`) and (`t2`.`Date` >= '2019-06-01') and (`t2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinPersonalInc`
--

/*!50001 DROP VIEW IF EXISTS `MinPersonalInc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinPersonalInc` AS select `t1`.`min` AS `min`,`t2`.`Date` AS `Date` from (`Total_Economic_Factors` `t2` join (select min(`Total_Economic_Factors`.`Personal_Income`) AS `min` from `Total_Economic_Factors` where ((`Total_Economic_Factors`.`Date` >= '2019-06-01') and (`Total_Economic_Factors`.`Date` <= '2019-12-01'))) `t1`) where ((`t1`.`min` = `t2`.`Personal_Income`) and (`t2`.`Date` >= '2019-06-01') and (`t2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `State_Vaccinations`
--

/*!50001 DROP VIEW IF EXISTS `State_Vaccinations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `State_Vaccinations` AS select `COVID_Vaccinations`.`Date` AS `Date`,`COVID_Vaccinations`.`Location` AS `Location`,`COVID_Vaccinations`.`Admin_Dose_1_Daily` AS `Admin_Dose_1_Daily` from `COVID_Vaccinations` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinUnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinUnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinUnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`Unemployment_Rate` `u2` join (select min(`Unemployment_Rate`.`Total`) AS `min` from `Unemployment_Rate` where ((`Unemployment_Rate`.`Date` >= '2019-06-01') and (`Unemployment_Rate`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`Total`) and (`u2`.`Date` >= '2019-06-01') and (`u2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinG20UnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinG20UnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinG20UnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`Unemployment_Rate` `u2` join (select min(((`Unemployment_Rate`.`Men_20_plus` + `Unemployment_Rate`.`Women_20_plus`) / 2.0)) AS `min` from `Unemployment_Rate` where ((`Unemployment_Rate`.`Date` >= '2019-06-01') and (`Unemployment_Rate`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = ((`u2`.`Men_20_plus` + `u2`.`Women_20_plus`) / 2.0)) and (`u2`.`Date` >= '2019-06-01') and (`u2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_M_By_Gender_Delta`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_M_By_Gender_Delta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_M_By_Gender_Delta` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_M_Delta` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2021-06-01') and (`COVID_Deaths_By_Age_Gender`.`Date` < '2021-11-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'Male')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `West_UR_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `West_UR_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `West_UR_Peaks` AS select `urate`.`WUR1` AS `Pre_COVID`,`urate`.`WUR2` AS `WildType_Peak`,`urate`.`WUR3` AS `Alpha_Peak`,`urate`.`WUR4` AS `Delta_Peak`,`urate`.`WUR5` AS `Omicron_Peak` from (select sum((case when (`u`.`Date` = `m`.`Date`) then `u`.`West` else 0 end)) AS `WUR1`,sum((case when (`u`.`Date` = `wt`.`MonthDate`) then `u`.`West` else 0 end)) AS `WUR2`,sum((case when (`u`.`Date` = `a`.`MonthDate`) then `u`.`West` else 0 end)) AS `WUR3`,sum((case when (`u`.`Date` = `d`.`MonthDate`) then `u`.`West` else 0 end)) AS `WUR4`,sum((case when (`u`.`Date` = `o`.`MonthDate`) then `u`.`West` else 0 end)) AS `WUR5` from (((((`UnempRateRegionCol` `u` join `MinWestUnempRate` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`u`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `urate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Natl_UR_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `Natl_UR_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Natl_UR_Peaks` AS select `urate`.`UR1` AS `Pre_COVID`,`urate`.`UR2` AS `WildType_Peak`,`urate`.`UR3` AS `Alpha_Peak`,`urate`.`UR4` AS `Delta_Peak`,`urate`.`UR5` AS `Omicron_Peak` from (select sum((case when (`u`.`Date` = `m`.`Date`) then `u`.`Total` else 0 end)) AS `UR1`,sum((case when (`u`.`Date` = `wt`.`MonthDate`) then `u`.`Total` else 0 end)) AS `UR2`,sum((case when (`u`.`Date` = `a`.`MonthDate`) then `u`.`Total` else 0 end)) AS `UR3`,sum((case when (`u`.`Date` = `d`.`MonthDate`) then `u`.`Total` else 0 end)) AS `UR4`,sum((case when (`u`.`Date` = `o`.`MonthDate`) then `u`.`Total` else 0 end)) AS `UR5` from (((((`Unemployment_Rate` `u` join `MinUnempRate` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`u`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `urate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Jabs_Per_Population_State`
--

/*!50001 DROP VIEW IF EXISTS `Jabs_Per_Population_State`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Jabs_Per_Population_State` AS select `upr`.`State` AS `State`,(sum(`b`.`Admin_Daily`) / `upr`.`Total`) AS `JabPerPop` from ((select `COVID_Vaccinations`.`Date` AS `Date`,`COVID_Vaccinations`.`Date1` AS `Date1`,`COVID_Vaccinations`.`date_type` AS `date_type`,`COVID_Vaccinations`.`MMWR_week` AS `MMWR_week`,`COVID_Vaccinations`.`Location` AS `Location`,`COVID_Vaccinations`.`Administered_Daily` AS `Administered_Daily`,`COVID_Vaccinations`.`Admin_Daily` AS `Admin_Daily`,`COVID_Vaccinations`.`Admin_Dose_1_Daily` AS `Admin_Dose_1_Daily`,`COVID_Vaccinations`.`Admin_Dose_1` AS `Admin_Dose_1`,`COVID_Vaccinations`.`Booster_Daily` AS `Booster_Daily`,`COVID_Vaccinations`.`Boost_Daily` AS `Boost_Daily`,`State_To_Code`.`State_Name` AS `State_Name`,`State_To_Code`.`abbrev` AS `abbrev`,`State_To_Code`.`code` AS `code` from (`COVID_Vaccinations` join `State_To_Code` on((`COVID_Vaccinations`.`Location` = `State_To_Code`.`code`)))) `b` join `US_Population_Racial` `upr` on((`b`.`State_Name` = `upr`.`State`))) group by `upr`.`State` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Men_UR_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `Men_UR_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Men_UR_Peaks` AS select `urate`.`MUR1` AS `Pre_COVID`,`urate`.`MUR2` AS `WildType_Peak`,`urate`.`MUR3` AS `Alpha_Peak`,`urate`.`MUR4` AS `Delta_Peak`,`urate`.`MUR5` AS `Omicron_Peak` from (select sum((case when (`u`.`Date` = `m`.`Date`) then `u`.`Men_20_plus` else 0 end)) AS `MUR1`,sum((case when (`u`.`Date` = `wt`.`MonthDate`) then `u`.`Men_20_plus` else 0 end)) AS `MUR2`,sum((case when (`u`.`Date` = `a`.`MonthDate`) then `u`.`Men_20_plus` else 0 end)) AS `MUR3`,sum((case when (`u`.`Date` = `d`.`MonthDate`) then `u`.`Men_20_plus` else 0 end)) AS `MUR4`,sum((case when (`u`.`Date` = `o`.`MonthDate`) then `u`.`Men_20_plus` else 0 end)) AS `MUR5` from (((((`Unemployment_Rate` `u` join `MinMenUnempRate` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`u`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `urate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCaseWT`
--

/*!50001 DROP VIEW IF EXISTS `MaxCaseWT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCaseWT` AS select `c1`.`mx` AS `mx`,`c2`.`MonthDate` AS `MonthDate`,`mq`.`Quarter` AS `Quarter` from ((`COVID_Cases_Monthly` `c2` join `MonthDate_To_Quarter` `mq`) join (select max(`COVID_Cases_Monthly`.`Cases_Total`) AS `mx` from `COVID_Cases_Monthly` where ((`COVID_Cases_Monthly`.`MonthDate` >= '2020-01-01') and (`COVID_Cases_Monthly`.`MonthDate` < '2020-11-01'))) `c1`) where ((`c1`.`mx` = `c2`.`Cases_Total`) and (`c2`.`MonthDate` = `mq`.`MonthDate`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Natl_GDP_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `Natl_GDP_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Natl_GDP_Peaks` AS select round(`econ`.`GDP1`,1) AS `Pre_COVID`,round(`econ`.`GDP2`,1) AS `WildType_Peak`,round(`econ`.`GDP3`,1) AS `Alpha_Peak`,round(`econ`.`GDP4`,1) AS `Delta_Peak`,round(`econ`.`GDP5`,1) AS `Omicron_Peak` from (select sum((case when (`t`.`Date` = `m`.`Date`) then `t`.`GDP` else 0 end)) AS `GDP1`,sum((case when (`t`.`Date` = `wt`.`MonthDate`) then `t`.`GDP` else 0 end)) AS `GDP2`,sum((case when (`t`.`Date` = `a`.`MonthDate`) then `t`.`GDP` else 0 end)) AS `GDP3`,sum((case when (`t`.`Date` = `d`.`MonthDate`) then `t`.`GDP` else 0 end)) AS `GDP4`,sum((case when (`t`.`Date` = `o`.`MonthDate`) then `t`.`GDP` else 0 end)) AS `GDP5` from (((((`Total_Economic_Factors` `t` join `MaxGDP` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`t`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `econ` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxHospOmicron`
--

/*!50001 DROP VIEW IF EXISTS `MaxHospOmicron`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxHospOmicron` AS select `COVID_Hospitalizations_By_Race`.`Date` AS `Date`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Total`) AS `Hosp_Total`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_White`) AS `Hosp_White`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Black`) AS `Hosp_Black`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Latinx`) AS `Hosp_Latinx`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Asian`) AS `Hosp_Asian`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_AIAN`) AS `Hosp_AIAN`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_NHPI`) AS `Hosp_NHPI`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Multiracial`) AS `Hosp_Multiracial`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Other`) AS `Hosp_Other`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Unknown`) AS `Hosp_Unknown` from `COVID_Hospitalizations_By_Race` where (`COVID_Hospitalizations_By_Race`.`Date` >= '2021-11-01') group by `COVID_Hospitalizations_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinWestUnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinWestUnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinWestUnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`UnempRateRegionCol` `u2` join (select min(`UnempRateRegionCol`.`West`) AS `min` from `UnempRateRegionCol` where ((`UnempRateRegionCol`.`Date` >= '2019-06-01') and (`UnempRateRegionCol`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`West`) and (`u2`.`Date` >= '2019-06-01') and (`u2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Hospitalizations_By_With_State_Name`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Hospitalizations_By_With_State_Name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Hospitalizations_By_With_State_Name` AS select `COVID_Hospitalizations_By_Race`.`Date` AS `Date`,`COVID_Hospitalizations_By_Race`.`State` AS `State`,`COVID_Hospitalizations_By_Race`.`Hosp_Total` AS `Hosp_Total`,`COVID_Hospitalizations_By_Race`.`Hosp_White` AS `Hosp_White`,`COVID_Hospitalizations_By_Race`.`Hosp_Black` AS `Hosp_Black`,`COVID_Hospitalizations_By_Race`.`Hosp_Latinx` AS `Hosp_Latinx`,`COVID_Hospitalizations_By_Race`.`Hosp_Asian` AS `Hosp_Asian`,`COVID_Hospitalizations_By_Race`.`Hosp_AIAN` AS `Hosp_AIAN`,`COVID_Hospitalizations_By_Race`.`Hosp_NHPI` AS `Hosp_NHPI`,`COVID_Hospitalizations_By_Race`.`Hosp_Multiracial` AS `Hosp_Multiracial`,`COVID_Hospitalizations_By_Race`.`Hosp_Other` AS `Hosp_Other`,`COVID_Hospitalizations_By_Race`.`Hosp_Unknown` AS `Hosp_Unknown`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_Hispanic` AS `Hosp_Ethnicity_Hispanic`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_NonHispanic` AS `Hosp_Ethnicity_NonHispanic`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_Unknown` AS `Hosp_Ethnicity_Unknown`,`State_To_Code`.`State_Name` AS `State_Name`,`State_To_Code`.`abbrev` AS `abbrev`,`State_To_Code`.`code` AS `code` from (`COVID_Hospitalizations_By_Race` join `State_To_Code` on((`State_To_Code`.`code` = `COVID_Hospitalizations_By_Race`.`State`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HospAlpha`
--

/*!50001 DROP VIEW IF EXISTS `HospAlpha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `HospAlpha` AS select `COVID_Hospitalizations_By_Race`.`Date` AS `Date`,`COVID_Hospitalizations_By_Race`.`State` AS `State`,`COVID_Hospitalizations_By_Race`.`Hosp_Total` AS `Hosp_Total`,`COVID_Hospitalizations_By_Race`.`Hosp_White` AS `Hosp_White`,`COVID_Hospitalizations_By_Race`.`Hosp_Black` AS `Hosp_Black`,`COVID_Hospitalizations_By_Race`.`Hosp_Latinx` AS `Hosp_Latinx`,`COVID_Hospitalizations_By_Race`.`Hosp_Asian` AS `Hosp_Asian`,`COVID_Hospitalizations_By_Race`.`Hosp_AIAN` AS `Hosp_AIAN`,`COVID_Hospitalizations_By_Race`.`Hosp_NHPI` AS `Hosp_NHPI`,`COVID_Hospitalizations_By_Race`.`Hosp_Multiracial` AS `Hosp_Multiracial`,`COVID_Hospitalizations_By_Race`.`Hosp_Other` AS `Hosp_Other`,`COVID_Hospitalizations_By_Race`.`Hosp_Unknown` AS `Hosp_Unknown`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_Hispanic` AS `Hosp_Ethnicity_Hispanic`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_NonHispanic` AS `Hosp_Ethnicity_NonHispanic`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_Unknown` AS `Hosp_Ethnicity_Unknown` from `COVID_Hospitalizations_By_Race` where ((`COVID_Hospitalizations_By_Race`.`Date` >= '2020-11-01') and (`COVID_Hospitalizations_By_Race`.`Date` < '2021-06-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_T_By_Gender_Delta`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_T_By_Gender_Delta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_T_By_Gender_Delta` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_T_Delta` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2021-06-01') and (`COVID_Deaths_By_Age_Gender`.`Date` < '2021-11-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'All Sex')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxEmpLevel`
--

/*!50001 DROP VIEW IF EXISTS `MaxEmpLevel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxEmpLevel` AS select `e1`.`max` AS `max`,`e2`.`Date` AS `Date` from (`EmpLevelAgeCol` `e2` join (select max(`EmpLevelAgeCol`.`Total`) AS `max` from `EmpLevelAgeCol` where ((`EmpLevelAgeCol`.`Date` >= '2019-06-01') and (`EmpLevelAgeCol`.`Date` <= '2019-12-01'))) `e1`) where ((`e1`.`max` = `e2`.`Total`) and (`e2`.`Date` >= '2019-06-01') and (`e2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_Age_T_Breakdown`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_Age_T_Breakdown`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_Age_T_Breakdown` AS select `a`.`Age_Group` AS `Age_Group`,`a`.`Total_Deaths_T_WT` AS `Total_Deaths_T_WT`,`a`.`Total_Deaths_T_Alpha` AS `Total_Deaths_T_Alpha`,`a`.`Total_Deaths_T_Delta` AS `Total_Deaths_T_Delta`,`a`.`Total_Deaths_T_Omicron` AS `Total_Deaths_T_Omicron` from (select `COVID_Deaths_T_By_Gender_WT`.`Age_Group` AS `Age_Group`,`COVID_Deaths_T_By_Gender_WT`.`Total_Deaths_T_WT` AS `Total_Deaths_T_WT`,`COVID_Deaths_T_By_Gender_Alpha`.`Total_Deaths_T_Alpha` AS `Total_Deaths_T_Alpha`,`COVID_Deaths_T_By_Gender_Delta`.`Total_Deaths_T_Delta` AS `Total_Deaths_T_Delta`,`COVID_Deaths_T_By_Gender_Omicron`.`Total_Deaths_T_Omicron` AS `Total_Deaths_T_Omicron` from (((`COVID_Deaths_T_By_Gender_WT` join `COVID_Deaths_T_By_Gender_Alpha` on((`COVID_Deaths_T_By_Gender_WT`.`Age_Group` = `COVID_Deaths_T_By_Gender_Alpha`.`Age_Group`))) join `COVID_Deaths_T_By_Gender_Delta` on((`COVID_Deaths_T_By_Gender_WT`.`Age_Group` = `COVID_Deaths_T_By_Gender_Delta`.`Age_Group`))) join `COVID_Deaths_T_By_Gender_Omicron` on((`COVID_Deaths_T_By_Gender_WT`.`Age_Group` = `COVID_Deaths_T_By_Gender_Omicron`.`Age_Group`)))) `a` where (`a`.`Age_Group` <> 'All Ages') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_M_By_Gender_WT`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_M_By_Gender_WT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_M_By_Gender_WT` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_M_WT` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2020-01-01') and (`COVID_Deaths_By_Age_Gender`.`Date` < '2020-11-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'Male')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxDeathsDelta`
--

/*!50001 DROP VIEW IF EXISTS `MaxDeathsDelta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxDeathsDelta` AS select `COVID_Deaths_By_Race`.`Date` AS `Date`,sum(`COVID_Deaths_By_Race`.`Deaths_Total`) AS `Deaths_Total`,sum(`COVID_Deaths_By_Race`.`Deaths_White`) AS `Deaths_White`,sum(`COVID_Deaths_By_Race`.`Deaths_Black`) AS `Deaths_Black`,sum(`COVID_Deaths_By_Race`.`Deaths_LatinX`) AS `Deaths_Latinx`,sum(`COVID_Deaths_By_Race`.`Deaths_Asian`) AS `Deaths_Asian`,sum(`COVID_Deaths_By_Race`.`Deaths_AIAN`) AS `Deaths_AIAN`,sum(`COVID_Deaths_By_Race`.`Deaths_NHPI`) AS `Deaths_NHPI`,sum(`COVID_Deaths_By_Race`.`Deaths_Multiracial`) AS `Deaths_Multiracial`,sum(`COVID_Deaths_By_Race`.`Deaths_Other`) AS `Deaths_Other`,sum(`COVID_Deaths_By_Race`.`Deaths_Unknown`) AS `Deaths_Unknown` from `COVID_Deaths_By_Race` where ((`COVID_Deaths_By_Race`.`Date` >= '2021-06-01') and (`COVID_Deaths_By_Race`.`Date` < '2021-11-01')) group by `COVID_Deaths_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_Gender_Omicron`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_Omicron`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_Gender_Omicron` AS select `COVID_Cases_By_Gender`.`State` AS `State`,sum(`COVID_Cases_By_Gender`.`Total_Count`) AS `Total_Count_Omicron`,sum(`COVID_Cases_By_Gender`.`Male_Count`) AS `Male_Count_Omicron`,sum(`COVID_Cases_By_Gender`.`Female_Count`) AS `Female_Count_Omicron` from `COVID_Cases_By_Gender` where (`COVID_Cases_By_Gender`.`Date` >= '2021-11-01') group by `COVID_Cases_By_Gender`.`State` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `EmpLevelYearCol`
--

/*!50001 DROP VIEW IF EXISTS `EmpLevelYearCol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `EmpLevelYearCol` AS select sum((case when (`EmpLevelAgeCol`.`Date` = '2019-11-01') then `EmpLevelAgeCol`.`Yrs_16_19` else 0 end)) AS `Yrs_16_19_High`,sum((case when (`EmpLevelAgeCol`.`Date` = '2019-11-01') then `EmpLevelAgeCol`.`Yrs_20_24` else 0 end)) AS `Yrs_20_24_High`,sum((case when (`EmpLevelAgeCol`.`Date` = '2019-11-01') then `EmpLevelAgeCol`.`Yrs_25_34` else 0 end)) AS `Yrs_25_34_High`,sum((case when (`EmpLevelAgeCol`.`Date` = '2019-11-01') then `EmpLevelAgeCol`.`Yrs_35_44` else 0 end)) AS `Yrs_35_44_High`,sum((case when (`EmpLevelAgeCol`.`Date` = '2019-11-01') then `EmpLevelAgeCol`.`Yrs_45_54` else 0 end)) AS `Yrs_45_54_High`,sum((case when (`EmpLevelAgeCol`.`Date` = '2019-11-01') then `EmpLevelAgeCol`.`Yrs_55_up` else 0 end)) AS `Yrs_55_up_High`,sum((case when (`EmpLevelAgeCol`.`Date` = '2020-04-01') then `EmpLevelAgeCol`.`Yrs_16_19` else 0 end)) AS `Yrs_16_19_Low`,sum((case when (`EmpLevelAgeCol`.`Date` = '2020-04-01') then `EmpLevelAgeCol`.`Yrs_20_24` else 0 end)) AS `Yrs_20_24_Low`,sum((case when (`EmpLevelAgeCol`.`Date` = '2020-04-01') then `EmpLevelAgeCol`.`Yrs_25_34` else 0 end)) AS `Yrs_25_34_Low`,sum((case when (`EmpLevelAgeCol`.`Date` = '2020-04-01') then `EmpLevelAgeCol`.`Yrs_35_44` else 0 end)) AS `Yrs_35_44_Low`,sum((case when (`EmpLevelAgeCol`.`Date` = '2020-04-01') then `EmpLevelAgeCol`.`Yrs_45_54` else 0 end)) AS `Yrs_45_54_Low`,sum((case when (`EmpLevelAgeCol`.`Date` = '2020-04-01') then `EmpLevelAgeCol`.`Yrs_55_up` else 0 end)) AS `Yrs_55_up_Low` from `EmpLevelAgeCol` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinNortheastUnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinNortheastUnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinNortheastUnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`UnempRateRegionCol` `u2` join (select min(`UnempRateRegionCol`.`Northeast`) AS `min` from `UnempRateRegionCol` where ((`UnempRateRegionCol`.`Date` >= '2019-06-01') and (`UnempRateRegionCol`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`Northeast`) and (`u2`.`Date` >= '2019-06-01') and (`u2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Midwest_UR_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `Midwest_UR_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Midwest_UR_Peaks` AS select `urate`.`MWUR1` AS `Pre_COVID`,`urate`.`MWUR2` AS `WildType_Peak`,`urate`.`MWUR3` AS `Alpha_Peak`,`urate`.`MWUR4` AS `Delta_Peak`,`urate`.`MWUR5` AS `Omicron_Peak` from (select sum((case when (`u`.`Date` = `m`.`Date`) then `u`.`Midwest` else 0 end)) AS `MWUR1`,sum((case when (`u`.`Date` = `wt`.`MonthDate`) then `u`.`Midwest` else 0 end)) AS `MWUR2`,sum((case when (`u`.`Date` = `a`.`MonthDate`) then `u`.`Midwest` else 0 end)) AS `MWUR3`,sum((case when (`u`.`Date` = `d`.`MonthDate`) then `u`.`Midwest` else 0 end)) AS `MWUR4`,sum((case when (`u`.`Date` = `o`.`MonthDate`) then `u`.`Midwest` else 0 end)) AS `MWUR5` from (((((`UnempRateRegionCol` `u` join `MinMidwestUnempRate` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`u`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `urate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxHospWT`
--

/*!50001 DROP VIEW IF EXISTS `MaxHospWT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxHospWT` AS select `COVID_Hospitalizations_By_Race`.`Date` AS `Date`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Total`) AS `Hosp_Total`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_White`) AS `Hosp_White`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Black`) AS `Hosp_Black`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Latinx`) AS `Hosp_Latinx`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Asian`) AS `Hosp_Asian`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_AIAN`) AS `Hosp_AIAN`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_NHPI`) AS `Hosp_NHPI`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Multiracial`) AS `Hosp_Multiracial`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Other`) AS `Hosp_Other`,sum(`COVID_Hospitalizations_By_Race`.`Hosp_Unknown`) AS `Hosp_Unknown` from `COVID_Hospitalizations_By_Race` where ((`COVID_Hospitalizations_By_Race`.`Date` >= '2020-01-01') and (`COVID_Hospitalizations_By_Race`.`Date` < '2020-11-01')) group by `COVID_Hospitalizations_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `State_Political_ID`
--

/*!50001 DROP VIEW IF EXISTS `State_Political_ID`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `State_Political_ID` AS select `State_Political_Composition`.`State_Name` AS `State_Name`,if((`State_Political_Composition`.`Republican_lean_rep` < `State_Political_Composition`.`Democrat_lean_Dem`),'Democratic','Republican') AS `Affiliations` from `State_Political_Composition` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Natl_PI_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `Natl_PI_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Natl_PI_Peaks` AS select round(`econ`.`PI1`,1) AS `Pre_COVID`,round(`econ`.`PI2`,1) AS `WildType_Peak`,round(`econ`.`PI3`,1) AS `Alpha_Peak`,round(`econ`.`PI4`,1) AS `Delta_Peak`,round(`econ`.`PI5`,1) AS `Omicron_Peak` from (select sum((case when (`t`.`Date` = `m`.`Date`) then `t`.`Personal_Income` else 0 end)) AS `PI1`,sum((case when (`t`.`Date` = `wt`.`MonthDate`) then `t`.`Personal_Income` else 0 end)) AS `PI2`,sum((case when (`t`.`Date` = `a`.`MonthDate`) then `t`.`Personal_Income` else 0 end)) AS `PI3`,sum((case when (`t`.`Date` = `d`.`MonthDate`) then `t`.`Personal_Income` else 0 end)) AS `PI4`,sum((case when (`t`.`Date` = `o`.`MonthDate`) then `t`.`Personal_Income` else 0 end)) AS `PI5` from (((((`Total_Economic_Factors` `t` join `MinPersonalInc` `m`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`t`.`Date` in (`m`.`Date`,`wt`.`MonthDate`,`a`.`MonthDate`,`d`.`MonthDate`,`o`.`MonthDate`))) `econ` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_With_State_Name`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_With_State_Name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_With_State_Name` AS select `COVID_Cases_By_Race`.`Date` AS `Date`,`COVID_Cases_By_Race`.`State` AS `State`,`COVID_Cases_By_Race`.`Cases_Total` AS `Cases_Total`,`COVID_Cases_By_Race`.`Cases_White` AS `Cases_White`,`COVID_Cases_By_Race`.`Cases_Black` AS `Cases_Black`,`COVID_Cases_By_Race`.`Cases_LatinX` AS `Cases_LatinX`,`COVID_Cases_By_Race`.`Cases_Asian` AS `Cases_Asian`,`COVID_Cases_By_Race`.`Cases_AIAN` AS `Cases_AIAN`,`COVID_Cases_By_Race`.`Cases_NHPI` AS `Cases_NHPI`,`COVID_Cases_By_Race`.`Cases_Multiracial` AS `Cases_Multiracial`,`COVID_Cases_By_Race`.`Cases_Other` AS `Cases_Other`,`COVID_Cases_By_Race`.`Cases_Unknown` AS `Cases_Unknown`,`COVID_Cases_By_Race`.`Cases_Ethnicity_Hispanic` AS `Cases_Ethnicity_Hispanic`,`COVID_Cases_By_Race`.`Cases_Ethnicity_Non_Hispanic` AS `Cases_Ethnicity_Non_Hispanic`,`COVID_Cases_By_Race`.`Cases_Ethnicity_Unknown` AS `Cases_Ethnicity_Unknown`,`State_To_Code`.`State_Name` AS `State_Name`,`State_To_Code`.`abbrev` AS `abbrev`,`State_To_Code`.`code` AS `code` from (`COVID_Cases_By_Race` join `State_To_Code` on((`State_To_Code`.`code` = `COVID_Cases_By_Race`.`State`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_Gender_WT`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_WT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_Gender_WT` AS select `COVID_Cases_By_Gender`.`State` AS `State`,sum(`COVID_Cases_By_Gender`.`Total_Count`) AS `Total_Count_WT`,sum(`COVID_Cases_By_Gender`.`Male_Count`) AS `Male_Count_WT`,sum(`COVID_Cases_By_Gender`.`Female_Count`) AS `Female_Count_WT` from `COVID_Cases_By_Gender` where ((`COVID_Cases_By_Gender`.`Date` >= '2020-01-01') and (`COVID_Cases_By_Gender`.`Date` < '2020-11-01')) group by `COVID_Cases_By_Gender`.`State` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_F_By_Gender_Delta`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_F_By_Gender_Delta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_F_By_Gender_Delta` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_F_Delta` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2021-06-01') and (`COVID_Deaths_By_Age_Gender`.`Date` < '2021-11-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'Female')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Test_By_With_State_Name`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Test_By_With_State_Name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Test_By_With_State_Name` AS select `COVID_Test_By_Race`.`Date` AS `Date`,`COVID_Test_By_Race`.`State` AS `State`,`COVID_Test_By_Race`.`Tests_Total` AS `Tests_Total`,`COVID_Test_By_Race`.`Tests_White` AS `Tests_White`,`COVID_Test_By_Race`.`Tests_Black` AS `Tests_Black`,`COVID_Test_By_Race`.`Tests_Latinx` AS `Tests_Latinx`,`COVID_Test_By_Race`.`Tests_Asian` AS `Tests_Asian`,`COVID_Test_By_Race`.`Tests_AIAN` AS `Tests_AIAN`,`COVID_Test_By_Race`.`Tests_NHPI` AS `Tests_NHPI`,`COVID_Test_By_Race`.`Tests_Multiracial` AS `Tests_Multiracial`,`COVID_Test_By_Race`.`Tests_Other` AS `Tests_Other`,`COVID_Test_By_Race`.`Tests_Unknown` AS `Tests_Unknown`,`COVID_Test_By_Race`.`Tests_Ethnicity_Hispanic` AS `Tests_Ethnicity_Hispanic`,`COVID_Test_By_Race`.`Tests_Ethnicity_NonHispanic` AS `Tests_Ethnicity_NonHispanic`,`COVID_Test_By_Race`.`Tests_Ethnicity_Unknown` AS `Tests_Ethnicity_Unknown`,`State_To_Code`.`State_Name` AS `State_Name`,`State_To_Code`.`abbrev` AS `abbrev`,`State_To_Code`.`code` AS `code` from (`COVID_Test_By_Race` join `State_To_Code` on((`State_To_Code`.`code` = `COVID_Test_By_Race`.`State`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_Gender_Monthly`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Gender_Monthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_Gender_Monthly` AS select `md`.`MonthDate` AS `MonthDate`,sum(`c`.`Total_Count`) AS `Cases_Total`,sum(`c`.`Male_Count`) AS `Cases_Male`,sum(`c`.`Female_Count`) AS `Cases_Female` from (`COVID_Cases_By_Gender` `c` join `Date_To_MonthDate` `md`) where (`c`.`Date` = `md`.`Date`) group by `md`.`MonthDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Deaths_F_By_Gender_Alpha`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Deaths_F_By_Gender_Alpha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Deaths_F_By_Gender_Alpha` AS select `COVID_Deaths_By_Age_Gender`.`Age_Group` AS `Age_Group`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths_F_Alpha` from `COVID_Deaths_By_Age_Gender` where ((`COVID_Deaths_By_Age_Gender`.`Date` >= '2020-11-01') and (`COVID_Deaths_By_Age_Gender`.`Date` < '2021-06-01') and (`COVID_Deaths_By_Age_Gender`.`Sex` = 'Female')) group by `COVID_Deaths_By_Age_Gender`.`Age_Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxGDP`
--

/*!50001 DROP VIEW IF EXISTS `MaxGDP`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxGDP` AS select `t1`.`mx` AS `mx`,`t2`.`Date` AS `Date` from (`Total_Economic_Factors` `t2` join (select max(`Total_Economic_Factors`.`GDP`) AS `mx` from `Total_Economic_Factors` where ((`Total_Economic_Factors`.`Date` >= '2019-06-01') and (`Total_Economic_Factors`.`Date` <= '2019-12-01'))) `t1`) where ((`t1`.`mx` = `t2`.`GDP`) and (`t2`.`Date` >= '2019-06-01') and (`t2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CasesWT`
--

/*!50001 DROP VIEW IF EXISTS `CasesWT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CasesWT` AS select `COVID_Cases_By_Race`.`Date` AS `Date`,`COVID_Cases_By_Race`.`State` AS `State`,`COVID_Cases_By_Race`.`Cases_Total` AS `Cases_Total`,`COVID_Cases_By_Race`.`Cases_White` AS `Cases_White`,`COVID_Cases_By_Race`.`Cases_Black` AS `Cases_Black`,`COVID_Cases_By_Race`.`Cases_LatinX` AS `Cases_LatinX`,`COVID_Cases_By_Race`.`Cases_Asian` AS `Cases_Asian`,`COVID_Cases_By_Race`.`Cases_AIAN` AS `Cases_AIAN`,`COVID_Cases_By_Race`.`Cases_NHPI` AS `Cases_NHPI`,`COVID_Cases_By_Race`.`Cases_Multiracial` AS `Cases_Multiracial`,`COVID_Cases_By_Race`.`Cases_Other` AS `Cases_Other`,`COVID_Cases_By_Race`.`Cases_Unknown` AS `Cases_Unknown`,`COVID_Cases_By_Race`.`Cases_Ethnicity_Hispanic` AS `Cases_Ethnicity_Hispanic`,`COVID_Cases_By_Race`.`Cases_Ethnicity_Non_Hispanic` AS `Cases_Ethnicity_Non_Hispanic`,`COVID_Cases_By_Race`.`Cases_Ethnicity_Unknown` AS `Cases_Ethnicity_Unknown` from `COVID_Cases_By_Race` where ((`COVID_Cases_By_Race`.`Date` >= '2020-01-01') and (`COVID_Cases_By_Race`.`Date` < '2020-11-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MonthDate_To_Quarter`
--

/*!50001 DROP VIEW IF EXISTS `MonthDate_To_Quarter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MonthDate_To_Quarter` AS select `m`.`MonthDate` AS `MonthDate`,`q`.`Quarter` AS `Quarter` from (`MonthString_To_MonthDate` `m` join `Month_To_Quarter` `q`) where (`m`.`MonthString` = `q`.`Month`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Republican_States`
--

/*!50001 DROP VIEW IF EXISTS `Republican_States`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Republican_States` AS select `State_Political_ID`.`State_Name` AS `State_Name` from `State_Political_ID` where (`State_Political_ID`.`Affiliations` = 'Republican') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_Weekly`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_Weekly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_Weekly` AS select `COVID_Cases_By_State`.`Date` AS `Date`,sum(`COVID_Cases_By_State`.`new_cases`) AS `Cases_Total` from `COVID_Cases_By_State` group by `COVID_Cases_By_State`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HospDelta`
--

/*!50001 DROP VIEW IF EXISTS `HospDelta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `HospDelta` AS select `COVID_Hospitalizations_By_Race`.`Date` AS `Date`,`COVID_Hospitalizations_By_Race`.`State` AS `State`,`COVID_Hospitalizations_By_Race`.`Hosp_Total` AS `Hosp_Total`,`COVID_Hospitalizations_By_Race`.`Hosp_White` AS `Hosp_White`,`COVID_Hospitalizations_By_Race`.`Hosp_Black` AS `Hosp_Black`,`COVID_Hospitalizations_By_Race`.`Hosp_Latinx` AS `Hosp_Latinx`,`COVID_Hospitalizations_By_Race`.`Hosp_Asian` AS `Hosp_Asian`,`COVID_Hospitalizations_By_Race`.`Hosp_AIAN` AS `Hosp_AIAN`,`COVID_Hospitalizations_By_Race`.`Hosp_NHPI` AS `Hosp_NHPI`,`COVID_Hospitalizations_By_Race`.`Hosp_Multiracial` AS `Hosp_Multiracial`,`COVID_Hospitalizations_By_Race`.`Hosp_Other` AS `Hosp_Other`,`COVID_Hospitalizations_By_Race`.`Hosp_Unknown` AS `Hosp_Unknown`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_Hispanic` AS `Hosp_Ethnicity_Hispanic`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_NonHispanic` AS `Hosp_Ethnicity_NonHispanic`,`COVID_Hospitalizations_By_Race`.`Hosp_Ethnicity_Unknown` AS `Hosp_Ethnicity_Unknown` from `COVID_Hospitalizations_By_Race` where ((`COVID_Hospitalizations_By_Race`.`Date` >= '2021-06-01') and (`COVID_Hospitalizations_By_Race`.`Date` < '2021-11-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `GDP_Gov_Peaks`
--

/*!50001 DROP VIEW IF EXISTS `GDP_Gov_Peaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `GDP_Gov_Peaks` AS select round(`gov`.`GEL1`,1) AS `Pre_COVID`,round(`gov`.`GEL2`,1) AS `WildType_Peak`,round(`gov`.`GEL3`,1) AS `Alpha_Peak`,round(`gov`.`GEL4`,1) AS `Delta_Peak`,round(`gov`.`GEL5`,1) AS `Omicron_Peak` from (select sum((case when (`g`.`Quarter` = `p`.`Quarter`) then `g`.`Government` else 0 end)) AS `GEL1`,sum((case when (`g`.`Quarter` = `wt`.`Quarter`) then `g`.`Government` else 0 end)) AS `GEL2`,sum((case when (`g`.`Quarter` = `a`.`Quarter`) then `g`.`Government` else 0 end)) AS `GEL3`,sum((case when (`g`.`Quarter` = `d`.`Quarter`) then `g`.`Government` else 0 end)) AS `GEL4`,sum((case when (`g`.`Quarter` = `o`.`Quarter`) then `g`.`Government` else 0 end)) AS `GEL5` from (((((`GDP_By_Industry` `g` join `MaxGovGDP` `p`) join `MaxCaseWT` `wt`) join `MaxCaseAlpha` `a`) join `MaxCaseDelta` `d`) join `MaxCaseOmicron` `o`) where (`g`.`Quarter` in (`p`.`Quarter`,`wt`.`Quarter`,`a`.`Quarter`,`d`.`Quarter`,`o`.`Quarter`))) `gov` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCaseDelta`
--

/*!50001 DROP VIEW IF EXISTS `MaxCaseDelta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCaseDelta` AS select `c1`.`mx` AS `mx`,`c2`.`MonthDate` AS `MonthDate`,`mq`.`Quarter` AS `Quarter` from ((`COVID_Cases_Monthly` `c2` join `MonthDate_To_Quarter` `mq`) join (select max(`COVID_Cases_Monthly`.`Cases_Total`) AS `mx` from `COVID_Cases_Monthly` where ((`COVID_Cases_Monthly`.`MonthDate` >= '2021-06-01') and (`COVID_Cases_Monthly`.`MonthDate` < '2021-11-01'))) `c1`) where ((`c1`.`mx` = `c2`.`Cases_Total`) and (`c2`.`MonthDate` = `mq`.`MonthDate`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinMenUnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinMenUnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinMenUnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`Unemployment_Rate` `u2` join (select min(`Unemployment_Rate`.`Men_20_plus`) AS `min` from `Unemployment_Rate` where ((`Unemployment_Rate`.`Date` >= '2019-06-01') and (`Unemployment_Rate`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`Men_20_plus`) and (`u2`.`Date` >= '2019-06-01') and (`u2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinAsianUnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinAsianUnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinAsianUnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`Unemployment_Rate` `u2` join (select min(`Unemployment_Rate`.`Asian`) AS `min` from `Unemployment_Rate` where ((`Unemployment_Rate`.`Date` >= '2019-06-01') and (`Unemployment_Rate`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`Asian`) and (`u2`.`Date` >= '2019-06-01') and (`u2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Unemployment_Rate_By_Region`
--

/*!50001 DROP VIEW IF EXISTS `Unemployment_Rate_By_Region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Unemployment_Rate_By_Region` AS select `u`.`Date` AS `Date`,`r`.`Region` AS `Region`,round(avg(`u`.`Unemp_Rate`),2) AS `Unemp_Rate` from (`Unemployment_Rate_By_State` `u` join `State_To_Region` `r`) where (`u`.`State` = `r`.`State`) group by `u`.`Date`,`r`.`Region` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RaceRemoteWorkYearCol`
--

/*!50001 DROP VIEW IF EXISTS `RaceRemoteWorkYearCol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `RaceRemoteWorkYearCol` AS select sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`White` else 0 end)) AS `White_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Black` else 0 end)) AS `Black_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Hispanic` else 0 end)) AS `Hispanic_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then `Remote_Work_By_Gender_Race`.`Asian` else 0 end)) AS `Asian_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2020-05-01') then ((`Remote_Work_By_Gender_Race`.`Total_16to24_years` + `Remote_Work_By_Gender_Race`.`Total_25to54_years`) + `Remote_Work_By_Gender_Race`.`Total_55Plus`) else 0 end)) AS `Total_2020`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`White` else 0 end)) AS `White_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Black` else 0 end)) AS `Black_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Hispanic` else 0 end)) AS `Hispanic_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then `Remote_Work_By_Gender_Race`.`Asian` else 0 end)) AS `Asian_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2021-05-01') then ((`Remote_Work_By_Gender_Race`.`Total_16to24_years` + `Remote_Work_By_Gender_Race`.`Total_25to54_years`) + `Remote_Work_By_Gender_Race`.`Total_55Plus`) else 0 end)) AS `Total_2021`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`White` else 0 end)) AS `White_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Black` else 0 end)) AS `Black_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Hispanic` else 0 end)) AS `Hispanic_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then `Remote_Work_By_Gender_Race`.`Asian` else 0 end)) AS `Asian_2022`,sum((case when (`Remote_Work_By_Gender_Race`.`MonthDate` = '2022-05-01') then ((`Remote_Work_By_Gender_Race`.`Total_16to24_years` + `Remote_Work_By_Gender_Race`.`Total_25to54_years`) + `Remote_Work_By_Gender_Race`.`Total_55Plus`) else 0 end)) AS `Total_2022` from `Remote_Work_By_Gender_Race` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxDeathsWT`
--

/*!50001 DROP VIEW IF EXISTS `MaxDeathsWT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxDeathsWT` AS select `COVID_Deaths_By_Race`.`Date` AS `Date`,sum(`COVID_Deaths_By_Race`.`Deaths_Total`) AS `Deaths_Total`,sum(`COVID_Deaths_By_Race`.`Deaths_White`) AS `Deaths_White`,sum(`COVID_Deaths_By_Race`.`Deaths_Black`) AS `Deaths_Black`,sum(`COVID_Deaths_By_Race`.`Deaths_LatinX`) AS `Deaths_Latinx`,sum(`COVID_Deaths_By_Race`.`Deaths_Asian`) AS `Deaths_Asian`,sum(`COVID_Deaths_By_Race`.`Deaths_AIAN`) AS `Deaths_AIAN`,sum(`COVID_Deaths_By_Race`.`Deaths_NHPI`) AS `Deaths_NHPI`,sum(`COVID_Deaths_By_Race`.`Deaths_Multiracial`) AS `Deaths_Multiracial`,sum(`COVID_Deaths_By_Race`.`Deaths_Other`) AS `Deaths_Other`,sum(`COVID_Deaths_By_Race`.`Deaths_Unknown`) AS `Deaths_Unknown` from `COVID_Deaths_By_Race` where ((`COVID_Deaths_By_Race`.`Date` >= '2020-01-01') and (`COVID_Deaths_By_Race`.`Date` < '2020-11-01')) group by `COVID_Deaths_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinHispanicUnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinHispanicUnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinHispanicUnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`Unemployment_Rate` `u2` join (select min(`Unemployment_Rate`.`Hispanic`) AS `min` from `Unemployment_Rate` where ((`Unemployment_Rate`.`Date` >= '2019-06-01') and (`Unemployment_Rate`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`Hispanic`) and (`u2`.`Date` = '2019-09-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinWhiteUnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinWhiteUnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinWhiteUnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`Unemployment_Rate` `u2` join (select min(`Unemployment_Rate`.`White`) AS `min` from `Unemployment_Rate` where ((`Unemployment_Rate`.`Date` >= '2019-06-01') and (`Unemployment_Rate`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`White`) and (`u2`.`Date` = '2019-09-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DeathsOmicron`
--

/*!50001 DROP VIEW IF EXISTS `DeathsOmicron`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DeathsOmicron` AS select `COVID_Deaths_By_Age_Gender`.`Date` AS `Date`,sum(`COVID_Deaths_By_Age_Gender`.`Total_Deaths`) AS `Total_Deaths` from `COVID_Deaths_By_Age_Gender` where (`COVID_Deaths_By_Age_Gender`.`Date` >= '2021-11-01') group by `COVID_Deaths_By_Age_Gender`.`Date` order by `Total_Deaths` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinSouthUnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinSouthUnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinSouthUnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`UnempRateRegionCol` `u2` join (select min(`UnempRateRegionCol`.`South`) AS `min` from `UnempRateRegionCol` where ((`UnempRateRegionCol`.`Date` >= '2019-06-01') and (`UnempRateRegionCol`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`South`) and (`u2`.`Date` >= '2019-06-01') and (`u2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxDeathsAlpha`
--

/*!50001 DROP VIEW IF EXISTS `MaxDeathsAlpha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxDeathsAlpha` AS select `COVID_Deaths_By_Race`.`Date` AS `Date`,sum(`COVID_Deaths_By_Race`.`Deaths_Total`) AS `Deaths_Total`,sum(`COVID_Deaths_By_Race`.`Deaths_White`) AS `Deaths_White`,sum(`COVID_Deaths_By_Race`.`Deaths_Black`) AS `Deaths_Black`,sum(`COVID_Deaths_By_Race`.`Deaths_LatinX`) AS `Deaths_Latinx`,sum(`COVID_Deaths_By_Race`.`Deaths_Asian`) AS `Deaths_Asian`,sum(`COVID_Deaths_By_Race`.`Deaths_AIAN`) AS `Deaths_AIAN`,sum(`COVID_Deaths_By_Race`.`Deaths_NHPI`) AS `Deaths_NHPI`,sum(`COVID_Deaths_By_Race`.`Deaths_Multiracial`) AS `Deaths_Multiracial`,sum(`COVID_Deaths_By_Race`.`Deaths_Other`) AS `Deaths_Other`,sum(`COVID_Deaths_By_Race`.`Deaths_Unknown`) AS `Deaths_Unknown` from `COVID_Deaths_By_Race` where ((`COVID_Deaths_By_Race`.`Date` >= '2020-11-01') and (`COVID_Deaths_By_Race`.`Date` < '2021-06-01')) group by `COVID_Deaths_By_Race`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_Region_Monthly`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Region_Monthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_Region_Monthly` AS select `md`.`MonthDate` AS `MonthDate`,`c`.`Region` AS `Region`,sum(`c`.`Cases_Total`) AS `Cases_Total` from (`Date_To_MonthDate` `md` join (select `c`.`Date` AS `Date`,`r`.`Region` AS `Region`,sum(`c`.`new_cases`) AS `Cases_Total` from (`COVID_Cases_By_State_With_Name` `c` join `State_To_Region` `r`) where (`c`.`State_Name` = `r`.`State`) group by `c`.`Date`,`r`.`Region`) `c`) where (`c`.`Date` = `md`.`Date`) group by `md`.`MonthDate`,`c`.`Region` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COVID_Cases_By_Race_Per`
--

/*!50001 DROP VIEW IF EXISTS `COVID_Cases_By_Race_Per`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `COVID_Cases_By_Race_Per` AS select `COVID_Cases_By_Race_Totals`.`State` AS `State`,(`COVID_Cases_By_Race_Totals`.`Cases_White` / `COVID_Cases_By_Race_Totals`.`Cases_Total`) AS `Per_White`,(`COVID_Cases_By_Race_Totals`.`Cases_Black` / `COVID_Cases_By_Race_Totals`.`Cases_Total`) AS `Per_Black`,(`COVID_Cases_By_Race_Totals`.`Cases_Asian` / `COVID_Cases_By_Race_Totals`.`Cases_Total`) AS `Per_Asian`,(`COVID_Cases_By_Race_Totals`.`Cases_Latinx` / `COVID_Cases_By_Race_Totals`.`Cases_Total`) AS `Per_Latinx`,(`COVID_Cases_By_Race_Totals`.`Cases_AIAN` / `COVID_Cases_By_Race_Totals`.`Cases_Total`) AS `Per_AIAN`,(`COVID_Cases_By_Race_Totals`.`Cases_NHPI` / `COVID_Cases_By_Race_Totals`.`Cases_Total`) AS `Per_NHPI` from `COVID_Cases_By_Race_Totals` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MaxCaseAlpha`
--

/*!50001 DROP VIEW IF EXISTS `MaxCaseAlpha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MaxCaseAlpha` AS select `c1`.`mx` AS `mx`,`c2`.`MonthDate` AS `MonthDate`,`mq`.`Quarter` AS `Quarter` from ((`COVID_Cases_Monthly` `c2` join `MonthDate_To_Quarter` `mq`) join (select max(`COVID_Cases_Monthly`.`Cases_Total`) AS `mx` from `COVID_Cases_Monthly` where ((`COVID_Cases_Monthly`.`MonthDate` >= '2020-11-01') and (`COVID_Cases_Monthly`.`MonthDate` < '2021-06-01'))) `c1`) where ((`c1`.`mx` = `c2`.`Cases_Total`) and (`c2`.`MonthDate` = `mq`.`MonthDate`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `US_Population_Racial_Percentages`
--

/*!50001 DROP VIEW IF EXISTS `US_Population_Racial_Percentages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `US_Population_Racial_Percentages` AS select `US_Population_Racial`.`State` AS `State`,(`US_Population_Racial`.`WhiteTotal` / `US_Population_Racial`.`Total`) AS `White`,(`US_Population_Racial`.`BlackTotal` / `US_Population_Racial`.`Total`) AS `Black`,(`US_Population_Racial`.`HawaiianTotal` / `US_Population_Racial`.`Total`) AS `NHPI`,(`US_Population_Racial`.`AsianTotal` / `US_Population_Racial`.`Total`) AS `Asian`,(`US_Population_Racial`.`IndianTotal` / `US_Population_Racial`.`Total`) AS `AIAN`,(`US_Population_Racial`.`OtherTotal` / `US_Population_Racial`.`Total`) AS `Latinx` from `US_Population_Racial` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinWomenUnempRate`
--

/*!50001 DROP VIEW IF EXISTS `MinWomenUnempRate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`natalie`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinWomenUnempRate` AS select `u1`.`min` AS `min`,`u2`.`Date` AS `Date` from (`Unemployment_Rate` `u2` join (select min(`Unemployment_Rate`.`Women_20_plus`) AS `min` from `Unemployment_Rate` where ((`Unemployment_Rate`.`Date` >= '2019-06-01') and (`Unemployment_Rate`.`Date` <= '2019-12-01'))) `u1`) where ((`u1`.`min` = `u2`.`Women_20_plus`) and (`u2`.`Date` >= '2019-06-01') and (`u2`.`Date` <= '2019-12-01')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-26 14:30:16
