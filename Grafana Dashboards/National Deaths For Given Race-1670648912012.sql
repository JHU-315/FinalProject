/* DASHBOARD Grafana Dashboards/National Deaths For Given Race-1670648912012.sql*/

SELECT * FROM (
SELECT State_To_Code.State_Name, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN SUM(Deaths_Asian)
WHEN '$Racial_Group' = 'Black' THEN SUM(Deaths_Black)
WHEN '$Racial_Group' = 'White' THEN SUM(Deaths_White)
WHEN '$Racial_Group' = 'Total' THEN SUM(Deaths_Total)
WHEN '$Racial_Group' = 'Latinx' THEN SUM(Deaths_Latinx)
WHEN '$Racial_Group' = 'AIAN' THEN SUM(Deaths_AIAN)
WHEN '$Racial_Group' = 'NHPI' THEN SUM(Deaths_NHPI)
END) AS Total_Deaths
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name ) as B NATURAL JOIN State_Locations

