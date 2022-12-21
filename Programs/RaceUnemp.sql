/*
Find the date corresponding to the min unemployment rate for Whites through the 6 months before the pandemic started.
*/
/* unemployment rate by month, so represent month as first day of that month */
CREATE or REPLACE VIEW MinWhiteUnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(White) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.White and (Date = '2019-09-01');

/*
Find the date corresponding to the min unemployment rate for Blacks through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinBlackUnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Black) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Black and (Date = '2019-09-01');

/*
Find the date corresponding to the min unemployment rate for Hispanics through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinHispanicUnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Hispanic) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Hispanic and (Date = '2019-09-01');


/*
Find the date corresponding to the min unemployment rate for Asians through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinAsianUnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Asian) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Asian and (Date >= '2019-06-01' and Date <= '2019-12-01');


/*
Compare trends in unemployment rates of Asian, White, Black or African American, and Hispanic people at the peak periods of different COVID variants.

show increase or decline trends in unemployment by subtracting (minimum unemployment rate for a given racial group before pandemic - rate at a given variant peak ) */
       
/*
Analyze the trend in unemployment rate for Whites at the peak periods of different COVID variants.
*/

CREATE or REPLACE VIEW White_UR_Peaks AS
SELECT urate.WUR1 AS Pre_COVID,
       urate.WUR2 AS WildType_Peak, 
 	   urate.WUR3 AS Alpha_Peak, 
 	   urate.WUR4 AS Delta_Peak,
 	   urate.WUR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.White ELSE 0 END) WUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.White ELSE 0 END) WUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.White ELSE 0 END) WUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.White ELSE 0 END) WUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.White ELSE 0 END) WUR5
    FROM Unemployment_Rate u, MinWhiteUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;


/*
Analyze the trend in unemployment rate for Blacks at the peak periods of different COVID variants.
*/

CREATE or REPLACE VIEW Black_UR_Peaks AS
SELECT urate.BUR1 AS Pre_COVID,
       urate.BUR2 AS WildType_Peak, 
 	   urate.BUR3 AS Alpha_Peak, 
 	   urate.BUR4 AS Delta_Peak,
 	   urate.BUR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Black ELSE 0 END) BUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Black ELSE 0 END) BUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Black ELSE 0 END) BUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Black ELSE 0 END) BUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Black ELSE 0 END) BUR5
    FROM Unemployment_Rate u, MinBlackUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;
    
/*
Analyze the trend in unemployment rate for Hispanics at the peak periods of different COVID variants.
*/

CREATE or REPLACE VIEW Hispanic_UR_Peaks AS
SELECT urate.HUR1 AS Pre_COVID,
       urate.HUR2 AS WildType_Peak, 
 	   urate.HUR3 AS Alpha_Peak, 
 	   urate.HUR4 AS Delta_Peak,
 	   urate.HUR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Hispanic ELSE 0 END) HUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Hispanic ELSE 0 END) HUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Hispanic ELSE 0 END) HUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Hispanic ELSE 0 END) HUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Hispanic ELSE 0 END) HUR5
    FROM Unemployment_Rate u, MinHispanicUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*
Analyze the trend in unemployment rate for Asians at the peak periods of different COVID variants.
*/

CREATE or REPLACE VIEW Asian_UR_Peaks AS
SELECT urate.AUR1 AS Pre_COVID,
       urate.AUR2 AS WildType_Peak, 
 	   urate.AUR3 AS Alpha_Peak, 
 	   urate.AUR4 AS Delta_Peak,
 	   urate.AUR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Asian ELSE 0 END) AUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Asian ELSE 0 END) AUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Asian ELSE 0 END) AUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Asian ELSE 0 END) AUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Asian ELSE 0 END) AUR5
    FROM Unemployment_Rate u, MinAsianUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;
    

CREATE TABLE Race_Peaks AS
SELECT 'W' as id, w.* FROM White_UR_Peaks w
UNION
SELECT 'B' as id, b.* FROM Black_UR_Peaks b
UNION
SELECT 'H' as id, h.* FROM Hispanic_UR_Peaks h
UNION 
SELECT 'A' as id, a.* FROM Asian_UR_Peaks a;

SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_Peak
FROM Race_Peaks
WHERE id = CASE '$Racial_Group' 
    WHEN 'White' THEN 'W'
    WHEN 'Black' THEN 'B' 
    WHEN 'Hispanic' THEN 'H'
    WHEN 'Asian' THEN 'A'
    END;
    

CREATE or REPLACE VIEW COVID_Cases_By_Race_Monthly_View AS
SELECT md.MonthDate, SUM(Cases_Total) Cases_Total, SUM(Cases_White) Cases_White,  SUM(Cases_Black) Cases_Black, SUM(Cases_LatinX) Cases_LatinX, SUM(Cases_Asian) Cases_Asian
FROM COVID_Cases_By_Race c, Date_To_MonthDate md
WHERE c.Date = md.Date
GROUP BY md.MonthDate;

CREATE TABLE COVID_Cases_By_Race_Monthly AS
SELECT *
FROM COVID_Cases_By_Race_Monthly_View;

INSERT INTO COVID_Cases_By_Race_Monthly VALUES ("2019-12-01",0,0,0,0,0);

/* Compare trends in unemployment rate by race to trends in COVID cases by race over all relevant dates*/

SELECT 
Occupation,
(CASE 
WHEN  '$Year' = '2019' THEN (Total_2019) 
WHEN  '$Year' = '2020' THEN (Total_2020) 
END) as Total_Rates
FROM Employed_Occupation_By_Race
WHERE Racial_Group = '$Racial_Group'

SELECT u.Date,
(CASE 
WHEN  '$Racial_Group' = 'White' THEN (u.White)  
WHEN  '$Racial_Group' = 'Black' THEN (u.Black) 
WHEN  '$Racial_Group' = 'Hispanic' THEN (u.Hispanic)
WHEN  '$Racial_Group' = 'Asian' THEN (u.Asian)
WHEN  '$Racial_Group' = 'Total' THEN (u.Total)
END) as Unemp_Race_Rates, 
(CASE 
WHEN  '$Racial_Group' = 'White' THEN (c.Cases_White)  
WHEN  '$Racial_Group' = 'Black' THEN (c.Cases_Black) 
WHEN  '$Racial_Group' = 'Hispanic' THEN (c.Cases_LatinX)
WHEN  '$Racial_Group' = 'Asian' THEN (c.Cases_Asian)
WHEN  '$Racial_Group' = 'Total' THEN (c.Cases_Total)
END) as Cases_Race

FROM Unemployment_Rate u LEFT OUTER JOIN COVID_Cases_By_Race_Monthly c ON u.Date = c.MonthDate;

SELECT 
Education,
(CASE 
WHEN  '$Racial_Group' = 'White' THEN (White_Total)  
WHEN  '$Racial_Group' = 'Black' THEN (Black_Total) 
WHEN  '$Racial_Group' = 'Hispanic' THEN (Hispanic_Total)
WHEN  '$Racial_Group' = 'Asian' THEN (Asian_Total)
WHEN  '$Racial_Group' = 'Total' THEN (Total)

END) as Total_Emp_Levels
FROM Education_By_Race NATURAL JOIN Education_By_Gender


SELECT r.MonthDate, 
(CASE 
WHEN  '$Racial_Group' = 'White' THEN (r.White)  
WHEN  '$Racial_Group' = 'Black' THEN (r.Black) 
WHEN  '$Racial_Group' = 'Hispanic' THEN (r.Hispanic)
WHEN  '$Racial_Group' = 'Asian' THEN (r.Asian)
WHEN  '$Racial_Group' = 'Total' THEN (r.Total_16to24_years + r.Total_25to54_years + r.Total_55Plus)
END) as Remote_Work_Race, 
(CASE 
WHEN  '$Racial_Group' = 'White' THEN (c.Cases_White)  
WHEN  '$Racial_Group' = 'Black' THEN (c.Cases_Black) 
WHEN  '$Racial_Group' = 'Hispanic' THEN (c.Cases_LatinX)
WHEN  '$Racial_Group' = 'Asian' THEN (c.Cases_Asian)
WHEN  '$Racial_Group' = 'Total' THEN (c.Cases_Total)
END) as Cases_Race
FROM Remote_Work_By_Gender_Race r LEFT OUTER JOIN COVID_Cases_By_Race_Monthly c ON r.MonthDate = c.MonthDate;

SELECT 
Marital_Status,
(CASE 
WHEN  '$Year' = '2019' THEN (Total_2019) 
WHEN  '$Year' = '2020' THEN (Total_2020) 
END) as Race_Marital
FROM Unemployed_Marital_Status_By_Race_Gender
WHERE Marital_Status LIKE '$Racial_Group%'


SELECT 
Worktime_Status,
(CASE 
WHEN  '$Racial_Group' = 'White' THEN (White_Total)  
WHEN  '$Racial_Group' = 'Black' THEN (Black_Total) 
WHEN  '$Racial_Group' = 'Hispanic' THEN (Hispanic_Total)
WHEN  '$Racial_Group' = 'Asian' THEN (Asian_Total)
WHEN  '$Racial_Group' = 'Total' THEN (Total)
END) as Employed_WorkTime
FROM Worktime_Status_By_Gender_Race
WHERE Worktime_Status in ('2021_Full_time', '2021_Part_time') 

SELECT 
Worktime_Status,
(CASE 
WHEN  '$Racial_Group' = 'White' THEN (White_Total)  
WHEN  '$Racial_Group' = 'Black' THEN (Black_Total) 
WHEN  '$Racial_Group' = 'Hispanic' THEN (Hispanic_Total)
WHEN  '$Racial_Group' = 'Asian' THEN (Asian_Total)
WHEN  '$Racial_Group' = 'Total' THEN (Total)
END) as Employed_WorkTime
FROM Worktime_Status_By_Gender_Race
WHERE Worktime_Status in ('2019_Full_time_less35_hours', '2020_Full_time_less35_hours', '2021_Full_time_less35_hours') 

SELECT 
Worktime_Status,
(CASE 
WHEN  '$Racial_Group' = 'White' THEN (White_Total)  
WHEN  '$Racial_Group' = 'Black' THEN (Black_Total) 
WHEN  '$Racial_Group' = 'Hispanic' THEN (Hispanic_Total)
WHEN  '$Racial_Group' = 'Asian' THEN (Asian_Total)
WHEN  '$Racial_Group' = 'Total' THEN (Total)
END) as Employed_WorkTime
FROM Worktime_Status_By_Gender_Race
WHERE Worktime_Status in ('2019_Full_time_more35_hours', '2020_Full_time_more35_hours', '2021_Full_time_more35_hours')

SELECT 
Worktime_Status,
(CASE 
WHEN  '$Racial_Group' = 'White' THEN (White_Total)  
WHEN  '$Racial_Group' = 'Black' THEN (Black_Total) 
WHEN  '$Racial_Group' = 'Hispanic' THEN (Hispanic_Total)
WHEN  '$Racial_Group' = 'Asian' THEN (Asian_Total)
WHEN  '$Racial_Group' = 'Total' THEN (Total)
END) as Employed_WorkTime
FROM Worktime_Status_By_Gender_Race
WHERE Worktime_Status in ('2019_Part_time_economic_reasons', '2020_Part_time_economic_reasons', '2021_Part_time_economic_reasons')

SELECT 
Worktime_Status,
(CASE 
WHEN  '$Racial_Group' = 'White' THEN (White_Total)  
WHEN  '$Racial_Group' = 'Black' THEN (Black_Total) 
WHEN  '$Racial_Group' = 'Hispanic' THEN (Hispanic_Total)
WHEN  '$Racial_Group' = 'Asian' THEN (Asian_Total)
WHEN  '$Racial_Group' = 'Total' THEN (Total)
END) as Employed_WorkTime
FROM Worktime_Status_By_Gender_Race
WHERE Worktime_Status in ('2019_Part_time_noneconomic_reasons', '2020_Part_time_noneconomic_reasons', '2021_Part_time_noneconomic_reasons')

CREATE or REPLACE VIEW RaceRemoteWorkYearCol AS 
SELECT SUM(CASE WHEN MonthDate = "2020-05-01" THEN White ELSE 0 END) as White_2020,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN Black ELSE 0 END) as Black_2020,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN Hispanic ELSE 0 END) as Hispanic_2020,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN Asian ELSE 0 END) as Asian_2020,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN (Total_16to24_years + Total_25to54_years + Total_55Plus) ELSE 0 END) as Total_2020,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN White ELSE 0 END) as White_2021,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Black ELSE 0 END) as Black_2021,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Hispanic ELSE 0 END) as Hispanic_2021,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Asian ELSE 0 END) as Asian_2021,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN (Total_16to24_years + Total_25to54_years + Total_55Plus) ELSE 0 END) as Total_2021,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN White ELSE 0 END) as White_2022,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Black ELSE 0 END) as Black_2022,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Hispanic ELSE 0 END) as Hispanic_2022,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Asian ELSE 0 END) as Asian_2022,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN (Total_16to24_years + Total_25to54_years + Total_55Plus) ELSE 0 END) as Total_2022

FROM Remote_Work_By_Gender_Race

SELECT 
(CASE 
WHEN  '$Racial_Group' = 'White' THEN ((White_2021/White_2020 - 1)  * 100) 
WHEN  '$Racial_Group' = 'Black' THEN ((Black_2021/Black_2020 - 1)  * 100) 
WHEN  '$Racial_Group' = 'Hispanic' THEN ((Hispanic_2021/Hispanic_2020 - 1)  * 100) 
WHEN  '$Racial_Group' = 'Asian' THEN ((Asian_2021/Asian_2020 - 1)  * 100) 
WHEN  '$Racial_Group' = 'Total' THEN ((Total_2021/Total_2020 - 1)  * 100) 
END) as Pct_Change_2020_2021,
(CASE 
WHEN  '$Racial_Group' = 'White' THEN ((White_2022/White_2021 - 1)  * 100) 
WHEN  '$Racial_Group' = 'Black' THEN ((Black_2022/Black_2021 - 1)  * 100) 
WHEN  '$Racial_Group' = 'Hispanic' THEN ((Hispanic_2022/Hispanic_2021 - 1)  * 100) 
WHEN  '$Racial_Group' = 'Asian' THEN ((Asian_2022/Asian_2021 - 1)  * 100) 
WHEN  '$Racial_Group' = 'Total' THEN ((Total_2022/Total_2021 - 1)  * 100) 
END) as Pct_Change_2021_2022
FROM RaceRemoteWorkYearCol