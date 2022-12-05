CREATE or REPLACE VIEW MinWhiteUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(White) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

CREATE or REPLACE VIEW MaxCaseDate AS 
SELECT c2.Date
FROM COVID_Cases_By_Race c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_By_Race) c1
WHERE c1.mx = c2.Cases_Total;

/*
Find the date corresponding to the min total unemployment rate through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Total) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

/*
Create a view corresponding to all cases on a given date (weekly data) throughout all states.
*/

CREATE or REPLACE VIEW COVID_Cases_Weekly AS
SELECT Date, SUM(new_cases) Cases_Total
FROM COVID_Cases_By_State
GROUP BY Date;

/*Create a view for all tests given throughout all states*/
CREATE or REPLACE VIEW COVID_Tests AS
SELECT Date, SUM(Tests_Total) Tests_Total
FROM COVID_Test_By_Race
GROUP BY Date;

/*Totals By State for Cases By Race*/
CREATE or REPLACE VIEW COVID_Cases_By_Race_Totals AS
SELECT State, SUM(Cases_Total) Cases_Total, SUM(Cases_White) Cases_White, SUM(Cases_Black) Cases_Black, SUM(Cases_Latinx) Cases_Latinx, SUM(Cases_Asian) Cases_Asian, SUM(Cases_AIAN) Cases_AIAN, SUM(Cases_NHPI) Cases_NHPI, SUM(Cases_Multiracial) Cases_Multiracial, SUM(Cases_Other) Cases_Other, SUM(Cases_Unknown) Cases_Unknown
FROM COVID_Cases_By_Race

CREATE OR REPLACE VIEW COVID_Hospitalizations_National AS
SELECT Date, SUM(Hosp_Total) as Hosp_Total FROM COVID_Hospitalizations_By_Race GROUP BY State

/*WILD TYPE-------------------------------------------------------*/

/*
Create a view corresponding to the COVID Wild Type peak, i.e. the corresponding week where the total number cases was highest within the time period where the Wild Type variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseWTWeekly AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases_Weekly c2, Date_To_MonthDate md,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Weekly
     WHERE Date >= '2020-01-01' and Date < '2020-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;

/*Cases for Racial Group*/
CREATE OR REPLACE VIEW MaxCasesWT AS 
SELECT Date, SUM(Cases_Total) Cases_Total, SUM(Cases_White) Cases_White, SUM(Cases_Black) Cases_Black, SUM(Cases_Latinx) Cases_Latinx, SUM(Cases_Asian) Cases_Asian, SUM(Cases_AIAN) Cases_AIAN, SUM(Cases_NHPI) Cases_NHPI, SUM(Cases_Multiracial) Cases_Multiracial, SUM(Cases_Other) Cases_Other, SUM(Cases_Unknown) Cases_Unknown
FROM COVID_Cases_By_Race WHERE Date >= '2020-01-01' and Date < '2020-11-01' GROUP BY Date;

/*Deaths*/
CREATE OR REPLACE VIEW MaxDeathsWT AS 
SELECT Date, SUM(Deaths_Total) Deaths_Total, SUM(Deaths_White) Deaths_White, SUM(Deaths_Black) Deaths_Black, SUM(Deaths_Latinx) Deaths_Latinx, SUM(Deaths_Asian) Deaths_Asian, SUM(Deaths_AIAN) Deaths_AIAN, SUM(Deaths_NHPI) Deaths_NHPI, SUM(Deaths_Multiracial) Deaths_Multiracial, SUM(Deaths_Other) Deaths_Other, SUM(Deaths_Unknown) Deaths_Unknown
FROM COVID_Deaths_By_Race WHERE Date >= '2020-01-01' and Date < '2020-11-01' GROUP BY Date;

/*Hospitalizations*/
CREATE OR REPLACE VIEW MaxHospWT AS
SELECT Date, SUM(Hosp_Total) Hosp_Total, SUM(Hosp_White) Hosp_White, SUM(Hosp_Black) Hosp_Black, SUM(Hosp_Latinx) Hosp_Latinx, SUM(Hosp_Asian) Hosp_Asian, SUM(Hosp_AIAN) Hosp_AIAN, SUM(Hosp_NHPI) Hosp_NHPI, SUM(Hosp_Multiracial) Hosp_Multiracial, SUM(Hosp_Other) Hosp_Other, SUM(Hosp_Unknown) Hosp_Unknown
FROM COVID_Hospitalizations_By_Race WHERE Date >= '2020-01-01' and Date < '2020-11-01' GROUP BY Date;

/*Deaths Over time*/
CREATE OR REPLACE VIEW DeathsWT AS 
SELECT * FROM COVID_Deaths_By_Race WHERE Date >= '2020-01-01' and Date < '2020-11-01';

/*Hospitalizations Over Time*/
CREATE OR REPLACE VIEW HospWT AS
SELECT * FROM COVID_Hospitalizations_By_Race WHERE Date >= '2020-01-01' and Date < '2020-11-01';

/*Cases Over Time*/
CREATE OR REPLACE VIEW CasesWT AS
SELECT * FROM COVID_Cases_By_Race WHERE Date >= '2020-01-01' and Date < '2020-11-01';


/*ALPHA VARIANT-------------------------------------------------------*/

/*
Create a view corresponding to the COVID Alpha peak, i.e. the corresponding week where the total number cases was highest within the time period where the Alpha variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseAlphaWeekly AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases_Weekly c2, Date_To_MonthDate md,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Weekly
     WHERE Date >= '2020-11-01' and Date < '2021-06-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;


/*Cases for Racial Group*/
CREATE OR REPLACE VIEW MaxCasesAlpha AS 
SELECT Date, SUM(Cases_Total) Cases_Total, SUM(Cases_White) Cases_White, SUM(Cases_Black) Cases_Black, SUM(Cases_Latinx) Cases_Latinx, SUM(Cases_Asian) Cases_Asian, SUM(Cases_AIAN) Cases_AIAN, SUM(Cases_NHPI) Cases_NHPI, SUM(Cases_Multiracial) Cases_Multiracial, SUM(Cases_Other) Cases_Other, SUM(Cases_Unknown) Cases_Unknown
FROM COVID_Cases_By_Race WHERE Date >= '2020-11-01' and Date < '2021-06-01' GROUP BY Date;

/*Deaths*/
CREATE OR REPLACE VIEW MaxDeathsAlpha AS 
SELECT Date, SUM(Deaths_Total) Deaths_Total, SUM(Deaths_White) Deaths_White, SUM(Deaths_Black) Deaths_Black, SUM(Deaths_Latinx) Deaths_Latinx, SUM(Deaths_Asian) Deaths_Asian, SUM(Deaths_AIAN) Deaths_AIAN, SUM(Deaths_NHPI) Deaths_NHPI, SUM(Deaths_Multiracial) Deaths_Multiracial, SUM(Deaths_Other) Deaths_Other, SUM(Deaths_Unknown) Deaths_Unknown
FROM COVID_Deaths_By_Race WHERE Date >= '2020-11-01' and Date < '2021-06-01' GROUP BY Date;

/*Hospitalizations*/
CREATE OR REPLACE VIEW MaxHospAlpha AS
SELECT Date, SUM(Hosp_Total) Hosp_Total, SUM(Hosp_White) Hosp_White, SUM(Hosp_Black) Hosp_Black, SUM(Hosp_Latinx) Hosp_Latinx, SUM(Hosp_Asian) Hosp_Asian, SUM(Hosp_AIAN) Hosp_AIAN, SUM(Hosp_NHPI) Hosp_NHPI, SUM(Hosp_Multiracial) Hosp_Multiracial, SUM(Hosp_Other) Hosp_Other, SUM(Hosp_Unknown) Hosp_Unknown
FROM COVID_Hospitalizations_By_Race WHERE Date >= '2020-11-01' and Date < '2021-06-01' GROUP BY Date;

/*Deaths Over time*/
CREATE OR REPLACE VIEW DeathsWT AS 
SELECT * FROM COVID_Deaths_By_Race WHERE Date >= '2020-01-01' and Date < '2020-11-01';

/*Hospitalizations Over Time*/
CREATE OR REPLACE VIEW HospWT AS
SELECT * FROM COVID_Hospitalizations_By_Race WHERE Date >= '2020-01-01' and Date < '2020-11-01';

/*Deaths Over time*/
CREATE OR REPLACE VIEW DeathsAlpha AS 
SELECT * FROM COVID_Deaths_By_Race WHERE Date >= '2020-11-01' and Date < '2021-06-01';

/*Hospitalizations Over Time*/
CREATE OR REPLACE VIEW HospAlpha AS
SELECT * FROM COVID_Hospitalizations_By_Race WHERE Date >= '2020-11-01' and Date < '2021-06-01';

/*Cases Over Time*/
CREATE OR REPLACE VIEW CasesAlpha AS
SELECT * FROM COVID_Cases_By_Race WHERE Date >= '2020-11-01' and Date < '2021-06-01';
/*DELTA VARIANT-------------------------------------------------------*/

/*
Create a view corresponding to the COVID Delta peak, i.e. the corresponding week where the total number cases was highest within the time period where the Delta variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseDeltaWeekly AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases_Weekly c2, Date_To_MonthDate md,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Weekly
     WHERE Date >= '2021-06-01' and Date < '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;

/*Deaths for racial group General*/
CREATE OR REPLACE View MaxDeathsDeltaGeneral AS
SELECT * FROM COVID_Deaths WHERE Date >= '2021-06-01' and Date < '2021-11-01' ORDER BY Deaths_Total DESC LIMIT 1;

/*Cases for Racial Group*/
CREATE OR REPLACE VIEW MaxCasesDelta AS 
SELECT Date, SUM(Cases_Total) Cases_Total, SUM(Cases_White) Cases_White, SUM(Cases_Black) Cases_Black, SUM(Cases_Latinx) Cases_Latinx, SUM(Cases_Asian) Cases_Asian, SUM(Cases_AIAN) Cases_AIAN, SUM(Cases_NHPI) Cases_NHPI, SUM(Cases_Multiracial) Cases_Multiracial, SUM(Cases_Other) Cases_Other, SUM(Cases_Unknown) Cases_Unknown
FROM COVID_Cases_By_Race WHERE Date >= '2021-06-01' and Date < '2021-11-01' GROUP BY Date;

/*Deaths*/
CREATE OR REPLACE VIEW MaxDeathsDelta AS 
SELECT Date, SUM(Deaths_Total) Deaths_Total, SUM(Deaths_White) Deaths_White, SUM(Deaths_Black) Deaths_Black, SUM(Deaths_Latinx) Deaths_Latinx, SUM(Deaths_Asian) Deaths_Asian, SUM(Deaths_AIAN) Deaths_AIAN, SUM(Deaths_NHPI) Deaths_NHPI, SUM(Deaths_Multiracial) Deaths_Multiracial, SUM(Deaths_Other) Deaths_Other, SUM(Deaths_Unknown) Deaths_Unknown
FROM COVID_Deaths_By_Race WHERE Date >= '2021-06-01' and Date < '2021-11-01' GROUP BY Date;

/*Hospitalizations*/
CREATE OR REPLACE VIEW MaxHospDelta AS
SELECT Date, SUM(Hosp_Total) Hosp_Total, SUM(Hosp_White) Hosp_White, SUM(Hosp_Black) Hosp_Black, SUM(Hosp_Latinx) Hosp_Latinx, SUM(Hosp_Asian) Hosp_Asian, SUM(Hosp_AIAN) Hosp_AIAN, SUM(Hosp_NHPI) Hosp_NHPI, SUM(Hosp_Multiracial) Hosp_Multiracial, SUM(Hosp_Other) Hosp_Other, SUM(Hosp_Unknown) Hosp_Unknown
FROM COVID_Hospitalizations_By_Race WHERE Date >= '2021-06-01' and Date < '2021-11-01' GROUP BY Date;

/*Deaths Over time*/
CREATE OR REPLACE VIEW DeathsDelta AS 
SELECT * FROM COVID_Deaths_By_Race WHERE Date >= '2021-06-01' and Date < '2021-11-01';

/*Hospitalizations Over Time*/
CREATE OR REPLACE VIEW HospDelta AS
SELECT * FROM COVID_Hospitalizations_By_Race WHERE Date >= '2021-06-01' and Date < '2021-11-01';

/*Cases Over Time*/
CREATE OR REPLACE VIEW CasesDelta AS
SELECT * FROM COVID_Cases_By_Race WHERE Date >= '2021-06-01' and Date < '2021-11-01';

/*OMICRON VARIANT-------------------------------------------------------*/

/*
Create a view corresponding to the COVID Omicron peak, i.e. the corresponding week where the total number cases was highest within the time period where the Omicron variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseOmicronWeekly AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases_Weekly c2, Date_To_MonthDate md, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Weekly
     WHERE Date >= '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;


/*Cases for Racial Group*/
CREATE OR REPLACE VIEW MaxCasesOmicron AS 
SELECT Date, SUM(Cases_Total) Cases_Total, SUM(Cases_White) Cases_White, SUM(Cases_Black) Cases_Black, SUM(Cases_Latinx) Cases_Latinx, SUM(Cases_Asian) Cases_Asian, SUM(Cases_AIAN) Cases_AIAN, SUM(Cases_NHPI) Cases_NHPI, SUM(Cases_Multiracial) Cases_Multiracial, SUM(Cases_Other) Cases_Other, SUM(Cases_Unknown) Cases_Unknown
FROM COVID_Cases_By_Race WHERE Date >= '2021-11-01' GROUP BY Date;

/*Deaths*/
CREATE OR REPLACE VIEW MaxDeathsOmicron AS 
SELECT Date, SUM(Deaths_Total) Deaths_Total, SUM(Deaths_White) Deaths_White, SUM(Deaths_Black) Deaths_Black, SUM(Deaths_Latinx) Deaths_Latinx, SUM(Deaths_Asian) Deaths_Asian, SUM(Deaths_AIAN) Deaths_AIAN, SUM(Deaths_NHPI) Deaths_NHPI, SUM(Deaths_Multiracial) Deaths_Multiracial, SUM(Deaths_Other) Deaths_Other, SUM(Deaths_Unknown) Deaths_Unknown
FROM COVID_Deaths_By_Race WHERE Date >= '2021-11-01' GROUP BY Date;

/*Hospitalizations*/
CREATE OR REPLACE VIEW MaxHospOmicron AS
SELECT Date, SUM(Hosp_Total) Hosp_Total, SUM(Hosp_White) Hosp_White, SUM(Hosp_Black) Hosp_Black, SUM(Hosp_Latinx) Hosp_Latinx, SUM(Hosp_Asian) Hosp_Asian, SUM(Hosp_AIAN) Hosp_AIAN, SUM(Hosp_NHPI) Hosp_NHPI, SUM(Hosp_Multiracial) Hosp_Multiracial, SUM(Hosp_Other) Hosp_Other, SUM(Hosp_Unknown) Hosp_Unknown
FROM COVID_Hospitalizations_By_Race WHERE Date >= '2021-11-01' GROUP BY Date;


/*link up cases with state name*/
CREATE OR REPLACE VIEW COVID_Cases_By_With_State_Name AS 
SELECT * FROM jhu_315_final_project.COVID_Cases_By_Race JOIN jhu_315_final_project.State_To_Code 
ON jhu_315_final_project.State_To_Code.code = jhu_315_final_project.COVID_Cases_By_Race.State

/*link up deaths with state name*/
CREATE OR REPLACE VIEW COVID_Deaths_By_With_State_Name AS 
SELECT * FROM jhu_315_final_project.COVID_Deaths_By_Race JOIN jhu_315_final_project.State_To_Code 
ON jhu_315_final_project.State_To_Code.code = jhu_315_final_project.COVID_Deaths_By_Race.State

/*link up test with state name*/
CREATE OR REPLACE VIEW COVID_Test_By_With_State_Name AS 
SELECT * FROM jhu_315_final_project.COVID_Test_By_Race JOIN jhu_315_final_project.State_To_Code 
ON jhu_315_final_project.State_To_Code.code = jhu_315_final_project.COVID_Test_By_Race.State

/*link up hospitalizations with state name*/
CREATE OR REPLACE VIEW COVID_Hospitalizations_By_With_State_Name AS 
SELECT * FROM jhu_315_final_project.COVID_Hospitalizations_By_Race JOIN jhu_315_final_project.State_To_Code 
ON jhu_315_final_project.State_To_Code.code = jhu_315_final_project.COVID_Hospitalizations_By_Race.State

/*US Population Racially Percentage*/
CREATE OR REPLACE VIEW US_Population_Racial_Percentages AS
SELECT State,
WhiteTotal/Total as White,
BlackTotal/Total as Black,
HawaiianTotal/Total as NHPI,
AsianTotal/Total as Asian,
IndianTotal/Total as AIAN,
OtherTotal/Total AS Latinx
FROM US_Population_Racial 

/*US Population Racial Percentage Cases*/
CREATE OR REPLACE VIEW COVID_Cases_By_Race_Per AS 
SELECT State,
	Cases_White/Cases_Total AS Per_White,
	Cases_Black/Cases_Total AS Per_Black,
	Cases_Asian/Cases_Total AS Per_Asian,
	Cases_Latinx/Cases_Total AS Per_Latinx,
	Cases_AIAN/Cases_Total AS Per_AIAN,
	Cases_NHPI/Cases_Total As Per_NHPI
FROM COVID_Cases_By_Race_Totals 

/*GENDER*/

/*Cases per variant*/
CREATE OR REPLACE VIEW COVID_Cases_By_Gender_WT AS
    SELECT State, SUM(Total_Count) AS Total_Count_WT,SUM(Male_Count) AS Male_Count_WT,SUM(Female_Count) AS Female_Count_WT FROM COVID_Cases_By_Gender
    WHERE Date >= '2020-01-01' and Date < '2020-11-01' GROUP BY State;

CREATE OR REPLACE VIEW COVID_Cases_By_Gender_Alpha AS
    SELECT State, SUM(Total_Count) AS Total_Count_Alpha,SUM(Male_Count) AS Male_Count_Alpha,SUM(Female_Count) AS Female_Count_Alpha FROM COVID_Cases_By_Gender
    WHERE Date >= '2020-11-01' and Date < '2021-06-01' GROUP BY State;

CREATE OR REPLACE VIEW COVID_Cases_By_Gender_Delta AS
    SELECT State, SUM(Total_Count) AS Total_Count_Delta,SUM(Male_Count) AS Male_Count_Delta,SUM(Female_Count) AS Female_Count_Delta FROM COVID_Cases_By_Gender
    WHERE Date >= '2021-06-01' and Date < '2021-11-01' GROUP BY State;

CREATE OR REPLACE VIEW COVID_Cases_By_Gender_Omicron AS
    SELECT State, SUM(Total_Count) AS Total_Count_Omicron,SUM(Male_Count) AS Male_Count_Omicron,SUM(Female_Count) AS Female_Count_Omicron FROM COVID_Cases_By_Gender
    WHERE Date >= '2021-11-01' GROUP BY State;

CREATE OR REPLACE VIEW COVID_Cases_By_Gender_AllVariants AS
    SELECT * FROM COVID_Cases_By_Gender_Alpha NATURAL JOIN COVID_Cases_By_Gender_WT NATURAL JOIN COVID_Cases_By_Gender_Delta NATURAL JOIN COVID_Cases_By_Gender_Omicron

/*Deaths Per Variant*/
CREATE OR REPLACE VIEW COVID_Deaths_M_By_Gender_WT AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_M_WT FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND Sex = "Male" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_F_By_Gender_WT AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_F_WT FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND Sex = "Female" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_T_By_Gender_WT AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_T_WT FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND Sex = "All Sex" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_M_By_Gender_Alpha AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_M_Alpha FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND Sex = "Male" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_F_By_Gender_Alpha AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_F_Alpha FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND Sex = "Female" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_T_By_Gender_Alpha AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_T_Alpha FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND Sex = "All Sex" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_M_By_Gender_Delta AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_M_Delta FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-06-01' and Date < '2021-11-01' AND Sex = "Male" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_F_By_Gender_Delta AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_F_Delta FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-06-01' and Date < '2021-11-01' AND Sex = "Female" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_T_By_Gender_Delta AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_T_Delta FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-06-01' and Date < '2021-11-01' AND Sex = "All Sex" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_M_By_Gender_Omicron AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_M_Omicron FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-11-01' AND Sex = "Male" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_F_By_Gender_Omicron AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_F_Omicron FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-11-01' AND Sex = "Female" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_T_By_Gender_Omicron AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_T_Omicron FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-11-01' AND Sex = "All Sex" GROUP BY Age_Group;


CREATE OR REPLACE VIEW COVID_Deaths_Age_M_Breakdown AS 
    SELECT * FROM COVID_Deaths_M_By_Gender_WT NATURAL JOIN COVID_Deaths_M_By_Gender_Alpha 
    NATURAL JOIN COVID_Deaths_M_By_Gender_Delta NATURAL JOIN COVID_Deaths_M_By_Gender_Omicron;

CREATE OR REPLACE VIEW COVID_Deaths_Age_F_Breakdown AS 
    SELECT * FROM COVID_Deaths_F_By_Gender_WT NATURAL JOIN COVID_Deaths_F_By_Gender_Alpha 
    NATURAL JOIN COVID_Deaths_F_By_Gender_Delta NATURAL JOIN COVID_Deaths_F_By_Gender_Omicron;

CREATE OR REPLACE VIEW COVID_Deaths_Age_T_Breakdown AS 
    SELECT * FROM COVID_Deaths_T_By_Gender_WT NATURAL JOIN COVID_Deaths_T_By_Gender_Alpha 
    NATURAL JOIN COVID_Deaths_T_By_Gender_Delta NATURAL JOIN COVID_Deaths_T_By_Gender_Omicron;