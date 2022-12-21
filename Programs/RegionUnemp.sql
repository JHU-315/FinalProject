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

CREATE or REPLACE VIEW COVID_Cases_By_State_With_Name AS
SELECT c.*, o.State_Name
FROM COVID_Cases_By_State c, State_To_Code o
WHERE c.State_Code = o.code;

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

SELECT Date, West, South, Northeast, Midwest
FROM UnempRateRegionCol

SELECT MonthDate, Cases_West, Cases_South, Cases_Northeast, Cases_Midwest
FROM COVIDCasesMonthlyRegionCol

SELECT c.State, ROUND((RPC_2020/RPC_2019 - 1) * 100, 2) as Personal_Consumption_2019_2020,
       ROUND((RPC_2021/RPC_2020 - 1) * 100, 2) as Personal_Consumption_2020_2021,
       ROUND((RGDP_2020/RGDP_2019 - 1) * 100, 2) as GDP_2019_2020,
       ROUND((RGDP_2021/RGDP_2020 - 1) * 100, 2) as GDP_2020_2021,
       ROUND((Employment_2020/Employment_2019 - 1) * 100, 2) as Employment_2019_2020,
       ROUND((Employment_2021/Employment_2020 - 1) * 100, 2) as Employment_2020_2021

FROM Real_Personal_Consumption_By_State c, Total_Employment_By_State e, Real_GDP_By_State as g
WHERE c.State = e.State and c.State = g.State and e.State = g.State and c.State = '$States'


SELECT RPC_2019, RPC_2020, RPC_2021, RGDP_2019, RGDP_2020, RGDP_2021
FROM Real_Personal_Consumption_By_State c, Real_GDP_By_State as g
WHERE c.State = g.State and c.State = '$States'

SELECT i.State, ROUND((RPI_2020/RPI_2019 - 1) * 100, 2) as Personal_Income_2019_2020,
       ROUND((RPI_2021/RPI_2020 - 1) * 100, 2) as Personal_Income_2020_2021,
       ROUND((MHI_2020/MHI_2019 - 1) * 100, 2) as Median_Household_Income_2019_2020,
       ROUND((MHI_2021/MHI_2020 - 1) * 100, 2) as Median_Household_Income_2020_2021,
       ROUND((Poverty_Estimate_2020/Poverty_Estimate_2019 - 1) * 100, 2) as Poverty_Estimate_2019_2020,
       ROUND((Poverty_Estimate_2021/Poverty_Estimate_2020 - 1) * 100, 2) as Poverty_Estimate_2020_2021
           
FROM Real_Personal_Income_By_State i, Poverty_Estimate_By_State p, Median_Household_Income_By_State as h
WHERE i.State = p.State and i.State = h.State and h.State = p.State and i.State = '$States'  

SELECT Wealth_Designator as Designator, MHI_2021 as Median_Household_Income 
FROM State_Is_Wealthy w, Median_Household_Income_By_State m WHERE m.State = w.State and m.State = '$States';

SELECT m.MonthDate, i.State, i.`Personal Income`
FROM Personal_Income_By_State i, Month_To_Quarter q, MonthString_To_MonthDate m 
WHERE q.Month = m.MonthString and i.Quarter = q.Quarter and i.State = '$States'

SELECT p.Year, p.Poverty_Percent
FROM Poverty_Rate_By_State p
WHERE State = '$States'

SELECT State, latitude, longitude, Life_Expectancy
FROM Life_Expectancy_By_State l, State_Locations s
WHERE l.State = s.State_Name and l.State = '$States' and l.Year = '$Year'

