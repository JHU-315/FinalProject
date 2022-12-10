/*Minimum white unemployment rate*/

CREATE or REPLACE VIEW MinWhiteUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(White) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

/*Max cases date across - variant independent*/
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

/*Totals By State for Cases By Race - summed due to getting national total from states*/
CREATE or REPLACE VIEW COVID_Cases_By_Race_Totals AS
SELECT State, SUM(Cases_Total) Cases_Total, SUM(Cases_White) Cases_White, SUM(Cases_Black) Cases_Black, SUM(Cases_Latinx) Cases_Latinx, SUM(Cases_Asian) Cases_Asian, SUM(Cases_AIAN) Cases_AIAN, SUM(Cases_NHPI) Cases_NHPI, SUM(Cases_Multiracial) Cases_Multiracial, SUM(Cases_Other) Cases_Other, SUM(Cases_Unknown) Cases_Unknown
FROM COVID_Cases_By_Race

/*Hospitalizations - summed due to getting national total from states*/
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

/*Hospitalizations - summed due to getting national total from states*/
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

/*Hospitalizations - summed due to getting national total from states*/
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



/*Deaths*/
CREATE OR REPLACE VIEW MaxDeathsDelta AS 
SELECT Date, SUM(Deaths_Total) Deaths_Total, SUM(Deaths_White) Deaths_White, SUM(Deaths_Black) Deaths_Black, SUM(Deaths_Latinx) Deaths_Latinx, SUM(Deaths_Asian) Deaths_Asian, SUM(Deaths_AIAN) Deaths_AIAN, SUM(Deaths_NHPI) Deaths_NHPI, SUM(Deaths_Multiracial) Deaths_Multiracial, SUM(Deaths_Other) Deaths_Other, SUM(Deaths_Unknown) Deaths_Unknown
FROM COVID_Deaths_By_Race WHERE Date >= '2021-06-01' and Date < '2021-11-01' GROUP BY Date;

/*Hospitalizations - summed due to getting national total from states*/
CREATE OR REPLACE VIEW MaxHospDelta AS
SELECT Date, SUM(Hosp_Total) Hosp_Total, SUM(Hosp_White) Hosp_White, SUM(Hosp_Black) Hosp_Black, SUM(Hosp_Latinx) Hosp_Latinx, SUM(Hosp_Asian) Hosp_Asian, SUM(Hosp_AIAN) Hosp_AIAN, SUM(Hosp_NHPI) Hosp_NHPI, SUM(Hosp_Multiracial) Hosp_Multiracial, SUM(Hosp_Other) Hosp_Other, SUM(Hosp_Unknown) Hosp_Unknown
FROM COVID_Hospitalizations_By_Race WHERE Date >= '2021-06-01' and Date < '2021-11-01' GROUP BY Date;


/*Deaths for  group General*/
CREATE OR REPLACE VIEW DeathsDelta AS 
SELECT Date, SUM(Total_Deaths) as Total_Deaths  FROM COVID_Deaths_By_Age_Gender 
WHERE Date >= '2021-06-01' and Date < '2021-11-01'
GROUP BY DATE ORDER BY Total_Deaths DESC;

/*Cases for group general */
CREATE OR REPLACE VIEW CasesDelta AS 
SELECT Date, SUM(Total_Count) as Total_Count  FROM COVID_Cases_By_Gender   
WHERE Date >= '2021-06-01' and Date < '2021-11-01'
GROUP BY DATE ORDER BY Total_Count DESC;

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


/*Cases for Racial Group - summed due to getting national total from states*/
CREATE OR REPLACE VIEW MaxCasesOmicron AS 
SELECT Date, SUM(Cases_Total) Cases_Total, SUM(Cases_White) Cases_White, SUM(Cases_Black) Cases_Black, SUM(Cases_Latinx) Cases_Latinx, SUM(Cases_Asian) Cases_Asian, SUM(Cases_AIAN) Cases_AIAN, SUM(Cases_NHPI) Cases_NHPI, SUM(Cases_Multiracial) Cases_Multiracial, SUM(Cases_Other) Cases_Other, SUM(Cases_Unknown) Cases_Unknown
FROM COVID_Cases_By_Race WHERE Date >= '2021-11-01' GROUP BY Date;

/*Deaths- summed due to getting national total from states*/
CREATE OR REPLACE VIEW MaxDeathsOmicron AS 
SELECT Date, SUM(Deaths_Total) Deaths_Total, SUM(Deaths_White) Deaths_White, SUM(Deaths_Black) Deaths_Black, SUM(Deaths_Latinx) Deaths_Latinx, SUM(Deaths_Asian) Deaths_Asian, SUM(Deaths_AIAN) Deaths_AIAN, SUM(Deaths_NHPI) Deaths_NHPI, SUM(Deaths_Multiracial) Deaths_Multiracial, SUM(Deaths_Other) Deaths_Other, SUM(Deaths_Unknown) Deaths_Unknown
FROM COVID_Deaths_By_Race WHERE Date >= '2021-11-01' GROUP BY Date;

/*Hospitalizations - summed due to getting national total from states*/
CREATE OR REPLACE VIEW MaxHospOmicron AS
SELECT Date, SUM(Hosp_Total) Hosp_Total, SUM(Hosp_White) Hosp_White, SUM(Hosp_Black) Hosp_Black, SUM(Hosp_Latinx) Hosp_Latinx, SUM(Hosp_Asian) Hosp_Asian, SUM(Hosp_AIAN) Hosp_AIAN, SUM(Hosp_NHPI) Hosp_NHPI, SUM(Hosp_Multiracial) Hosp_Multiracial, SUM(Hosp_Other) Hosp_Other, SUM(Hosp_Unknown) Hosp_Unknown
FROM COVID_Hospitalizations_By_Race WHERE Date >= '2021-11-01' GROUP BY Date;


/*Deaths for  group General*/
CREATE OR REPLACE VIEW DeathsOmicron AS 
SELECT Date, SUM(Total_Deaths) as Total_Deaths  FROM COVID_Deaths_By_Age_Gender 
 WHERE Date >= '2021-11-01'
GROUP BY DATE ORDER BY Total_Deaths DESC;

/*Cases for group general */
CREATE OR REPLACE VIEW CasesOmicron AS 
SELECT Date, SUM(Total_Count) as Total_Count  FROM COVID_Cases_By_Gender   
 WHERE Date >= '2021-11-01'
GROUP BY DATE ORDER BY Total_Count DESC;

CREATE OR REPLACE VIEW HospOmicron AS
SELECT * FROM COVID_Hospitalizations_By_Race  WHERE Date >= '2021-11-01';

/*END OF VARIANTS*/

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

/*US Population Racial Makeup Percentage*/
CREATE OR REPLACE VIEW US_Population_Racial_Percentages AS
SELECT State,
WhiteTotal/Total as White,
BlackTotal/Total as Black,
HawaiianTotal/Total as NHPI,
AsianTotal/Total as Asian,
IndianTotal/Total as AIAN,
OtherTotal/Total AS Latinx
FROM US_Population_Racial 

/*US Population Racial for each group as a percentage of total cases*/
CREATE OR REPLACE VIEW COVID_Cases_By_Race_Per AS 
SELECT State,
	Cases_White/Cases_Total AS Per_White,
	Cases_Black/Cases_Total AS Per_Black,
	Cases_Asian/Cases_Total AS Per_Asian,
	Cases_Latinx/Cases_Total AS Per_Latinx,
	Cases_AIAN/Cases_Total AS Per_AIAN,
	Cases_NHPI/Cases_Total As Per_NHPI
FROM COVID_Cases_By_Race_Totals 

/*Vaccination doses delivered per state population*/
CREATE OR REPLACE VIEW Jabs_Per_Population_State AS
SELECT State, SUM(Admin_Daily)/Total FROM (
SELECT * FROM  COVID_Vaccinations JOIN State_To_Code ON COVID_Vaccinations.Location = State_To_Code.Code
) as b JOIN US_Population_Racial upr ON b.State_Name = upr.State GROUP BY State 

/*Political Affilation ------------------------------------------------*/

/*State Detereminer*/
CREATE OR REPLACE VIEW State_Political_ID AS
SELECT State_Name, IF(Republican_lean_rep < Democrat_lean_Dem,"Democratic","Republican") as Affiliations FROM State_Political_Composition;

/*Republican States Lists*/
CREATE OR REPLACE VIEW Republican_States AS
SELECT State_Name FROM State_Political_ID WHERE Affiliations = "Republican";

/*Democratic States List*/
CREATE OR REPLACE VIEW Democratic_State AS
SELECT State_Name FROM State_Political_ID WHERE Affiliations = "Democratic";

/*Insurance*/

CREATE OR REPLACE VIEW State_Loc_MeshedWithInsurance AS
SELECT *FROM Insurance NATURAL JOIN State_Locations sl 

/*Personal Income*/

CREATE OR REPLACE VIEW Personal_Income_State AS 
SELECT * FROM Personal_Income_By_State NATURAL JOIN MonthDate_To_Quarter