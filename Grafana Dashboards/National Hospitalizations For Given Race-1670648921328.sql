/* DASHBOARD Grafana Dashboards/National Hospitalizations For Given Race-1670648921328.sql*/


SELECT * FROM (
SELECT
  State_To_Code.State_Name,
  (
    CASE
      WHEN '$Racial_Group' = 'Asian' THEN SUM(Hosp_Asian)
      WHEN '$Racial_Group' = 'Black' THEN SUM(Hosp_Black)
      WHEN '$Racial_Group' = 'White' THEN SUM(Hosp_White)
      WHEN '$Racial_Group' = 'Total' THEN SUM(Hosp_Total)
      WHEN '$Racial_Group' = 'Latinx' THEN SUM(Hosp_Latinx)
      WHEN '$Racial_Group' = 'AIAN' THEN SUM(Hosp_AIAN)
      WHEN '$Racial_Group' = 'NHPI' THEN SUM(Hosp_NHPI)
    END
  ) AS Total_Cases
FROM
  COVID_Hospitalizations_By_Race
  JOIN State_To_Code ON COVID_Hospitalizations_By_Race.State = State_To_Code.code
GROUP BY
  State_To_Code.State_Name) AS b NATURAL JOIN State_Locations

