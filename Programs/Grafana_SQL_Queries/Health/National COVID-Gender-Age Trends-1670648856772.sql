/* DASHBOARD Grafana Dashboards/National COVID-Gender-Age Trends-1670648856772.sql*/

/*Deaths and Vaccinations Over time for $Sex Populations - National	 PANEL */
/*Total Cases*/
SELECT 
Date, (CASE 
WHEN '$Sex' = 'Male' THEN SUM(Male_Count) 
WHEN '$Sex' = 'Female' THEN SUM(Female_Count) 
WHEN '$Sex' = 'All Sex' THEN SUM(Total_Count) 
END) AS Total_Cases
FROM COVID_Cases_By_Gender GROUP BY Date

/*total Deaths*/
SELECT Date, SUM(Total_Deaths) AS Total_Deaths FROM COVID_Deaths_By_Age_Gender 
WHERE Sex = '$Sex' GROUP BY Date

/*Vaccinations, total*/
SELECT Date, SUM(Admin_Dose_1_Daily) AS Administered_Daily FROM COVID_Vaccinations GROUP BY Date

/*Cases By Sex	 PANEL */
SELECT
  Date,

   SUM(Male_Count)

 AS Total_Male_Cases
FROM
  COVID_Cases_By_Gender
GROUP BY
  Date

SELECT
  Date,
  SUM(Female_Count) AS Total_Female_Cases
FROM
  COVID_Cases_By_Gender
GROUP BY
  Date

/*Select total cases*/
SELECT
  Date,
  SUM(Total_Count) AS Total_Cases
FROM
  COVID_Cases_By_Gender
GROUP BY
  Date




/*Deaths Age  Breakdown for $Sex for $Variant 	 PANEL */
SELECT 
Age_Group,
(CASE 
WHEN  '$Sex' = 'Female' AND '$Variant' = 'Wild Type' THEN (Total_Deaths_M_WT) 
WHEN  '$Sex' = 'Female' AND '$Variant' = 'Alpha' THEN (Total_Deaths_M_Alpha) 
WHEN  '$Sex' = 'Female' AND '$Variant' = 'Delta' THEN (Total_Deaths_M_Delta) 
WHEN  '$Sex' = 'Female' AND '$Variant' = 'Omicron' THEN (Total_Deaths_M_Omicron)
WHEN  '$Sex' = 'Male' AND '$Variant' = 'Wild Type' THEN (Total_Deaths_M_WT) 
WHEN  '$Sex' = 'Male' AND '$Variant' = 'Alpha' THEN (Total_Deaths_M_Alpha) 
WHEN  '$Sex' = 'Male' AND '$Variant' = 'Delta' THEN (Total_Deaths_M_Delta) 
WHEN  '$Sex' = 'Male' AND '$Variant' = 'Omicron' THEN (Total_Deaths_M_Omicron)
END) as Total_Cases
FROM COVID_Deaths_Age_M_Breakdown  

/*Deaths Age  Breakdown for All Sexes For $Variant 	 PANEL */
SELECT 
Age_Group,
(CASE 
WHEN  '$Variant' = 'Wild Type' THEN (Total_Deaths_T_WT) 
WHEN  '$Variant' = 'Alpha' THEN (Total_Deaths_T_Alpha) 
WHEN  '$Variant' = 'Delta' THEN (Total_Deaths_T_Delta) 
WHEN  '$Variant' = 'Omicron' THEN (Total_Deaths_T_Omicron)
END) as Total_Cases
FROM COVID_Deaths_Age_T_Breakdown  

/*COVID Cases for $Sex as a Ratio to Total Population for $Variant Variant 	 PANEL */
SELECT State_Name,Total_Cases as Cases_Per_Population,Latitude,Longitude FROM (SELECT 
 State as State_Name,
(CASE 
WHEN '$Sex' = 'Male' AND '$Variant' = 'Wild Type' THEN SUM(Male_Count_WT) 
WHEN '$Sex' = 'Male' AND '$Variant' = 'Alpha' THEN SUM(Male_Count_Alpha) 
WHEN '$Sex' = 'Male' AND '$Variant' = 'Delta' THEN SUM(Male_Count_Delta) 
WHEN '$Sex' = 'Male' AND '$Variant' = 'Omicron' THEN SUM(Male_Count_Omicron) 
WHEN '$Sex' = 'Female' AND '$Variant' = 'Wild Type' THEN SUM(Female_Count_WT) 
WHEN '$Sex' = 'Female' AND '$Variant' = 'Alpha' THEN SUM(Female_Count_Alpha) 
WHEN '$Sex' = 'Female' AND '$Variant' = 'Delta' THEN SUM(Female_Count_Delta) 
WHEN '$Sex' = 'Female' AND '$Variant' = 'Omicron' THEN SUM(Female_Count_Omicron) 
WHEN '$Sex' = 'All Sex' AND '$Variant' = 'Wild Type' THEN SUM(Total_Count_WT) 
WHEN '$Sex' = 'All Sex' AND '$Variant' = 'Alpha' THEN SUM(Total_Count_Alpha) 
WHEN '$Sex' = 'All Sex' AND '$Variant' = 'Delta' THEN SUM(Total_Count_Delta) 
WHEN '$Sex' = 'All Sex' AND '$Variant' = 'Omicron' THEN SUM(Total_Count_Omicron) 
END)/Total as Total_Cases
FROM COVID_Cases_By_Gender_AllVariants NATURAL JOIN US_Population_Racial GROUP BY State) as A
NATURAL JOIN State_Locations

/*All Gender Cases by for all variants*/
SELECT * FROM COVID_Cases_By_Gender_AllVariants

/*COVID Vaccinations Doses Per Population for a given state	 PANEL */
SELECT
  State_Name, JabPerPop,latitude,longitude
FROM
  (
    SELECT
      State as State_Name,
      JabPerPop
    FROM
      Jabs_Per_Population_State
  ) as b NATURAL JOIN State_Locations

