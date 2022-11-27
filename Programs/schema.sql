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
);

/* employment level by age 
Date is in month format */
DROP TABLE Employment_Level_By_Age;
CREATE TABLE Employment_Level_By_Age (
    Date DATE NOT NULL,
    Age_Group VARCHAR(20),
    Employment_Level INT,
    PRIMARY KEY(Date, Age_Group)
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

/* Real Gross Domestic Product, Billions of chained (2012) dollars */
DROP TABLE GDP_National;
CREATE TABLE GDP_National
(
    Quarter VARCHAR(6) NOT NULL,
    Gross_Domestic_Product FLOAT(8),
    PRIMARY KEY(Quarter)
);

/*Real Gross Domestic Product By Industry, Billions of chained (2012) dollars*/
DROP TABLE GDP_By_Industry;
CREATE TABLE GDP_By_Industry
(
    Quarter VARCHAR(6) NOT NULL,
    Total_All_Industries FLOAT(8),
    Total_Private FLOAT(8),
    Agriculture FLOAT(8),
    Mining FLOAT(8), 
    Utilities FLOAT(8),
    Construction FLOAT(8), 
    Manufacturing FLOAT(8), 
    Wholesale_Trade FLOAT(8), 
    Retail_Trade FLOAT(8), 
    Transportation_and_Warehousing FLOAT(8), 
    Information FLOAT(8), 
    Financial_Activities FLOAT(8), 
    Professional_and_Business_Services FLOAT(8),
    Education_and_Health_Services FLOAT(8),
    Leisure_and_Hospitality FLOAT(8),
    Other_Services FLOAT(8),
    Total_Government FLOAT(8), 
    Federal_Government FLOAT(8),
    State_Local_Government FLOAT(8), 
    PRIMARY KEY(Quarter)
);

/* Real Gross Domestic Product by Quarter per State in billions of dollars */
DROP TABLE GDP_By_State;
CREATE TABLE GDP_By_State(
    Quarter VARCHAR(6) NOT NULL,
    State VARCHAR(20) NOT NULL,
    Gross_Domestic_Product FLOAT(10),
    PRIMARY KEY(Quarter, State)
);

/* Personal Income by Quarter per State in billions of dollars */
DROP TABLE Personal_Income_By_State;
CREATE TABLE Personal_Income_By_State(
    Quarter VARCHAR(6) NOT NULL,
    State VARCHAR(20) NOT NULL,
    Personal_Income FLOAT(4),
    PRIMARY KEY(Quarter, State)
);

/* Personal Income by Month for Entire Nation in billions of dollars*/
DROP TABLE Personal_Income_National;
CREATE TABLE Personal_Income_National(
    Date DATE NOT NULL UNIQUE,
    Personal_Income FLOAT(8), 
    Personal_Saving FLOAT(8),
    PRIMARY KEY(Date)
);

/*Consumer Prices*/
/*12 month percent change*/
DROP TABLE Consumer_Prices;
CREATE TABLE Consumer_Prices(
    Date DATE NOT NULL,
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
    PRIMARY KEY(Date)
);

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
    PRIMARY KEY(Date, State)
);

/*COVID Deaths By State*/
DROP TABLE COVID_Deaths_By_State;
CREATE TABLE COVID_Deaths_By_State
(
    Date DATE NOT NULL,
    State_Code VARCHAR(2),
    tot_deaths INT CHECK (tot_deaths >= 0),
    new_deaths INT CHECK (new_deaths >= 0),
    PRIMARY KEY(Date, State_Code)
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
    PRIMARY KEY(Date, State)
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
    PRIMARY KEY(Date, Condition_Group,Age_Group)
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
    PRIMARY KEY(Date, State) 
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
    PRIMARY KEY(Date, State)
);

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
    State_Code VARCHAR(2),
    State VARCHAR(20),
    PRIMARY KEY(State)
);

/*State Name to Region*/
DROP TABLE State_To_Region;
CREATE TABLE State_To_Region(
    State VARCHAR(20),
    Region VARCHAR(10),
    PRIMARY KEY(State)
);

/*State Has Industry*/
DROP TABLE State_Has_Industry;
CREATE TABLE State_Has_Industry(
    State VARCHAR(20),
    Industry_Name VARCHAR(20),
    PRIMARY KEY(State, Industry_Name)
);

/*Industry Category, Nonfarm divided into Private and Government*/
DROP TABLE Industry_Category;
CREATE TABLE Industry_Category(
    Industry_Name VARCHAR(20),
    Industry_Category VARCHAR(20),
    PRIMARY KEY(Industry_Name)
);
