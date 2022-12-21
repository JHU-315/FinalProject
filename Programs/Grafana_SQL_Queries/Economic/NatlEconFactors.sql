/* Calculate the base pre-COVID unemployment rate for comparison to peaks */

CREATE or REPLACE VIEW MinUnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Total) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Analyze the trend in total unemployment rate at the peak periods of different COVID variants in comparison to the pre-COVID rate, defined as Dec 2019
*/

CREATE or REPLACE VIEW Natl_UR_Peaks AS 
SELECT urate.UR1 AS Pre_COVID,
       urate.UR2 AS WildType_Peak, 
 	   urate.UR3 AS Alpha_Peak, 
 	   urate.UR4 AS Delta_Peak,
 	   urate.UR5 AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Total ELSE 0 END) UR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Total ELSE 0 END) UR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Total ELSE 0 END) UR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Total ELSE 0 END) UR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Total ELSE 0 END) UR5
    FROM Unemployment_Rate u, MinUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/* Calculate the max pre-COVID GDP for comparison to peaks */

CREATE or REPLACE VIEW MaxGDP AS 
SELECT t1.mx, t2.Date
FROM Total_Economic_Factors t2, 
    (SELECT MAX(GDP) mx
     FROM Total_Economic_Factors
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') t1
WHERE t1.mx = t2.GDP and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Analyze the trend in National GDP at the peak periods of different COVID variants in comparison to the pre-COVID rate, defined as Dec 2019
*/

CREATE or REPLACE VIEW Natl_GDP_Peaks AS  
SELECT ROUND(econ.GDP1, 1) AS Pre_COVID,
       ROUND(econ.GDP2, 1) AS WildType_Peak, 
 	   ROUND(econ.GDP3, 1) AS Alpha_Peak, 
 	   ROUND(econ.GDP4, 1) AS Delta_Peak,
 	   ROUND(econ.GDP5, 1) AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN t.Date=m.Date THEN t.GDP ELSE 0 END) GDP1,
           SUM(CASE WHEN t.Date=wt.MonthDate THEN t.GDP ELSE 0 END) GDP2,
           SUM(CASE WHEN t.Date=a.MonthDate THEN t.GDP ELSE 0 END) GDP3,
           SUM(CASE WHEN t.Date=d.MonthDate THEN t.GDP ELSE 0 END) GDP4,
           SUM(CASE WHEN t.Date=o.MonthDate THEN t.GDP ELSE 0 END) GDP5
    FROM Total_Economic_Factors t, MaxGDP as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE t.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) econ;

/* Calculate the min pre-COVID personal income for comparison to peaks */

CREATE or REPLACE VIEW MinPersonalInc AS 
SELECT t1.min, t2.Date
FROM Total_Economic_Factors t2, 
    (SELECT MIN(Personal_Income) min
     FROM Total_Economic_Factors
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') t1
WHERE t1.min = t2.Personal_Income and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Analyze the trend in personal income at the peak periods of different COVID variants in comparison to the pre-COVID rate, defined as Dec 2019
*/

CREATE or REPLACE VIEW Natl_PI_Peaks AS
SELECT ROUND(econ.PI1, 1) AS Pre_COVID,
       ROUND(econ.PI2, 1) AS WildType_Peak, 
 	   ROUND(econ.PI3, 1) AS Alpha_Peak, 
 	   ROUND(econ.PI4, 1) AS Delta_Peak,
 	   ROUND(econ.PI5, 1) AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN t.Date=m.Date THEN t.Personal_Income ELSE 0 END) PI1,
           SUM(CASE WHEN t.Date=wt.MonthDate THEN t.Personal_Income ELSE 0 END) PI2,
           SUM(CASE WHEN t.Date=a.MonthDate THEN t.Personal_Income ELSE 0 END) PI3,
           SUM(CASE WHEN t.Date=d.MonthDate THEN t.Personal_Income ELSE 0 END) PI4,
           SUM(CASE WHEN t.Date=o.MonthDate THEN t.Personal_Income ELSE 0 END) PI5
    FROM Total_Economic_Factors t, MinPersonalInc as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE t.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) econ;

/*
Analyze the trend in personal savings rate at the peak periods of different COVID variants in comparison to the pre-COVID rate, defined as Dec 2019
*/

CREATE or REPLACE VIEW MinPersonalSav AS
SELECT t1.min, t2.Date
FROM Total_Economic_Factors t2, 
    (SELECT MIN(Personal_Saving_Rate) min
     FROM Total_Economic_Factors
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') t1
WHERE t1.min = t2.Personal_Saving_Rate and (Date >= '2019-06-01' and Date <= '2019-12-01');

CREATE or REPLACE VIEW Natl_PS_Peaks AS
SELECT ROUND(econ.PS1, 2) AS Pre_COVID,
       ROUND(econ.PS2, 2) AS WildType_Peak, 
 	   ROUND(econ.PS3, 2) AS Alpha_Peak, 
 	   ROUND(econ.PS4, 2) AS Delta_Peak,
 	   ROUND(econ.PS5, 2) AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN t.Date=m.Date THEN t.Personal_Saving_Rate ELSE 0 END) PS1,
           SUM(CASE WHEN t.Date=wt.MonthDate THEN t.Personal_Saving_Rate ELSE 0 END) PS2,
           SUM(CASE WHEN t.Date=a.MonthDate THEN t.Personal_Saving_Rate ELSE 0 END) PS3,
           SUM(CASE WHEN t.Date=d.MonthDate THEN t.Personal_Saving_Rate ELSE 0 END) PS4,
           SUM(CASE WHEN t.Date=o.MonthDate THEN t.Personal_Saving_Rate ELSE 0 END) PS5
    FROM Total_Economic_Factors t, MinPersonalSav as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE t.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) econ;

/* combine all peaks in one table for display */
CREATE TABLE Natl_Econ_Peaks AS
SELECT 'ur' as id, u.* FROM Natl_UR_Peaks u
UNION
SELECT 'gdp' as id, g.* FROM Natl_GDP_Peaks g
UNION 
SELECT 'pi' as id, i.* FROM Natl_PI_Peaks i
UNION 
SELECT 'ps' as id, s.* FROM Natl_PS_Peaks s;

SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_Peak
FROM Natl_Econ_Peaks
WHERE id = CASE '$Economic_Factor' 
    WHEN 'Unemployment Rate' THEN 'ur'
    WHEN 'Gross Domestic Product' THEN 'gdp'
    WHEN 'Personal Income' THEN 'pi'
    WHEN 'Personal Saving Rate' THEN 'ps' END;


/* output a table of max COVID case levels at each of the peaks */

SELECT wt.mx Max_Cases_WildType, a.mx Max_Cases_Alpha, d.mx Max_Cases_Delta, o.mx Max_Cases_Omicron
FROM MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o


/* Compare trends in national economic factors to trends in COVID cases over all relevant dates*/

SELECT 
Date, 
(CASE WHEN '$Economic_Factor' = 'Unemployment Rate' THEN Unemployment_Rate END) AS Unemployment_Rate,

(CASE WHEN '$Economic_Factor' = 'Gross Domestic Product' THEN GDP END) AS Gross_Domestic_Product,

(CASE WHEN '$Economic_Factor' = 'Personal Income' THEN Personal_Income END) AS Personal_Income, 

(CASE WHEN '$Economic_Factor' = 'Personal Saving Rate' THEN Personal_Saving_Rate
END) AS Personal_Saving_Rate, c.Cases_Total

FROM Total_Economic_Factors t LEFT OUTER JOIN COVID_Cases_Monthly c on t.Date = c.MonthDate;

