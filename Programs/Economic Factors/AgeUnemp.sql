/*
Find the date corresponding to the min unemployment rate for workers 16 to 19 years old through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinL20UnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Yrs_16_19) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Yrs_16_19 and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Find the date corresponding to the min unemployment rate for workers 20 years and older through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinG20UnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(((Men_20_plus + Women_20_plus) / 2.0)) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = ((Men_20_plus + Women_20_plus) / 2.0) and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Compare unemployment rates of working 16 to 19-year-olds to those 20 years and over at the peak periods of different COVID variants in comparison to the pre-COVID rate, defined as December 2019. Has COVID disproportionately affected certain age groups in terms of employment?*/

/*
Analyze the trend in unemployment rate for workers 16 to 19 years of age at the peak periods of different COVID variants.
*/

SELECT urate.LUR1 AS Yrs_16_19_Pre_COVID,
       urate.LUR2 AS Yrs_16_19_WildType_Peak, 
 	   urate.LUR3 AS Yrs_16_19_Alpha_Peak, 
 	   urate.LUR4 AS Yrs_16_19_Delta_Peak,
 	   urate.LUR5 AS Yrs_16_19_Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Yrs_16_19 ELSE 0 END) LUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Yrs_16_19 ELSE 0 END) LUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Yrs_16_19 ELSE 0 END) LUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Yrs_16_19 ELSE 0 END) LUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Yrs_16_19 ELSE 0 END) LUR5
    FROM Unemployment_Rate u, MinL20UnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*
Analyze the trend in unemployment rate for workers 20 years of age and over at the peak periods of different COVID variants.
*/


SELECT urate.GUR1 AS Yrs_20up_Pre_COVID,
       urate.GUR2 AS Yrs_20up_WildType_Peak, 
 	   urate.GUR3 AS Yrs_20up_Alpha_Peak, 
 	   urate.GUR4 AS Yrs_20up_Delta_Peak,
 	   urate.GUR5 AS Yrs_20up_Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN ((u.Men_20_plus + u.Women_20_plus) / 2) ELSE 0 END) GUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN ((u.Men_20_plus + u.Women_20_plus) / 2) ELSE 0 END) GUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN ((u.Men_20_plus + u.Women_20_plus) / 2) ELSE 0 END) GUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN ((u.Men_20_plus + u.Women_20_plus) / 2) ELSE 0 END) GUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN ((u.Men_20_plus + u.Women_20_plus) / 2) ELSE 0 END) GUR5
    FROM Unemployment_Rate u, MinG20UnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;
    
/* Compare trends in unemployment rate by age to trends in COVID cases by over all relevant dates*/

SELECT u.Date, u.Yrs_16_19, ((u.Men_20_plus + u.Women_20_plus) / 2) as Yrs_20up
FROM Unemployment_Rate u

SELECT u.Date, c.MonthDate, u.Yrs_16_19, ((u.Men_20_plus + u.Women_20_plus) / 2) as Yrs_20up, c.Cases_Total
FROM Unemployment_Rate u, COVID_Cases_Monthly c
WHERE u.Date = c.MonthDate;


/* ADD EMPLOYMENT LEVEL TABLE */
SELECT Age_Group, AVG(Employment_Level) 
FROM Employment_Level_By_Age GROUP BY Age_Group;

/* RESET COLUMNS TO BE AGE GROUPS RATHER THAN HAVE AGE AS A COL */
CREATE or REPLACE VIEW EmpLevelAgeCol AS 
SELECT e.Date, SUM(CASE WHEN e.Age_Group = "Yrs_16_19" THEN e.Employment_Level ELSE 0 END) Yrs_16_19,
SUM(CASE WHEN e.Age_Group = "Yrs_20_24" THEN e.Employment_Level ELSE 0 END) Yrs_20_24,
SUM(CASE WHEN e.Age_Group = "Yrs_25_34" THEN e.Employment_Level ELSE 0 END) Yrs_25_34, 
SUM(CASE WHEN e.Age_Group = "Yrs_35_44" THEN e.Employment_Level ELSE 0 END) Yrs_35_44, 
SUM(CASE WHEN e.Age_Group = "Yrs_45_54" THEN e.Employment_Level ELSE 0 END) Yrs_45_54, 
SUM(CASE WHEN e.Age_Group = "Yrs_55_up" THEN e.Employment_Level ELSE 0 END) Yrs_55_up, 
SUM(CASE WHEN e.Age_Group = "Total" THEN e.Employment_Level ELSE 0 END) Total
FROM Employment_Level_By_Age e
GROUP BY Date;


CREATE or REPLACE VIEW EmpLevelPct AS 
SELECT e.Date, (e.Yrs_16_19 / e.Total * 100) Yrs_16_19, (e.Yrs_20_24 / e.Total * 100) Yrs_20_24, (e.Yrs_25_34 / e.Total * 100) Yrs_25_34, (e.Yrs_35_44 / e.Total * 100) Yrs_35_44, (e.Yrs_45_54 / e.Total * 100) Yrs_45_54, (e.Yrs_55_up / e.Total * 100) Yrs_55_up
FROM EmpLevelAgeCol e;

/* max employment level pre covid */
CREATE or REPLACE VIEW MaxEmpLevel AS 
SELECT e1.max, e2.Date
FROM EmpLevelAgeCol e2, 
    (SELECT MAX(Total) max
     FROM EmpLevelAgeCol
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') e1
WHERE e1.max = e2.Total and (Date >= '2019-06-01' and Date <= '2019-12-01');

SELECT e.Yrs_16_19, e.Yrs_20_24, e.Yrs_25_34, e.Yrs_35_44, e.Yrs_45_54, e.Yrs_55_up
FROM EmpLevelAgeCol e, MaxEmpLevel m
WHERE e.Date = m.Date;

/* employment level different variants */

SELECT e.Yrs_16_19, e.Yrs_20_24, e.Yrs_25_34, e.Yrs_35_44, e.Yrs_45_54, e.Yrs_55_up
FROM EmpLevelAgeCol e, MaxCaseWT m
WHERE e.Date = m.MonthDate;

SELECT e.Yrs_16_19, e.Yrs_20_24, e.Yrs_25_34, e.Yrs_35_44, e.Yrs_45_54, e.Yrs_55_up
FROM EmpLevelAgeCol e, MaxCaseAlpha m
WHERE e.Date = m.MonthDate;

SELECT e.Yrs_16_19, e.Yrs_20_24, e.Yrs_25_34, e.Yrs_35_44, e.Yrs_45_54, e.Yrs_55_up
FROM EmpLevelAgeCol e, MaxCaseDelta m
WHERE e.Date = m.MonthDate;

SELECT e.Yrs_16_19, e.Yrs_20_24, e.Yrs_25_34, e.Yrs_35_44, e.Yrs_45_54, e.Yrs_55_up
FROM EmpLevelAgeCol e, MaxCaseOmicron m
WHERE e.Date = m.MonthDate;
