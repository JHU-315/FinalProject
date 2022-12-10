/* DASHBOARD Grafana Dashboards/COVID and Unemployment Rate By Region-1670103250723.sql*/
/*No title found*/
/*No targets found*/
/*Cases, Tests, Hospitalizations, and Deaths For $Racial_Group Populations	 PANEL */
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

/*Cases, Tests, Hospitalizations, and Deaths for $Racial_Group	 PANEL */
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

/*$States Demographic Breakdown 	 PANEL */
SELECT * FROM  US_Population_Racial_Percentages WHERE '$States' = State

/*Percentage of Democrats That Idenitfy as Given Racial Group*/
SELECT $Racial_Group/100 As 'Percentage of Democrats that Identify as $Racial_Group' FROM State_Political_Composition_By_Race WHERE '$States'  = State_Name

/*Population Political Composition 	 PANEL */
SELECT
  Republican_lean_rep,
  Democrat_lean_Dem
FROM
  State_Political_Composition
WHERE
  State_Name = "$States"

/*$Variant Peak Statistics,	 PANEL */

/*Deaths*/
SELECT
  Date,
  (
    CASE
      WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
      WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
      WHEN '$Racial_Group' = 'White' THEN Deaths_White
      WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
      WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
      WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
      WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
    END
  ) as Deaths
FROM
  (
    SELECT
      *
    FROM
      COVID_Deaths_By_Race
      JOIN State_To_Code ON COVID_Deaths_By_Race.State = State_To_Code.code
WHERE
      (
        CASE
          WHEN '$Variant' = 'Wild Type' THEN Date >= '2020-01-01'
          and Date < '2020-11-01'
          WHEN '$Variant' = 'Alpha' THEN Date >= '2020-11-01'
          and Date < '2021-06-01'
        END
      )
      AND State_Name = '$States'
    GROUP BY
      State
    ORDER BY
      Deaths_Total DESC
    LIMIT
      1
  ) as b

/*Cases*/
SELECT
  Date,
  (
    CASE
      WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
      WHEN '$Racial_Group' = 'Black' THEN Cases_Black
      WHEN '$Racial_Group' = 'White' THEN Cases_White
      WHEN '$Racial_Group' = 'Total' THEN Cases_Total
      WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
      WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
      WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
    END
  ) as Cases
FROM
  (
    SELECT
      *
    FROM
      COVID_Cases_By_Race
      JOIN State_To_Code ON COVID_Cases_By_Race.State = State_To_Code.code
WHERE
      (
        CASE
          WHEN '$Variant' = 'Wild Type' THEN Date >= '2020-01-01'
          and Date < '2020-11-01'
          WHEN '$Variant' = 'Alpha' THEN Date >= '2020-11-01'
          and Date < '2021-06-01'
        END
      )
      AND State_Name = '$States'
    GROUP BY
      State
    ORDER BY
      Cases_Total DESC
    LIMIT
      1
  ) as b

/*Hospitlizations*/
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

/*Racial Comparison of Cases Cumulative	 PANEL */
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

/*Racial Comparison of Deaths Cumulative	 PANEL */
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

/*$Variant Type Peak Statistics for $Racial_Group	 PANEL */

/*Deaths*/
SELECT
  Date,
  (
    CASE
      WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
      WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
      WHEN '$Racial_Group' = 'White' THEN Deaths_White
      WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
      WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
      WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
      WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
    END
  ) as Deaths
FROM
  (
    SELECT
      *
    FROM
      COVID_Deaths_By_Race
      JOIN State_To_Code ON COVID_Deaths_By_Race.State = State_To_Code.code
    WHERE
      (
        CASE
          WHEN '$Variant' = 'Wild Type' THEN Date >= '2020-01-01'
          and Date < '2020-11-01'
          WHEN '$Variant' = 'Alpha' THEN Date >= '2020-11-01'
          and Date < '2021-06-01'
        END
      )
      AND State_Name = '$States'
    GROUP BY
      State
    ORDER BY
      Deaths_Total DESC
    LIMIT
      1
  ) as b

/*Cases*/
SELECT
  Date,
  (
    CASE
      WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
      WHEN '$Racial_Group' = 'Black' THEN Cases_Black
      WHEN '$Racial_Group' = 'White' THEN Cases_White
      WHEN '$Racial_Group' = 'Total' THEN Cases_Total
      WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
      WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
      WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
    END
  ) as Cases
FROM
  (
    SELECT
      *
    FROM
      COVID_Cases_By_Race
      JOIN State_To_Code ON COVID_Cases_By_Race.State = State_To_Code.code
    WHERE
      (
        CASE
          WHEN '$Variant' = 'Wild Type' THEN Date >= '2020-01-01'
          and Date < '2020-11-01'
          WHEN '$Variant' = 'Alpha' THEN Date >= '2020-11-01'
          and Date < '2021-06-01'
        END
      )
    GROUP BY
      State
    ORDER BY
      Cases_Total DESC
    LIMIT
      1
  ) as b

/*Hospitalizations*/
SELECT
  Date,
  (
    CASE
      WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
      WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
      WHEN '$Racial_Group' = 'White' THEN Hosp_White
      WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
      WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
      WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
      WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
    END
  ) as Hospitalizations
FROM
  (
    SELECT
      *
    FROM
      COVID_Hospitalizations_By_Race
      JOIN State_To_Code ON COVID_Hospitalizations_By_Race.State = State_To_Code.code
WHERE
      (
        CASE
          WHEN '$Variant' = 'Wild Type' THEN Date >= '2020-01-01'
          and Date < '2020-11-01'
          WHEN '$Variant' = 'Alpha' THEN Date >= '2020-11-01'
          and Date < '2021-06-01'
        END
      )
    GROUP BY
      State
    ORDER BY
      Hosp_Total DESC
    LIMIT
      1
  ) as b

