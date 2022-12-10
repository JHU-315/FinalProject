/* DASHBOARD Grafana Dashboards/State COVID And Personal Income Analysis-1670648868527.sql*/

/*Cases, Tests, Hospitalizations, and Deaths 	 PANEL */
/*cases*/
SELECT 
Date, 
 Cases_Total
 Total_Cases
FROM (SELECT * FROM COVID_Cases_By_With_State_Name WHERE State_Name = '$States') as b

/*Tests*/
SELECT 
Date, Tests_Total
FROM (SELECT * FROM COVID_Test_By_With_State_Name WHERE State_Name = '$States') as b

/*Deaths*/
SELECT 
Date, 
Deaths_Total
FROM (SELECT * FROM COVID_Deaths_By_With_State_Name WHERE State_Name = '$States') as b

/*Hospitalizatoins*/
SELECT 
Date, 

Hosp_Total


FROM (SELECT * FROM COVID_Hospitalizations_By_With_State_Name WHERE State_Name = '$States') as b

/*Personal Income	 PANEL */
SELECT * FROM Personal_Income_State WHERE '$States' = State

