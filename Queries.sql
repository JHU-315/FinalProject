/*t*/
CREATE OR REPLACE VIEW TotalHospitalizationsByWeek AS
SELECT SUM(Yrs_0_to_4, Yrs_5_to_17, Yrs_18_to_49, Yrs_50_to_64, Yrs_65_plus) 
FROM COVID_Hospitalizations_By_Age
GROUP BY Week;


/*o*/
/* Better to transpose the information and with race as one column and the other column as number of deaths*/
SELECT Race FROM(
    SELECT SUM(Deaths) as sumDeaths FROM COVID_Deaths_By_Race GROUP BY Race
) WHERE sumDeaths = (SELECT MAX(sumDeaths) FROM (SELECT SUM(Deaths) as sumDeaths FROM COVID_Hospitalizations_By_Race GROUP BY Race) as d)

/*w*/
SELECT ICD10_Code FROM (
SELECT ICDC10_Code, SUM(COVID_19_Death) as maxDeath FROM Health_Conditions_Causing_COVID GROUP BY ICD10_Code
) WHERE maxDeath = (SELECT MAX(maxDeath) FROM (SELECT ICDC10_Code, SUM(COVID_19_Death) as maxDeath FROM Health_Conditions_Causing_COVID GROUP BY ICD10_Code) as d);


/*
Find the corresponding month where the total number of COVID cases was the highest in the database. 
*/

CREATE or REPLACE VIEW MaxCaseDate AS 
SELECT c2.Date
FROM CovidCasesByRace c2, 
    (SELECT MAX (c1.Cases_Total) mx
     FROM CovidCasesByRace) c1
WHERE c1.mx = c2.Cases_Total;

/*
Find the min unemployment rate throughout all pertinent time periods.
*/

CREATE or REPLACE VIEW MinUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN (u1.Unemployment_rate) mx
     FROM Unemployment_Rate)
     WHERE Date >= Jun19 and Date <= Jan20) u1
WHERE c1.mx = c2.Unemployment_rate;

/*
Compare trends in total unemployment rate to trends in COVID cases at different peak periods.
*/


SELECT urate.UR1 - urate.UR2,
 	   urate.UR1 - urate.UR3,
 	   urate.UR1 - urate.UR4,
 	   urate.UR1 - urate.UR5
FROM
(SELECT (CASE WHEN u.Date=m.Date THEN u.Total ELSE 0 END) UR1,
	   (CASE when u.Date=wt.Date THEN u.Total ELSE 0 END) UR2,
	   (CASE when u.Date=a.Date THEN u.Total ELSE 0 END) UR3,
	   (CASE when u.Date=d.Date THEN u.Total ELSE 0 END) UR4,
	   (CASE when u.Date=o.Date THEN u.Total ELSE 0 END) UR5
FROM Unemployment_Rate u, CovidCases c, MinUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmic o
WHERE u.Date = c.Date
	  and u.Date in (m.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

SELECT u.Date, u.Total, c.Cases_Total
FROM Unemployment_Rate u, CovidCases c
WHERE u.Date = c.Date;


/*
Compare trends in unemployment rates of Asian, White, Black or African American, Hispanic to trends in COVID cases at different peak periods.
*/

SELECT urate.TUR1 - urate.WUR2,
 	   urate.TUR1 - urate.WUR3,
 	   urate.TUR1 - urate.WUR4,
 	   urate.TUR1 - urate.WUR5,
 	   urate.TUR1 - urate.BUR2,
 	   urate.TUR1 - urate.BUR3,
 	   urate.TUR1 - urate.BUR4,
 	   urate.TUR1 - urate.BUR5,
 	   urate.TUR1 - urate.HUR2,
 	   urate.TUR1 - urate.HUR3,
 	   urate.TUR1 - urate.HUR4,
 	   urate.TUR1 - urate.HUR5,
 	   urate.TUR1 - urate.AUR2,
 	   urate.TUR1 - urate.AUR3,
 	   urate.TUR1 - urate.AUR4,
 	   urate.TUR1 - urate.AUR5,
FROM
(SELECT (CASE WHEN u.Date=m.Date THEN u.Total ELSE 0 END) TUR1,
	   (CASE when u.Date=wt.Date THEN u.White ELSE 0 END) WUR2,
	   (CASE when u.Date=a.Date THEN u.White ELSE 0 END) WUR3,
	   (CASE when u.Date=d.Date THEN u.White ELSE 0 END) WUR4,
	   (CASE when u.Date=o.Date THEN u.White ELSE 0 END) WUR5,
	   (CASE when u.Date=wt.Date THEN u.Black ELSE 0 END) BUR2,
	   (CASE when u.Date=a.Date THEN u.Black ELSE 0 END) BUR3,
	   (CASE when u.Date=d.Date THEN u.Black ELSE 0 END) BUR4,
	   (CASE when u.Date=o.Date THEN u.Black ELSE 0 END) BUR5,
	   (CASE when u.Date=wt.Date THEN u.Hispanic ELSE 0 END) HUR2,
	   (CASE when u.Date=a.Date THEN u.Hispanic ELSE 0 END) HUR3,
	   (CASE when u.Date=d.Date THEN u.Hispanic ELSE 0 END) HUR4,
	   (CASE when u.Date=o.Date THEN u.Hispanic ELSE 0 END) HUR5,
	   (CASE when u.Date=wt.Date THEN u.Asian ELSE 0 END) AUR2,
	   (CASE when u.Date=a.Date THEN u.Asian ELSE 0 END) AUR3,
	   (CASE when u.Date=d.Date THEN u.Asian ELSE 0 END) AUR4,
	   (CASE when u.Date=o.Date THEN u.Asian ELSE 0 END) AUR5	   
FROM Unemployment_Rate u, MinUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmic o
WHERE u.Date = c.Date
	  and u.Date in (m.Date, wt.Date, a.Date, d.Date, o.Date)) urate;
	  
SELECT u.Date, u.White, u.Black, u.Asian, u.Hispanic, c.Cases_White, c.Cases_Black, c.Cases_Latinx, c.Cases_Asian
FROM Unemployment_Rate u, CovidCasesByRace c
WHERE u.Date = c.Date;


/*Compare the percent of contribution of each nonfarm sector of the economy to the total employment level during Peak COVID periods.*/

SELECT urate.NFUR1 - urate.WUR2,
 	   urate.NFUR1 - urate.WUR3,
 	   urate.NFUR1 - urate.WUR4,
 	   urate.NFUR1 - urate.WUR5,
 	   urate.PUR1 - urate.PUR2,
 	   urate.PUR1 - urate.PUR3,
 	   urate.PUR1 - urate.PUR4,
 	   urate.PUR1 - urate.PUR5,
 	   urate.GUR1 - urate.GUR2,
 	   urate.GUR1 - urate.GUR3,
 	   urate.GUR1 - urate.GUR4,
 	   urate.GUR1 - urate.GUR5
FROM
(SELECT (CASE WHEN u.Date=m.Date THEN u.TotalNonfarm ELSE 0 END) NFUR1,
	   (CASE when u.Date=wt.Date THEN u.TotalNonfarm ELSE 0 END) NFUR2,
	   (CASE when u.Date=a.Date THEN u.TotalNonfarm ELSE 0 END) NFUR3,
	   (CASE when u.Date=d.Date THEN u.TotalNonfarm ELSE 0 END) NFUR4,
	   (CASE when u.Date=o.Date THEN u.TotalNonfarm ELSE 0 END) NFUR5,
	   (CASE WHEN u.Date=m.Date THEN u.TotalPrivate ELSE 0 END) PUR1,
	   (CASE when u.Date=wt.Date THEN u.TotalPrivate ELSE 0 END) PUR2,
	   (CASE when u.Date=a.Date THEN u.TotalPrivate ELSE 0 END) PUR3,
	   (CASE when u.Date=d.Date THEN u.TotalPrivate ELSE 0 END) PUR4,
	   (CASE when u.Date=o.Date THEN u.TotalPrivate ELSE 0 END) PUR5,
	   (CASE WHEN u.Date=m.Date THEN u.TotalGov ELSE 0 END) GUR1,
	   (CASE when u.Date=wt.Date THEN u.TotalGov ELSE 0 END) GUR2,
	   (CASE when u.Date=a.Date THEN u.TotalGov ELSE 0 END) GUR3,
	   (CASE when u.Date=d.Date THEN u.TotalGov ELSE 0 END) GUR4,
	   (CASE when u.Date=o.Date THEN u.TotalGov ELSE 0 END) GUR5,
	   
FROM Unemployment_Rate u, MinUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmic o
WHERE u.Date = c.Date
	  and u.Date in (m.Date, wt.Date, a.Date, d.Date, o.Date)) urate;
	  
SELECT u.Date, u.Mining_Lodging, u.Manufacturing, u.Retail, u.Utilities, c.Financial, c.Education, c.Other, c.Construction, c.Wholesale, c.Transportation, c.Information, c.Professional, c.Leisure, c.Government
FROM Unemployment_Rate u, NonFarmEmp c
WHERE u.Date = c.Date;

	  
/*
Compare unemployment rates of men and women who are 16 to 19-year-olds and 20 years and over with trends in COVID cases. 
Has COVID disproportionately affected some age groups versus others in terms of employment?*/

SELECT urate.TUR1 - urate.M1619UR2,
 	   urate.TUR1 - urate.M1619UR3,
 	   urate.TUR1 - urate.M1619UR4,
 	   urate.TUR1 - urate.M1619UR5,
 	   urate.TUR1 - urate.M20+UR2,
 	   urate.TUR1 - urate.M20+UR3,
 	   urate.TUR1 - urate.M20+UR4,
 	   urate.TUR1 - urate.M20+UR5,
 	   urate.TUR1 - urate.W1619UR2,
 	   urate.TUR1 - urate.W1619UR3,
 	   urate.TUR1 - urate.W1619UR4,
 	   urate.TUR1 - urate.W1619UR5,
 	   urate.TUR1 - urate.W20+UR2,
 	   urate.TUR1 - urate.W20+UR3,
 	   urate.TUR1 - urate.W20+UR4,
 	   urate.TUR1 - urate.W20+UR5
FROM
(SELECT (CASE WHEN u.Date=m.Date THEN u.Total ELSE 0 END) TUR1,
       (CASE when u.Date=wt.Date THEN u.M16_19 ELSE 0 END) M1619UR2,
	   (CASE when u.Date=a.Date THEN u.M16_19W16_19 ELSE 0 END) M1619UR3,
	   (CASE when u.Date=d.Date THEN u.M16_19 ELSE 0 END) M1619UR4,
	   (CASE when u.Date=o.Date THEN u.M16_19 ELSE 0 END) M1619UR5,
	   (CASE when u.Date=wt.Date THEN u.M20+ ELSE 0 END) M20+UR2,
	   (CASE when u.Date=a.Date THEN u.M20+ ELSE 0 END) M20+UR3,
	   (CASE when u.Date=d.Date THEN u.M20+ ELSE 0 END) M20+UR4,
	   (CASE when u.Date=o.Date THEN u.M20+ ELSE 0 END) M20+UR5,
	   (CASE when u.Date=wt.Date THEN u.W16_19 ELSE 0 END) W1619UR2,
	   (CASE when u.Date=a.Date THEN u.W16_19W16_19 ELSE 0 END) W1619UR3,
	   (CASE when u.Date=d.Date THEN u.W16_19 ELSE 0 END) W1619UR4,
	   (CASE when u.Date=o.Date THEN u.W16_19 ELSE 0 END) W1619UR5,
	   (CASE when u.Date=wt.Date THEN u.W20+ ELSE 0 END) W20+UR2,
	   (CASE when u.Date=a.Date THEN u.W20+ ELSE 0 END) W20+UR3,
	   (CASE when u.Date=d.Date THEN u.W20+ ELSE 0 END) W20+UR4,
	   (CASE when u.Date=o.Date THEN u.W20+ ELSE 0 END) W20+UR5  
FROM Unemployment_Rate u, MinUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmic o
WHERE u.Date = c.Date
	  and u.Date in (m.Date, wt.Date, a.Date, d.Date, o.Date)) urate;
	  
SELECT u.Date, u.M1619, u.M20+, u.W1619, u.W20+, c.MCases_1619, c.MCases_20+, c.FCases_1619, c.FCases_20+
FROM Unemployment_Rate u, CovidCasesByAgeGender c
WHERE u.Date = c.Date;
	  

/*
Find the maximum count of the COVID cases by race throughout all pertinent time periods. 
*/

CREATE or REPLACE TABLE MaxCaseRace AS
SELECT c1.Race, c1.Max, c2.Date
FROM
    CovidCasesByRace c2,
	(SELECT  Race, MAX(c.Cases) as Max
	FROM CovidCasesByRace c
	WHERE m.Date = c.Date
	GROUP BY Race) c1
WHERE c1.max = c2.cases
      and c1.race = c2.race;

/*
Find the corresponding month where the total number of COVID Wild Type, Alpha, Delta, and Omicron cases were the highest in the database. 
*/

CREATE or REPLACE VIEW MaxCaseWT AS 
SELECT c2.Date
FROM CovidCases c2, 
    (SELECT MAX (c1.Cases_Total) mx
     FROM CovidCases
     WHERE Date >= Jan20 and Date <= Oct20) c1
WHERE c1.mx = c2.Cases_Total;

CREATE or REPLACE VIEW MaxCaseAlpha AS 
SELECT c2.Date
FROM CovidCases c2, 
    (SELECT MAX (c1.Cases_Total) mx
     FROM CovidCases
     WHERE Date >= Nov20 and Date <= May21) c1
WHERE c1.mx = c2.Cases_Total;

CREATE or REPLACE VIEW MaxCaseDelta AS 
SELECT c2.Date
FROM CovidCases c2, 
    (SELECT MAX (c1.Cases_Total) mx
     FROM CovidCases
     WHERE Date >= Jun21 and Date <= Oct21) c1
WHERE c1.mx = c2.Cases_Total;

CREATE or REPLACE VIEW MaxCaseOmicron AS 
SELECT c2.Date
FROM CovidCases c2, 
    (SELECT MAX (c1.Cases_Total) mx
     FROM CovidCases
     WHERE Date >= Nov21) c1
WHERE c1.mx = c2.Cases_Total;



