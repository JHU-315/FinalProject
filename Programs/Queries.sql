/*QUESTIONS ARE SPECIFIED IN THE MARKDOWN*/

/*t*/
CREATE OR REPLACE VIEW TotalHospitalizationsByWeek AS
SELECT SUM(5_17_yrs,18_49_yrs,50_64_yrs,65_plus_yrs) FROM COVID_Hospitalizations_Age
GROUP BY Week_Number



