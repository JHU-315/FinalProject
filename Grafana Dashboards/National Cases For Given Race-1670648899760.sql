/* DASHBOARD Grafana Dashboards/National Cases For Given Race-1670648899760.sql*/
/*Cases for given state and race in a cumulative sense*/
SELECT
  *
FROM
(
    SELECT
      State_To_Code.State_Name,
      (
        CASE
          WHEN '$Racial_Group' = 'Asian' THEN SUM(Cases_Asian)
          WHEN '$Racial_Group' = 'Black' THEN SUM(Cases_Black)
          WHEN '$Racial_Group' = 'White' THEN SUM(Cases_White)
          WHEN '$Racial_Group' = 'Total' THEN SUM(Cases_Total)
          WHEN '$Racial_Group' = 'Latinx' THEN SUM(Cases_Latinx)
          WHEN '$Racial_Group' = 'AIAN' THEN SUM(Cases_AIAN)
          WHEN '$Racial_Group' = 'NHPI' THEN SUM(Cases_NHPI)
        END
      ) AS Total_Cases
    FROM
      COVID_Cases_By_Race
      JOIN State_To_Code ON COVID_Cases_By_Race.State = State_To_Code.code
    GROUP BY
      State_To_Code.State_Name
  ) as b NATURAL
  JOIN State_Locations

