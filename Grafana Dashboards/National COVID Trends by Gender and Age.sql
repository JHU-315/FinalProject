/* DASHBOARD Grafana Dashboards/National COVID Trends by Gender and Age.sql*/

/*Deaths and Vaccinations Over time - National	 PANEL */

/*Sex*/
SELECT 
Date, (CASE 
WHEN '$Sex' = 'Male' THEN SUM(Male_Count) 
WHEN '$Sex' = 'Female' THEN SUM(Female_Count) 
WHEN '$Sex' = 'All Sex' THEN SUM(Total_Count) 
END) AS Total_Cases
FROM COVID_Cases_By_Gender GROUP BY Date

/*Deaths*/
SELECT Date, SUM(Total_Deaths) AS Total_Deaths FROM COVID_Deaths_By_Age_Gender 
WHERE Sex = '$Sex' GROUP BY Date

/*Vaccinations, sum of all doses per given date*/
SELECT Date, SUM(Admin_Dose_1_Daily) AS Administered_Daily FROM COVID_Vaccinations GROUP BY Date

/*Cases By Sex	 PANEL */
SELECT
  Date,
  (
    CASE
      WHEN '$Sex' = 'Male' THEN SUM(Male_Count)
      WHEN '$Sex' = 'Female' THEN SUM(Female_Count)
      WHEN '$Sex' = 'All Sex' THEN SUM(Total_Count)
    END
  ) AS Total_Cases
FROM
  COVID_Cases_By_Gender
GROUP BY
  Date


/*Deaths Breakdown for Males Per Variant	 PANEL */
SELECT 
Age_Group,
(CASE 
WHEN  '$Variant' = 'Wild Type' THEN (Total_Deaths_M_WT) 
WHEN  '$Variant' = 'Alpha' THEN (Total_Deaths_M_Alpha) 
WHEN  '$Variant' = 'Delta' THEN (Total_Deaths_M_Delta) 
WHEN  '$Variant' = 'Omicron' THEN (Total_Deaths_M_Omicron)
END) as Total_Cases
FROM COVID_Deaths_Age_M_Breakdown  

/*Deaths Breakdown for Females Per Variant	 PANEL */
SELECT 
Age_Group,
(CASE 
WHEN  '$Variant' = 'Wild Type' THEN (Total_Deaths_F_WT) 
WHEN  '$Variant' = 'Alpha' THEN (Total_Deaths_F_Alpha) 
WHEN  '$Variant' = 'Delta' THEN (Total_Deaths_F_Delta) 
WHEN  '$Variant' = 'Omicron' THEN (Total_Deaths_F_Omicron)
END) as Total_Cases
FROM COVID_Deaths_Age_F_Breakdown  

/*Deaths Breakdown for Totals Per Variant	 PANEL */
SELECT 
Age_Group,
(CASE 
WHEN  '$Variant' = 'Wild Type' THEN (Total_Deaths_T_WT) 
WHEN  '$Variant' = 'Alpha' THEN (Total_Deaths_T_Alpha) 
WHEN  '$Variant' = 'Delta' THEN (Total_Deaths_T_Delta) 
WHEN  '$Variant' = 'Omicron' THEN (Total_Deaths_T_Omicron)
END) as Total_Cases
FROM COVID_Deaths_Age_T_Breakdown  

/*COVID Cases By Gender as a Percentage of Total Population	 PANEL */

/*We first sum the total counts per state, then divide by the total population of that state*/
SELECT 
 State,
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
FROM COVID_Cases_By_Gender_AllVariants NATURAL JOIN US_Population_Racial GROUP BY State

SELECT * FROM COVID_Cases_By_Gender_AllVariants

/*COVID Vaccinations Doses Per Population	 PANEL */
SELECT 
State,JabPerPop
FROM Jabs_Per_Population_State

