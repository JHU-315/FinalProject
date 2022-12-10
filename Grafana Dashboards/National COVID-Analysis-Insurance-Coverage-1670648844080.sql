/* DASHBOARD Grafana Dashboards/National COVID-Analysis-Insurance-Coverage-1670648844080.sql*/

/*Insurer percent of population by state*/
SELECT
  State_Name,
  latitude,
  longitude,
  (CASE
      WHEN '$Insurance_Type' = 'Employer' THEN Employer
      WHEN '$Insurance_Type' = 'Non-Group' THEN NonGroup
      WHEN '$Insurance_Type' = 'Military' THEN Military
      WHEN '$Insurance_Type' = 'Medicare' THEN Medicare
      WHEN '$Insurance_Type' = 'Medicaid' THEN Medicaid
      WHEN '$Insurance_Type' = 'Uninsured' THEN Uninsured
      END
) as Percent_Insured_By_Policy
FROM
  State_Loc_MeshedWithInsurance

  


  


/*COVID Cases By State	 PANEL */
SELECT State_Name, SUM(new_cases) as Cases FROM COVID_Cases_By_State_With_Name GROUP BY State_Name

/*COVID Deaths By State	 PANEL */
SELECT State_To_Code.State_Name,Deaths_Total
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name;

/*COVID Hospitalizations By State	 PANEL */
SELECT State_To_Code.State_Name, Hosp_Total
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name;

