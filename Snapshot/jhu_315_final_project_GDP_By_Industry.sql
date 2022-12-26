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
-- Table structure for table `GDP_By_Industry`
--

DROP TABLE IF EXISTS `GDP_By_Industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GDP_By_Industry` (
  `Quarter` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Total_All_Industries` float DEFAULT NULL,
  `Total_Private` float DEFAULT NULL,
  `Agriculture` float DEFAULT NULL,
  `Mining` float DEFAULT NULL,
  `Utilities` float DEFAULT NULL,
  `Construction` float DEFAULT NULL,
  `Manufacturing` float DEFAULT NULL,
  `Wholesale_trade` float DEFAULT NULL,
  `Retail_trade` float DEFAULT NULL,
  `Transportation_and_warehousing` float DEFAULT NULL,
  `Information` float DEFAULT NULL,
  `Financial_Activities` float DEFAULT NULL,
  `Professional_and_business_services` float DEFAULT NULL,
  `Education_and_health services` float DEFAULT NULL,
  `Leisure_and_Hospitality` float DEFAULT NULL,
  `Other_services` float DEFAULT NULL,
  `Government` float DEFAULT NULL,
  `Federal` float DEFAULT NULL,
  `State_and_local` float DEFAULT NULL,
  PRIMARY KEY (`Quarter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GDP_By_Industry`
--

LOCK TABLES `GDP_By_Industry` WRITE;
/*!40000 ALTER TABLE `GDP_By_Industry` DISABLE KEYS */;
INSERT INTO `GDP_By_Industry` VALUES ('2019Q1',33986.1,30437.9,516.8,730.4,503.7,1373.6,6149.9,1880.9,1772.4,1229.1,1941.1,5772.9,3894.1,2661.9,1333.3,631.1,3554.3,1085.5,2466.7),('2019Q2',34264.1,30663.7,518.5,753.1,503.9,1394.3,6143.9,1864.2,1779.5,1233.2,1974.4,5811.5,3989.2,2686.4,1336.3,632,3605.8,1119.4,2484.7),('2019Q3',34458.7,30843.3,519.8,776.5,500.3,1416,6112.3,1861.4,1797.2,1224.7,1994.2,5850.2,4061.8,2693,1347.2,645,3621.2,1123.4,2496.1),('2019Q4',34428.6,30792.6,524.3,768.8,494.7,1422.4,5966,1849.4,1815.6,1199.3,2006.7,5878.6,4096.5,2703.5,1353.5,653.8,3641.1,1126.4,2512.9),('2020Q1',34051.3,30429.9,548,784,484.2,1450.8,5883.5,1842.3,1786.3,1162.1,1993.5,5840.5,4098.2,2664.6,1219.5,634.2,3625.3,1131.1,2492.6),('2020Q2',31163.8,27567.6,528.3,601.6,483.9,1395.7,5233.8,1618.5,1700.7,921.2,1940.2,5711.1,3761,2369.8,694.4,520.6,3585.2,1211.2,2375.8),('2020Q3',33198.9,29613.8,546.8,598.6,489.3,1408.5,5739.9,1818.2,1880.1,1052,2023.1,5845.1,3970.7,2569.8,988.5,590.2,3586.4,1168.4,2418.3),('2020Q4',33791.8,30211.6,550.1,603.9,492.1,1452.6,5776.1,1870.9,1876.3,1110,2088.5,5912.6,4162.1,2630,1001.2,590.4,3585.3,1173.2,2412.7),('2021Q1',34510.7,30870.1,534.9,607.9,500.3,1475.1,5824.3,1939.9,1971.6,1158.7,2178.2,6010.9,4256.5,2620,1108.4,577.9,3646.2,1235.5,2413.5),('2021Q2',34988.5,31341.3,529.6,641.1,505.3,1454.1,5742,1995.6,1942.7,1187.1,2265.3,6022.2,4404.6,2672.8,1278.4,595.8,3654.3,1213.4,2442.5),('2021Q3',35315.8,31671.2,525.8,634.2,495.6,1430.5,5726.1,1995.9,1893.8,1233.6,2317.5,6118.1,4517.5,2701.2,1375.8,599.7,3653.1,1181.2,2471.6),('2021Q4',35653,32006.8,523.2,644.9,491.9,1402.2,5800.4,2022.5,1902.5,1275.9,2362.9,6160.4,4622,2721.5,1385.9,599.8,3655.6,1185.3,2470.3),('2022Q1',35862.8,32207.5,521.1,654.8,504.8,1379.5,5807,2088.9,1906.4,1276.7,2424.1,6168.9,4684.2,2731,1381.9,603,3665.3,1176.1,2488.2),('2022Q2',36013.3,32350.4,516.3,664.8,513.5,1330.1,5794.6,2077.2,1919.5,1307.8,2458.4,6170.7,4754.6,2741.4,1443.8,598.2,3673,1183.2,2489.3);
/*!40000 ALTER TABLE `GDP_By_Industry` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:41