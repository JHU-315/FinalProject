
/*
Find the date corresponding to the max government sector GDP through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MaxGovGDP AS 
SELECT g1.mx, g2.Quarter
FROM GDP_By_Industry g2, 
    (SELECT MAX(Government) mx
     FROM GDP_By_Industry
     WHERE Quarter >= '2019Q2' and Quarter <= '2019Q4') g1
WHERE g1.mx = g2.Government;


/* Analyze the government sector GDP during peak periods of different COVID variants in comparison to the pre-COVID rate  */

CREATE or REPLACE VIEW GDP_Gov_Peaks AS
SELECT ROUND(gov.GEL1, 1) AS Pre_COVID,
       ROUND(gov.GEL2, 1) AS WildType_Peak, 
 	   ROUND(gov.GEL3, 1) AS Alpha_Peak, 
 	   ROUND(gov.GEL4, 1) AS Delta_Peak,
 	   ROUND(gov.GEL5, 1) AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN g.Quarter=p.Quarter THEN g.Government ELSE 0 END) GEL1,
           SUM(CASE WHEN g.Quarter=wt.Quarter THEN g.Government ELSE 0 END) GEL2,
           SUM(CASE WHEN g.Quarter=a.Quarter THEN g.Government ELSE 0 END) GEL3,
           SUM(CASE WHEN g.Quarter=d.Quarter THEN g.Government ELSE 0 END) GEL4,
           SUM(CASE WHEN g.Quarter=o.Quarter THEN g.Government ELSE 0 END) GEL5

    FROM GDP_By_Industry g, MaxGovGDP as p, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE g.Quarter in (p.Quarter, wt.Quarter, a.Quarter, d.Quarter, o.Quarter)) gov;
    

SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_Peak
FROM GDP_Peaks
WHERE id = 'gov';
    
/*
Compare trends in GDP of the overarching government sector of the economy to trends in COVID cases 
*/

SELECT m.MonthDate, Government 
FROM GDP_By_Industry g, MonthDate_To_Quarter m 
WHERE g.Quarter = m.Quarter;

SELECT c.MonthDate, c.Cases_Total
FROM COVID_Cases_Monthly c


/*
Compare trends in GDP of the specific subdivisions of the government sector of the economy 
*/

SELECT m.MonthDate,

(CASE WHEN '$Government_Subgroup' = 'Federal' THEN Federal END) AS Federal,

(CASE WHEN '$Government_Subgroup' = 'State and Local' THEN State_and_local END) AS State_and_local

FROM GDP_By_Industry g, MonthDate_To_Quarter m 
WHERE g.Quarter = m.Quarter;


SELECT m.MonthDate,

(CASE WHEN '$Government_Subgroup' = 'Federal' THEN Federal END) AS Federal,

(CASE WHEN '$Government_Subgroup' = 'State and Local' THEN State_and_local END) AS State_and_local

FROM GDP_By_Industry g, MonthDate_To_Quarter m 
WHERE g.Quarter = m.Quarter;


CREATE TABLE Variant_Peak_Dates AS
SELECT 'WT' as id, MonthDate, Quarter FROM MaxCaseWT
UNION 
SELECT 'A' as id, MonthDate, Quarter FROM MaxCaseAlpha
UNION
SELECT 'D' as id, MonthDate, Quarter FROM MaxCaseDelta
UNION 
SELECT 'O' as id, MonthDate, Quarter FROM MaxCaseOmicron;

SELECT g.Federal, g.State_and_local
FROM GDP_By_Industry g, MaxGovGDP m 
WHERE g.Quarter = m.Quarter;
    
SELECT g.Federal, g.State_and_local
FROM GDP_By_Industry g, Variant_Peak_Dates v
WHERE v.id = (CASE '$Variant' 
    WHEN 'Wild Type' THEN 'WT'
    WHEN 'Alpha' THEN 'A'
    WHEN 'Delta' THEN 'D'
    WHEN 'Omicron' THEN 'O'
    END) and g.Quarter = v.Quarter;

SELECT Quarter, Pct_Change
FROM GDP_Factors_Pct_Change
WHERE GDP_Factor = (CASE '$Government_Subgroup' 
    WHEN 'Federal' THEN 'Federal_consumption_investment'
    WHEN 'State and Local' THEN 'State_and_local_consumption_investment'
    END);

SELECT 
SUM(CASE WHEN Quarter = '2020Q1' THEN Pct_Change ELSE 0 END) AS '2020_Q1',
SUM(CASE WHEN Quarter = '2020Q2' THEN Pct_Change ELSE 0 END) AS '2020_Q2',
SUM(CASE WHEN Quarter = '2020Q3' THEN Pct_Change ELSE 0 END) AS '2020_Q3',
SUM(CASE WHEN Quarter = '2020Q4' THEN Pct_Change ELSE 0 END) AS '2020_Q4'
FROM GDP_Factors_Pct_Change
WHERE GDP_Factor = 'GDP'

