/*Unemployment Rate*/
/*Data are as a percentage for rate*/
DROP TABLE Unemployment_Rate;
CREATE TABLE Unemployment_Rate
(
    Date VARCHAR(10) NOT NULL UNIQUE,
    Total FLOAT(4) NOT NULL,
    Men_20Yrs_Over FLOAT(4) CHECK (Men_20Yrs_Over >= 0),
    Women_20Yrs_Over FLOAT(4) CHECK (Women_20Yrs_Over >= 0),
    16_to_19 FLOAT(4) CHECK (16_to_19 >= 0),
    White FLOAT(4) CHECK (White >= 0),
    Black_Or_Asian FLOAT(4) CHECK (Black_Or_Asian >= 0),
    Asian FLOAT(4) CHECK (Asian >= 0),
    Hispanic_Or_Latino FLOAT(4) CHECK (Hispanic_Or_Latino >= 0),
    PRIMARY KEY(Date)
);

/*Civillian Labor Force - No Disability 16 yrs and over*/
/*Numbers in thousands*/
DROP TABLE 16Yrs_Over_Labor;
CREATE TABLE 16Yrs_Over_Labor
(
    Year INT UNIQUE NOT NULL CHECK (Year >= 2019),
    Jan INT NOT NULL CHECK (Jan >= 0),
    Feb INT NOT NULL CHECK (Feb >= 0),
    Mar INT NOT NULL CHECK (Mar >= 0),
    Apr INT NOT NULL CHECK (Apr >= 0),
    May INT NOT NULL CHECK (May >= 0),
    Jun INT NOT NULL CHECK (Jun >= 0),
    Jul INT NOT NULL CHECK (Jul >= 0),
    Aug INT NOT NULL CHECK (Aug >= 0),
    Sep INT NOT NULL CHECK (Sep >= 0),
    Oct INT NOT NULL CHECK (Oct >= 0),
    Nov INT NOT NULL CHECK (Nov >= 0),
    Dece INT NOT NULL CHECK (Dece >= 0),
    PRIMARY KEY(Year)
);


/*Civillian Labor Force - No Disability 16 yrs and over*/
/*Numbers in thousands*/
DROP TABLE 16yrs_64_yrs_men_labor;
CREATE TABLE 16yrs_64_yrs_men_labor
(
    Year INT UNIQUE NOT NULL CHECK (Year >= 2019),
    Jan INT NOT NULL CHECK (Jan >= 0),
    Feb INT NOT NULL CHECK (Feb >= 0),
    Mar INT NOT NULL CHECK (Mar >= 0),
    Apr INT NOT NULL CHECK (Apr >= 0),
    May INT NOT NULL CHECK (May >= 0),
    Jun INT NOT NULL CHECK (Jun >= 0),
    Jul INT NOT NULL CHECK (Jul >= 0),
    Aug INT NOT NULL CHECK (Aug >= 0),
    Sep INT NOT NULL CHECK (Sep >= 0),
    Oct INT NOT NULL CHECK (Oct >= 0),
    Nov INT NOT NULL CHECK (Nov >= 0),
    Dece INT NOT NULL CHECK (Dece >= 0),
    PRIMARY KEY(Year)
);

/*Civillian Labor Force - No Disability 16 yrs and over*/
/*Numbers in thousands*/
DROP TABLE 16yrs_64_yrs_women_labor;
CREATE TABLE 16yrs_64_yrs_women_labor
(
    Year INT UNIQUE NOT NULL CHECK (Year >= 2019),
    Jan INT NOT NULL CHECK (Jan >= 0),
    Feb INT NOT NULL CHECK (Feb >= 0),
    Mar INT NOT NULL CHECK (Mar >= 0),
    Apr INT NOT NULL CHECK (Apr >= 0),
    May INT NOT NULL CHECK (May >= 0),
    Jun INT NOT NULL CHECK (Jun >= 0),
    Jul INT NOT NULL CHECK (Jul >= 0),
    Aug INT NOT NULL CHECK (Aug >= 0),
    Sep INT NOT NULL CHECK (Sep >= 0),
    Oct INT NOT NULL CHECK (Oct >= 0),
    Nov INT NOT NULL CHECK (Nov >= 0),
    Dece INT NOT NULL CHECK (Dece >= 0),
    PRIMARY KEY(Year)
);

/*Civillian Labor Force - No Disability 65 yrs and over*/
/*Numbers in thousands*/
DROP TABLE 65yrs_older_labor;
CREATE TABLE 65yrs_older_labor
(
    Year INT UNIQUE NOT NULL CHECK (Year >= 2019),
    Jan INT NOT NULL CHECK (Jan >= 0),
    Feb INT NOT NULL CHECK (Feb >= 0),
    Mar INT NOT NULL CHECK (Mar >= 0),
    Apr INT NOT NULL CHECK (Apr >= 0),
    May INT NOT NULL CHECK (May >= 0),
    Jun INT NOT NULL CHECK (Jun >= 0),
    Jul INT NOT NULL CHECK (Jul >= 0),
    Aug INT NOT NULL CHECK (Aug >= 0),
    Sep INT NOT NULL CHECK (Sep >= 0),
    Oct INT NOT NULL CHECK (Oct >= 0),
    Nov INT NOT NULL CHECK (Nov >= 0),
    Dece INT NOT NULL CHECK (Dece >= 0),
    PRIMARY KEY(Year)
);

/*Gross Output By Industry*/
/*Percent Change in Real Gross Domestic Product*/
DROP TABLE GDP_Percent_Change;
CREATE TABLE GDP_Percent_Change
(
    Industry VARCHAR(30) NOT NULL UNIQUE,
    2019_Q1 INT CHECK (2019_Q1 >= 0),
    2019_Q2 INT CHECK (2019_Q2 >= 0),
    2019_Q3 INT CHECK (2019_Q3 >= 0),
    2019_Q4 INT CHECK (2019_Q4 >= 0),
    2020_Q1 INT CHECK (2020_Q1 >= 0),
    2020_Q2 INT CHECK (2020_Q2 >= 0),
    2020_Q3 INT CHECK (2020_Q3 >= 0), 
    2020_Q4 INT CHECK (2020_Q4 >= 0),
    2021_Q1 INT CHECK (2021_Q1 >= 0),
    2021_Q2 INT CHECK (2021_Q2 >= 0),
    2021_Q3 INT CHECK (2021_Q3 >= 0),
    2021_Q4 INT CHECK (2021_Q4 >= 0),
    PRIMARY KEY(Industry)
);

/*COVID Cases By State*/
/*average cases for seven-day trailing average*/
DROP TABLE COVID_Cases;
CREATE TABLE COVID_Cases
(
    Date_Text VARCHAR(10),
    GeoID VARCHAR(6) NOT NULL,
    State_Name VARCHAR(30),
    Cases INT CHECK (Cases >= 0),
    Cases_Avg FLOAT(4) CHECK (Cases_Avg >= 0),
    Cases_Avg_100k FLOAT(4) CHECK (Cases_Avg_100k >= 0),
    PRIMARY KEY(Date_Text,GeoID)
);

/*nonfarm unemployment*/
DROP TABLE Non_farm_unemployment;
CREATE TABLE Non_farm_unemployment
(
    Date VARCHAR(10) NOT NULL UNIQUE,
    Total_nonFarm INT CHECK (Total_nonFarm >= 0),
    Total_nonFarm_Avg FLOAT(4) CHECK (Total_nonFarm_Avg >= 0),
    Mining_and_Logging INT CHECK (Mining_and_Logging >= 0),
    Construction INT CHECK (Construction >= 0),
    Manufacturing INT CHECK (Manufacturing >= 0),
    Wholesale_Trade INT CHECK (Wholesale_Trade >= 0),
    Retail_Trade INT CHECK (Retail_Trade >= 0),
    Transportation_and_Warehousing INT CHECK (Transportation_and_Warehousing >= 0),
    Utilities INT CHECK (Utilities >= 0),
    Information INT CHECK (Information >= 0),
    Finance_and_Insurance INT CHECK (Finance_and_Insurance >= 0),
    Profesional_and_Business Services INT CHECK (Profesional and Business Services >= 0),
    Education_and_Health_Services INT CHECK (Education_and_Health_Services >= 0),
    Leisure_and_Hospitality INT CHECK (Leisure_and_Hospitality >= 0),
    Other_Services INT CHECK (Other_Services >= 0),
    Federal_Government INT CHECK (Federal_Government >= 0),
    State_Government INT CHECK (State_Government >= 0),
    Local_Government INT CHECK (Local_Government >= 0),
    PRIMARY KEY(Date)
);


/*Consumer Prices*/
/*12 month percent change*/
DROP TABLE Consumer_Prices;
CREATE TABLE Consumer_Prices(
    Date_Text VARCHAR(10) NOT NULL UNIQUE,
    All_Items FLOAT(4),
    Food FLOAT(4),
    Food_At_Home FLOAT(4),
    Food_Away_From_Home FLOAT(4),
    Energy FLOAT(4),
    Gasoline FLOAT(4),
    Electricity FLOAT(4),
    Natural_Gas FLOAT(4),
    All_Items_Less_Food_And_Energy FLOAT(4),
    Commodities FLOAT(4),
    Apparel FLOAT(4),
    New_Vehicles FLOAT(4),
    Medical_Care FLOAT(4),
    Services_Less_Energy_Services FLOAT(4),
    Shelter FLOAT(4),
    Medical_Care_Services FLOAT(4),
    Education_and_Communications FLOAT(4),
    PRIMARY KEY(Date_Text)
);

/*COVID Deaths By Race*/
/*Data Information Indicated by Percentage*/
DROP TABLE COVID_Deaths_By_Race;
CREATE TABLE COVID_Deaths_By_Race(
    Data_As_Of VARCHAR(10),
    Start_Date VARCHAR(10),
    End_Date VARCHAR(10),
    Year VARCHAR(10) NOT NULL,
    /*May want to change year to int*/
    Month INT,
    Group_Name VARCHAR(15),
    State_Name VARCHAR(20),
    Indicator VARCHAR(100),
    Non_Hispanic_White INT CHECK (Non_Hispanic_White >= 0),
    Non_Hispanic_Black INT CHECK (Non_Hispanic_Black >= 0),
    Non_Hispanic_Asian INT CHECK (Non_Hispanic_Asian >= 0),
    Non_Hispanic_Native_Hawaiian_Pacific_Islander INT CHECK (Non_Hispanic_Native_Hawaiian_Pacific_Islander >= 0),
    Non_Hispanic_More_Than_One_Race INT CHECK (Non_Hispanic_More_Than_One_Race >= 0),
    Hispanic_Or_Latino INT CHECK (Hispanic_Or_Latino >= 0),
    PRIMARY KEY(Data_As_Of, Start_Date, End_Date, Year, Month, Group_Name, Indicator)

);

/*COVID Cases By Age*/
/*Number of Patients*/
DROP TABLE COVID_Cases_By_Age;
CREATE TABLE COVID_Cases_By_Age(
    Date_As_Of VARCHAR(10),
    Start_Date VARCHAR(10) NOT NULL,
    End_Date VARCHAR(10),
    Group_Name VARCHAR(15),
    Year INT,
    /*May want to change year to var char depending*/
    Month INT,
    State_Name VARCHAR(20),
    Age_Group VARCHAR(20),
    COVID_19_Death INT CHECK (COVID_19_Death >= 0),
    Total_Deaths INT CHECK (Total_Deaths >= 0),
    Pneumonia_Deaths INT CHECK (Pneumonia_Deaths >= 0),
    Pneumonia_and_COVID_19_Deaths INT CHECK (Pneumonia_and_COVID_19_Deaths >= 0),
    Influenza_Deaths INT CHECK (Influenza_Deaths >= 0),
    Pneumonia_Influenza_or_COVID_19_Deaths INT CHECK (Pneumonia_Influenza_or_COVID_19_Deaths >= 0),
    PRIMARY KEY(Date_As_Of, Start_Date, End_Date, Age_Group)
);

/**COVID Cases By Age*/
/*Number of Patients*/
DROP TABLE COVID_By_Age;
CREATE TABLE COVID_By_Age(
    Year INT,
    Week_Number INT NOT NULL,
    0_4_yrs INT CHECK (0_4_yrs >= 0),
    5_17_yrs INT CHECK (5_17_yrs >= 0),
    18_49_yrs INT CHECK (18_49_yrs >= 0),
    50_64_yrs INT CHECK (50_64_yrs >= 0),
    65_plus_yrs INT CHECK (65_plus_yrs >= 0),
    PRIMARY KEY(Week_Number)
);


/*State Household Income*/
/*Millions of Dollars, seasonally adjusted*/
/*Realistically we only need values from 2021*/
DROP TABLE Household_Income;
CREATE TABLE Household_Income(
    State_Name VARCHAR(20) NOT NULL UNIQUE,
    2021_Q1 INT CHECK (2021_Q1 >= 0),
    2021_Q2 INT CHECK (2021_Q2 >= 0),
    2021_Q3 INT CHECK (2021_Q3 >= 0),
    2021_Q4 INT CHECK (2021_Q4 >= 0),
    2022_Q1 INT CHECK (2022_Q1 >= 0),
    2022_Q2 INT CHECK (2022_Q2 >= 0),
    2021_Q2_Percent_Change FLOAT(4) CHECK (2021_Q2_Percent_Change >= 0),
    2021_Q3_Percent_Change FLOAT(4) CHECK (2021_Q3_Percent_Change >= 0),
    2021_Q4_Percent_Change FLOAT(4) CHECK (2021_Q4_Percent_Change >= 0),
    2022_Q1_Percent_Change FLOAT(4) CHECK (2022_Q1_Percent_Change >= 0),
    2022_Q2_Percent_Change FLOAT(4) CHECK (2022_Q2_Percent_Change >= 0),
    PRIMARY KEY(State_Name)
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
    Data_As_Of  VARCHAR(10),
    Start_Date  VARCHAR(10),
    End_Date    VARCHAR(10),
    Group_Name  VARCHAR(15),
    Year        INT,
    Month       INT,
    State_Name  VARCHAR(20),
    Condition_Group VARCHAR(20),
    Condition_Specific VARCHAR(20),
    ICD10_Code VARCHAR(20),
    Age_Group VARCHAR(20),
    COVID_19_Death INT,
    Number_Of_Mentions INT,
    PRIMARY KEY(Data_As_Of, Start_Date, End_Date, Condition_Group,Age_Group)
);

/*COVID Tests by Race*/
DROP TABLE COVID_Test_Race;
CREATE TABLE COVID_Test_Race(
    Date_Text VARCHAR(10),
    State_Name VARCHAR(10),
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
    Tests_Ethincity_Hispanic INT CHECK (Tests_Ethincity_Hispanic >= 0),
    Tests_Ethincity_Non_Hispanic INT CHECK (Tests_Ethincity_Non_Hispanic >= 0),
    Test_Ethnncity_Unknown INT CHECK (Test_Ethnncity_Unknown >= 0),
    PRIMARY KEY(Date_Text, State_Name) 
);

/*COVID Hopistalizations by Age*/
DROP TABLE COVID_Hospitalizations_Age;
CREATE TABLE COVID_Hospitalizations_Race(
    YEAR VARCHAR(10),
    WEEK VARCHAR(10),
    0_4_yrs INT CHECK (0_4_yrs >= 0),
    5_17_yrs INT    CHECK (5_17_yrs >= 0),
    18_49_yrs INT  CHECK (18_49_yrs >= 0),
    50_64_yrs INT CHECK (50_64_yrs >= 0),
    65_plus_yrs INT CHECK (65_plus_yrs >= 0),
    PRIMARY KEY(YEAR, WEEK)
);

/*COVID Hospitalizations by Race*/
DROP TABLE COVID_Hospitalizations_Race;
CREATE TABLE COVID_Hospitalizations_Race(
    Date_Text VARCHAR(10),
    State_Name VARCHAR(10),
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
    Hospitalizations_Ethincity_Hispanic INT CHECK (Hospitalizations_Ethincity_Hispanic >= 0),
    Hospitalizations_Ethincity_Non_Hispanic INT CHECK (Hospitalizations_Ethincity_Non_Hispanic >= 0),
    Hospitalizations_Ethnncity_Unknown INT CHECK (Hospitalizations_Ethnncity_Unknown >= 0),
    PRIMARY KEY(Date_Text, State_Name)
);

/*DateToMonth*/
DROP TABLE DateToMonth;
CREATE TABLE DateToMonth(
    Date_Text VARCHAR(10),
    Month INT,
    PRIMARY KEY(Date_Text)
);

/*MonthToQuarter*/
DROP TABLE MonthToQuarter;
CREATE TABLE MonthToQuarter(
    Month VARCHAR(10),
    Quarter varchar(6),
    PRIMARY KEY(Month)
);

/*State Abbrivation to State Name*/
DROP TABLE State_Abbrivation;
CREATE TABLE State_Abbrivation(
    State_Abbrivation VARCHAR(10),
    State_Name VARCHAR(20),
    PRIMARY KEY(State_Abbrivation)
);

/*State Has Industry*/
DROP TABLE State_Has_Industry;
CREATE TABLE State_Has_Industry(
    State_Name VARCHAR(20),
    Industry_Name VARCHAR(20),
    PRIMARY KEY(State_Name, Industry_Name)
);

/*Industry Category*/
DROP TABLE Industry_Category;
CREATE TABLE Industry_Category(
    Industry_Name VARCHAR(20),
    Industry_Category VARCHAR(20),
    PRIMARY KEY(Industry_Name)
);