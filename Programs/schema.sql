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