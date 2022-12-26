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
-- Table structure for table `Personal_Income_By_State`
--

DROP TABLE IF EXISTS `Personal_Income_By_State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Personal_Income_By_State` (
  `Quarter` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `State` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Personal Income` float DEFAULT NULL,
  PRIMARY KEY (`Quarter`,`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personal_Income_By_State`
--

LOCK TABLES `Personal_Income_By_State` WRITE;
/*!40000 ALTER TABLE `Personal_Income_By_State` DISABLE KEYS */;
INSERT INTO `Personal_Income_By_State` VALUES ('2019Q1','Alabama',213.819),('2019Q1','Alaska',44.8153),('2019Q1','Arizona',333.228),('2019Q1','Arkansas',132.212),('2019Q1','California',2524.16),('2019Q1','Colorado',350.468),('2019Q1','Connecticut',271.83),('2019Q1','Delaware',52.6303),('2019Q1','District of Columbia',57.5285),('2019Q1','Florida',1145.33),('2019Q1','Georgia',515.378),('2019Q1','Hawaii',78.5192),('2019Q1','Idaho',81.0265),('2019Q1','Illinois',746.115),('2019Q1','Indiana',326.492),('2019Q1','Iowa',159.088),('2019Q1','Kansas',153.653),('2019Q1','Kentucky',194.922),('2019Q1','Louisiana',221.069),('2019Q1','Maine',67.8316),('2019Q1','Maryland',379.863),('2019Q1','Massachusetts',509.853),('2019Q1','Michigan',490.596),('2019Q1','Minnesota',328.444),('2019Q1','Mississippi',116.004),('2019Q1','Missouri',297.792),('2019Q1','Montana',53.1078),('2019Q1','Nebraska',104.114),('2019Q1','Nevada',158.093),('2019Q1','New Hampshire',88.1638),('2019Q1','New Jersey',625.693),('2019Q1','New Mexico',90.1952),('2019Q1','New York',1344.79),('2019Q1','North Carolina',498.069),('2019Q1','North Dakota',44.0906),('2019Q1','Ohio',583.86),('2019Q1','Oklahoma',191.224),('2019Q1','Oregon',218.93),('2019Q1','Pennsylvania',734.823),('2019Q1','Rhode Island',60.6313),('2019Q1','South Carolina',233.355),('2019Q1','South Dakota',47.9603),('2019Q1','Tennessee',334.259),('2019Q1','Texas',1538.59),('2019Q1','Utah',154.501),('2019Q1','Vermont',35.2536),('2019Q1','Virginia',500.619),('2019Q1','Washington',481.232),('2019Q1','West Virginia',77.045),('2019Q1','Wisconsin',307.546),('2019Q1','Wyoming',36.4055),('2019Q2','Alabama',215.743),('2019Q2','Alaska',44.9965),('2019Q2','Arizona',337.944),('2019Q2','Arkansas',132.31),('2019Q2','California',2555.91),('2019Q2','Colorado',354.047),('2019Q2','Connecticut',271.609),('2019Q2','Delaware',53.0889),('2019Q2','District of Columbia',58.0697),('2019Q2','Florida',1160.23),('2019Q2','Georgia',520.962),('2019Q2','Hawaii',79.2728),('2019Q2','Idaho',82.4246),('2019Q2','Illinois',746.918),('2019Q2','Indiana',328.115),('2019Q2','Iowa',158.364),('2019Q2','Kansas',154.064),('2019Q2','Kentucky',196.447),('2019Q2','Louisiana',221.52),('2019Q2','Maine',68.5274),('2019Q2','Maryland',383.465),('2019Q2','Massachusetts',512.417),('2019Q2','Michigan',494.31),('2019Q2','Minnesota',330.635),('2019Q2','Mississippi',116.358),('2019Q2','Missouri',299.193),('2019Q2','Montana',53.5631),('2019Q2','Nebraska',104.476),('2019Q2','Nevada',160.478),('2019Q2','New Hampshire',88.5626),('2019Q2','New Jersey',632.079),('2019Q2','New Mexico',91.3017),('2019Q2','New York',1360.98),('2019Q2','North Carolina',503.208),('2019Q2','North Dakota',43.6747),('2019Q2','Ohio',586.912),('2019Q2','Oklahoma',190.768),('2019Q2','Oregon',220.71),('2019Q2','Pennsylvania',738.758),('2019Q2','Rhode Island',61.0286),('2019Q2','South Carolina',235.629),('2019Q2','South Dakota',47.9915),('2019Q2','Tennessee',337.215),('2019Q2','Texas',1551.66),('2019Q2','Utah',155.339),('2019Q2','Vermont',35.4353),('2019Q2','Virginia',505.279),('2019Q2','Washington',487.244),('2019Q2','West Virginia',77.4897),('2019Q2','Wisconsin',310.16),('2019Q2','Wyoming',36.6929),('2019Q3','Alabama',217.605),('2019Q3','Alaska',45.1922),('2019Q3','Arizona',342.619),('2019Q3','Arkansas',133.672),('2019Q3','California',2573.73),('2019Q3','Colorado',359.641),('2019Q3','Connecticut',271.776),('2019Q3','Delaware',53.446),('2019Q3','District of Columbia',58.426),('2019Q3','Florida',1170.05),('2019Q3','Georgia',524.525),('2019Q3','Hawaii',80.143),('2019Q3','Idaho',83.8005),('2019Q3','Illinois',753.394),('2019Q3','Indiana',330.812),('2019Q3','Iowa',161.713),('2019Q3','Kansas',155.954),('2019Q3','Kentucky',198.027),('2019Q3','Louisiana',222.585),('2019Q3','Maine',69.1641),('2019Q3','Maryland',384.849),('2019Q3','Massachusetts',513.751),('2019Q3','Michigan',496.541),('2019Q3','Minnesota',335.064),('2019Q3','Mississippi',117.679),('2019Q3','Missouri',302.578),('2019Q3','Montana',54.5812),('2019Q3','Nebraska',107.045),('2019Q3','Nevada',162.18),('2019Q3','New Hampshire',88.9863),('2019Q3','New Jersey',636.461),('2019Q3','New Mexico',92.58),('2019Q3','New York',1367.17),('2019Q3','North Carolina',507.397),('2019Q3','North Dakota',44.7528),('2019Q3','Ohio',591.424),('2019Q3','Oklahoma',192.249),('2019Q3','Oregon',222.664),('2019Q3','Pennsylvania',740.789),('2019Q3','Rhode Island',61.0886),('2019Q3','South Carolina',238.252),('2019Q3','South Dakota',49.4107),('2019Q3','Tennessee',340.156),('2019Q3','Texas',1567.7),('2019Q3','Utah',157.934),('2019Q3','Vermont',35.7422),('2019Q3','Virginia',510.605),('2019Q3','Washington',493.003),('2019Q3','West Virginia',77.6055),('2019Q3','Wisconsin',311.28),('2019Q3','Wyoming',37.1523),('2019Q4','Alabama',219.183),('2019Q4','Alaska',45.2231),('2019Q4','Arizona',347.249),('2019Q4','Arkansas',134.451),('2019Q4','California',2615.9),('2019Q4','Colorado',361.209),('2019Q4','Connecticut',274.623),('2019Q4','Delaware',53.6448),('2019Q4','District of Columbia',58.7887),('2019Q4','Florida',1184.76),('2019Q4','Georgia',528.707),('2019Q4','Hawaii',80.8639),('2019Q4','Idaho',84.8745),('2019Q4','Illinois',757.315),('2019Q4','Indiana',333.08),('2019Q4','Iowa',162.277),('2019Q4','Kansas',156.832),('2019Q4','Kentucky',200.028),('2019Q4','Louisiana',224.223),('2019Q4','Maine',69.9288),('2019Q4','Maryland',388.119),('2019Q4','Massachusetts',518.82),('2019Q4','Michigan',499.628),('2019Q4','Minnesota',337.521),('2019Q4','Mississippi',118.41),('2019Q4','Missouri',304.56),('2019Q4','Montana',55.082),('2019Q4','Nebraska',108.054),('2019Q4','Nevada',164.983),('2019Q4','New Hampshire',89.5786),('2019Q4','New Jersey',640.371),('2019Q4','New Mexico',93.3376),('2019Q4','New York',1376.26),('2019Q4','North Carolina',513.207),('2019Q4','North Dakota',44.8695),('2019Q4','Ohio',597.147),('2019Q4','Oklahoma',193.165),('2019Q4','Oregon',226.725),('2019Q4','Pennsylvania',745.197),('2019Q4','Rhode Island',61.6801),('2019Q4','South Carolina',240.862),('2019Q4','South Dakota',49.8257),('2019Q4','Tennessee',342.807),('2019Q4','Texas',1584.07),('2019Q4','Utah',160.406),('2019Q4','Vermont',35.907),('2019Q4','Virginia',514.994),('2019Q4','Washington',499.81),('2019Q4','West Virginia',77.1792),('2019Q4','Wisconsin',315.089),('2019Q4','Wyoming',37.3054),('2020Q1','Alabama',223.031),('2020Q1','Alaska',44.8706),('2020Q1','Arizona',352.747),('2020Q1','Arkansas',136.465),('2020Q1','California',2645.9),('2020Q1','Colorado',369.034),('2020Q1','Connecticut',275.011),('2020Q1','Delaware',54.314),('2020Q1','District of Columbia',59.403),('2020Q1','Florida',1194.47),('2020Q1','Georgia',532.304),('2020Q1','Hawaii',80.2575),('2020Q1','Idaho',87.543),('2020Q1','Illinois',763.864),('2020Q1','Indiana',340.973),('2020Q1','Iowa',162.553),('2020Q1','Kansas',158.711),('2020Q1','Kentucky',202.628),('2020Q1','Louisiana',225.139),('2020Q1','Maine',71.0767),('2020Q1','Maryland',390.419),('2020Q1','Massachusetts',526.34),('2020Q1','Michigan',504.832),('2020Q1','Minnesota',341.251),('2020Q1','Mississippi',119.935),('2020Q1','Missouri',308.562),('2020Q1','Montana',55.4483),('2020Q1','Nebraska',108.097),('2020Q1','Nevada',167.01),('2020Q1','New Hampshire',91.8186),('2020Q1','New Jersey',645.449),('2020Q1','New Mexico',94.8735),('2020Q1','New York',1388.82),('2020Q1','North Carolina',522.841),('2020Q1','North Dakota',45.7821),('2020Q1','Ohio',603.667),('2020Q1','Oklahoma',194.001),('2020Q1','Oregon',231.003),('2020Q1','Pennsylvania',749.651),('2020Q1','Rhode Island',62.7302),('2020Q1','South Carolina',241.025),('2020Q1','South Dakota',50.9272),('2020Q1','Tennessee',352.925),('2020Q1','Texas',1574.9),('2020Q1','Utah',163.437),('2020Q1','Vermont',36.6175),('2020Q1','Virginia',520.002),('2020Q1','Washington',507.763),('2020Q1','West Virginia',77.3704),('2020Q1','Wisconsin',317.874),('2020Q1','Wyoming',37.5178),('2020Q2','Alabama',242.348),('2020Q2','Alaska',47.9901),('2020Q2','Arizona',392.47),('2020Q2','Arkansas',149.339),('2020Q2','California',2819.98),('2020Q2','Colorado',387.115),('2020Q2','Connecticut',287.353),('2020Q2','Delaware',57.5836),('2020Q2','District of Columbia',63.2117),('2020Q2','Florida',1269.98),('2020Q2','Georgia',582.08),('2020Q2','Hawaii',87.5018),('2020Q2','Idaho',94.3007),('2020Q2','Illinois',817.11),('2020Q2','Indiana',364.864),('2020Q2','Iowa',177.854),('2020Q2','Kansas',170.037),('2020Q2','Kentucky',227.203),('2020Q2','Louisiana',250.935),('2020Q2','Maine',78.9906),('2020Q2','Maryland',417.427),('2020Q2','Massachusetts',570.225),('2020Q2','Michigan',574.669),('2020Q2','Minnesota',370.687),('2020Q2','Mississippi',135.233),('2020Q2','Missouri',335.591),('2020Q2','Montana',61.8529),('2020Q2','Nebraska',116.732),('2020Q2','Nevada',179.963),('2020Q2','New Hampshire',96.0122),('2020Q2','New Jersey',674.193),('2020Q2','New Mexico',103.992),('2020Q2','New York',1490.37),('2020Q2','North Carolina',563.049),('2020Q2','North Dakota',49.289),('2020Q2','Ohio',658.791),('2020Q2','Oklahoma',210.07),('2020Q2','Oregon',249.486),('2020Q2','Pennsylvania',821.309),('2020Q2','Rhode Island',68.7),('2020Q2','South Carolina',265.358),('2020Q2','South Dakota',55.3116),('2020Q2','Tennessee',371.351),('2020Q2','Texas',1672.55),('2020Q2','Utah',176.927),('2020Q2','Vermont',40.3393),('2020Q2','Virginia',550.613),('2020Q2','Washington',543.467),('2020Q2','West Virginia',87.1884),('2020Q2','Wisconsin',341.141),('2020Q2','Wyoming',39.2549),('2020Q3','Alabama',232.63),('2020Q3','Alaska',45.5136),('2020Q3','Arizona',382.882),('2020Q3','Arkansas',141.921),('2020Q3','California',2873.66),('2020Q3','Colorado',378.158),('2020Q3','Connecticut',284.147),('2020Q3','Delaware',55.9781),('2020Q3','District of Columbia',63.0834),('2020Q3','Florida',1240.98),('2020Q3','Georgia',563.286),('2020Q3','Hawaii',82.7196),('2020Q3','Idaho',91.4113),('2020Q3','Illinois',802.266),('2020Q3','Indiana',355.556),('2020Q3','Iowa',169.022),('2020Q3','Kansas',163.976),('2020Q3','Kentucky',213.803),('2020Q3','Louisiana',240.127),('2020Q3','Maine',74.3244),('2020Q3','Maryland',410.612),('2020Q3','Massachusetts',551.944),('2020Q3','Michigan',543.288),('2020Q3','Minnesota',354.951),('2020Q3','Mississippi',126.399),('2020Q3','Missouri',320.058),('2020Q3','Montana',58.7353),('2020Q3','Nebraska',111.721),('2020Q3','Nevada',171.679),('2020Q3','New Hampshire',94.4685),('2020Q3','New Jersey',668.032),('2020Q3','New Mexico',99.6511),('2020Q3','New York',1468.81),('2020Q3','North Carolina',542.946),('2020Q3','North Dakota',47.1343),('2020Q3','Ohio',634.692),('2020Q3','Oklahoma',199.584),('2020Q3','Oregon',242.274),('2020Q3','Pennsylvania',804.823),('2020Q3','Rhode Island',66.4836),('2020Q3','South Carolina',250.803),('2020Q3','South Dakota',53.3167),('2020Q3','Tennessee',362.926),('2020Q3','Texas',1633.79),('2020Q3','Utah',170.942),('2020Q3','Vermont',37.8006),('2020Q3','Virginia',537.442),('2020Q3','Washington',531.686),('2020Q3','West Virginia',80.1038),('2020Q3','Wisconsin',327.748),('2020Q3','Wyoming',37.5287),('2020Q4','Alabama',230.153),('2020Q4','Alaska',45.4859),('2020Q4','Arizona',374.306),('2020Q4','Arkansas',140.429),('2020Q4','California',2822.56),('2020Q4','Colorado',377.898),('2020Q4','Connecticut',283.433),('2020Q4','Delaware',55.5913),('2020Q4','District of Columbia',62.0039),('2020Q4','Florida',1237.74),('2020Q4','Georgia',552.735),('2020Q4','Hawaii',81.9593),('2020Q4','Idaho',92.5387),('2020Q4','Illinois',794.599),('2020Q4','Indiana',355.958),('2020Q4','Iowa',170.547),('2020Q4','Kansas',164.61),('2020Q4','Kentucky',212.576),('2020Q4','Louisiana',229.095),('2020Q4','Maine',74.8319),('2020Q4','Maryland',403.361),('2020Q4','Massachusetts',553.329),('2020Q4','Michigan',527.185),('2020Q4','Minnesota',353.956),('2020Q4','Mississippi',123.661),('2020Q4','Missouri',318.582),('2020Q4','Montana',59.0421),('2020Q4','Nebraska',113.968),('2020Q4','Nevada',171.502),('2020Q4','New Hampshire',95.4639),('2020Q4','New Jersey',666.502),('2020Q4','New Mexico',97.5555),('2020Q4','New York',1422.51),('2020Q4','North Carolina',542.07),('2020Q4','North Dakota',47.4376),('2020Q4','Ohio',628.173),('2020Q4','Oklahoma',196.957),('2020Q4','Oregon',244.399),('2020Q4','Pennsylvania',777.342),('2020Q4','Rhode Island',64.9223),('2020Q4','South Carolina',250.598),('2020Q4','South Dakota',54.9305),('2020Q4','Tennessee',361.911),('2020Q4','Texas',1616.87),('2020Q4','Utah',174.235),('2020Q4','Vermont',37.6333),('2020Q4','Virginia',539.212),('2020Q4','Washington',527.412),('2020Q4','West Virginia',79.2221),('2020Q4','Wisconsin',331.728),('2020Q4','Wyoming',37.5945),('2021Q1','Alabama',265.461),('2021Q1','Alaska',49.9285),('2021Q1','Arizona',420.821),('2021Q1','Arkansas',161.902),('2021Q1','California',3087.77),('2021Q1','Colorado',418.484),('2021Q1','Connecticut',306.901),('2021Q1','Delaware',62.5299),('2021Q1','District of Columbia',65.7795),('2021Q1','Florida',1398.45),('2021Q1','Georgia',629.805),('2021Q1','Hawaii',91.698),('2021Q1','Idaho',104.753),('2021Q1','Illinois',885.263),('2021Q1','Indiana',403.722),('2021Q1','Iowa',190.746),('2021Q1','Kansas',179.195),('2021Q1','Kentucky',243.532),('2021Q1','Louisiana',261.941),('2021Q1','Maine',84.0063),('2021Q1','Maryland',449.173),('2021Q1','Massachusetts',598.839),('2021Q1','Michigan',600.565),('2021Q1','Minnesota',391.792),('2021Q1','Mississippi',145.118),('2021Q1','Missouri',359.561),('2021Q1','Montana',65.8767),('2021Q1','Nebraska',123.628),('2021Q1','Nevada',195.222),('2021Q1','New Hampshire',102.478),('2021Q1','New Jersey',735.443),('2021Q1','New Mexico',112.607),('2021Q1','New York',1580),('2021Q1','North Carolina',618.475),('2021Q1','North Dakota',51.5004),('2021Q1','Ohio',710.293),('2021Q1','Oklahoma',224.23),('2021Q1','Oregon',272.705),('2021Q1','Pennsylvania',867.872),('2021Q1','Rhode Island',73.119),('2021Q1','South Carolina',286.435),('2021Q1','South Dakota',59.3344),('2021Q1','Tennessee',413.111),('2021Q1','Texas',1824.74),('2021Q1','Utah',194.33),('2021Q1','Vermont',42.003),('2021Q1','Virginia',593.044),('2021Q1','Washington',584.653),('2021Q1','West Virginia',92.2706),('2021Q1','Wisconsin',367.286),('2021Q1','Wyoming',41.6521),('2021Q2','Alabama',244.06),('2021Q2','Alaska',47.5217),('2021Q2','Arizona',393.788),('2021Q2','Arkansas',149.67),('2021Q2','California',2960.28),('2021Q2','Colorado',402.055),('2021Q2','Connecticut',296.933),('2021Q2','Delaware',58.9897),('2021Q2','District of Columbia',64.3871),('2021Q2','Florida',1328.41),('2021Q2','Georgia',590.367),('2021Q2','Hawaii',86.6152),('2021Q2','Idaho',96.2887),('2021Q2','Illinois',838.094),('2021Q2','Indiana',375.233),('2021Q2','Iowa',181.02),('2021Q2','Kansas',170.516),('2021Q2','Kentucky',224.871),('2021Q2','Louisiana',246.125),('2021Q2','Maine',78.6283),('2021Q2','Maryland',422.173),('2021Q2','Massachusetts',579.793),('2021Q2','Michigan',561.791),('2021Q2','Minnesota',375.2),('2021Q2','Mississippi',131.944),('2021Q2','Missouri',335.661),('2021Q2','Montana',61.7518),('2021Q2','Nebraska',119.303),('2021Q2','Nevada',185.988),('2021Q2','New Hampshire',99.9711),('2021Q2','New Jersey',704),('2021Q2','New Mexico',103.838),('2021Q2','New York',1503.63),('2021Q2','North Carolina',576.613),('2021Q2','North Dakota',50.1641),('2021Q2','Ohio',656.682),('2021Q2','Oklahoma',210.165),('2021Q2','Oregon',256.129),('2021Q2','Pennsylvania',821.237),('2021Q2','Rhode Island',69.7844),('2021Q2','South Carolina',265.904),('2021Q2','South Dakota',57.3125),('2021Q2','Tennessee',383.913),('2021Q2','Texas',1727.25),('2021Q2','Utah',181.793),('2021Q2','Vermont',39.2499),('2021Q2','Virginia',561.046),('2021Q2','Washington',563.86),('2021Q2','West Virginia',84.0865),('2021Q2','Wisconsin',344.113),('2021Q2','Wyoming',39.655),('2021Q3','Alabama',245.117),('2021Q3','Alaska',47.4616),('2021Q3','Arizona',396.255),('2021Q3','Arkansas',150.261),('2021Q3','California',2993.21),('2021Q3','Colorado',407.432),('2021Q3','Connecticut',297.563),('2021Q3','Delaware',59.1233),('2021Q3','District of Columbia',64.5245),('2021Q3','Florida',1335.8),('2021Q3','Georgia',590.305),('2021Q3','Hawaii',87.1671),('2021Q3','Idaho',97.0633),('2021Q3','Illinois',841.401),('2021Q3','Indiana',377.587),('2021Q3','Iowa',179.516),('2021Q3','Kansas',170.745),('2021Q3','Kentucky',227.474),('2021Q3','Louisiana',248.409),('2021Q3','Maine',78.7661),('2021Q3','Maryland',424.141),('2021Q3','Massachusetts',579.731),('2021Q3','Michigan',555.641),('2021Q3','Minnesota',372.5),('2021Q3','Mississippi',131.978),('2021Q3','Missouri',333.613),('2021Q3','Montana',61.4953),('2021Q3','Nebraska',119.06),('2021Q3','Nevada',187.524),('2021Q3','New Hampshire',100.741),('2021Q3','New Jersey',707.903),('2021Q3','New Mexico',104.17),('2021Q3','New York',1509.48),('2021Q3','North Carolina',582.752),('2021Q3','North Dakota',49.5891),('2021Q3','Ohio',652.669),('2021Q3','Oklahoma',209.918),('2021Q3','Oregon',257.988),('2021Q3','Pennsylvania',821.48),('2021Q3','Rhode Island',69.6045),('2021Q3','South Carolina',266.534),('2021Q3','South Dakota',57.1847),('2021Q3','Tennessee',386.869),('2021Q3','Texas',1739.6),('2021Q3','Utah',183.472),('2021Q3','Vermont',39.1381),('2021Q3','Virginia',565.215),('2021Q3','Washington',564.534),('2021Q3','West Virginia',83.9092),('2021Q3','Wisconsin',345.544),('2021Q3','Wyoming',39.7418),('2021Q4','Alabama',248.677),('2021Q4','Alaska',47.9652),('2021Q4','Arizona',404.094),('2021Q4','Arkansas',150.911),('2021Q4','California',2983.48),('2021Q4','Colorado',415.822),('2021Q4','Connecticut',299.897),('2021Q4','Delaware',59.8916),('2021Q4','District of Columbia',63.8876),('2021Q4','Florida',1362.61),('2021Q4','Georgia',599.379),('2021Q4','Hawaii',85.9503),('2021Q4','Idaho',100.094),('2021Q4','Illinois',843.57),('2021Q4','Indiana',381.538),('2021Q4','Iowa',178.816),('2021Q4','Kansas',171.218),('2021Q4','Kentucky',228.843),('2021Q4','Louisiana',246.328),('2021Q4','Maine',79.617),('2021Q4','Maryland',426.23),('2021Q4','Massachusetts',578.802),('2021Q4','Michigan',553.232),('2021Q4','Minnesota',373.647),('2021Q4','Mississippi',132.35),('2021Q4','Missouri',336.181),('2021Q4','Montana',62.423),('2021Q4','Nebraska',118.763),('2021Q4','Nevada',188.498),('2021Q4','New Hampshire',103.508),('2021Q4','New Jersey',707.536),('2021Q4','New Mexico',105.19),('2021Q4','New York',1503.41),('2021Q4','North Carolina',592.94),('2021Q4','North Dakota',48.7578),('2021Q4','Ohio',660.498),('2021Q4','Oklahoma',214.731),('2021Q4','Oregon',259.365),('2021Q4','Pennsylvania',822.67),('2021Q4','Rhode Island',69.618),('2021Q4','South Carolina',270.485),('2021Q4','South Dakota',57.0394),('2021Q4','Tennessee',394.189),('2021Q4','Texas',1779.13),('2021Q4','Utah',188.367),('2021Q4','Vermont',39.4066),('2021Q4','Virginia',572.807),('2021Q4','Washington',570.636),('2021Q4','West Virginia',85.5408),('2021Q4','Wisconsin',349.263),('2021Q4','Wyoming',40.2424),('2022Q1','Alabama',250.247),('2022Q1','Alaska',48.713),('2022Q1','Arizona',404.875),('2022Q1','Arkansas',154.324),('2022Q1','California',2967.64),('2022Q1','Colorado',421.899),('2022Q1','Connecticut',305.428),('2022Q1','Delaware',60.4412),('2022Q1','District of Columbia',63.9627),('2022Q1','Florida',1370.25),('2022Q1','Georgia',604.499),('2022Q1','Hawaii',85.76),('2022Q1','Idaho',102.35),('2022Q1','Illinois',853.589),('2022Q1','Indiana',388.327),('2022Q1','Iowa',183.465),('2022Q1','Kansas',173.505),('2022Q1','Kentucky',231.379),('2022Q1','Louisiana',244.333),('2022Q1','Maine',80.2007),('2022Q1','Maryland',428.654),('2022Q1','Massachusetts',582.935),('2022Q1','Michigan',560.036),('2022Q1','Minnesota',378.022),('2022Q1','Mississippi',133.283),('2022Q1','Missouri',340.578),('2022Q1','Montana',63.1919),('2022Q1','Nebraska',121.476),('2022Q1','Nevada',188.356),('2022Q1','New Hampshire',101.871),('2022Q1','New Jersey',716.807),('2022Q1','New Mexico',105.441),('2022Q1','New York',1513.37),('2022Q1','North Carolina',601.925),('2022Q1','North Dakota',49.8448),('2022Q1','Ohio',666.555),('2022Q1','Oklahoma',215.217),('2022Q1','Oregon',261.96),('2022Q1','Pennsylvania',828.284),('2022Q1','Rhode Island',69.7912),('2022Q1','South Carolina',273.418),('2022Q1','South Dakota',58.4363),('2022Q1','Tennessee',400.623),('2022Q1','Texas',1802.69),('2022Q1','Utah',189.54),('2022Q1','Vermont',39.9528),('2022Q1','Virginia',576.285),('2022Q1','Washington',574.787),('2022Q1','West Virginia',85.6614),('2022Q1','Wisconsin',352.802),('2022Q1','Wyoming',40.8246),('2022Q2','Alabama',253.838),('2022Q2','Alaska',49.3365),('2022Q2','Arizona',411.401),('2022Q2','Arkansas',156.934),('2022Q2','California',3003.57),('2022Q2','Colorado',428.618),('2022Q2','Connecticut',307.116),('2022Q2','Delaware',61.2658),('2022Q2','District of Columbia',64.5365),('2022Q2','Florida',1395.52),('2022Q2','Georgia',612.799),('2022Q2','Hawaii',86.7295),('2022Q2','Idaho',103.99),('2022Q2','Illinois',863.352),('2022Q2','Indiana',392.074),('2022Q2','Iowa',187.591),('2022Q2','Kansas',175.673),('2022Q2','Kentucky',233.507),('2022Q2','Louisiana',247.815),('2022Q2','Maine',81.0957),('2022Q2','Maryland',433.461),('2022Q2','Massachusetts',587.259),('2022Q2','Michigan',566.046),('2022Q2','Minnesota',383.001),('2022Q2','Mississippi',134.947),('2022Q2','Missouri',345.324),('2022Q2','Montana',63.9764),('2022Q2','Nebraska',123.986),('2022Q2','Nevada',191.048),('2022Q2','New Hampshire',102.99),('2022Q2','New Jersey',726.576),('2022Q2','New Mexico',106.264),('2022Q2','New York',1539.93),('2022Q2','North Carolina',609.516),('2022Q2','North Dakota',51.1472),('2022Q2','Ohio',676.03),('2022Q2','Oklahoma',218.539),('2022Q2','Oregon',265.881),('2022Q2','Pennsylvania',837.093),('2022Q2','Rhode Island',70.5649),('2022Q2','South Carolina',277.241),('2022Q2','South Dakota',59.7613),('2022Q2','Tennessee',406.637),('2022Q2','Texas',1843.38),('2022Q2','Utah',192.535),('2022Q2','Vermont',40.4874),('2022Q2','Virginia',583.24),('2022Q2','Washington',583.157),('2022Q2','West Virginia',86.8498),('2022Q2','Wisconsin',357.72),('2022Q2','Wyoming',41.304);
/*!40000 ALTER TABLE `Personal_Income_By_State` ENABLE KEYS */;
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

-- Dump completed on 2022-12-26 14:29:32
