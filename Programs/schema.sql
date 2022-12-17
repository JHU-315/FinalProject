/*Unemployment Rate*/
/*Data are as a percentage for rate*/
DROP TABLE Unemployment_Rate;
CREATE TABLE Unemployment_Rate
(
    Date DATE NOT NULL UNIQUE,
    Total DECIMAL(3, 1) NOT NULL,
    Men_20_plus DECIMAL(3, 1) CHECK (Men_20_plus >= 0),
    Women_20_plus DECIMAL(3, 1) CHECK (Women_20_plus >= 0),
    Yrs_16_19 DECIMAL(3, 1) CHECK (Yrs_16_19 >= 0),
    White DECIMAL(3, 1) CHECK (White >= 0),
    Black DECIMAL(3, 1) CHECK (Black >= 0),
    Asian DECIMAL(3, 1) CHECK (Asian >= 0),
    Hispanic DECIMAL(3, 1) CHECK (Hispanic >= 0),
    PRIMARY KEY(Date)
);

/*Unemployment Rate By State*/
/*Data are as a percentage for rate*/
/* Date is in Month Format */
DROP TABLE Unemployment_Rate_By_State;
CREATE TABLE Unemployment_Rate_By_State
(
    Date DATE NOT NULL,
    State VARCHAR(20) NOT NULL,
    Unemp_Rate FLOAT(4),
    PRIMARY KEY(Date, State)
    UNIQUE (Date, State)
);

/* employment level by age 
Date is in month format */
DROP TABLE Employment_Level_By_Age;
CREATE TABLE Employment_Level_By_Age (
    Date DATE NOT NULL,
    Age_Group VARCHAR(20) NOT NULL,
    Employment_Level INT CHECK(Employment_Level >= 0),
    PRIMARY KEY(Date, Age_Group)
    UNIQUE (Date, Age_Group)
);

/*nonfarm employment*/
DROP TABLE Nonfarm_Employment;
CREATE TABLE Nonfarm_Employment
(
    Date DATE NOT NULL UNIQUE,
    Total_NonFarm INT CHECK (Total_NonFarm >= 0),
    Total_Private INT CHECK (Total_Private >= 0),
    Mining_and_Logging INT CHECK (Mining_and_Logging >= 0),
    Construction INT CHECK (Construction >= 0),
    Manufacturing INT CHECK (Manufacturing >= 0),
    Wholesale_Trade INT CHECK (Wholesale_Trade >= 0),
    Retail_Trade INT CHECK (Retail_Trade >= 0),
    Transportation_and_Warehousing INT CHECK (Transportation_and_Warehousing >= 0),
    Utilities INT CHECK (Utilities >= 0),
    Information INT CHECK (Information >= 0),
    Financial_Activities INT CHECK (Financial_Activities >= 0),
    Professional_and_Business_Services INT CHECK (Professional_and_Business_Services >= 0),
    Education_and_Health_Services INT CHECK (Education_and_Health_Services >= 0),
    Leisure_and_Hospitality INT CHECK (Leisure_and_Hospitality >= 0),
    Other_Services INT CHECK (Other_Services >= 0),
    Total_Government INT CHECK (Total_Government >= 0),
    Federal_Government INT CHECK (Federal_Government >= 0),
    State_Government INT CHECK (State_Government >= 0),
    Local_Government INT CHECK (Local_Government >= 0),
    PRIMARY KEY(Date)
);

DROP TABLE Total_Economic_Factors;
CREATE TABLE Total_Economic_Factors (
    Date DATE NOT NULL UNIQUE,
    GDP FLOAT(8),
    Unemployment_Rate FLOAT(4),
    Personal_Income FLOAT(8),
    Personal_Saving FLOAT(8),
    Personal_Saving_Rate FLOAT(4),
    PRIMARY KEY(Date),
    FOREIGN KEY (GDP) REFERENCES GDP_National(Gross_Domestic_Product),
    FOREIGN KEY (Unemployment_Rate) REFERENCES Unemployment_Rate(Total),
    FOREIGN KEY (Personal_Income) REFERENCES Personal_Income_National(Personal_Income),
    FOREIGN KEY (Personal_Saving) REFERENCES Personal_Income_National(Personal_Saving)
);

DROP TABLE Unemployed_Occupation_By_Gender;
CREATE TABLE Unemployed_Occupation_By_Gender (
    Occupation VARCHAR(40) NOT NULL,
    Total_2019 FLOAT(4) CHECK (Total_2019 >= 0),
    Total_2020 FLOAT(4) CHECK (Total_2020 >= 0),
    Men_2019 FLOAT(4) CHECK (Men_2019 >= 0),
    Men_2020 FLOAT(4) CHECK (Men_2020 >= 0),
    Women_2019 FLOAT(4) CHECK (Women_2019 >= 0),
    Women_2020 FLOAT(4) CHECK (Women_2020 >= 0),
    PRIMARY KEY(Occupation)
);

#FIXME
DROP TABLE Unemployed_Occupation_By_Race;
CREATE TABLE Unemployed_Occupation_By_Race (
    Occupation VARCHAR(40) NOT NULL,
    Total_2019 FLOAT(4) CHECK (Total_2019 >= 0),
    Total_2020 FLOAT(4) CHECK (Total_2020 >= 0),
    Men_2019 FLOAT(4) CHECK (Men_2019 >= 0),
    Men_2020 FLOAT(4) CHECK (Men_2020 >= 0),
    Women_2019 FLOAT(4) CHECK (Women_2019 >= 0),
    Women_2020 FLOAT(4) CHECK (Women_2020 >= 0),
    PRIMARY KEY(Occupation)
);

DROP TABLE Education_By_Gender;
CREATE TABLE Education_By_Gender (
    Education VARCHAR(50),
    Total INT CHECK (Total >= 0),
    Men INT CHECK (Men >= 0),
    Women INT CHECK (Women >= 0),
    PRIMARY KEY(Education)
);

DROP TABLE Education_By_Race;
CREATE TABLE Education_By_Race (
    Education VARCHAR(50),
    Asian_Total INT CHECK (Asian_Total >= 0),
    Black_Total INT CHECK (Black_Total >= 0),
    Hispanic_Total INT CHECK (Hispanic_Total >= 0),
    White_Total INT CHECK (White_Total >= 0),
    PRIMARY KEY(Education)
);


/* Real Gross Domestic Product, Billions of chained (2012) dollars */
DROP TABLE GDP_National;
CREATE TABLE GDP_National
(
    Quarter VARCHAR(6) NOT NULL UNIQUE,
    Gross_Domestic_Product FLOAT(8) CHECK (Gross_Domestic_Product >= 0),
    PRIMARY KEY(Quarter)
);

/*Real Gross Domestic Product By Industry, Billions of chained (2012) dollars*/
DROP TABLE GDP_By_Industry;
CREATE TABLE GDP_By_Industry
(
    Quarter VARCHAR(6) NOT NULL UNIQUE,
    Total_All_Industries FLOAT(8) CHECK (Total_All_Industries >= 0),
    Total_Private FLOAT(8) CHECK (Total_Private >= 0),
    Agriculture FLOAT(8) CHECK (Agriculture >= 0),
    Mining FLOAT(8) CHECK (Mining >= 0),, 
    Utilities FLOAT(8) CHECK (Utilities >= 0),
    Construction FLOAT(8) CHECK (Construction >= 0),
    Manufacturing FLOAT(8) CHECK (Manufacturing >= 0), 
    Wholesale_Trade FLOAT(8) CHECK (Wholesale_Trade >= 0), 
    Retail_Trade FLOAT(8) CHECK (Retail_Trade >= 0), 
    Transportation_and_Warehousing FLOAT(8) CHECK (Transportation_and_Warehousing >= 0), 
    Information FLOAT(8) CHECK (Information >= 0),
    Financial_Activities FLOAT(8) CHECK (Financial_Activities >= 0),
    Professional_and_Business_Services FLOAT(8) CHECK (Professional_and_Business_Services >= 0),
    Education_and_Health_Services FLOAT(8) CHECK (Education_and_Health_Services >= 0),
    Leisure_and_Hospitality FLOAT(8) CHECK (Leisure_and_Hospitality >= 0),
    Other_Services FLOAT(8) CHECK (Other_Services >= 0),
    Total_Government FLOAT(8) CHECK (Total_Government >= 0), 
    Federal_Government FLOAT(8) CHECK (Federal_Government >= 0),
    State_Local_Government FLOAT(8) CHECK (State_Local_Government >= 0), 
    PRIMARY KEY(Quarter)
);

/* Real Gross Domestic Product by Quarter per State in billions of dollars */
DROP TABLE GDP_By_State;
CREATE TABLE GDP_By_State(
    Quarter VARCHAR(6) NOT NULL,
    State VARCHAR(20) NOT NULL,
    Gross_Domestic_Product FLOAT(10) CHECK (Gross_Domestic_Product >= 0),
    PRIMARY KEY(Quarter, State)
    UNIQUE (Quarter, State),
    FOREIGN KEY (State) REFERENCES State_To_Code(State_Name)
);

/* Personal Income by Quarter per State in billions of dollars */
DROP TABLE Personal_Income_By_State;
CREATE TABLE Personal_Income_By_State(
    Quarter VARCHAR(6) NOT NULL,
    State VARCHAR(20) NOT NULL,
    Personal_Income FLOAT(4) CHECK (Personal_Income >= 0),
    PRIMARY KEY(Quarter, State)
    UNIQUE (Quarter, State),
    FOREIGN KEY (State) REFERENCES State_To_Code(State_Name)
);

/* Personal Income by Month for Entire Nation in billions of dollars*/
DROP TABLE Personal_Income_National;
CREATE TABLE Personal_Income_National(
    Date DATE NOT NULL UNIQUE,
    Personal_Income FLOAT(8) CHECK (Personal_Income >= 0),
    Personal_Saving FLOAT(8) CHECK (Personal_Saving >= 0),
    PRIMARY KEY(Date)
);

/*Consumer Prices*/
/*12 month percent change*/
DROP TABLE Consumer_Prices;
CREATE TABLE Consumer_Prices(
    Date DATE NOT NULL,
    All_Items FLOAT(4) CHECK (All_Items >= 0),
    Food FLOAT(4) CHECK (Food >= 0),
    Food_At_Home FLOAT(4) CHECK (Food_At_Home >= 0),
    Food_Away_From_Home FLOAT(4) CHECK (Food_Away_From_Home >= 0),
    Energy FLOAT(4) CHECK (Energy >= 0),
    Gasoline FLOAT(4) CHECK (Gasoline >= 0),
    Electricity FLOAT(4) CHECK (Electricity >= 0),
    Natural_Gas FLOAT(4) CHECK (Natural_Gas >= 0),
    All_Items_Less_Food_And_Energy FLOAT(4) CHECK (All_Items_Less_Food_And_Energy >= 0),
    Commodities FLOAT(4) CHECK (Commodities >= 0),
    Apparel FLOAT(4) CHECK (Apparel >= 0),
    New_Vehicles FLOAT(4) CHECK (New_Vehicles >= 0),
    Medical_Care FLOAT(4) CHECK (Medical_Care >= 0),
    Services_Less_Energy_Services FLOAT(4) CHECK (Services_Less_Energy_Services >= 0),
    Shelter FLOAT(4) CHECK (Shelter >= 0),
    Medical_Care_Services FLOAT(4) CHECK (Medical_Care_Services >= 0),
    Education_and_Communications FLOAT(4) CHECK (Education_and_Communications >= 0),
    PRIMARY KEY(Date)
);

-- jhu_315_final_project.US_Population_Racial definition

CREATE TABLE US_Population_Racial (
  State varchar(100) NOT NULL,
  Total int DEFAULT NULL,
  WhiteTotal int DEFAULT NULL,
  BlackTotal int DEFAULT NULL,
  IndianTotal int DEFAULT NULL,
  AsianTotal int DEFAULT NULL,
  HawaiianTotal int DEFAULT NULL,
  OtherTotal int DEFAULT NULL,
  PRIMARY KEY (State)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- jhu_315_final_project.COVID_Vaccinations definition

CREATE TABLE COVID_Vaccinations (
  Date date DEFAULT NULL,
  Date1 varchar(50) DEFAULT NULL,
  date_type varchar(50) DEFAULT NULL,
  MMWR_week int DEFAULT NULL,
  Location varchar(50) DEFAULT NULL,
  Administered_Daily varchar(50) DEFAULT NULL,
  Admin_Daily double DEFAULT NULL,
  Admin_Dose_1_Daily varchar(50) DEFAULT NULL,
  Admin_Dose_1 double DEFAULT NULL,
  Booster_Daily varchar(50) DEFAULT NULL,
  Boost_Daily double DEFAULT NULL,
  CONSTRAINT 'Admin_Daily' CHECK (Admin_Daily >= 0),
  CONSTRAINT 'Admin_Dose_1' CHECK (Admin_Dose_1 >= 0),
    CONSTRAINT 'Boost_Daily' CHECK (Boost_Daily >= 0),
    PRIMARY KEY (Date,Location),
    FOREIGN KEY (Location) REFERENCES State_To_Code(State_Name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- jhu_315_final_project.COVID_Cases_By_Race_Monthly definition

CREATE TABLE COVID_Cases_By_Race_Monthly (
  MonthDate date NOT NULL,
  Cases_Total decimal(32,0) DEFAULT NULL,
  Cases_White decimal(32,0) DEFAULT NULL,
  Cases_Black decimal(32,0) DEFAULT NULL,
  Cases_LatinX decimal(32,0) DEFAULT NULL,
  Cases_Asian decimal(32,0) DEFAULT NULL,
  CONSTRAINT Cases_Total CHECK (Cases_Total >= 0),
    CONSTRAINT Cases_White CHECK (Cases_White >= 0),
    CONSTRAINT Cases_Black CHECK (Cases_Black >= 0),
    CONSTRAINT Cases_LatinX CHECK (Cases_LatinX >= 0),
    CONSTRAINT Cases_Asian CHECK (Cases_Asian >= 0),
  PRIMARY KEY (MonthDate)
  UNIQUE (MonthDate)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


/*COVID Cases By State
This is weekly data */
DROP TABLE COVID_Cases_By_State;
CREATE TABLE COVID_Cases_By_State
(
    Date DATE NOT NULL,
    State_Code VARCHAR(2),
    tot_cases INT CHECK (tot_cases >= 0),
    new_cases INT CHECK (new_cases >= 0),
    PRIMARY KEY(Date, State_Code)
    UNIQUE (Date, State_Code)
    FOREIGN KEY (State_Code) REFERENCES State_Code(code)
);

/*COVID Cases By Race*/
DROP TABLE COVID_Cases_By_Race;
CREATE TABLE COVID_Cases_By_Race(
    Date DATE NOT NULL,
    State VARCHAR(10),
    Cases_Total INT CHECK (Cases_Total >= 0),
    Cases_White INT CHECK (Cases_White >= 0),
    Cases_Black INT CHECK (Cases_Black >= 0),
    Cases_LatinX INT CHECK (Cases_LatinX >= 0),
    Cases_Asian INT CHECK (Cases_Asian >= 0),
    Cases_AIAN INT CHECK (Cases_AIAN >= 0),
    Cases_NHPI INT CHECK (Cases_NHPI >= 0),
    Cases_Multiracial INT CHECK (Cases_Multiracial >= 0),
    Cases_Other INT CHECK (Cases_Other >= 0),
    Cases_Unknown INT CHECK (Cases_Unknown >= 0),
    Cases_Ethnicity_Hispanic INT CHECK (Cases_Ethnicity_Hispanic >= 0),
    Cases_Ethnicity_Non_Hispanic INT CHECK (Cases_Ethnicity_Non_Hispanic >= 0),
    Cases_Ethnicity_Unknown INT CHECK (Cases_Ethnicity_Unknown >= 0),
    PRIMARY KEY(Date, State)
    FOREIGN KEY (State) REFERENCES State_Code(State_name)

);

/*COVID Cases By Gender 
This is weekly data */
DROP TABLE COVID_Cases_By_Gender;
CREATE TABLE COVID_Cases_By_Gender(
    Date DATE NOT NULL, 	
    State VARCHAR(20),
    Total_Count	INT CHECK (Total_Count >= 0),
    Male_Count INT CHECK (Male_Count >= 0),
    Female_Count INT CHECK (Female_Count >= 0),
    PRIMARY KEY(Date, State),
    FOREIGN KEY (State) REFERENCES State_Code(State_name)
);

/*COVID Deaths By State*/
DROP TABLE COVID_Deaths_By_State;
CREATE TABLE COVID_Deaths_By_State
(
    Date DATE NOT NULL,
    State_Code VARCHAR(2),
    tot_deaths INT CHECK (tot_deaths >= 0),
    new_deaths INT CHECK (new_deaths >= 0),
    PRIMARY KEY(Date, State_Code),
    FOREIGN KEY (State_Code) REFERENCES State_Code(code)
);

/*COVID Deaths By Race*/
DROP TABLE COVID_Deaths_By_Race;
CREATE TABLE COVID_Deaths_By_Race(
    Date DATE NOT NULL,
    State VARCHAR(10),
    Deaths_Total INT CHECK (Deaths_Total >= 0),
    Deaths_White INT CHECK (Deaths_White >= 0),
    Deaths_Black INT CHECK (Deaths_Black >= 0),
    Deaths_LatinX INT CHECK (Deaths_LatinX >= 0),
    Deaths_Asian INT CHECK (Deaths_Asian >= 0),
    Deaths_AIAN INT CHECK (Deaths_AIAN >= 0),
    Deaths_NHPI INT CHECK (Deaths_NHPI >= 0),
    Deaths_Multiracial INT CHECK (Deaths_Multiracial >= 0),
    Deaths_Other INT CHECK (Deaths_Other >= 0),
    Deaths_Unknown INT CHECK (Deaths_Unknown >= 0),
    Deaths_Ethnicity_Hispanic INT CHECK (Deaths_Ethnicity_Hispanic >= 0),
    Deaths_Ethnicity_Non_Hispanic INT CHECK (Deaths_Ethnicity_Non_Hispanic >= 0),
    Deaths_Ethnicity_Unknown INT CHECK (Deaths_Ethnicity_Unknown >= 0),
    PRIMARY KEY(Date, State),
    FOREIGN KEY (State) REFERENCES State_Code(State_name)
);
    
/*COVID Deaths By Age and Gender*/
/*Number of Patients*/
DROP TABLE COVID_Deaths_By_Age_Gender;
CREATE TABLE COVID_Deaths_By_Age_Gender(
    Date DATE,
    Sex VARCHAR(20),
    Age_Group VARCHAR(20),
    Total_Deaths INT,
    COVID_19_Deaths INT,
    CHECK (Total_Deaths >=0),
    CHECK (Covid_19_Deaths >=0),
    PRIMARY KEY(Date, Sex, Age_Group)
);

/*Vaccination Status*/
/*Populations and Ratios*/
DROP TABLE Vaccination_Status;
CREATE TABLE Vaccination_Status(
    Outcome VARCHAR(20),
    Month VARCHAR(10),
    MMWR_Week INT NOT NULL,
    Age_Group VARCHAR(10),
    Vaccine_Product VARCHAR(20),
    Vaccination_With_Outcome INT CHECK (Vaccination_With_Outcome >= 0),
    Fully_Vaccinated INT CHECK (Fully_Vaccinated >= 0),
    Unvaccinated_With_Outcome INT CHECK (Unvaccinated_With_Outcome >= 0),
    Unvaccinated_Population INT CHECK (Unvaccinated_Population >= 0),
    Crude_Vax_IR FLOAT(7) CHECK (Crude_Vax_IR >= 0),
    Crude_Unvax_IR FLOAT(7) CHECK (Crude_Unvax_IR >= 0),
    Crude_IR FLOAT(7) CHECK (Crude_IR >= 0),
    Crude_IRR FLOAT(7) CHECK (Crude_IRR >= 0),
    Age_Adjusted_Vax_IR FLOAT(7) CHECK (Age_Adjusted_Vax_IR >= 0),
    Age_Adjusted_Unvax_IR FLOAT(7)  CHECK (Age_Adjusted_Unvax_IR >= 0),
    Age_Adjusted_IRR FLOAT(7) CHECK (Age_Adjusted_IRR >= 0),
    PRIMARY KEY(MMWR_Week, Age_Group)
);


/*Health Conditions Contribuition To COVID*/
DROP TABLE Health_Conditions_Causing_COVID;
CREATE TABLE Health_Conditions_Causing_COVID(
    Date DATE NOT NULL,
    Group_Name  VARCHAR(15),
    Year        INT,
    Month       INT,
    State  VARCHAR(20),
    Condition_Group VARCHAR(20),
    Condition_Specific VARCHAR(20),
    ICD10_Code VARCHAR(20),
    Age_Group VARCHAR(20),
    COVID_19_Death INT,
    Number_Of_Mentions INT,
    PRIMARY KEY(Date, Condition_Group,Age_Group),
    FOREIGN KEY (State) REFERENCES State_Code(State_name)
);

/*COVID Tests by Race*/
DROP TABLE COVID_Tests_By_Race;
CREATE TABLE COVID_Tests_By_Race(
    Date DATE NOT NULL,
    State VARCHAR(10),
    Tests_Total INT CHECK (Tests_Total >= 0),
    Tests_White INT CHECK (Tests_White >= 0),
    Tests_Black INT CHECK (Tests_Black >= 0),
    Tests_LatinX INT CHECK (Tests_LatinX >= 0),
    Tests_Asian INT CHECK (Tests_Asian >= 0),
    Tests_AIAN INT CHECK (Tests_AIAN >= 0),
    Tests_NHPI INT CHECK (Tests_NHPI >= 0),
    Test_Multiracial INT CHECK (Test_Multiracial >= 0),
    Tests_Other INT CHECK (Tests_Other >= 0),
    Tests_Unknown INT CHECK (Tests_Unknown >= 0),
    Tests_Ethnicity_Hispanic INT CHECK (Tests_Ethnicity_Hispanic >= 0),
    Tests_Ethnicity_Non_Hispanic INT CHECK (Tests_Ethnicity_Non_Hispanic >= 0),
    Test_Ethnicity_Unknown INT CHECK (Test_Ethnicity_Unknown >= 0),
    PRIMARY KEY(Date, State),
    FOREIGN KEY (State) REFERENCES State_To_Code(State_Name)
);

/*COVID Hospitalizations by Age*/
DROP TABLE COVID_Hospitalizations_By_Age;
CREATE TABLE COVID_Hospitalizations_By_Age(
    YEAR VARCHAR(10),
    WEEK VARCHAR(10),
    Yrs_0_to_4 INT,
    Yrs_5_to_17 INT,
    Yrs_18_to_49 INT,
    Yrs_50_to_64 INT,
    Yrs_65_plus INT,
    CHECK (Yrs_0_to_4 >= 0),
    CHECK (Yrs_5_to_17 >= 0),
    CHECK (Yrs_18_to_49 >= 0),
    CHECK (Yrs_50_to_64 >= 0),
    CHECK (Yrs_65_plus >= 0),
    PRIMARY KEY(YEAR, WEEK)
);

/*COVID Hospitalizations by Race*/
DROP TABLE COVID_Hospitalizations_By_Race;
CREATE TABLE COVID_Hospitalizations_By_Race(
    Date DATE NOT NULL,
    State VARCHAR(10),
    Hospitalizations_Total INT CHECK (Hospitalizations_Total >= 0),
    Hospitalizations_White INT CHECK (Hospitalizations_White >= 0),
    Hospitalizations_Black INT CHECK (Hospitalizations_Black >= 0),
    Hospitalizations_LatinX INT CHECK (Hospitalizations_LatinX >= 0),
    Hospitalizations_Asian INT CHECK (Hospitalizations_Asian >= 0),
    Hospitalizations_AIAN INT CHECK (Hospitalizations_AIAN >= 0),
    Hospitalizations_NHPI INT CHECK (Hospitalizations_NHPI >= 0),
    Hospitalizations_Multiracial INT CHECK (Hospitalizations_Multiracial >= 0),
    Hospitalizations_Other INT CHECK (Hospitalizations_Other >= 0),
    Hospitalizations_Unknown INT CHECK (Hospitalizations_Unknown >= 0),
    Hospitalizations_Ethnicity_Hispanic INT CHECK (Hospitalizations_Ethnicity_Hispanic >= 0),
    Hospitalizations_Ethnicity_Non_Hispanic INT CHECK (Hospitalizations_Ethnicity_Non_Hispanic >= 0),
    Hospitalizations_Ethnicity_Unknown INT CHECK (Hospitalizations_Ethnicity_Unknown >= 0),
    PRIMARY KEY(Date, State),
    FOREIGN KEY (State) REFERENCES State_To_Code(State_Name)
);

/*Political Affiliations*/
-- jhu_315_final_project.State_Political_Composition definition

CREATE TABLE State_Political_Composition (
  State_Name varchar(100) DEFAULT NULL,
  Republican/lean Rep. double DEFAULT NULL,
  No lean double DEFAULT NULL,
  Democrat/lean Dem. double DEFAULT NULL,
  Sample size int DEFAULT NULL,
  CHECK (Republican/lean Rep. >= 0),
    CHECK (No lean >= 0),
    CHECK (Democrat/lean Dem. >= 0),
    CHECK (Sample size >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- jhu_315_final_project.State_Political_Composition definition

CREATE TABLE State_Political_Composition (
  State_Name varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL UNIQUE,
  Republican_lean_rep double DEFAULT NULL,
  No_lean double DEFAULT NULL,
  Democrat_lean_Dem double DEFAULT NULL,
  Sample_size int DEFAULT NULL,
    CHECK (Republican_lean_rep >= 0),
        CHECK (No_lean >= 0),
        CHECK (Democrat_lean_Dem >= 0),
        CHECK (Sample_size >= 0),
        CHECK (Sample_Size >=0),
            PRIMARY KEY (State_Name),
    FOREIGN KEY (State_Name) REFERENCES State_To_Code(State_Name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- jhu_315_final_project.State_Political_Composition_By_Race definition

CREATE TABLE `State_Political_Composition_By_Race` (
  `State_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL UNIQUE,
  `White` int DEFAULT NULL,
  `Black` int DEFAULT NULL,
  `Asian` int DEFAULT NULL,
  `Latinx` int DEFAULT NULL,
  `Other/Mixed` int DEFAULT NULL,
  `Sample size` int DEFAULT NULL
  CHECK (White >= 0),
    CHECK (Black >= 0),
    CHECK (Asian >= 0),
    CHECK (Latinx >= 0),
    CHECK (Other/Mixed >= 0),
    CHECK (Sample size >= 0),
    PRIMARY KEY (State_Name),
    FOREIGN KEY (State_Name) REFERENCES State_To_Code(State_Name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- jhu_315_final_project.State_Political_Composition_By_Race definition

CREATE TABLE State_Political_Composition_By_Race (
  State_Name varchar(100) DEFAULT NULL,
  White int DEFAULT NULL,
  Black int DEFAULT NULL,
  Asian int DEFAULT NULL,
  Latino int DEFAULT NULL,
  Other/Mixed int DEFAULT NULL,
  Sample size int DEFAULT NULL,
    CHECK (White >= 0),
    CHECK (Black >= 0),
    CHECK (Asian >= 0),
    CHECK (Latino >= 0),
    CHECK (Other/Mixed >= 0),
    CHECK (Sample size >= 0)
    PRIMARY KEY (State_Name),
    FOREIGN KEY (State_Name) REFERENCES State_To_Code(State_Name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- jhu_315_final_project.Insurance definition

CREATE TABLE `Insurance` (
  `State_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL UNIQUE,
  `Employer` double DEFAULT NULL,
  `NonGroup` double DEFAULT NULL,
  `Medicaid` double DEFAULT NULL,
  `Medicare` double DEFAULT NULL,
  `Military` double DEFAULT NULL,
  `Uninsured` double DEFAULT NULL,
  `Total` int DEFAULT NULL,
  `Footnotes` int DEFAULT NULL
  CHECK (Employer >= 0),
    CHECK (NonGroup >= 0),
    CHECK (Medicaid >= 0),
    CHECK (Medicare >= 0),
    CHECK (Military >= 0),
    CHECK (Uninsured >= 0),
    CHECK (Total >= 0),
    CHECK (Footnotes >= 0),
    PRIMARY KEY (State_Name),
    FOREIGN KEY (State_Name) REFERENCES State_To_Code(State_Name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* INTERMEDIARY RELATIONS */

/*DateToMonth*/
/* Month is a date that corresponds to the first day of that month for easier comparison */

DROP TABLE Date_To_MonthDate;
CREATE TABLE Date_To_MonthDate(
    Date DATE NOT NULL,
    MonthDate DATE NOT NULL,
    PRIMARY KEY(Date)
);

DROP TABLE MonthString_To_MonthDate;
CREATE TABLE MonthString_To_MonthDate(
    MonthString VARCHAR(6) NOT NULL,
    MonthDate DATE NOT NULL,
    PRIMARY KEY(MonthString)
);


/* Month is a date that corresponds to the first day of that month for easier comparison */

/*MonthToQuarter*/
DROP TABLE Month_To_Quarter;
CREATE TABLE Month_To_Quarter(
    Month VARCHAR(6) NOT NULL,
    Quarter VARCHAR(6),
    PRIMARY KEY(Month)
);

/*State Code to State Name*/
DROP TABLE State_To_Code;
CREATE TABLE State_To_Code(
    State_Name VARCHAR(20) NOT NULL UNIQUE,
    abbrev varchar(10),
    code varchar(2),
    PRIMARY KEY (State_Name)
);

/*State Name to Region*/
DROP TABLE State_To_Region;
CREATE TABLE State_To_Region(
    State VARCHAR(20),
    Region VARCHAR(10),
    PRIMARY KEY(State),
    FOREIGN KEY(State) REFERENCES State_To_Code(State_Name)
);

/*State Has Industry*/
DROP TABLE State_Has_Industry;
CREATE TABLE State_Has_Industry(
    State VARCHAR(20),
    Industry_Name VARCHAR(20),
    PRIMARY KEY(State, Industry_Name),
    FOREIGN KEY(State) REFERENCES State_To_Code(State_Name)
);

/*Industry Category, Nonfarm divided into Private and Government*/
DROP TABLE Industry_Category;
CREATE TABLE Industry_Category(
    Industry_Name VARCHAR(20),
    Industry_Category VARCHAR(20),
    PRIMARY KEY(Industry_Name)
);

/*DISPLAY NAME - for the purposes of Grafana dropdowns*/
-- jhu_315_final_project.GDP_Peaks definition

CREATE TABLE GDP_Peaks (
  id varchar(4) NOT NULL,
  Pre_COVID double DEFAULT NULL,
  WildType_Peak double DEFAULT NULL,
  Alpha_Peak double DEFAULT NULL,
  Delta_Peak double DEFAULT NULL,
  Omicron_Peak double DEFAULT NULL,
  CONSTRAINT 'Pre_COVID' CHECK (Pre_COVID >= 0),
    CONSTRAINT 'Wildtype_Peak' CHECK (WildType_Peak >= 0),
    CONSTRAINT 'Alpha_Peak' CHECK (Alpha_Peak >= 0),
    CONSTRAINT 'Delta_Peak' CHECK (Delta_Peak >= 0),
    CONSTRAINT 'Omicron_Peak' CHECK (Omicron_Peak >= 0),
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- jhu_315_final_project.Natl_Econ_Peaks definition
CREATE TABLE Natl_Econ_Peaks (
  id varchar(3) NOT NULL,
  Pre_COVID double  DEFAULT NULL,
  WildType_Peak double DEFAULT NULL,
  Alpha_Peak double DEFAULT NULL,
  Delta_Peak double DEFAULT NULL,
  Omicron_Peak double DEFAULT NULL,
    CONSTRAINT 'Pre_COVID' CHECK (Pre_COVID >= 0),
    CONSTRAINT 'Wildtype_Peak' CHECK (WildType_Peak >= 0),
    CONSTRAINT 'Alpha_Peak' CHECK (Alpha_Peak >= 0),
    CONSTRAINT 'Delta_Peak' CHECK (Delta_Peak >= 0),
    CONSTRAINT 'Omicron_Peak' CHECK (Omicron_Peak >= 0),
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- jhu_315_final_project.State_Locations definition

CREATE TABLE State_Locations (
  State_Name varchar(100) DEFAULT NULL UNIQUE,
  Capital_Name varchar(50) DEFAULT NULL UNIQUE,
  latitude double DEFAULT NULL,
  longitude double DEFAULT NULL,
  CHECK (latitude >= -90),
    CHECK (latitude <= 90),
    CHECK (longitude >= -180),
    CHECK (longitude <= 180),
    PRIMARY KEY (State_Name),
    FOREIGN KEY (State_Name) REFERENCES State_To_Code(State_Name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
