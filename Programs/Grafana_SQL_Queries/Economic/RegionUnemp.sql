
/* summarize unemployment rate by region */
CREATE or REPLACE VIEW Unemployment_Rate_By_Region AS
SELECT u.Date, r.Region, ROUND(AVG(Unemp_Rate), 2) Unemp_Rate
FROM Unemployment_Rate_By_State u, State_To_Region r
WHERE u.State = r.State
GROUP BY u.Date, r.Region;

/* RESET COLUMNS TO BE DIFFERENT REGIONS RATHER THAN HAVE REGION AS A COL */
CREATE or REPLACE VIEW UnempRateRegionCol AS 
SELECT u.Date, 
SUM(CASE WHEN u.Region = "West" THEN u.Unemp_Rate ELSE 0 END) West,
SUM(CASE WHEN u.Region = "South" THEN u.Unemp_Rate ELSE 0 END) South, 
SUM(CASE WHEN u.Region = "Northeast" THEN u.Unemp_Rate ELSE 0 END) Northeast, 
SUM(CASE WHEN u.Region = "Midwest" THEN u.Unemp_Rate ELSE 0 END) Midwest
FROM Unemployment_Rate_By_Region u
GROUP BY u.Date;

/* use State_To_Code to get State Name in view */
CREATE or REPLACE VIEW COVID_Cases_By_State_With_Name AS
SELECT c.*, o.State_Name
FROM COVID_Cases_By_State c, State_To_Code o
WHERE c.State_Code = o.code;

/* summarize COVID cases by region */
CREATE or REPLACE VIEW COVID_Cases_By_Region_Monthly AS
SELECT md.MonthDate, c.Region, SUM(c.Cases_Total) Cases_Total 
FROM Date_To_MonthDate md,
    (SELECT c.Date, r.Region, SUM(new_cases) Cases_Total 
    FROM COVID_Cases_By_State_With_Name c, State_To_Region r
    WHERE c.State_Name = r.State
    GROUP BY c.Date, r.Region) c
WHERE c.Date = md.Date 
GROUP BY md.MonthDate, c.Region;

/* RESET COLUMNS TO BE DIFFERENT REGIONS RATHER THAN HAVE REGION AS A COL */
CREATE or REPLACE VIEW COVIDCasesMonthlyRegionCol AS 
SELECT c.MonthDate, 
SUM(CASE WHEN c.Region = "West" THEN c.Cases_Total ELSE 0 END) Cases_West,
SUM(CASE WHEN c.Region = "South" THEN c.Cases_Total ELSE 0 END) Cases_South, 
SUM(CASE WHEN c.Region = "Northeast" THEN c.Cases_Total ELSE 0 END) Cases_Northeast, 
SUM(CASE WHEN c.Region = "Midwest" THEN c.Cases_Total ELSE 0 END) Cases_Midwest
FROM COVID_Cases_By_Region_Monthly c
GROUP BY c.MonthDate;


/*
Find the date corresponding to the min unemployment rate for the West region through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinWestUnempRate AS 
SELECT u1.min, u2.Date
FROM UnempRateRegionCol u2, 
    (SELECT MIN(West) min
     FROM UnempRateRegionCol
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.West and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Find the date corresponding to the min unemployment rate for the South region through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinSouthUnempRate AS 
SELECT u1.min, u2.Date
FROM UnempRateRegionCol u2, 
    (SELECT MIN(South) min
     FROM UnempRateRegionCol
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.South and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Find the date corresponding to the min unemployment rate for the Northeast region through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinNortheastUnempRate AS 
SELECT u1.min, u2.Date
FROM UnempRateRegionCol u2, 
    (SELECT MIN(Northeast) min
     FROM UnempRateRegionCol
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Northeast and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Find the date corresponding to the min unemployment rate for the Midwest region through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinMidwestUnempRate AS 
SELECT u1.min, u2.Date
FROM UnempRateRegionCol u2, 
    (SELECT MIN(Midwest) min
     FROM UnempRateRegionCol
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Midwest and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Analyze the trend in unemployment rate for different regions of the US at the peak periods of different COVID variants in comparison to the pre-COVID rate. Has COVID disproportionately affected a certain region in terms of employment?*/

CREATE or REPLACE VIEW West_UR_Peaks AS
SELECT urate.WUR1 AS Pre_COVID,
       urate.WUR2 AS WildType_Peak, 
 	   urate.WUR3 AS Alpha_Peak, 
 	   urate.WUR4 AS Delta_Peak,
 	   urate.WUR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.West ELSE 0 END) WUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.West ELSE 0 END) WUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.West ELSE 0 END) WUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.West ELSE 0 END) WUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.West ELSE 0 END) WUR5
    FROM UnempRateRegionCol u, MinWestUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

CREATE or REPLACE VIEW South_UR_Peaks AS
SELECT urate.SUR1 AS Pre_COVID,
       urate.SUR2 AS WildType_Peak, 
 	   urate.SUR3 AS Alpha_Peak, 
 	   urate.SUR4 AS Delta_Peak,
 	   urate.SUR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.South ELSE 0 END) SUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.South ELSE 0 END) SUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.South ELSE 0 END) SUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.South ELSE 0 END) SUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.South ELSE 0 END) SUR5
    FROM UnempRateRegionCol u, MinSouthUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

CREATE or REPLACE VIEW Northeast_UR_Peaks AS
SELECT urate.NEUR1 AS Pre_COVID,
       urate.NEUR2 AS WildType_Peak, 
 	   urate.NEUR3 AS Alpha_Peak, 
 	   urate.NEUR4 AS Delta_Peak,
 	   urate.NEUR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Northeast ELSE 0 END) NEUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Northeast ELSE 0 END) NEUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Northeast ELSE 0 END) NEUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Northeast ELSE 0 END) NEUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Northeast ELSE 0 END) NEUR5
    FROM UnempRateRegionCol u, MinNortheastUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

CREATE or REPLACE VIEW Midwest_UR_Peaks AS
SELECT urate.MWUR1 AS Pre_COVID,
       urate.MWUR2 AS WildType_Peak, 
 	   urate.MWUR3 AS Alpha_Peak, 
 	   urate.MWUR4 AS Delta_Peak,
 	   urate.MWUR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Midwest ELSE 0 END) MWUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Midwest ELSE 0 END) MWUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Midwest ELSE 0 END) MWUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Midwest ELSE 0 END) MWUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Midwest ELSE 0 END) MWUR5
    FROM UnempRateRegionCol u, MinMidwestUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/* combine all peaks in one table for display */
CREATE TABLE Region_Peaks AS
SELECT 'W' as id, w.* FROM West_UR_Peaks w
UNION
SELECT 'S' as id, s.* FROM South_UR_Peaks s
UNION
SELECT 'NE' as id, ne.* FROM Northeast_UR_Peaks ne
UNION
SELECT 'MW' as id, mw.* FROM Midwest_UR_Peaks mw;


SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_Peak
FROM Region_Peaks
WHERE id = CASE '$Region' 
    WHEN 'West' THEN 'W'
    WHEN 'South' THEN 'S' 
    WHEN 'Northeast' THEN 'NE' 
    WHEN 'Midwest' THEN 'MW' END;

/* Compare trends in unemployment rate by region to trends in COVID cases by region over all relevant dates*/

SELECT u.Date, 
(CASE 
WHEN  '$Region' = 'West' THEN u.West
WHEN  '$Region' = 'South' THEN u.South
WHEN  '$Region' = 'Northeast' THEN u.Northeast
 WHEN  '$Region' = 'Midwest' THEN u.Midwest
END) as Unemp_Region,
(CASE 
WHEN  '$Region' = 'West' THEN r.Cases_West
WHEN  '$Region' = 'South' THEN r.Cases_South
WHEN  '$Region' = 'Northeast' THEN r.Cases_Northeast
WHEN  '$Region' = 'Midwest' THEN r.Cases_Midwest
END) as Cases_Region

FROM UnempRateRegionCol u LEFT OUTER JOIN COVIDCasesMonthlyRegionCol r ON u.Date = r.MonthDate;

SELECT u.Date, u.Unemp_Rate, r.Cases_Total 
FROM Unemployment_Rate_By_Region u LEFT OUTER JOIN COVID_Cases_By_Region_Monthly r ON u.Region = r.Region and u.Date = r.MonthDate
WHERE u.Region = '$Region' and r.Region = '$Region';

/* closer look at unemployment and COVID cases separately */

SELECT Date, West, South, Northeast, Midwest
FROM UnempRateRegionCol

SELECT MonthDate, Cases_West, Cases_South, Cases_Northeast, Cases_Midwest
FROM COVIDCasesMonthlyRegionCol

