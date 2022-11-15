/*Unemployment Rate*/
/*Data are as a percentage for rate*/
DROP TABLE Unemployment_Rate;
CREATE TABLE Unemployment_Rate
(
    Date VARCHAR(10),
    Total FLOAT(4),
    Men_20Yrs_Over FLOAT(4),
    Women_20Yrs_Over FLOAT(4),
    16_to_19 FLOAT(4),
    White FLOAT(4),
    Black_Or_Asian FLOAT(4),
    Asian FLOAT(4),
    Hispanic_Or_Latino FLOAT(4),
    PRIMARY KEY(Date)
);

/*Civillian Labor Force - No Disability 16 yrs and over*/
/*Numbers in thousands*/
DROP TABLE 16Yrs_Over_Labor;
CREATE TABLE 16Yrs_Over_Labor
(
    YEAR INT,
    Jan INT,
    Feb INT,
    Mar INT,
    Apr INT,
    May INT,
    Jun INT,
    Jul INT,
    Aug INT,
    Sep INT,
    Oct INT,
    Nov INT,
    Dece INT,
    PRIMARY KEY(YEAR)
);


/*Civillian Labor Force - No Disability 16 yrs and over*/
/*Numbers in thousands*/
DROP TABLE 16yrs_64_yrs_men_labor;
CREATE TABLE 16yrs_64_yrs_men_labor
(
    YEAR INT,
    Jan INT,
    Feb INT,
    Mar INT,
    Apr INT,
    May INT,
    Jun INT,
    Jul INT,
    Aug INT,
    Sep INT,
    Oct INT,
    Nov INT,
    Dece INT,
    PRIMARY KEY(YEAR)
);

/*Civillian Labor Force - No Disability 16 yrs and over*/
/*Numbers in thousands*/
DROP TABLE 16yrs_64_yrs_women_labor;
CREATE TABLE 16yrs_64_yrs_women_labor
(
    YEAR INT,
    Jan INT,
    Feb INT,
    Mar INT,
    Apr INT,
    May INT,
    Jun INT,
    Jul INT,
    Aug INT,
    Sep INT,
    Oct INT,
    Nov INT,
    Dece INT,
    PRIMARY KEY(YEAR)
);

/*Civillian Labor Force - No Disability 65 yrs and over*/
/*Numbers in thousands*/
DROP TABLE 65yrs_older_labor;
CREATE TABLE 65yrs_older_labor
(
    YEAR INT,
    Jan INT,
    Feb INT,
    Mar INT,
    Apr INT,
    May INT,
    Jun INT,
    Jul INT,
    Aug INT,
    Sep INT,
    Oct INT,
    Nov INT,
    Dece INT,
    PRIMARY KEY(YEAR)
);

/*Gross Output By Industry*/
/*Percent Change in Real Gross Domestic Product*/
DROP TABLE GDP_Percent_Change;
CREATE TABLE GDP_Percent_Change
(
    Industry VARCHAR(30),
    2019_Q1 INT,
    2019_Q2 INT,
    2019_Q3 INT,
    2019_Q4 INT,
    2020_Q1 INT,
    2020_Q2 INT,
    2020_Q3 INT,
    2020_Q4 INT,
    2021_Q1 INT,
    2021_Q2 INT,
    2021_Q3 INT,
    2021_Q4 INT,
    PRIMARY KEY(Industry)
);

/*COVID Cases By State*/
/*average cases for seven-day trailing average*/
DROP TABLE COVID_Cases;
CREATE TABLE COVID_Cases
(
    Date_Text VARCHAR(10),
    GeoID VARCHAR(6),
    State_Name VARCHAR(30),
    Cases INT,
    Cases_Avg FLOAT(4),
    Cases_Avg_100k FLOAT(4),
    PRIMARY KEY(Date_Text,GeoID)
);

/*Consumer Prices*/
/*12 month percent change*/
DROP TABLE Consumer_Prices;
CREATE TABLE Consumer_Prices(
    Date_Text VARCHAR(10),
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
    Year VARCHAR(10),
    /*May want to change year to int*/
    Month INT,
    Group_Name VARCHAR(15),
    State_Name VARCHAR(20),
    Indicator VARCHAR(100),
    Non_Hispanic_White INT,
    Non_Hispanic_Black INT,
    Non_Hispanic_Asian INT,
    Non_Hispanic_Native_Hawaiian_Pacific_Islander INT,
    Non_Hispanic_More_Than_One_Race INT,
    Hispanic_Or_Latino INT,
    PRIMARY KEY(Data_As_Of, Start_Date, End_Date, Year, Month, Group_Name, Indicator)

);

/*COVID Cases By Age*/
/*Number of Patients*/
DROP TABLE COVID_Cases_By_Age;
CREATE TABLE COVID_Cases_By_Age(
    Date_As_Of VARCHAR(10),
    Start_Date VARCHAR(10),
    End_Date VARCHAR(10),
    Group_Name VARCHAR(15),
    Year INT,
    /*May want to change year to var char depending*/
    Month INT,
    State_Name VARCHAR(20),
    Age_Group VARCHAR(20),
    COVID_19_Death INT,
    TOTAL_DEATHS INT,
    Pneumonia_Deaths INT,
    Pneumonia_and_COVID_19_Deaths INT,
    Influenza_Deaths INT,
    Pneumonia_Influenza_or_COVID_19_Deaths INT,
    PRIMARY KEY(Date_As_Of, Start_Date, End_Date, Age_Group)
);

/**COVID Cases By Age*/
/*Number of Patients*/
DROP TABLE COVID_By_Age;
CREATE TABLE COVID_By_Age(
    Year INT,
    Week_Number INT,
    0_4_yrs INT,
    5_17_yrs INT,
    18_49_yrs INT,
    50_64_yrs INT,
    65_plus_yrs INT,
    PRIMARY KEY(Week_Number)
);


/*State Household Income*/
/*Millions of Dollars, seasonally adjusted*/
/*Realistically we only need values from 2021*/
DROP TABLE Household_Income;
CREATE TABLE Household_Income(
    State_Name VARCHAR(20),
    2021_Q1 INT,
    2021_Q2 INT,
    2021_Q3 INT,
    2021_Q4 INT,
    2022_Q1 INT,
    2022_Q2 INT,
    2021_Q2_Percent_Change FLOAT(4),
    2021_Q3_Percent_Change FLOAT(4),
    2021_Q4_Percent_Change FLOAT(4),
    2022_Q1_Percent_Change FLOAT(4),
    2022_Q2_Percent_Change FLOAT(4),
    PRIMARY KEY(State_Name)
);

/*Vaccination Status*/
/*Populations and Ratios*/
DROP TABLE Vaccination_Status;
CREATE TABLE Vaccination_Status(
    Outcome VARCHAR(20),
    Month VARCHAR(10),
    MMWR_Week INT,
    Age_Group VARCHAR(10),
    Vaccine_Product VARCHAR(20),
    Vaccination_With_Outcome INT,
    Fully_Vaccinated INT,
    Unvaccinated_With_Outcome INT,
    Unvaccinated_Population INT,
    Crude_Vax_IR FLOAT(7),
    Crude_Unvax_IR FLOAT(7),
    Crude_IR FLOAT(7),
    Crude_IRR FLOAT(7),
    Age_Adjusted_Vax_IR FLOAT(7),
    Age_Adjusted_Unvax_IR FLOAT(7),
    Age_Adjusted_IRR FLOAT(7),
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