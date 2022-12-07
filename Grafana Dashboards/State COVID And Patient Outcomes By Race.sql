/* DASHBOARD Grafana Dashboards/State COVID And Patient Outcomes By Race.sql*/

/*Cases, Tests, Hospitalizations, and Deaths Per Race Per State	 PANEL */

/*Cases*/
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Total_Cases
FROM (SELECT * FROM COVID_Cases_By_With_State_Name WHERE State_Name = '$States') as b

/*Tests*/
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Tests_Asian
WHEN '$Racial_Group' = 'Black' THEN Tests_Black
WHEN '$Racial_Group' = 'Total' THEN Tests_Total
WHEN '$Racial_Group' = 'White' THEN Tests_White
WHEN '$Racial_Group' = 'Latinx' THEN Tests_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Tests_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Tests_NHPI
END) as Total_Tests
FROM (SELECT * FROM COVID_Test_By_With_State_Name WHERE State_Name = '$States') as b

/*Deaths*/
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Total_Deaths
FROM (SELECT * FROM COVID_Deaths_By_With_State_Name WHERE State_Name = '$States') as b

/*Hospitalizations*/
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Total_Hospitalizations
FROM (SELECT * FROM COVID_Hospitalizations_By_With_State_Name WHERE State_Name = '$States') as b

/*Cases, Tests, Hospitalizations, and Deaths Per Race Per State	 PANEL */

/*Cases*/
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Total_Cases
FROM (SELECT * FROM COVID_Cases_By_With_State_Name WHERE State_Name = '$States') as b

/*Tests*/
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Tests_Asian
WHEN '$Racial_Group' = 'Black' THEN Tests_Black
WHEN '$Racial_Group' = 'Total' THEN Tests_Total
WHEN '$Racial_Group' = 'White' THEN Tests_White
WHEN '$Racial_Group' = 'Latinx' THEN Tests_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Tests_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Tests_NHPI
END) as Total_Tests
FROM (SELECT * FROM COVID_Test_By_With_State_Name WHERE State_Name = '$States') as b

/*Deaths*/
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Total_Deaths
FROM (SELECT * FROM COVID_Deaths_By_With_State_Name WHERE State_Name = '$States') as b

/*Hospitalizations*/
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Total_Hospitalizations
FROM (SELECT * FROM COVID_Hospitalizations_By_With_State_Name WHERE State_Name = '$States') as b

/*Demographic Percentage Breakdown	 PANEL */
SELECT * FROM  US_Population_Racial_Percentages WHERE '$States' = State

/*WIld Variant Peak Statistics selection by state, have to join with State_To_Code 
because of the way data is formatted PANEL */

/*Deaths*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

/*Cases*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

/*hospitalization*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

/*Alpha Peak Statistics selection by state, have to join with State_To_Code*/

/*Deaths*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01'AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

/*Cases*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

/*hospitalization*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

/*Racial Comparison of Cases Cumulative	Join with states due to the way the data is formatted PANEL */
SELECT * FROM (
SELECT 
State_Name,
SUM(Cases_Asian) AS Asian_Total,
SUM(Cases_Black) AS Black_Total,
SUM(Cases_White) AS White_Total,
SUM(Cases_Total) AS Total,
SUM(Cases_Latinx) AS LatinX_Total,
SUM(Cases_AIAN) AS AIAN_Total,
SUM(Cases_NHPI) AS NHPI_Total

FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name ) as raw WHERE '$States' = State_Name

/*Racial Comparison of Deaths Cumulative, join with states due to the way the data is formatted PANEL */
SELECT * FROM (
SELECT 
State_Name,
SUM(Deaths_Asian) AS Asian_Total,
SUM(Deaths_Black) AS Black_Total,
SUM(Deaths_White) AS White_Total,
SUM(Deaths_Total) AS Total,
SUM(Deaths_Latinx) AS LatinX_Total,
SUM(Deaths_AIAN) AS AIAN_Total,
SUM(Deaths_NHPI) AS NHPI_Total

FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name ) as raw WHERE '$States' = State_Name

/*WIld Variant Peak Statistics, joined with states because of the way the data is formatted	 PANEL */

/*deaths*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

/*Cases*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

/*hospitalization*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

/*Alpha Variant Peak Statistics, joined with states due to the way the data is formatted	 PANEL */

/*deaths*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01'AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

/*Cases*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

/*hospitalization*/
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

