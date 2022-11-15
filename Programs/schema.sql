/*Unemployment Rate*/
/*Data are as a percentage for rate*/
CREATE TABLE UnemploymentRate
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
    Dec INT,
    PRIMARY KEY(YEAR)
);


/*Civillian Labor Force - No Disability 16 yrs and over*/
/*Numbers in thousands*/
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
    Dec INT,
    PRIMARY KEY(YEAR)
);

/*Civillian Labor Force - No Disability 16 yrs and over*/
/*Numbers in thousands*/
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
    Dec INT,
    PRIMARY KEY(YEAR)
);

/*Civillian Labor Force - No Disability 65 yrs and over*/
/*Numbers in thousands*/
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
    Dec INT,
    PRIMARY KEY(YEAR)
);

/*Gross Output By Industry*/
/*Percent Change in Real Gross Domestic Product*/
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
CASE TABLE COVID_Cases
(
    Date VARCHAR(10),
    GeoID VARCHAR(6),
    State VARCHAR(30),
    Cases INT,
    Cases_Avg FLOAT(4),
    Cases_Avg_100k FLOAT(4),
);

/*Consumer Prices*/
/*12 month percent change*/
CASE TABLE Consumer_Prices(
    Date VARCHAR(10),
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

/*COVID Cases By Race*/
/*Data Information Indicated by Percentage*/
CREATE TABLE COVID_Cases_By_Race(
    Data_As_Of VARCHAR(10),
    Start_Date VARCHAR(10),
    End_Date VARCHAR(10),
    Year VARCHAR(10),
    /*May want to change year to int*/
    Month INT,
    Group VARCHAR(15),
    State VARCHAR(20),
    Indicator VARCHAR(100),
    Non_Hispanic_White INT,
    Non_Hispanic_Black INT,
    Non_Hispanic_Asian INT,
    Non_Hispanic_Native_Hawaiian_Pacific_Islander INT,
    Non_Hispanic_More_Than_One_Race INT,
    Hispanic_Or_Latino INT,
    PRIMARY KEY(Data_As_Of, Start_Date, End_Date, Year, Month, Group, Indicator)

);

/*COVID Cases By Age*/
/*Number of Patients*/
CREATE TABLE COVID_Cases_By_Age(
    Date_As_Of VARCHAR(10),
    Start_Date VARCHAR(10),
    End_Date VARCHAR(10),
    Group VARCHAR(15),
    Year INT,
    /*May want to change year to var char depending*/
    Month INT,
    State VARCHAR(20),
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
CREATE TABLE COVID_By_Age(
    Year INT,
    Week_Number Number,
    0_4_yrs INT,
    5_17_yrs INT,
    18_49_yrs INT,
    50_64_yrs INT,
    65_plus_yrs INT,
    PRIMARY KEY(Week_Number)
);

