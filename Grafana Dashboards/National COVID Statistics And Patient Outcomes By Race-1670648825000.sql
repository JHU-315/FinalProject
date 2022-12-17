/* DASHBOARD Grafana Dashboards/National COVID Statistics And Patient Outcomes By Race-1670648825000.sql*/

/*$Variant eg a given variant, Variant Peak Statistics 	 PANEL */
/*Peak given by maximum of a particular parameter*/
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
  COVID_Deaths_By_Race
WHERE
  (
    CASE
      WHEN '$Variant' = 'Wild Type' THEN Date >= '2020-01-01'
      and Date < '2020-11-01'
      WHEN '$Variant' = 'Alpha' THEN Date >= '2020-11-01'
      and Date < '2021-06-01'
      WHEn '$Variant' = 'Delta' THEN Date >= '2021-06-01'
      and Date < '2021-11-01'
    END
  )
ORDER BY
  Deaths DESC
LIMIT
  1

/*Cases*/
SELECT
  SUM(
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
    )
  ) as Cases
FROM
  COVID_Cases_By_Race
WHERE
(
    CASE
      WHEN '$Variant' = 'Wild Type' THEN Date >= '2020-01-01'
      and Date < '2020-11-01'
      WHEN '$Variant' = 'Alpha' THEN Date >= '2020-11-01'
      and Date < '2021-06-01'
      WHEn '$Variant' = 'Delta' THEN Date >= '2021-06-01'
      and Date < '2021-11-01'
    END
  ) ORDER BY Cases DESC LIMIT 1

/*Hospitalizations*/
SELECT
  SUM(
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
    )
  ) as Hospitalizations
FROM
  COVID_Hospitalizations_By_Race
WHERE
(
    CASE
      WHEN '$Variant' = 'Wild Type' THEN Date >= '2020-01-01'
      and Date < '2020-11-01'
      WHEN '$Variant' = 'Alpha' THEN Date >= '2020-11-01'
      and Date < '2021-06-01'      
      WHEn '$Variant' = 'Delta' THEN Date >= '2021-06-01'
      and Date < '2021-11-01'
    END
  ) ORDER BY Hospitalizations DESC LIMIT 1

/*General Delta Type Variant Peak Statistics 	 PANEL */
/*Peak Deaths*/
SELECT Total_Deaths as Peak_Deaths FROM DeathsDelta LIMIT 1

/*Peak Cases*/
SELECT mx as Peak_Cases FROM MaxCaseDelta LIMIT 1

/*Hospitalizations*/
SELECT Date,Hosp_Total as Peak_Hospitalizations FROM HospDelta LIMIT 1

/*General Omicron Type Variant Peak Statistics 	 PANEL */
/*Peak Deaths*/
SELECT Total_Deaths as Peak_Deaths FROM DeathsOmicron LIMIT 1

/*Peak Cases*/
SELECT mx as Peak_Cases FROM MaxCaseOmicron LIMIT 1

/*Hospitalizations*/
SELECT Date,Hosp_Total as Peak_Hospitalizations FROM HospOmicron LIMIT 1

/*Statistics for $Variant Variant for $Racial_Group Populations 	 PANEL */
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
  ) as Total_Deaths
FROM
  COVID_Deaths_By_Race
WHERE
  (
    CASE
      WHEN '$Variant' = 'Wild Type' THEN Date >= '2020-01-01'
      and Date < '2020-11-01'
      WHEN '$Variant' = 'Alpha' THEN Date >= '2020-11-01'
      and Date < '2021-06-01'
      WHEn '$Variant' = 'Delta' THEN Date >= '2021-06-01'
      and Date < '2021-11-01'
    END
  )

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
  ) as Total_Cases
FROM
  COVID_Cases_By_Race
WHERE
  (
    CASE
      WHEN '$Variant' = 'Wild Type' THEN Date >= '2020-01-01'
      and Date < '2020-11-01'
      WHEN '$Variant' = 'Alpha' THEN Date >= '2020-11-01'
      and Date < '2021-06-01'
      WHEn '$Variant' = 'Delta' THEN Date >= '2021-06-01'
      and Date < '2021-11-01'
    END
  )

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
  ) as Total_Hosp
FROM
  COVID_Hospitalizations_By_Race
WHERE
  (
    CASE
      WHEN '$Variant' = 'Wild Type' THEN Date >= '2020-01-01'
      and Date < '2020-11-01'
      WHEN '$Variant' = 'Alpha' THEN Date >= '2020-11-01'
      and Date < '2021-06-01'
      WHEn '$Variant' = 'Delta' THEN Date >= '2021-06-01'
      and Date < '2021-11-01'
    END
  )

/*Cases, Tests, and Deaths For $Racial_Group Populations Nationally	 PANEL */
/*Cases*/
SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END)) as Total_Cases
FROM COVID_Cases_By_Race GROUP BY Date

/*Tests*/
SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Tests_Asian
WHEN '$Racial_Group' = 'Black' THEN Tests_Black
WHEN '$Racial_Group' = 'White' THEN Tests_White
WHEN '$Racial_Group' = 'Total' THEN Tests_Total
WHEN '$Racial_Group' = 'Latinx' THEN Tests_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Tests_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Tests_NHPI
END)) as Total_Tests
FROM COVID_Test_By_Race GROUP BY Date

/*Deaths*/
SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END)) as Total_Deaths
FROM COVID_Deaths_By_Race GROUP BY Date

/*Hospitalizations*/
SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END)) as Total_Hospitalizations
FROM COVID_Hospitalizations_By_Race GROUP BY Date

/*State Population By Selected Racial Group	 PANEL */

SELECT 
State, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN AsianTotal
WHEN '$Racial_Group' = 'Black' THEN BlackTotal
WHEN '$Racial_Group' = 'White' THEN WhiteTotal
WHEN '$Racial_Group' = 'Latinx' THEN OtherTotal
WHEN '$Racial_Group' = 'AIAN' THEN HawaiianTotal
WHEN '$Racial_Group' = 'NHPI' THEN IndianTotal
END) as Population_Percentage
FROM US_Population_Racial

/*Political Composition Per State	 PANEL */
SELECT State_Name, Republican_lean_rep,No_Lean, Democrat_Lean_Dem,longitude,latitude FROM 
State_Political_Composition NATURAL JOIN State_Locations
