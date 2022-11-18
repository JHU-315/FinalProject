/*QUESTIONS ARE SPECIFIED IN THE MARKDOWN*/






/*o*/
/* Better to transpose the information and with race as one column and the other column as number of deaths*/
SELECT Race FROM(
    SELECT SUM(Deaths) as sumDeaths FROM COVID_Deaths_By_Race GROUP BY Race
) WHERE sumDeaths = (SELECT MAX(sumDeaths) FROM (SELECT SUM(Deaths) as sumDeaths FROM COVID_Hospitalizations_Race GROUP BY Race) as d)

/*w*/
SELECT ICD10_Code FROM (
SELECT ICDC10_Code, SUM(COVID_19_Death) as maxDeath FROM Health_Conditions_Causing_COVID GROUP BY ICD10_Code
) WHERE maxDeath = (SELECT MAX(maxDeath) FROM (SELECT ICDC10_Code, SUM(COVID_19_Death) as maxDeath FROM Health_Conditions_Causing_COVID GROUP BY ICD10_Code) as d);

