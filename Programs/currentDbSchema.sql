-- jhu_315_final_project.COVID_Cases_By_Gender definition

CREATE TABLE `COVID_Cases_By_Gender` (
  `Date` date NOT NULL,
  `State` varchar(20) NOT NULL,
  `Total_Count` int DEFAULT NULL,
  `Male_Count` int DEFAULT NULL,
  `Female_Count` int DEFAULT NULL,
  PRIMARY KEY (`Date`,`State`),
  CONSTRAINT `COVID_Cases_By_Gender_chk_1` CHECK ((`Total_Count` >= 0)),
  CONSTRAINT `COVID_Cases_By_Gender_chk_2` CHECK ((`Male_Count` >= 0)),
  CONSTRAINT `COVID_Cases_By_Gender_chk_3` CHECK ((`Female_Count` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.COVID_Cases_By_Race definition

CREATE TABLE `COVID_Cases_By_Race` (
  `Date` date NOT NULL,
  `State` varchar(10) NOT NULL,
  `Cases_Total` int DEFAULT NULL,
  `Cases_White` int DEFAULT NULL,
  `Cases_Black` int DEFAULT NULL,
  `Cases_LatinX` int DEFAULT NULL,
  `Cases_Asian` int DEFAULT NULL,
  `Cases_AIAN` int DEFAULT NULL,
  `Cases_NHPI` int DEFAULT NULL,
  `Cases_Multiracial` int DEFAULT NULL,
  `Cases_Other` int DEFAULT NULL,
  `Cases_Unknown` int DEFAULT NULL,
  `Cases_Ethnicity_Hispanic` int DEFAULT NULL,
  `Cases_Ethnicity_Non_Hispanic` int DEFAULT NULL,
  `Cases_Ethnicity_Unknown` int DEFAULT NULL,
  PRIMARY KEY (`Date`,`State`),
  CONSTRAINT `COVID_Cases_By_Race_Chk10` CHECK ((_utf8mb3'Tests_Unknown' >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_Chk11` CHECK ((_utf8mb3'Tests_Ethnicity_Hispanic' >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_Chk12` CHECK ((_utf8mb3'Tests_Ethnicity_NonHispanic' >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_Chk13` CHECK ((_utf8mb3'Tests_Ethnicity_Unknown' >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_Chk4` CHECK ((_utf8mb3'Tests_LatinX' >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_Chk5` CHECK ((_utf8mb3'Tests_Asian' >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_Chk6` CHECK ((_utf8mb3'Tests_AIAN' >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_Chk7` CHECK ((_utf8mb3'Tests_NHPI' >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_Chk8` CHECK ((_utf8mb3'Tests_Multiracial' >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_Chk9` CHECK ((_utf8mb3'Tests_Other' >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_1` CHECK ((`Cases_Total` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_10` CHECK ((`Cases_Unknown` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_11` CHECK ((`Cases_Ethnicity_Hispanic` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_12` CHECK ((`Cases_Ethnicity_Non_Hispanic` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_13` CHECK ((`Cases_Ethnicity_Unknown` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_2` CHECK ((`Cases_White` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_3` CHECK ((`Cases_Black` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_4` CHECK ((`Cases_LatinX` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_5` CHECK ((`Cases_Asian` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_6` CHECK ((`Cases_AIAN` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_7` CHECK ((`Cases_NHPI` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_8` CHECK ((`Cases_Multiracial` >= 0)),
  CONSTRAINT `COVID_Cases_By_Race_chk_9` CHECK ((`Cases_Other` >= 0)),
  CONSTRAINT `COVID_Tests_By_Race_Chk2` CHECK ((_utf8mb3'Tests_White' >= 0)),
  CONSTRAINT `COVID_Tests_By_Race_Chk3` CHECK ((_utf8mb3'Tests_Black' >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.COVID_Cases_By_Race_Monthly definition

CREATE TABLE `COVID_Cases_By_Race_Monthly` (
  `MonthDate` date NOT NULL,
  `Cases_Total` decimal(32,0) DEFAULT NULL,
  `Cases_White` decimal(32,0) DEFAULT NULL,
  `Cases_Black` decimal(32,0) DEFAULT NULL,
  `Cases_LatinX` decimal(32,0) DEFAULT NULL,
  `Cases_Asian` decimal(32,0) DEFAULT NULL,
  PRIMARY KEY (`MonthDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.COVID_Cases_By_State definition

CREATE TABLE `COVID_Cases_By_State` (
  `Date` date NOT NULL,
  `State_Code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NA',
  `tot_cases` int DEFAULT NULL,
  `new_cases` int DEFAULT NULL,
  PRIMARY KEY (`Date`,`State_Code`),
  CONSTRAINT `COVID_Cases_By_State_chk_1` CHECK ((`tot_cases` >= 0)),
  CONSTRAINT `COVID_Cases_By_State_chk_2` CHECK ((`new_cases` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.COVID_Deaths_By_Age_Gender definition

CREATE TABLE `COVID_Deaths_By_Age_Gender` (
  `Date` date NOT NULL,
  `Sex` varchar(20) NOT NULL,
  `Age_Group` varchar(20) NOT NULL,
  `Total_Deaths` int DEFAULT NULL,
  `COVID_19_Deaths` int DEFAULT NULL,
  PRIMARY KEY (`Date`,`Sex`,`Age_Group`),
  CONSTRAINT `COVID_Deaths_By_Age_Gender_chk_1` CHECK ((`Total_Deaths` >= 0)),
  CONSTRAINT `COVID_Deaths_By_Age_Gender_chk_2` CHECK ((`Covid_19_Deaths` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.COVID_Deaths_By_Race definition

CREATE TABLE `COVID_Deaths_By_Race` (
  `Date` date NOT NULL,
  `State` varchar(10) NOT NULL,
  `Deaths_Total` int DEFAULT NULL,
  `Deaths_White` int DEFAULT NULL,
  `Deaths_Black` int DEFAULT NULL,
  `Deaths_LatinX` int DEFAULT NULL,
  `Deaths_Asian` int DEFAULT NULL,
  `Deaths_AIAN` int DEFAULT NULL,
  `Deaths_NHPI` int DEFAULT NULL,
  `Deaths_Multiracial` int DEFAULT NULL,
  `Deaths_Other` int DEFAULT NULL,
  `Deaths_Unknown` int DEFAULT NULL,
  `Deaths_Ethnicity_Hispanic` int DEFAULT NULL,
  `Deaths_Ethnicity_Non_Hispanic` int DEFAULT NULL,
  `Deaths_Ethnicity_Unknown` int DEFAULT NULL,
  PRIMARY KEY (`Date`,`State`),
  CONSTRAINT `COVID_Deaths_By_Race_chk_1` CHECK ((`Deaths_Total` >= 0)),
  CONSTRAINT `COVID_Deaths_By_Race_chk_11` CHECK ((`Deaths_Ethnicity_Hispanic` >= 0)),
  CONSTRAINT `COVID_Deaths_By_Race_chk_12` CHECK ((`Deaths_Ethnicity_Non_Hispanic` >= 0)),
  CONSTRAINT `COVID_Deaths_By_Race_chk_2` CHECK ((`Deaths_White` >= 0)),
  CONSTRAINT `COVID_Deaths_By_Race_chk_3` CHECK ((`Deaths_Black` >= 0)),
  CONSTRAINT `COVID_Deaths_By_Race_chk_4` CHECK ((`Deaths_LatinX` >= 0)),
  CONSTRAINT `COVID_Deaths_By_Race_chk_5` CHECK ((`Deaths_Asian` >= 0)),
  CONSTRAINT `COVID_Deaths_By_Race_chk_6` CHECK ((`Deaths_AIAN` >= 0)),
  CONSTRAINT `COVID_Deaths_By_Race_chk_7` CHECK ((`Deaths_NHPI` >= 0)),
  CONSTRAINT `COVID_Deaths_By_Race_chk_8` CHECK ((`Deaths_Multiracial` >= 0)),
  CONSTRAINT `COVID_Deaths_By_Race_chk_9` CHECK ((`Deaths_Other` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.COVID_Deaths_By_State definition

CREATE TABLE `COVID_Deaths_By_State` (
  `Date` date NOT NULL,
  `State_Code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tot_deaths` int DEFAULT NULL,
  `new_deaths` int DEFAULT NULL,
  PRIMARY KEY (`Date`,`State_Code`),
  CONSTRAINT `COVID_Deaths_By_State_chk_1` CHECK ((`tot_deaths` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.COVID_Hospitalizations_By_Race definition

CREATE TABLE `COVID_Hospitalizations_By_Race` (
  `Date` date NOT NULL,
  `State` varchar(50) NOT NULL,
  `Hosp_Total` int DEFAULT NULL,
  `Hosp_White` int DEFAULT NULL,
  `Hosp_Black` int DEFAULT NULL,
  `Hosp_Latinx` int DEFAULT NULL,
  `Hosp_Asian` int DEFAULT NULL,
  `Hosp_AIAN` int DEFAULT NULL,
  `Hosp_NHPI` int DEFAULT NULL,
  `Hosp_Multiracial` int DEFAULT NULL,
  `Hosp_Other` int DEFAULT NULL,
  `Hosp_Unknown` int DEFAULT NULL,
  `Hosp_Ethnicity_Hispanic` int DEFAULT NULL,
  `Hosp_Ethnicity_NonHispanic` int DEFAULT NULL,
  `Hosp_Ethnicity_Unknown` int DEFAULT NULL,
  PRIMARY KEY (`Date`,`State`),
  CONSTRAINT `COVID_Hospitalizations_By_Race_CHECK` CHECK ((_utf8mb3'Hosp_Total' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk1` CHECK ((_utf8mb3'Hosp_Total' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk10` CHECK ((_utf8mb3'Hosp_Unknown' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk11` CHECK ((_utf8mb3'Hosp_Ethnicity_Hispanic' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk12` CHECK ((_utf8mb3'Hosp_Ethnicity_NonHispanic' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk13` CHECK ((_utf8mb3'Hosp_Ethnicity_Unkown' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk2` CHECK ((_utf8mb3'Hosp_White' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk3` CHECK ((_utf8mb3'Hosp_Black' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk4` CHECK ((_utf8mb3'Hosp_LatinX' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk5` CHECK ((_utf8mb3'Hosp_Asian' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk6` CHECK ((_utf8mb3'Hosp_AIAN' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk7` CHECK ((_utf8mb3'Hosp_NHPI' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk8` CHECK ((_utf8mb3'Hosp_Multiracial' >= 0)),
  CONSTRAINT `COVID_Hospitalizations_By_Race_Chk9` CHECK ((_utf8mb3'Hosp_Other' >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.COVID_Test_By_Race definition

CREATE TABLE `COVID_Test_By_Race` (
  `Date` date NOT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Tests_Total` int DEFAULT NULL,
  `Tests_White` int DEFAULT NULL,
  `Tests_Black` int DEFAULT NULL,
  `Tests_Latinx` int DEFAULT NULL,
  `Tests_Asian` int DEFAULT NULL,
  `Tests_AIAN` int DEFAULT NULL,
  `Tests_NHPI` int DEFAULT NULL,
  `Tests_Multiracial` int DEFAULT NULL,
  `Tests_Other` int DEFAULT NULL,
  `Tests_Unknown` int DEFAULT NULL,
  `Tests_Ethnicity_Hispanic` int DEFAULT NULL,
  `Tests_Ethnicity_NonHispanic` int DEFAULT NULL,
  `Tests_Ethnicity_Unknown` int DEFAULT NULL,
  CONSTRAINT `COVID_Test_By_Race_Chk1` CHECK ((_utf8mb3'Tests_Total' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk10` CHECK ((_utf8mb3'Tests_Unknown' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk11` CHECK ((_utf8mb3'Tests_Ethnicity_Hispanic' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk12` CHECK ((_utf8mb3'Tests_Ethnicity_NonHispanic' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk13` CHECK ((_utf8mb3'Tests_Ethnicity_Unknown' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk2` CHECK ((_utf8mb3'Tests_White' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk3` CHECK ((_utf8mb3'Tests_Black' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk4` CHECK ((_utf8mb3'Tests_LatinX' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk5` CHECK ((_utf8mb3'Tests_Asian' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk6` CHECK ((_utf8mb3'Tests_AIAN' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk7` CHECK ((_utf8mb3'Tests_NHPI' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk8` CHECK ((_utf8mb3'Tests_Multiracial' >= 0)),
  CONSTRAINT `COVID_Test_By_Race_Chk9` CHECK ((_utf8mb3'Tests_Other' >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.COVID_Vaccinations definition

CREATE TABLE `COVID_Vaccinations` (
  `Date` date DEFAULT NULL,
  `Date1` varchar(50) DEFAULT NULL,
  `date_type` varchar(50) DEFAULT NULL,
  `MMWR_week` int DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Administered_Daily` varchar(50) DEFAULT NULL,
  `Admin_Daily` double DEFAULT NULL,
  `Admin_Dose_1_Daily` varchar(50) DEFAULT NULL,
  `Admin_Dose_1` double DEFAULT NULL,
  `Booster_Daily` varchar(50) DEFAULT NULL,
  `Boost_Daily` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.Date_To_MonthDate definition

CREATE TABLE `Date_To_MonthDate` (
  `Date` date NOT NULL,
  `MonthDate` date DEFAULT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.Employment_Level_By_Age definition

CREATE TABLE `Employment_Level_By_Age` (
  `Date` date NOT NULL,
  `Age_Group` varchar(20) NOT NULL,
  `Employment_Level` int DEFAULT NULL,
  PRIMARY KEY (`Date`,`Age_Group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.GDP_By_Industry definition

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


-- jhu_315_final_project.GDP_By_State definition

CREATE TABLE `GDP_By_State` (
  `Quarter` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `State` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Gross Domestic Product` float DEFAULT NULL,
  PRIMARY KEY (`Quarter`,`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.GDP_National definition

CREATE TABLE `GDP_National` (
  `Quarter` varchar(6) NOT NULL,
  `Gross Domestic Product` float DEFAULT NULL,
  PRIMARY KEY (`Quarter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.GDP_Peaks definition

CREATE TABLE `GDP_Peaks` (
  `id` varchar(4) NOT NULL,
  `Pre_COVID` double DEFAULT NULL,
  `WildType_Peak` double DEFAULT NULL,
  `Alpha_Peak` double DEFAULT NULL,
  `Delta_Peak` double DEFAULT NULL,
  `Omicron_Peak` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.MonthString_To_MonthDate definition

CREATE TABLE `MonthString_To_MonthDate` (
  `MonthString` varchar(50) NOT NULL,
  `MonthDate` date DEFAULT NULL,
  PRIMARY KEY (`MonthString`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.Month_To_Quarter definition

CREATE TABLE `Month_To_Quarter` (
  `Month` varchar(10) NOT NULL,
  `Quarter` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.Natl_Econ_Peaks definition

CREATE TABLE `Natl_Econ_Peaks` (
  `id` varchar(3) NOT NULL,
  `Pre_COVID` double DEFAULT NULL,
  `WildType_Peak` double DEFAULT NULL,
  `Alpha_Peak` double DEFAULT NULL,
  `Delta_Peak` double DEFAULT NULL,
  `Omicron_Peak` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.Nonfarm_Employment definition

CREATE TABLE `Nonfarm_Employment` (
  `Date` date NOT NULL,
  `Total_NonFarm` int DEFAULT NULL,
  `Total_Private` int DEFAULT NULL,
  `Mining_and_Logging` int DEFAULT NULL,
  `Construction` int DEFAULT NULL,
  `Manufacturing` int DEFAULT NULL,
  `Wholesale_Trade` int DEFAULT NULL,
  `Retail_Trade` int DEFAULT NULL,
  `Transportation_and_Warehousing` int DEFAULT NULL,
  `Utilities` int DEFAULT NULL,
  `Information` int DEFAULT NULL,
  `Financial_Activities` int DEFAULT NULL,
  `Professional_and_Business_Services` int DEFAULT NULL,
  `Education_and_Health_Services` int DEFAULT NULL,
  `Leisure_and_Hospitality` int DEFAULT NULL,
  `Other_Services` int DEFAULT NULL,
  `Total_Government` int DEFAULT NULL,
  `Federal_Government` int DEFAULT NULL,
  `State_Government` int DEFAULT NULL,
  `Local_Government` int DEFAULT NULL,
  PRIMARY KEY (`Date`),
  UNIQUE KEY `Date` (`Date`),
  CONSTRAINT `Nonfarm_Employment_chk_1` CHECK ((`Total_NonFarm` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_10` CHECK ((`Information` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_11` CHECK ((`Financial_Activities` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_12` CHECK ((`Professional_and_Business_Services` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_13` CHECK ((`Education_and_Health_Services` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_14` CHECK ((`Leisure_and_Hospitality` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_15` CHECK ((`Other_Services` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_16` CHECK ((`Total_Government` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_17` CHECK ((`Federal_Government` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_18` CHECK ((`State_Government` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_19` CHECK ((`Local_Government` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_2` CHECK ((`Total_Private` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_3` CHECK ((`Mining_and_Logging` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_4` CHECK ((`Construction` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_5` CHECK ((`Manufacturing` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_6` CHECK ((`Wholesale_Trade` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_7` CHECK ((`Retail_Trade` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_8` CHECK ((`Transportation_and_Warehousing` >= 0)),
  CONSTRAINT `Nonfarm_Employment_chk_9` CHECK ((`Utilities` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.Peak_Variants definition

CREATE TABLE `Peak_Variants` (
  `Type` varchar(20) NOT NULL,
  PRIMARY KEY (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.Personal_Income_By_State definition

CREATE TABLE `Personal_Income_By_State` (
  `Quarter` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `State` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Personal Income` float DEFAULT NULL,
  PRIMARY KEY (`Quarter`,`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.Personal_Income_National definition

CREATE TABLE `Personal_Income_National` (
  `Date` date NOT NULL,
  `Personal_Income` float DEFAULT NULL,
  `Personal_Saving` float DEFAULT NULL,
  PRIMARY KEY (`Date`),
  UNIQUE KEY `Date` (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.State_To_Code definition

CREATE TABLE `State_To_Code` (
  `State_Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `abbrev` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`State_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.State_To_Region definition

CREATE TABLE `State_To_Region` (
  `State` varchar(20) NOT NULL,
  `Region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.Total_Economic_Factors definition

CREATE TABLE `Total_Economic_Factors` (
  `Date` date NOT NULL,
  `GDP` float DEFAULT NULL,
  `Unemployment_Rate` float DEFAULT NULL,
  `Personal_Income` float DEFAULT NULL,
  `Personal_Saving` float DEFAULT NULL,
  `Personal_Saving_Rate` float DEFAULT NULL,
  PRIMARY KEY (`Date`),
  UNIQUE KEY `Date` (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.US_Population_Racial definition

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


-- jhu_315_final_project.Unemployment_Rate definition

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


-- jhu_315_final_project.Unemployment_Rate_By_State definition

CREATE TABLE `Unemployment_Rate_By_State` (
  `Date` date NOT NULL,
  `State` varchar(20) NOT NULL,
  `Unemp_Rate` float DEFAULT NULL,
  PRIMARY KEY (`Date`,`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;