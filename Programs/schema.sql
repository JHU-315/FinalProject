/*Unemployment Rate*/
/*Data are as a percentage for rate*/
DROP TABLE Unemployment_Rate;
CREATE TABLE Unemployment_Rate
(
    Date VARCHAR(10) NOT NULL UNIQUE,
    Total FLOAT(4) NOT NULL,
    Men_20Yrs_Over FLOAT(4) CHECK (Men_20Yrs_Over >= 0),
    Women_20Yrs_Over FLOAT(4) CHECK (Women_20Yrs_Over >= 0),
    Yrs_16_to_19 FLOAT(4) CHECK (Yrs_16_to_19 >= 0),
    White FLOAT(4) CHECK (White >= 0),
    Black_or_AfricanAmerican FLOAT(4) CHECK (Black_or_AfricanAmerican >= 0),
    Asian FLOAT(4) CHECK (Asian >= 0),
    Hispanic_or_Latino FLOAT(4) CHECK (Hispanic_or_Latino >= 0),
    PRIMARY KEY(Date)
);

DROP TABLE State_Unemployment_Rates;
CREATE TABLE State_Unemployment_Rates
(
    Date VARCHAR(10) NOT NULL UNIQUE,
    Alabama VARCHAR(20) NOT NULL,
    Alaska VARCHAR(20) NOT NULL,
    Arizona VARCHAR(20) NOT NULL,
    Arkansas VARCHAR(20) NOT NULL,
    California VARCHAR(20) NOT NULL,
    Colorado VARCHAR(20) NOT NULL,
    Connecticut VARCHAR(20) NOT NULL,
    Delaware VARCHAR(20) NOT NULL,
    District_of_Columbia VARCHAR(20) NOT NULL,
    Florida VARCHAR(20) NOT NULL,
    Georgia VARCHAR(20) NOT NULL,
    Hawaii VARCHAR(20) NOT NULL,
    Idaho VARCHAR(20) NOT NULL,
    Illinois VARCHAR(20) NOT NULL,
    Indiana VARCHAR(20) NOT NULL,
    Iowa VARCHAR(20) NOT NULL,
    Kansas VARCHAR(20) NOT NULL,
    Kentucky VARCHAR(20) NOT NULL,
    Louisiana VARCHAR(20) NOT NULL,
    Maine VARCHAR(20) NOT NULL,
    Maryland VARCHAR(20) NOT NULL,
    Massachusetts VARCHAR(20) NOT NULL,
    Michigan VARCHAR(20) NOT NULL,
    Minnesota VARCHAR(20) NOT NULL,
    Mississippi VARCHAR(20) NOT NULL,
    Missouri VARCHAR(20) NOT NULL,
    Montana VARCHAR(20) NOT NULL,
    Nebraska VARCHAR(20) NOT NULL,
    Nevada VARCHAR(20) NOT NULL,
    New_Hampshire VARCHAR(20) NOT NULL,
    New_Jersey VARCHAR(20) NOT NULL,
    New_Mexico VARCHAR(20) NOT NULL,
    New_York VARCHAR(20) NOT NULL,
    North_Carolina VARCHAR(20) NOT NULL,
    North_Dakota VARCHAR(20) NOT NULL,
    Ohio VARCHAR(20) NOT NULL,
    Oklahoma VARCHAR(20) NOT NULL,
    Oregon VARCHAR(20) NOT NULL,
    Pennsylvania VARCHAR(20) NOT NULL,
    Rhode_Island VARCHAR(20) NOT NULL,
    South_Carolina VARCHAR(20) NOT NULL,
    South_Dakota VARCHAR(20) NOT NULL,
    Tennessee VARCHAR(20) NOT NULL,
    Texas VARCHAR(20) NOT NULL,
    Utah VARCHAR(20) NOT NULL,
    Vermont VARCHAR(20) NOT NULL, 
    Virginia VARCHAR(20) NOT NULL,
    Washington VARCHAR(20) NOT NULL,
    West_Virginia VARCHAR(20) NOT NULL,
    Wisconsin VARCHAR(20) NOT NULL,
    Wyoming VARCHAR(20) NOT NULL,
    Puerto_Rico VARCHAR(20) NOT NULL,
    PRIMARY KEY(Date)
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

/*nonfarm employment*/
DROP TABLE Nonfarm_Employment;
CREATE TABLE Nonfarm_Employment
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

/*State Household Income*/
/* FIX THIS WITH NEW TABLE */
DROP TABLE Household_Income;
CREATE TABLE Household_Income(
    State_Name VARCHAR(20) NOT NULL UNIQUE,
     INT CHECK (2021_Q1 >= 0),
    
    FLOAT(4) CHECK (2021_Q2_Percent_Change >= 0),
    
    PRIMARY KEY(State_Name)
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

/*COVID Cases By State*/
DROP TABLE COVID_Cases_By_State;
CREATE TABLE COVID_Cases_By_State
(
    Date VARCHAR(10) NOT NULL,
    State_Code VARCHAR(2),
    tot_cases INT CHECK (tot_cases >= 0),
    new_cases INT CHECK (new_cases >= 0),
    PRIMARY KEY(Date, State_Code)
);

/*COVID Deaths By State*/
DROP TABLE COVID_Deaths_By_State;
CREATE TABLE COVID_Deaths_By_State
(
    Date VARCHAR(10) NOT NULL,
    State_Code VARCHAR(2),
    tot_deaths INT CHECK (tot_deaths >= 0),
    new_deaths INT CHECK (new_deaths >= 0),
    PRIMARY KEY(Date, State_Code)
);

/* ADD THIS BASED ON NEW TABLE */
/*COVID Cases By Race*/

/* FIX THIS BASED ON NEW TABLE */
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

/*COVID Deaths By Age and Gender*/
/*Number of Patients*/
DROP TABLE COVID_Deaths_By_Age_Gender;
CREATE TABLE COVID_Deaths_By_Age_Gender(
    Date VARCHAR(10) NOT NULL,
    Sex VARCHAR(20),
    Age_Group VARCHAR(20),
    Total_Deaths INT CHECK (Total_Deaths >= 0),
    COVID_19_Deaths INT CHECK (COVID_19_Death >= 0),
    PRIMARY KEY(Date, Sex, Age_Group)
);

/* this is not a table, need to be a subquery */
/**COVID Cases By Age*/
/*Number of Patients*/
DROP TABLE COVID_By_Age;
CREATE TABLE COVID_By_Age(
    Year INT,
    Week_Number INT NOT NULL,
    Yrs_0_to_4 INT CHECK (Yrs_0_to_4 >= 0),
    Yrs_5_to_17 INT CHECK (Yrs_0_to_4 >= 0),
    Yrs_18_to_49 INT CHECK (Yrs_18_to_49 >= 0),
    Yrs_50_to_64 INT CHECK (Yrs_50_to_64 >= 0),
    Yrs_65_plus INT CHECK (Yrs_65_plus >= 0),
    PRIMARY KEY(Week_Number)
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
DROP TABLE COVID_Tests_By_Race;
CREATE TABLE COVID_Tests_By_Race(
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

/*COVID Hospitalizations by Age*/
DROP TABLE COVID_Hospitalizations_By_Age;
CREATE TABLE COVID_Hospitalizations_By_Age(
    YEAR VARCHAR(10),
    WEEK VARCHAR(10),
    Yrs_0_to_4 INT CHECK (Yrs_0_to_4 >= 0),
    Yrs_5_to_17 INT CHECK (Yrs_0_to_4 >= 0),
    Yrs_18_to_49 INT CHECK (Yrs_18_to_49 >= 0),
    Yrs_50_to_64 INT CHECK (Yrs_50_to_64 >= 0),
    Yrs_65_plus INT CHECK (Yrs_65_plus >= 0),
    PRIMARY KEY(YEAR, WEEK)
);

/*COVID Hospitalizations by Race*/
DROP TABLE COVID_Hospitalizations_By_Race;
CREATE TABLE COVID_Hospitalizations_By_Race(
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

/* INTERMEDIARY RELATIONS */

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

/*State Code to State Name*/
DROP TABLE State_Code;
CREATE TABLE State_Code(
    State_Code VARCHAR(10),
    State_Name VARCHAR(20),
    PRIMARY KEY(State)
);

/*State Name to Region*/
DROP TABLE State_Region;
CREATE TABLE State_Region(
    State_Region VARCHAR(10),
    State_Name VARCHAR(20),
    PRIMARY KEY(State)
);

/*State Has Industry*/
DROP TABLE State_Has_Industry;
CREATE TABLE State_Has_Industry(
    State_Name VARCHAR(20),
    Industry_Name VARCHAR(20),
    PRIMARY KEY(State_Name, Industry_Name)
);

/*Industry Category, Nonfarm divided into Private and Government*/
DROP TABLE Industry_Category;
CREATE TABLE Industry_Category(
    Industry_Name VARCHAR(20),
    Industry_Category VARCHAR(20),
    PRIMARY KEY(Industry_Name)
);
