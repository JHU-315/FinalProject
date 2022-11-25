/*t*/
CREATE OR REPLACE VIEW TotalHospitalizationsByWeek AS
SELECT Week, SUM(Yrs_0_to_4, Yrs_5_to_17, Yrs_18_to_49, Yrs_50_to_64, Yrs_65_plus) 
FROM COVID_Hospitalizations_By_Age
GROUP BY Week;


/*p*/
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
FROM COVID_Cases_By_Race c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_By_Race) c1
WHERE c1.mx = c2.Cases_Total;

/*
Find the date corresponding to the min total unemployment rate through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN (Total) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

/*
Create a view corresponding to all cases on a given date throughout all states.
*/

CREATE or REPLACE VIEW COVID_Cases AS
SELECT Date, SUM(new_cases) Cases_Total
FROM COVID_Cases_By_State
GROUP BY Date;

/*
Create a view corresponding to the COVID Wild Type peak, i.e. the corresponding month where the total number cases was highest within the time period where the Wild Type variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseWT AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2020-01-01' and Date < '2020-11-01') c1
WHERE c1.mx = c2.Cases_Total;

/*
Create a view corresponding to the COVID Alpha peak, i.e. the corresponding month where the total number cases was highest within the time period where the Alpha variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseAlpha AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2020-11-01' and Date < '2021-06-01') c1
WHERE c1.mx = c2.Cases_Total;


/*
Create a view corresponding to the COVID Delta peak, i.e. the corresponding month where the total number cases was highest within the time period where the Delta variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseDelta AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2021-06-01' and Date < '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total;


/*
Create a view corresponding to the COVID Omicron peak, i.e. the corresponding month where the total number cases was highest within the time period where the Omicron variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseOmicron AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(COVID_Cases.Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total;


/*
Analyze the trend in total unemployment rate at the peak periods of different COVID variants.
*/

/* show increase or decline trends in unemployment by subtracting (minimum unemployment rate before pandemic - rate at a given variant peak) */

SELECT urate.TUR1 - urate.TUR2 AS wtChange,
 	   urate.TUR1 - urate.TUR3 AS AlphaChange,
 	   urate.TUR1 - urate.TUR4 AS DeltaChange,
 	   urate.TUR1 - urate.TUR5 AS OmicronChange
FROM
    (SELECT (CASE WHEN u.Date=m.Date THEN u.Total ELSE 0 END) TUR1,
           (CASE WHEN u.Date=wt.Date THEN u.Total ELSE 0 END) TUR2,
           (CASE WHEN u.Date=a.Date THEN u.Total ELSE 0 END) TUR3,
           (CASE WHEN u.Date=d.Date THEN u.Total ELSE 0 END) TUR4,
           (CASE WHEN u.Date=o.Date THEN u.Total ELSE 0 END) TUR5
    FROM Unemployment_Rate u, MinUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (m.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/* Compare trends in total unemployment rate to trends in COVID cases over all relevant dates*/

SELECT u.Date, u.Total, c.Cases_Total
FROM Unemployment_Rate u, COVID_Cases c
WHERE u.Date = c.Date;

/*
Find the date corresponding to the min unemployment rate for Whites through the 6 months before the pandemic started.
*/
/* unemployment rate by month, so represent month as first day of that month */
CREATE or REPLACE VIEW MinWhiteUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN (White) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

/*Generalized Case*/

/*
Find the date corresponding to the min unemployment rate for Blacks through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinBlackUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN (Black) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

/*
Find the date corresponding to the min unemployment rate for Hispanics through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinHispanicUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN (Hispanic) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;


/*
Find the date corresponding to the min unemployment rate for Asians through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinAsianUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN (Asian) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;


/*
Compare trends in unemployment rates of Asian, White, Black or African American, and Hispanic people at the peak periods of different COVID variants.

show increase or decline trends in unemployment by subtracting (minimum unemployment rate for a given racial group before pandemic - rate at a given variant peak ) */
       
/*
Analyze the trend in unemployment rate for Whites at the peak periods of different COVID variants.
*/

SELECT urate.WUR1 - urate.WUR2 AS wtChangeWhite,
 	   urate.WUR1 - urate.WUR3 AS AlphaChangeWhite,
 	   urate.WUR1 - urate.WUR4 AS DeltaChangeWhite,
 	   urate.WUR1 - urate.WUR5 AS OmicronChangeWhite
FROM
    (SELECT (CASE WHEN u.Date=w.Date THEN u.White ELSE 0 END) WUR1,
           (CASE WHEN u.Date=wt.Date THEN u.White ELSE 0 END) WUR2,
           (CASE WHEN u.Date=a.Date THEN u.White ELSE 0 END) WUR3,
           (CASE WHEN u.Date=d.Date THEN u.White ELSE 0 END) WUR4,
           (CASE WHEN u.Date=o.Date THEN u.White ELSE 0 END) WUR5	   
    FROM Unemployment_Rate u, MinWhiteUnempRate as w, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (w.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/*
Analyze the trend in unemployment rate for Blacks at the peak periods of different COVID variants.
*/

SELECT urate.BUR1 - urate.BUR2 AS wtChangeBlack,
 	   urate.BUR1 - urate.BUR3 AS AlphaChangeBlack,
 	   urate.BUR1 - urate.BUR4 AS DeltaChangeBlack,
 	   urate.BUR1 - urate.BUR5 AS OmicronChangeBlack
FROM
    (SELECT (CASE WHEN u.Date=b.Date THEN u.Black ELSE 0 END) BUR1,
            (CASE WHEN u.Date=wt.Date THEN u.Black ELSE 0 END) BUR2,
           (CASE WHEN u.Date=a.Date THEN u.Black ELSE 0 END) BUR3,
           (CASE WHEN u.Date=d.Date THEN u.Black ELSE 0 END) BUR4,
           (CASE WHEN u.Date=o.Date THEN u.Black ELSE 0 END) BUR5	   
    FROM Unemployment_Rate u, MinBlackUnempRate as b, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (b.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/*
Analyze the trend in unemployment rate for Hispanics at the peak periods of different COVID variants.
*/

SELECT urate.HUR1 - urate.HUR2 AS wtChangeHispanic,
 	   urate.HUR1 - urate.HUR3 AS AlphaChangeHispanic,
 	   urate.HUR1 - urate.HUR4 AS DeltaChangeHispanic,
 	   urate.HUR1 - urate.HUR5 AS OmicronChangeHispanic
FROM
    (SELECT (CASE WHEN u.Date=h.Date THEN u.Hispanic ELSE 0 END) HUR1,
            (CASE WHEN u.Date=wt.Date THEN u.Hispanic ELSE 0 END) HUR2,
           (CASE WHEN u.Date=a.Date THEN u.Hispanic ELSE 0 END) HUR3,
           (CASE WHEN u.Date=d.Date THEN u.Hispanic ELSE 0 END) HUR4,
           (CASE WHEN u.Date=o.Date THEN u.Hispanic ELSE 0 END) HUR5   
    FROM Unemployment_Rate u, MinHispanicUnempRate as h, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (h.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/*
Analyze the trend in unemployment rate for Asians at the peak periods of different COVID variants.
*/

SELECT urate.AUR1 - urate.AUR2 AS wtChangeAsian,
 	   urate.AUR1 - urate.AUR3 AS AlphaChangeAsian,
 	   urate.AUR1 - urate.AUR4 AS DeltaChangeAsian,
 	   urate.AUR1 - urate.AUR5 AS OmicronChangeAsian
FROM
    (SELECT (CASE WHEN u.Date=n.Date THEN u.Asian ELSE 0 END) AUR1,
           (CASE WHEN u.Date=wt.Date THEN u.Asian ELSE 0 END) AUR2,
           (CASE WHEN u.Date=a.Date THEN u.Asian ELSE 0 END) AUR3,
           (CASE WHEN u.Date=d.Date THEN u.Asian ELSE 0 END) AUR4,
           (CASE WHEN u.Date=o.Date THEN u.Asian ELSE 0 END) AUR5	   
    FROM Unemployment_Rate u, MinAsianUnempRate as n, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (n.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/* Compare trends in unemployment rate by race to trends in COVID cases by race over all relevant dates*/

SELECT u.Date, u.White, u.Black, u.Asian, u.Hispanic, c.Cases_White, c.Cases_Black, c.Cases_LatinX, c.Cases_Asian
FROM Unemployment_Rate u, COVID_Cases_By_Race c
WHERE u.Date = c.Date;


/*
Find the date corresponding to the max nonfarm employment level through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MaxNonFarmEmp AS 
SELECT e2.Date
FROM Nonfarm_Employment e2, 
    (SELECT MAX (Total_NonFarm) mx
     FROM Nonfarm_Employment
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') e1
WHERE e1.mx = e2.Total_NonFarm;

/*
Find the date corresponding to the max private sector employment level through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MaxPrivateEmp AS 
SELECT e2.Date
FROM Nonfarm_Employment e2, 
    (SELECT MAX (Total_Private) mx
     FROM Nonfarm_Employment
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') e1
WHERE e1.mx = e2.Total_Private;

/*
Find the date corresponding to the max government employment level through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MaxGovEmp AS 
SELECT e2.Date
FROM Nonfarm_Employment e2, 
    (SELECT MAX (Total_Government) mx
     FROM Nonfarm_Employment
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') e1
WHERE e1.mx = e2.Total_Government;


/* Analyze the non-farm employment level during peak periods of different COVID variants as a percentage of the max pre-COVID non-farm employment level to see trends */
/* inner query finds the total nonfarm employment level at max pre-COVID as well as COVID peaks and makes into separate columns */

SELECT nf.NFEL2/nf.NFEL1 * 100 AS nf_wt_pct,
 	   nf.NFEL3/nf.NFEL1 * 100 AS nf_alpha_pct,
 	   nf.NFEL4/nf.NFEL1 * 100 AS nf_delta_pct,
 	   nf.NFEL5/nf.NFEL1 * 100 AS nf_omicron_pct
FROM
    (SELECT (CASE WHEN e.Date=n.Date THEN e.Total_NonFarm ELSE 0 END) NFEL1,
           (CASE WHEN e.Date=wt.Date THEN e.Total_NonFarm ELSE 0 END) NFEL2,
           (CASE WHEN e.Date=a.Date THEN e.Total_NonFarm ELSE 0 END) NFEL3,
           (CASE WHEN e.Date=d.Date THEN e.Total_NonFarm ELSE 0 END) NFEL4,
           (CASE WHEN e.Date=o.Date THEN e.Total_NonFarm ELSE 0 END) NFEL5

    FROM Nonfarm_Employment e, MaxNonFarmEmp as n, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE e.Date in (n.Date, wt.Date, a.Date, d.Date, o.Date)) nf;
    
/* Analyze the private sector employment level during peak periods of different COVID variants as a percentage of the max pre-COVID private sector employment level to see trends */

SELECT priv.PEL2/priv.PEL1 * 100 AS priv_wt_pct,
       priv.PEL3/priv.PEL1 * 100 AS priv_alpha_pct,
       priv.PEL4/priv.PEL1 * 100 AS priv_delta_pct,
       priv.PEL5/priv.PEL1 * 100 AS priv_omicron_pct
FROM
    (SELECT (CASE WHEN e.Date=p.Date THEN e.Total_Private ELSE 0 END) PEL1,
           (CASE WHEN e.Date=wt.Date THEN e.Total_Private ELSE 0 END) PEL2,
           (CASE WHEN e.Date=a.Date THEN e.Total_Private ELSE 0 END) PEL3,
           (CASE WHEN e.Date=d.Date THEN e.Total_Private ELSE 0 END) PEL4,
           (CASE WHEN e.Date=o.Date THEN e.Total_Private ELSE 0 END) PEL5

    FROM Nonfarm_Employment e, MaxPrivateEmp as p, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE e.Date in (p.Date, wt.Date, a.Date, d.Date, o.Date)) priv;

/* Analyze the government sector employment level during peak periods of different COVID variants as a percentage of the max pre-COVID government sector employment level to see trends */

SELECT gov.GEL2/gov.GEL1 * 100 AS gov_wt_pct,
       gov.GEL3/gov.GEL1 * 100 AS gov_alpha_pct,
       gov.GEL4/gov.GEL1 * 100 AS gov_delta_pct,
       gov.GEL5/gov.GEL1 * 100 AS gov_omicron_pct
FROM
    (SELECT (CASE WHEN e.Date=g.Date THEN e.Total_Government ELSE 0 END) GEL1,
           (CASE WHEN e.Date=wt.Date THEN e.Total_Government ELSE 0 END) GEL2,
           (CASE WHEN e.Date=a.Date THEN e.Total_Government ELSE 0 END) GEL3,
           (CASE WHEN e.Date=d.Date THEN e.Total_Government ELSE 0 END) GEL4,
           (CASE WHEN e.Date=o.Date THEN e.Total_Government ELSE 0 END) GEL5

    FROM Nonfarm_Employment e, MaxGovEmp as g, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE e.Date in (g.Date, wt.Date, a.Date, d.Date, o.Date)) gov;


/*
Compare trends in employment levels of the specific subdivisions of the private sector of the economy to trends in COVID cases 
*/

SELECT e.Date, e.Mining_and_Logging, e.Manufacturing, e.Retail_Trade, e.Utilities, e.Finance_and_Insurance, c.Education_and_Health_Services, e.Other_Services, e.Construction, e.Wholesale_Trade, e.Transportation_and_Warehousing, e.Information, e.Professional, e.Leisure_and_Hospitality, c.Cases_Total
FROM Nonfarm_Employment e, COVID_Cases c
WHERE e.Date = c.Date;

/*
Compare trends in employment levels of the overarching private and goverment sectors of the economy to trends in COVID cases 
*/
SELECT e.Date, e.Total_Private, e.Total_Government, c.Cases_Total
FROM Nonfarm_Employment e, COVID_Cases c
WHERE e.Date = c.Date;

/*
Find the date corresponding to the min unemployment rate for men 20 years and older through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinMenUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN (Men_20+) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

/*
Find the date corresponding to the min unemployment rate for women 20 years and older through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinWomenUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN (Women_20+) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;


/*
Compare unemployment rates of men and women 20 years and over. Has COVID disproportionately affected a gender group in terms of employment?*/

/*
Analyze the trend in unemployment rate for men over 20 years of age at the peak periods of different COVID variants.
*/

SELECT urate.MUR1 - urate.MUR2 AS wtChangeMen,
 	   urate.MUR1 - urate.MUR3 AS AlphaChangeMen,
 	   urate.MUR1 - urate.MUR4 AS DeltaChangeMen,
 	   urate.MUR1 - urate.MUR5 AS OmicronChangeMen
FROM
    (SELECT (CASE WHEN u.Date=mM.Date THEN u.Men_20+ ELSE 0 END) MUR1,
           (CASE WHEN u.Date=wt.Date THEN u.Men_20+ ELSE 0 END) MUR2,
           (CASE WHEN u.Date=a.Date THEN u.Men_20+ ELSE 0 END) MUR3,
           (CASE WHEN u.Date=d.Date THEN u.Men_20+ ELSE 0 END) MUR4,
           (CASE WHEN u.Date=o.Date THEN u.Men_20+ ELSE 0 END) MUR5
    FROM Unemployment_Rate u, MinMenUnempRate as mM, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (mM.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/*
Analyze the trend in unemployment rate for women over 20 years of age at the peak periods of different COVID variants.
*/

SELECT urate.WUR1 - urate.WUR2 AS wtChangeWomen,
 	   urate.WUR1 - urate.WUR3 AS AlphaChangeWomen,
 	   urate.WUR1 - urate.WUR4 AS DeltaChangeWomen,
 	   urate.WUR1 - urate.WUR5 AS OmicronChangeWomen
FROM
    (SELECT (CASE WHEN u.Date=mW.Date THEN u.Women_20+ ELSE 0 END) WUR1,
           (CASE WHEN u.Date=wt.Date THEN u.Women_20+ ELSE 0 END) WUR2,
           (CASE WHEN u.Date=a.Date THEN u.Women_20+ ELSE 0 END) WUR3,
           (CASE WHEN u.Date=d.Date THEN u.Women_20+ ELSE 0 END) WUR4,
           (CASE WHEN u.Date=o.Date THEN u.Women_20+ ELSE 0 END) WUR5  
    FROM Unemployment_Rate u, MinWomenUnempRate as mW, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (mW.Date, wt.Date, a.Date, d.Date, o.Date)) urate;
    
/* Compare trends in unemployment rate by gender to trends in COVID cases by gender over all relevant dates*/

SELECT u.Date, u.Men_20+, u.Women_20+, g.Male_Count, g.Female_Count 
FROM Unemployment_Rate u, COVID_Cases_By_Gender g
WHERE u.Date = c.Date;

/*
Find the date corresponding to the min unemployment rate for workers 16 to 19 years old through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinL20UnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN (Yrs_16_19) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

/*
Find the date corresponding to the min unemployment rate for workers 20 years and older through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinG20UnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN (Men_20+ + Women_20+) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;


/*
Compare unemployment rates of working 16 to 19-year-olds to those 20 years and over. Has COVID disproportionately affected certain age groups in terms of employment?*/

/*
Analyze the trend in unemployment rate for workers 16 to 19 years of age at the peak periods of different COVID variants.
*/

SELECT urate.LUR1 - urate.LUR2 AS wtChangeL20,
 	   urate.LUR1 - urate.LUR3 AS AlphaChangeL20,
 	   urate.LUR1 - urate.LUR4 AS DeltaChangeL20,
 	   urate.LUR1 - urate.LUR5 AS OmicronChangeL20
FROM
    (SELECT (CASE WHEN u.Date=l.Date THEN u.Yrs_16_19 ELSE 0 END) LUR1,
           (CASE WHEN u.Date=wt.Date THEN u.Yrs_16_19 ELSE 0 END) LUR2,
           (CASE WHEN u.Date=a.Date THEN u.Yrs_16_19 ELSE 0 END) LUR3,
           (CASE WHEN u.Date=d.Date THEN u.Yrs_16_19 ELSE 0 END) LUR4,
           (CASE WHEN u.Date=o.Date THEN u.Yrs_16_19 ELSE 0 END) LUR5
    FROM Unemployment_Rate u, MinL20UnempRate as l, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (l.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/*
Analyze the trend in unemployment rate for workers 20 years of age and over at the peak periods of different COVID variants.
*/

SELECT urate.GUR1 - urate.GUR2 AS wtChangeG20,
 	   urate.GUR1 - urate.GUR3 AS AlphaChangeG20,
 	   urate.GUR1 - urate.GUR4 AS DeltaChangeG20,
 	   urate.GUR1 - urate.GUR5 AS OmicronChangeG20
FROM
(SELECT (CASE WHEN u.Date=g.Date THEN (u.Men_20+ + u.Women_20+) ELSE 0 END) GUR1,
	   (CASE WHEN u.Date=wt.Date THEN (u.Men_20+ + u.Women_20+) ELSE 0 END) GUR2,
	   (CASE WHEN u.Date=a.Date THEN (u.Men_20+ + u.Women_20+) ELSE 0 END) GUR3,
	   (CASE WHEN u.Date=d.Date THEN (u.Men_20+ + u.Women_20+) ELSE 0 END) GUR4,
	   (CASE WHEN u.Date=o.Date THEN (u.Men_20+ + u.Women_20+) ELSE 0 END) GUR5 
FROM Unemployment_Rate u, MinG20UnempRate as g, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
WHERE u.Date in (g.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/* Compare trends in unemployment rate by age to trends in COVID cases by over all relevant dates*/

SELECT u.Date, u.Yrs_16_19, (u.Men_20+ + u.Women_20+) as Yrs_20+, c.Cases_Total
FROM Unemployment_Rate u, COVID_Cases c
WHERE u.Date = c.Date;

/*
Find the maximum count of the COVID cases by race throughout all pertinent time periods. 
*/
/* Need to make race as a column

CREATE or REPLACE TABLE MaxCaseRace AS
SELECT c1.Race, c1.Max, c2.Date
FROM COVID_Cases_By_Race c2,
	(SELECT  Race, MAX(c.Cases) as Max
	FROM COVID_Cases_By_Race c
	WHERE m.Date = c.Date
	GROUP BY Race) c1
WHERE c1.max = c2.cases and c1.race = c2.race;

CREATE or REPLACE VIEW Unemp_Rate_By_Region AS 
SELECT (SUM(Connecticut + Massachusetts + Maine + New Hampshire + New Jersey + New York + Pennsylvania + Rhode Island + Vermont) / 9) Northeast
FROM State_Unemployment_Rates 

*/


