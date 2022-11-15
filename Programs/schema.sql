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

/*COVID Cases By Race*/
/*Data Information Indicated by Percentage*/
DROP TABLE COVID_Cases_By_Race;
CREATE TABLE COVID_Cases_By_Race(
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