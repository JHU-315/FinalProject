/* DASHBOARD Grafana Dashboards/National COVID And Patient Outcomes By Race.sql*/
/*No title found*/
/*No targets found*/
/*Wild Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseWTWeekly

/*Alpha Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseAlphaWeekly

/*Delta Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseDeltaWeekly

/*Omicron Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseOmicronWeekly

/*Wild Type Variant Peak Statistics 	 PANEL */
SELECT 

SELECT 

SELECT 

/*Alpha Type Variant Peak Date	 PANEL */
SELECT

SELECT 

SELECT 

/*General Delta Type Variant Peak Statistics 	 PANEL */
SELECT * FROM MaxDeathsDeltaGeneral

SELECT mx as Cases FROM MaxCaseDeltaWeekly

SELECT 

/*General Omicron Type Variant Peak Statistics 	 PANEL */
SELECT * FROM MaxDeathsDeltaGeneral

SELECT mx as Cases FROM MaxCaseOmicronWeekly

SELECT 

/*Statistics for WildType	 PANEL */
SELECT Date,

SELECT Date,

SELECT Date,

/*Statistics for AlphaType	 PANEL */
SELECT Date,

SELECT Date,

SELECT Date,

/*Cases, Tests, and Deaths Per Race Nationally	 PANEL */
SELECT 

SELECT 

SELECT 

SELECT 

/*State Population By Selected Racial Group	 PANEL */


/*Cumulative  Hospitalizations By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 

/*Cumulative Tests By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 

/*Cumulative Cases By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 

/*Cumulative  Deaths By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 
