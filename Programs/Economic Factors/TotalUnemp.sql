
/*
Find the corresponding month where the total number of COVID cases was the highest in the database. 
*/
/*  2022-01-20 */
CREATE or REPLACE VIEW MaxCaseDate AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases c2, Date_To_MonthDate md,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases) c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;


CREATE or REPLACE VIEW MinUnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Total) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Create a view corresponding to all cases on a given date (weekly data) throughout all states.
*/

CREATE or REPLACE VIEW COVID_Cases AS
SELECT Date, SUM(new_cases) Cases_Total
FROM COVID_Cases_By_State
GROUP BY Date;

/*
Create a view corresponding to the COVID Wild Type peak, i.e. the corresponding month where the total number cases was highest within the time period where the Wild Type variant was most prevalent.
*/
/*2020-10-29*/
CREATE or REPLACE VIEW MaxCaseWT AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases c2, Date_To_MonthDate md,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2020-01-01' and Date < '2020-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;

/*
Create a view corresponding to the COVID Alpha peak, i.e. the corresponding month where the total number cases was highest within the time period where the Alpha variant was most prevalent.
*/

/*2021-01-14*/
CREATE or REPLACE VIEW MaxCaseAlpha AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases c2, Date_To_MonthDate md,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2020-11-01' and Date < '2021-06-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;


/*
Create a view corresponding to the COVID Delta peak, i.e. the corresponding month where the total number cases was highest within the time period where the Delta variant was most prevalent.
*/

/*2021-09-02*/

CREATE or REPLACE VIEW MaxCaseDelta AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases c2, Date_To_MonthDate md,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2021-06-01' and Date < '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;


/*
Create a view corresponding to the COVID Omicron peak, i.e. the corresponding month where the total number cases was highest within the time period where the Omicron variant was most prevalent.
*/
/*2022-01-20*/
CREATE or REPLACE VIEW MaxCaseOmicron AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases c2, Date_To_MonthDate md, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;


/*
Analyze the trend in total unemployment rate at the peak periods of different COVID variants in comparison to the pre-COVID rate, defined as Dec 2019
*/
    
SELECT urate.TUR1 AS Pre_COVID_2019,
       urate.TUR2 AS WildType_Peak, 
 	   urate.TUR3 AS Alpha_Peak, 
 	   urate.TUR4 AS Delta_Peak,
 	   urate.TUR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Total ELSE 0 END) TUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Total ELSE 0 END) TUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Total ELSE 0 END) TUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Total ELSE 0 END) TUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Total ELSE 0 END) TUR5
    FROM Unemployment_Rate u, MinUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/* maybe output a table of max COVID case levels at each of the peaks */

SELECT wt.mx Cases_WildType, a.mx Cases_Alpha, d.mx Cases_Delta, o.mx Cases_Omicron
FROM MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o;


CREATE or REPLACE VIEW COVID_Cases_Monthly AS
SELECT md.MonthDate, SUM(c.Cases_Total) Cases_Total
FROM COVID_Cases c, Date_To_MonthDate md
WHERE c.Date = md.Date
GROUP BY md.MonthDate;

/* Compare trends in total unemployment rate to trends in COVID cases over all relevant dates*/

SELECT u.Date, c.MonthDate, u.Total, c.Cases_Total
FROM Unemployment_Rate u, COVID_Cases_Monthly c
WHERE u.Date = c.MonthDate;

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

*/






