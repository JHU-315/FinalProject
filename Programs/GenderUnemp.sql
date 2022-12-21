/*
Find the date corresponding to the min unemployment rate for men 20 years and older through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinMenUnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Men_20_plus) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Men_20_plus and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Find the date corresponding to the min unemployment rate for women 20 years and older through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinWomenUnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Women_20_plus) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Women_20_plus and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Compare unemployment rates of men and women 20 years and over. Has COVID disproportionately affected a gender group in terms of employment?*/

/*
Analyze the trend in unemployment rate for men and women over 20 years of age at the peak periods of different COVID variants in comparison to the pre-COVID rate, defined as December 2019. Has COVID disproportionately affected a gender group in terms of unemployment?
*/

/*
Analyze the trend in unemployment rate for men over 20 years of age at the peak periods of different COVID variants in comparison to the pre-COVID rate, defined as December 2019.
*/

CREATE or REPLACE VIEW Men_UR_Peaks AS
SELECT urate.MUR1 AS Pre_COVID,
       urate.MUR2 AS WildType_Peak, 
 	   urate.MUR3 AS Alpha_Peak, 
 	   urate.MUR4 AS Delta_Peak,
 	   urate.MUR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Men_20_plus ELSE 0 END) MUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR5
    FROM Unemployment_Rate u, MinMenUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;


/*
Analyze the trend in unemployment rate for women over 20 years of age at the peak periods of different COVID variants.
*/

CREATE or REPLACE VIEW Women_UR_Peaks AS
SELECT urate.WUR1 AS Pre_COVID,
       urate.WUR2 AS WildType_Peak, 
 	   urate.WUR3 AS Alpha_Peak, 
 	   urate.WUR4 AS Delta_Peak,
 	   urate.WUR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Women_20_plus ELSE 0 END) WUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR5
    FROM Unemployment_Rate u, MinWomenUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

CREATE TABLE Gender_Peaks AS
SELECT 'M' as id, m.* FROM Men_UR_Peaks m
UNION
SELECT 'F' as id, w.* FROM Women_UR_Peaks w;

SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_Peak
FROM Gender_Peaks
WHERE id = CASE '$Sex' 
    WHEN 'Female' THEN 'F'
    WHEN 'Male' THEN 'M' END;
    
    
CREATE or REPLACE VIEW COVID_Cases_By_Gender_Monthly AS
SELECT md.MonthDate, SUM(Total_Count) Cases_Total, SUM(Male_Count) Cases_Male, SUM(Female_Count) Cases_Female
FROM COVID_Cases_By_Gender c, Date_To_MonthDate md
WHERE c.Date = md.Date
GROUP BY md.MonthDate;

/* Compare trends in unemployment rate by gender to trends in COVID cases by gender over all relevant dates*/


SELECT u.Date, 
(CASE 
WHEN  '$Sex' = 'Female' THEN u.Women_20_plus
WHEN  '$Sex' = 'Male' THEN u.Men_20_plus
WHEN  '$Sex' = 'All Sexes' THEN u.Total
END) as Unemp_Gender,
(CASE 
WHEN  '$Sex' = 'Female' THEN g.Cases_Female
WHEN  '$Sex' = 'Male' THEN g.Cases_Male
WHEN  '$Sex' = 'All Sexes' THEN g.Cases_Total
END) as Cases_Gender

FROM Unemployment_Rate u LEFT OUTER JOIN COVID_Cases_By_Gender_Monthly g ON u.Date = g.MonthDate;

SELECT u.Date, u.Men_20_plus, u.Women_20_plus
FROM Unemployment_Rate u;

SELECT g.MonthDate, g.Cases_Male, g.Cases_Female 
FROM COVID_Cases_By_Gender_Monthly g;

SELECT 
Occupation,
(CASE 
WHEN  '$Sex' = 'Female' AND '$Year' = '2019' THEN (Women_2019) 
WHEN  '$Sex' = 'Female' AND '$Year' = '2020' THEN (Women_2020) 
WHEN  '$Sex' = 'Male' AND '$Year' = '2019' THEN (Men_2019) 
WHEN  '$Sex' = 'Male' AND '$Year' = '2020' THEN (Men_2020)
WHEN  '$Sex' = 'All Sexes' AND '$Year' = '2019' THEN (Total_2019) 
WHEN  '$Sex' = 'All Sexes' AND '$Year' = '2020' THEN (Total_2020)

END) as Total_Rates
FROM Unemployed_Occupation_By_Gender
WHERE Occupation != 'Total'

SELECT 
Education,
(CASE 
WHEN  '$Sex' = 'Female' THEN (Women)  
WHEN  '$Sex' = 'Male' THEN (Men) 
WHEN  '$Sex' = 'All Sexes' THEN (Total)

END) as Total_Emp_Levels
FROM Education_By_Gender

SELECT 
Age_Group,
(CASE 
WHEN  '$Sex' = 'Female' AND '$Year' = '2019' THEN (Women_2019) 
WHEN  '$Sex' = 'Female' AND '$Year' = '2020' THEN (Women_2020) 
WHEN  '$Sex' = 'Male' AND '$Year' = '2019' THEN (Men_2019) 
WHEN  '$Sex' = 'Male' AND '$Year' = '2020' THEN (Men_2020)
WHEN  '$Sex' = 'All Sexes' AND '$Year' = '2019' THEN (Total_2019) 
WHEN  '$Sex' = 'All Sexes' AND '$Year' = '2020' THEN (Total_2020)

END) as Mult_Jobs
FROM Multiple_Job_Holders_by_Age_Gender

SELECT r.MonthDate, 
(CASE 
WHEN  '$Sex' = 'Female' THEN r.Women_16to24_years
WHEN  '$Sex' = 'Male' THEN  r.Men_16to24_years
WHEN  '$Sex' = 'All Sexes' THEN r.Total_16to24_years
END) as Yrs_16to24, 
(CASE 
WHEN  '$Sex' = 'Female' THEN r.Women_25to54_years
WHEN  '$Sex' = 'Male' THEN r.Men_25to54_years
WHEN  '$Sex' = 'All Sexes' THEN r.Total_25to54_years
END) as Yrs_25to54,
(CASE 
WHEN  '$Sex' = 'Female' THEN r.Women_55Plus
WHEN  '$Sex' = 'Male' THEN r.Men_55Plus
WHEN  '$Sex' = 'All Sexes' THEN r.Total_55Plus
END) as Yrs_55Plus,
(CASE 
WHEN  '$Sex' = 'Female' THEN g.Cases_Female
WHEN  '$Sex' = 'Male' THEN g.Cases_Male
WHEN  '$Sex' = 'All Sexes' THEN g.Cases_Total
END) as Cases_Gender

FROM Remote_Work_By_Gender_Race r LEFT OUTER JOIN COVID_Cases_By_Gender_Monthly g ON r.MonthDate = g.MonthDate;


SELECT 
Marital_Status,
(CASE 
WHEN  '$Sex' = 'Female' AND '$Year' = '2019' THEN (Women_2019) 
WHEN  '$Sex' = 'Female' AND '$Year' = '2020' THEN (Women_2020) 
WHEN  '$Sex' = 'Male' AND '$Year' = '2019' THEN (Men_2019) 
WHEN  '$Sex' = 'Male' AND '$Year' = '2020' THEN (Men_2020)
WHEN  '$Sex' = 'All Sexes' AND '$Year' = '2019' THEN (Total_2019) 
WHEN  '$Sex' = 'All Sexes' AND '$Year' = '2020' THEN (Total_2020)

END) as Gender_Marital
FROM Unemployed_Marital_Status_By_Race_Gender
WHERE Marital_Status in ('Total_Married', 'Total_Never_Married', 'Total_Widowed_Divorced_Separated')


SELECT 
Worktime_Status,
(CASE 
WHEN  '$Sex' = 'Female' THEN Men_Total
WHEN  '$Sex' = 'Male' THEN Women_Total
WHEN  '$Sex' = 'All Sexes' THEN Total

END) as Employed_WorkTime
FROM Worktime_Status_By_Gender_Race
WHERE Worktime_Status in ('2021_Full_time', '2021_Part_time') 


SELECT 
Worktime_Status,
(CASE 
WHEN  '$Sex' = 'Female' THEN Men_Total
WHEN  '$Sex' = 'Male' THEN Women_Total
WHEN  '$Sex' = 'All Sexes' THEN Total

END) as Employed_WorkTime
FROM Worktime_Status_By_Gender_Race
WHERE Worktime_Status in ('2019_Full_time_less35_hours', '2020_Full_time_less35_hours', '2021_Full_time_less35_hours') 

SELECT 
Worktime_Status,
(CASE 
WHEN  '$Sex' = 'Female' THEN Men_Total
WHEN  '$Sex' = 'Male' THEN Women_Total
WHEN  '$Sex' = 'All Sexes' THEN Total

END) as Employed_WorkTime
FROM Worktime_Status_By_Gender_Race
WHERE Worktime_Status in ('2019_Full_time_more35_hours', '2020_Full_time_more35_hours', '2021_Full_time_more35_hours')

SELECT 
Worktime_Status,
(CASE 
WHEN  '$Sex' = 'Female' THEN Men_Total
WHEN  '$Sex' = 'Male' THEN Women_Total
WHEN  '$Sex' = 'All Sexes' THEN Total

END) as Employed_WorkTime
FROM Worktime_Status_By_Gender_Race
WHERE Worktime_Status in ('2019_Part_time_economic_reasons', '2020_Part_time_economic_reasons', '2021_Part_time_economic_reasons')

SELECT 
Worktime_Status,
(CASE 
WHEN  '$Sex' = 'Female' THEN Men_Total
WHEN  '$Sex' = 'Male' THEN Women_Total
WHEN  '$Sex' = 'All Sexes' THEN Total

END) as Employed_WorkTime
FROM Worktime_Status_By_Gender_Race
WHERE Worktime_Status in ('2019_Part_time_noneconomic_reasons', '2020_Part_time_noneconomic_reasons', '2021_Part_time_noneconomic_reasons')


CREATE or REPLACE VIEW GenderRemoteWorkYearCol AS 
SELECT SUM(CASE WHEN MonthDate = "2020-05-01" THEN Men_16to24_years ELSE 0 END) as Men_16to24_years_2020,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN Men_25to54_years ELSE 0 END) as Men_25to54_years_2020,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN Men_55Plus ELSE 0 END) as Men_55Plus_2020,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Men_16to24_years ELSE 0 END) as Men_16to24_years_2021,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Men_25to54_years ELSE 0 END) Men_25to54_years_2021,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Men_55Plus ELSE 0 END) as Men_55Plus_2021,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Men_16to24_years ELSE 0 END) as Men_16to24_years_2022,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Men_25to54_years ELSE 0 END) Men_25to54_years_2022,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Men_55Plus ELSE 0 END) as Men_55Plus_2022,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN Women_16to24_years ELSE 0 END) as Women_16to24_years_2020,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN Women_25to54_years ELSE 0 END) as Women_25to54_years_2020,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN Women_55Plus ELSE 0 END) as Women_55Plus_2020,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Women_16to24_years ELSE 0 END) as Women_16to24_years_2021,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Women_25to54_years ELSE 0 END) Women_25to54_years_2021,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Women_55Plus ELSE 0 END) as Women_55Plus_2021,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Women_16to24_years ELSE 0 END) as Women_16to24_years_2022,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Women_25to54_years ELSE 0 END) Women_25to54_years_2022,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Women_55Plus ELSE 0 END) as Women_55Plus_2022,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN Total_16to24_years ELSE 0 END) as Total_16to24_years_2020,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN Total_25to54_years ELSE 0 END) as Total_25to54_years_2020,
SUM(CASE WHEN MonthDate = "2020-05-01" THEN Total_55Plus ELSE 0 END) as Total_55Plus_2020,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Total_16to24_years ELSE 0 END) as Total_16to24_years_2021,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Total_25to54_years ELSE 0 END) Total_25to54_years_2021,
SUM(CASE WHEN MonthDate = "2021-05-01" THEN Total_55Plus ELSE 0 END) as Total_55Plus_2021,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Total_16to24_years ELSE 0 END) as Total_16to24_years_2022,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Total_25to54_years ELSE 0 END) Total_25to54_years_2022,
SUM(CASE WHEN MonthDate = "2022-05-01" THEN Total_55Plus ELSE 0 END) as Total_55Plus_2022

FROM Remote_Work_By_Gender_Race

       
SELECT 
(CASE 
WHEN  '$Sex' = 'Female' THEN ((Women_16to24_years_2021/Women_16to24_years_2020 - 1) * 100)
WHEN  '$Sex' = 'Male' THEN  ((Men_16to24_years_2021/Men_16to24_years_2020 - 1) * 100)
WHEN  '$Sex' = 'All Sexes' THEN ((Total_16to24_years_2021/Total_16to24_years_2020 - 1) * 100)
END) as Yrs_16to24_2020_2021, 
(CASE 
WHEN  '$Sex' = 'Female' THEN ((Women_25to54_years_2021/Women_25to54_years_2020 - 1) * 100)
WHEN  '$Sex' = 'Male' THEN  ((Men_25to54_years_2021/Men_25to54_years_2020 - 1) * 100)
WHEN  '$Sex' = 'All Sexes' THEN ((Total_25to54_years_2021/Total_25to54_years_2020 - 1) * 100)
END) as Yrs_25to54_2020_2021,
(CASE 
WHEN  '$Sex' = 'Female' THEN ((Women_55Plus_2021/Women_55Plus_2020 - 1) * 100)
WHEN  '$Sex' = 'Male' THEN  ((Men_55Plus_2021/Men_55Plus_2020 - 1) * 100)
WHEN  '$Sex' = 'All Sexes' THEN ((Total_55Plus_2021/Total_55Plus_2020 - 1) * 100)
END) as Yrs_55Plus_2020_2021,
(CASE 
WHEN  '$Sex' = 'Female' THEN ((Women_16to24_years_2022/Women_16to24_years_2021 - 1) * 100)
WHEN  '$Sex' = 'Male' THEN  ((Men_16to24_years_2022/Men_16to24_years_2021 - 1) * 100)
WHEN  '$Sex' = 'All Sexes' THEN ((Total_16to24_years_2022/Total_16to24_years_2021 - 1) * 100)
END) as Yrs_16to24_2021_2022, 
(CASE 
WHEN  '$Sex' = 'Female' THEN ((Women_25to54_years_2022/Women_25to54_years_2021 - 1) * 100)
WHEN  '$Sex' = 'Male' THEN  ((Men_25to54_years_2022/Men_25to54_years_2021 - 1) * 100)
WHEN  '$Sex' = 'All Sexes' THEN ((Total_25to54_years_2022/Total_25to54_years_2021 - 1) * 100)
END) as Yrs_25to54_2021_2022,
(CASE 
WHEN  '$Sex' = 'Female' THEN ((Women_55Plus_2022/Women_55Plus_2021 - 1) * 100)
WHEN  '$Sex' = 'Male' THEN  ((Men_55Plus_2022/Men_55Plus_2021 - 1) * 100)
WHEN  '$Sex' = 'All Sexes' THEN ((Total_55Plus_2022/Total_55Plus_2021 - 1) * 100)
END) as Yrs_55Plus_2021_2022

FROM GenderRemoteWorkYearCol