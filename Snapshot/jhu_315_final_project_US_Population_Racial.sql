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
-- Table structure for table `US_Population_Racial`
--

DROP TABLE IF EXISTS `US_Population_Racial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `US_Population_Racial` (
  `State` varchar(100) NOT NULL,
  `Total` int DEFAULT NULL,
  `WhiteTotal` int DEFAULT NULL,
  `BlackTotal` int DEFAULT NULL,
  `IndianTotal` int DEFAULT NULL,
  `AsianTotal` int DEFAULT NULL,
  `HawaiianTotal` int DEFAULT NULL,
  `OtherTotal` int DEFAULT NULL,
  PRIMARY KEY (`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `US_Population_Racial`
--

LOCK TABLES `US_Population_Racial` WRITE;
/*!40000 ALTER TABLE `US_Population_Racial` DISABLE KEYS */;
INSERT INTO `US_Population_Racial` VALUES ('Alabama',4893186,3302834,1301319,24764,67909,2042,194318),('Alaska',736990,466961,23894,107298,47289,10485,81063),('Arizona',7174064,5292498,325105,311014,239190,14633,991624),('Arkansas',3011873,2269959,457840,19146,46130,10455,208343),('California',39346023,22053721,2250962,311629,5834312,149636,8745763),('Colorado',5684926,4634305,235692,53671,181733,8883,570642),('Connecticut',3570549,2649994,382161,9079,163262,1189,364864),('Delaware',967679,652587,212795,3560,38528,705,59504),('District of Columbia',701974,288306,318631,2438,28762,328,63509),('Florida',21216924,15199588,3381061,55655,590668,13339,1976613),('Georgia',10516579,6020265,3319844,34962,434603,7127,699778),('Hawaii',1420074,342923,26717,3508,534519,147698,364709),('Idaho',1754367,1550979,11536,23029,24501,3174,141148),('Illinois',12716164,8874067,1796660,33972,709567,5196,1296702),('Indiana',6696893,5510354,631923,14030,158705,2205,379676),('Iowa',3150011,2806418,117035,10538,79296,3941,132783),('Kansas',2912619,2416165,165837,22278,87093,2344,218902),('Kentucky',4461952,3848305,361230,8364,68139,3033,172881),('Louisiana',4664616,2856904,1500633,25938,80930,1743,198468),('Maine',1340825,1256030,18635,8894,15270,190,41806),('Maryland',6037624,3275048,1803128,15860,384429,2650,556509),('Massachusetts',6873003,5261787,513369,13999,466044,2786,615018),('Michigan',9973907,7735902,1360149,50035,316844,3117,507860),('Minnesota',5600166,4572149,359817,54558,275242,2201,336199),('Mississippi',2981835,1729353,1123545,13951,29742,1215,84029),('Missouri',6124160,4978046,698043,24274,123810,8887,291100),('Montana',1061705,932157,5919,65523,8664,595,48847),('Nebraska',1923826,1641256,91896,16875,47944,1235,124620),('Nevada',3030281,1881048,282722,37715,252314,21398,555084),('New Hampshire',1355244,1246602,21045,2197,36581,424,48395),('New Jersey',8885418,5820147,1189681,22288,857873,3156,992273),('New Mexico',2097021,1467849,43476,195166,33695,1853,354982),('New York',19514849,12160045,3002401,76535,1674216,9376,2592276),('North Carolina',10386227,7019443,2217522,120272,308958,7368,712664),('North Dakota',760394,651470,23959,39165,11979,1004,32817),('Ohio',11675275,9394878,1442655,20442,268527,3907,544866),('Oklahoma',3949342,2809793,287856,303791,87033,6418,454451),('Oregon',4176346,3449081,79117,45683,187801,16445,398219),('Pennsylvania',12794885,10155004,1419582,20798,449320,4268,745913),('Puerto Rico',3255642,1952451,367906,5697,5882,258,923448),('Rhode Island',1057798,835608,69196,4344,36536,790,111324),('South Carolina',5091517,3386329,1346560,16951,83573,3633,254471),('South Dakota',879336,735228,18836,74975,12413,544,37340),('Tennessee',6772268,5196680,1128806,17178,122897,3959,302748),('Texas',28635442,19805623,3464424,137921,1415664,25328,3786482),('Utah',3151239,2682881,38059,33222,73190,29450,294437),('Vermont',624340,584360,7964,1873,10126,205,19812),('Virginia',8509358,5643436,1620649,22553,570398,5994,646328),('Washington',7512465,5523881,290245,91766,662902,51117,892554),('West Virginia',1807426,1672255,64285,3146,14228,474,53038),('Wisconsin',5806975,4895065,367889,48674,163396,2672,329279),('Wyoming',581348,525246,5079,13117,4892,589,32425);
/*!40000 ALTER TABLE `US_Population_Racial` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:40