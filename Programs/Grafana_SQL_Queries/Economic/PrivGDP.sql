/*
Find the date corresponding to the max private sector GDP through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MaxPrivateGDP AS 
SELECT g1.mx, g2.Quarter
FROM GDP_By_Industry g2, 
    (SELECT MAX(Total_Private) mx
     FROM GDP_By_Industry
     WHERE Quarter >= '2019Q2' and Quarter <= '2019Q4') g1
WHERE g1.mx = g2.Total_Private;


/* Analyze the private sector GDP during peak periods of different COVID variants in comparison to the pre-COVID rate */

CREATE or REPLACE VIEW GDP_Priv_Peaks AS
SELECT ROUND(priv.PEL1, 1) AS Pre_COVID,
       ROUND(priv.PEL2, 1) AS WildType_Peak, 
 	   ROUND(priv.PEL3, 1) AS Alpha_Peak, 
 	   ROUND(priv.PEL4, 1) AS Delta_Peak,
 	   ROUND(priv.PEL5, 1) AS Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN g.Quarter=p.Quarter THEN g.Total_Private ELSE 0 END) PEL1,
           SUM(CASE WHEN g.Quarter=wt.Quarter THEN g.Total_Private ELSE 0 END) PEL2,
           SUM(CASE WHEN g.Quarter=a.Quarter THEN g.Total_Private ELSE 0 END) PEL3,
           SUM(CASE WHEN g.Quarter=d.Quarter THEN g.Total_Private ELSE 0 END) PEL4,
           SUM(CASE WHEN g.Quarter=o.Quarter THEN g.Total_Private ELSE 0 END) PEL5

    FROM GDP_By_Industry g, MaxPrivateGDP as p, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE g.Quarter in (p.Quarter, wt.Quarter, a.Quarter, d.Quarter, o.Quarter)) priv;

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

/* combine all peaks in one table for display */
CREATE TABLE GDP_Peaks AS
SELECT 'priv' as id, p.* FROM GDP_Priv_Peaks p
UNION
SELECT 'gov' as id, g.* FROM GDP_Gov_Peaks g;

SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_Peak
FROM GDP_Peaks
WHERE id = 'priv';

/*
Compare trends in GDP of the overarching private sector of the economy to trends in COVID cases 
*/

SELECT m.MonthDate, Total_Private 
FROM GDP_By_Industry g, MonthDate_To_Quarter m 
WHERE g.Quarter = m.Quarter;


SELECT c.MonthDate, c.Cases_Total
FROM COVID_Cases_Monthly c

/*
Compare trends in GDP of the specific subdivisions of the private sector of the economy 
*/

SELECT m.MonthDate,

(CASE WHEN '$Private_Subgroup' = 'Agriculture' THEN Agriculture END) AS Agriculture,

(CASE WHEN '$Private_Subgroup' = 'Mining' THEN Mining END) AS Mining,

(CASE WHEN '$Private_Subgroup' = 'Manufacturing' THEN Manufacturing END) AS Manufacturing,

(CASE WHEN '$Private_Subgroup' = 'Retail Trade' THEN Retail_trade END) AS Retail_trade,

(CASE WHEN '$Private_Subgroup' = 'Utilities' THEN Utilities END) AS Utilities,

(CASE WHEN '$Private_Subgroup' = 'Financial Activities' THEN Financial_Activities END) AS Financial_Activities,

(CASE WHEN '$Private_Subgroup' = 'Education/Health Services' THEN `Education_and_health services` END) AS Education_and_health_services,

(CASE WHEN '$Private_Subgroup' = 'Construction' THEN Construction END) AS Construction,

(CASE WHEN '$Private_Subgroup' = 'Wholesale Trade' THEN Wholesale_trade END) AS Wholesale_trade,

(CASE WHEN '$Private_Subgroup' = 'Transportation/Warehousing' THEN Transportation_and_warehousing END) AS Transportation_and_warehousing,

(CASE WHEN '$Private_Subgroup' = 'Information' THEN Information END) AS Information,

(CASE WHEN '$Private_Subgroup' = 'Professional/Business Services' THEN Professional_and_business_services END) AS Professional_and_business_services,

(CASE WHEN '$Private_Subgroup' = 'Leisure/Hospitality' THEN Leisure_and_Hospitality END) AS Leisure_and_Hospitality,

(CASE WHEN '$Private_Subgroup' = 'Other Services' THEN Other_services END) AS Other_services

FROM GDP_By_Industry g, MonthDate_To_Quarter m 
WHERE g.Quarter = m.Quarter;

/* comparison of GDP private components to gdp pct changes */
SELECT Quarter, Pct_Change
FROM GDP_Factors_Pct_Change
WHERE GDP_Factor = (CASE '$GDP_Component' 
    WHEN 'Imports' THEN 'Imports_goods_services'
    WHEN 'Exports' THEN 'Exports_goods_services'
    WHEN 'Private Investment' THEN 'Gross_private_domestic_investment'
    WHEN 'Personal Consumption Of Goods' THEN 'Personal_Consumption_Goods'
    WHEN 'Personal Consumption Of Services' THEN 'Personal_Consumption_Services'
    END);
    
SELECT 
SUM(CASE WHEN Quarter = '2020Q1' THEN Pct_Change ELSE 0 END) AS '2020_Q1',
SUM(CASE WHEN Quarter = '2020Q2' THEN Pct_Change ELSE 0 END) AS '2020_Q2',
SUM(CASE WHEN Quarter = '2020Q3' THEN Pct_Change ELSE 0 END) AS '2020_Q3',
SUM(CASE WHEN Quarter = '2020Q4' THEN Pct_Change ELSE 0 END) AS '2020_Q4'
FROM GDP_Factors_Pct_Change
WHERE GDP_Factor = 'GDP'

/* combine all peak dates in one table for ease of use */
CREATE TABLE Variant_Peak_Dates AS
SELECT 'WT' as id, MonthDate, Quarter FROM MaxCaseWT
UNION 
SELECT 'A' as id, MonthDate, Quarter FROM MaxCaseAlpha
UNION
SELECT 'D' as id, MonthDate, Quarter FROM MaxCaseDelta
UNION 
SELECT 'O' as id, MonthDate, Quarter FROM MaxCaseOmicron;

/* visualize private industry subgroup GDP breakdown by variant */

SELECT g.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_services
FROM GDP_By_Industry g, MaxPrivateGDP m 
WHERE g.Quarter = m.Quarter;

SELECT g.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_services
FROM GDP_By_Industry g, Variant_Peak_Dates v
WHERE v.id = (CASE '$Variant' 
    WHEN 'Wild Type' THEN 'WT'
    WHEN 'Alpha' THEN 'A'
    WHEN 'Delta' THEN 'D'
    WHEN 'Omicron' THEN 'O'
    END) and g.Quarter = v.Quarter;

