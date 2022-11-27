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
Create a view corresponding to all cases on a given date throughout all states.
*/

CREATE or REPLACE VIEW COVID_Cases AS
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
Create a view corresponding to the COVID Wild Type peak, i.e. the corresponding month where the total number cases was highest within the time period where the Wild Type variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseWT AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2020-01-01' and Date < '2020-11-01') c1
WHERE c1.mx = c2.Cases_Total;

/*Cases for Racial Group*/
CREATE OR REPLACE VIEW MaxCasesWT AS 
SELECT *  FROM COVID_Cases_By_Race WHERE Date >= '2020-01-01' and Date < '2020-11-01' ORDER BY Cases_Total DEC LIMIT 1;

/*Deaths*/
CREATE OR REPLACE VIEW MaxDeathsWT AS 
SELECT *  FROM COVID_Deaths_By_Race WHERE Date >= '2020-01-01' and Date < '2020-11-01' ORDER BY Deaths_Total DESC LIMIT 1;

/*Hospitalizations*/
CREATE OR REPLACE VIEW MaxHospWT AS
SELECT *  FROM COVID_Hospitalizations_By_Race WHERE Date >= '2020-01-01' and Date < '2020-11-01' ORDER BY Hosp_Total DESC LIMIT 1;

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
Create a view corresponding to the COVID Alpha peak, i.e. the corresponding month where the total number cases was highest within the time period where the Alpha variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseAlpha AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2020-11-01' and Date < '2021-06-01') c1
WHERE c1.mx = c2.Cases_Total;


/*Cases for Racial Group*/
CREATE OR REPLACE VIEW MaxCasesAlpha AS 
SELECT *  FROM COVID_Cases_By_Race ccbr WHERE Date >= '2020-11-01' and Date < '2021-06-01' ORDER BY Cases_Total DESC LIMIT 1;

/*Deaths*/
CREATE OR REPLACE VIEW MaxDeathsAlpha AS 
SELECT *  FROM COVID_Deaths_By_Race WHERE Date >= '2020-11-01' and Date < '2021-06-01' ORDER BY Deaths_Total DESC LIMIT 1;

/*Hospitalizations*/
CREATE OR REPLACE VIEW MaxHospAlpha AS
SELECT *  FROM COVID_Hospitalizations_By_Race WHERE Date >= '2020-11-01' and Date < '2021-06-01' ORDER BY Hosp_Total DESC LIMIT 1;

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
Create a view corresponding to the COVID Delta peak, i.e. the corresponding month where the total number cases was highest within the time period where the Delta variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseDelta AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2021-06-01' and Date < '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total;

/*Deaths for racial group General*/
CREATE OR REPLACE View MaxDeathsDeltaGeneral AS
SELECT * FROM COVID_Deaths WHERE Date >= '2021-06-01' and Date < '2021-11-01' ORDER BY Deaths_Total DESC LIMIT 1;

/*Cases for Racial Group*/
CREATE OR REPLACE VIEW MaxCasesDelta AS 
SELECT *  FROM COVID_Cases_By_Race ccbr WHERE Date >= '2021-06-01' and Date < '2021-11-01' ORDER BY Cases_Total DESC LIMIT 1;

/*Deaths*/
CREATE OR REPLACE VIEW MaxDeathsDelta AS 
SELECT *  FROM COVID_Deaths_By_Race WHERE Date >= '2021-06-01' and Date < '2021-11-01' ORDER BY Deaths_Total DESC LIMIT 1;

/*Hospitalizations*/
CREATE OR REPLACE VIEW MaxHospDelta AS
SELECT *  FROM COVID_Hospitalizations_By_Race WHERE Date >= '2021-06-01' and Date < '2021-11-01' ORDER BY Hosp_Total DESC LIMIT 1;

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
Create a view corresponding to the COVID Omicron peak, i.e. the corresponding month where the total number cases was highest within the time period where the Omicron variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseOmicron AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(COVID_Cases.Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total;

/*Deaths*/
CREATE OR REPLACE VIEW MaxDeathsOmicron AS 
SELECT Date, Deaths_Total  FROM COVID_Deaths WHERE Date >= '2021-11-01' ORDER BY Deaths_Total DESC LIMIT 1;

/*Hospitalizations*/
CREATE OR REPLACE VIEW MaxHospOmicron AS
SELECT Date, Hosp_Total FROM COVID_Hospitalizations_National WHERE Date >= '2021-11-01' ORDER BY Hosp_Total DESC LIMIT 1


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


CREATE OR REPLACE VIEW COVID_Cases_By_Race_Per AS 
SELECT State,
	Cases_White/Cases_Total AS Per_White,
	Cases_Black/Cases_Total AS Per_Black,
	Cases_Asian/Cases_Total AS Per_Asian,
	Cases_Latinx/Cases_Total AS Per_Latinx,
	Cases_AIAN/Cases_Total AS Per_AIAN,
	Cases_NHPI/Cases_Total As Per_NHPI
FROM COVID_Cases_By_Race_Totals 