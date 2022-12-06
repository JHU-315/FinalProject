/* DASHBOARD COVID & Industries and Sectors-1670103334363.json*/
/*No title found*/
SELECT * FROM (
SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC
) as b LIMIT 1

/*Quarterly GDP By Selected Private Sector Subgroups	 PANEL */
SELECT m.MonthDate,(CASE WHEN '$Private_Subgroup' = 'Agriculture' THEN Agriculture END) AS Agriculture,(CASE WHEN '$Private_Subgroup' = 'Mining' THEN Mining END) AS Mining,(CASE WHEN '$Private_Subgroup' = 'Manufacturing' THEN Manufacturing END) AS Manufacturing,(CASE WHEN '$Private_Subgroup' = 'Retail Trade' THEN Retail_trade END) AS Retail_trade,(CASE WHEN '$Private_Subgroup' = 'Utilities' THEN Utilities END) AS Utilities,(CASE WHEN '$Private_Subgroup' = 'Financial Activities' THEN Financial_Activities END) AS Financial_Activities,(CASE WHEN '$Private_Subgroup' = 'Education/Health Services' THEN `Education_and_health services` END) AS Education_and_health_services,(CASE WHEN '$Private_Subgroup' = 'Construction' THEN Construction END) AS Construction,(CASE WHEN '$Private_Subgroup' = 'Wholesale Trade' THEN Wholesale_trade END) AS Wholesale_trade,(CASE WHEN '$Private_Subgroup' = 'Transportation/Warehousing' THEN Transportation_and_warehousing END) AS Transportation_and_warehousing,(CASE WHEN '$Private_Subgroup' = 'Information' THEN Information END) AS Information,(CASE WHEN '$Private_Subgroup' = 'Professional/Business Services' THEN Professional_and_business_services END) AS Professional_and_business_services,(CASE WHEN '$Private_Subgroup' = 'Leisure/Hospitality' THEN Leisure_and_Hospitality END) AS Leisure_and_Hospitality,(CASE WHEN '$Private_Subgroup' = 'Other Services' THEN Other_services END) AS Other_servicesFROM GDP_By_Industry g, MonthDate_To_Quarter m WHERE g.Quarter = m.Quarter;

/*Peak Trends in GDP By Sector	 PANEL */
SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_PeakFROM GDP_PeaksWHERE id = CASE '$Sector'     WHEN 'Private' THEN 'priv'    WHEN 'Government' THEN 'gov' END;

/*National COVID Cases vs. Quarterly GDP By Overarching Economic Sector 	 PANEL */
SELECT m.MonthDate, (CASE WHEN '$Sector' = 'Private' THEN Total_Private END) AS Total_Private,(CASE WHEN '$Sector' = 'Government' THEN Government END) AS GovernmentFROM GDP_By_Industry g, MonthDate_To_Quarter m WHERE g.Quarter = m.Quarter;

SELECT c.MonthDate, c.Cases_TotalFROM COVID_Cases_Monthly c

/*Pre-COVID Age Group Breakdown of Employment Level	 PANEL */
SELECTg.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_servicesFROM GDP_By_Industry g, MaxPrivateGDP m WHERE g.Quarter = m.Quarter;

/*Wild Type Variant Peak Age Group Breakdown of Employment Level	 PANEL */
SELECTg.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_servicesFROM GDP_By_Industry g, MaxCaseWT m WHERE g.Quarter = m.Quarter;

/*Wild Type Variant Peak Age Group Breakdown of Employment Level	 PANEL */
SELECTg.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_servicesFROM GDP_By_Industry g, MaxCaseAlpha m WHERE g.Quarter = m.Quarter;

/* DASHBOARD COVID & Industries and Sectors-1670103344642.json*/
/*No title found*/
SELECT * FROM (
SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC
) as b LIMIT 1

/*Quarterly GDP By Selected Private Sector Subgroups	 PANEL */
SELECT m.MonthDate,(CASE WHEN '$Private_Subgroup' = 'Agriculture' THEN Agriculture END) AS Agriculture,(CASE WHEN '$Private_Subgroup' = 'Mining' THEN Mining END) AS Mining,(CASE WHEN '$Private_Subgroup' = 'Manufacturing' THEN Manufacturing END) AS Manufacturing,(CASE WHEN '$Private_Subgroup' = 'Retail Trade' THEN Retail_trade END) AS Retail_trade,(CASE WHEN '$Private_Subgroup' = 'Utilities' THEN Utilities END) AS Utilities,(CASE WHEN '$Private_Subgroup' = 'Financial Activities' THEN Financial_Activities END) AS Financial_Activities,(CASE WHEN '$Private_Subgroup' = 'Education/Health Services' THEN `Education_and_health services` END) AS Education_and_health_services,(CASE WHEN '$Private_Subgroup' = 'Construction' THEN Construction END) AS Construction,(CASE WHEN '$Private_Subgroup' = 'Wholesale Trade' THEN Wholesale_trade END) AS Wholesale_trade,(CASE WHEN '$Private_Subgroup' = 'Transportation/Warehousing' THEN Transportation_and_warehousing END) AS Transportation_and_warehousing,(CASE WHEN '$Private_Subgroup' = 'Information' THEN Information END) AS Information,(CASE WHEN '$Private_Subgroup' = 'Professional/Business Services' THEN Professional_and_business_services END) AS Professional_and_business_services,(CASE WHEN '$Private_Subgroup' = 'Leisure/Hospitality' THEN Leisure_and_Hospitality END) AS Leisure_and_Hospitality,(CASE WHEN '$Private_Subgroup' = 'Other Services' THEN Other_services END) AS Other_servicesFROM GDP_By_Industry g, MonthDate_To_Quarter m WHERE g.Quarter = m.Quarter;

/*Peak Trends in GDP By Sector	 PANEL */
SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_PeakFROM GDP_PeaksWHERE id = CASE '$Sector'     WHEN 'Private' THEN 'priv'    WHEN 'Government' THEN 'gov' END;

/*National COVID Cases vs. Quarterly GDP By Overarching Economic Sector 	 PANEL */
SELECT m.MonthDate, (CASE WHEN '$Sector' = 'Private' THEN Total_Private END) AS Total_Private,(CASE WHEN '$Sector' = 'Government' THEN Government END) AS GovernmentFROM GDP_By_Industry g, MonthDate_To_Quarter m WHERE g.Quarter = m.Quarter;

SELECT c.MonthDate, c.Cases_TotalFROM COVID_Cases_Monthly c

/*Pre-COVID Age Group Breakdown of Employment Level	 PANEL */
SELECTg.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_servicesFROM GDP_By_Industry g, MaxPrivateGDP m WHERE g.Quarter = m.Quarter;

/*Wild Type Variant Peak Age Group Breakdown of Employment Level	 PANEL */
SELECTg.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_servicesFROM GDP_By_Industry g, MaxCaseWT m WHERE g.Quarter = m.Quarter;

/*Wild Type Variant Peak Age Group Breakdown of Employment Level	 PANEL */
SELECTg.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_servicesFROM GDP_By_Industry g, MaxCaseAlpha m WHERE g.Quarter = m.Quarter;

/* DASHBOARD COVID and Government Sector GDP-1670119981478.json*/
/*No title found*/
SELECT * FROM (
SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC
) as b LIMIT 1

/*Peak Trends in Government Sector GDP 	 PANEL */
SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_PeakFROM GDP_PeaksWHERE id = 'gov';

/*National COVID Cases vs. Government Sector Quarterly GDP	 PANEL */
SELECT m.MonthDate, Government FROM GDP_By_Industry g, MonthDate_To_Quarter m WHERE g.Quarter = m.Quarter;

SELECT c.MonthDate, c.Cases_TotalFROM COVID_Cases_Monthly c

/*Quarterly GDP By Selected Government Sector Subgroups	 PANEL */
SELECT m.MonthDate,(CASE WHEN '$Government_Subgroup' = 'Federal' THEN Federal END) AS Federal,(CASE WHEN '$Government_Subgroup' = 'State and Local' THEN State_and_local END) AS State_and_localFROM GDP_By_Industry g, MonthDate_To_Quarter m WHERE g.Quarter = m.Quarter;

/*Wild Type Variant Peak Breakdown	 PANEL */
SELECT g.Federal, g.State_and_localFROM GDP_By_Industry g, MaxCaseWT m WHERE g.Quarter = m.Quarter;

/*No title found*/
SELECT * FROM (
SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC
) as b LIMIT 1

/*Delta Type Variant Peak Breakdown	 PANEL */
SELECT g.Federal, g.State_and_localFROM GDP_By_Industry g, MaxCaseDelta m WHERE g.Quarter = m.Quarter;

/*Pre-COVID Breakdown	 PANEL */
SELECT g.Federal, g.State_and_localFROM GDP_By_Industry g, MaxGovGDP m WHERE g.Quarter = m.Quarter;

/*Alpha Type Variant Peak Breakdown	 PANEL */
SELECT g.Federal, g.State_and_localFROM GDP_By_Industry g, MaxCaseAlpha m WHERE g.Quarter = m.Quarter;

/*Omicron Variant Peak Breakdown	 PANEL */
SELECT g.Federal, g.State_and_localFROM GDP_By_Industry g, MaxCaseOmicron m WHERE g.Quarter = m.Quarter;

/* DASHBOARD COVID and National Economic Factors-1670103319730.json*/
/*No title found*/
SELECT * FROM (
SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC
) as b LIMIT 1

/*Number of COVID Cases At Peak Point of Different Variants	 PANEL */
SELECT wt.mx Max_Cases_WildType, a.mx Max_Cases_Alpha, d.mx Max_Cases_Delta, o.mx Max_Cases_Omicron
FROM MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o

/*Peak Trends in National Economic Factors	 PANEL */
SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_PeakFROM Natl_Econ_PeaksWHERE id = CASE '$Economic_Factor' WHEN 'Unemployment Rate' THEN 'ur'                                   WHEN 'Gross Domestic Product' THEN 'gdp'                                   WHEN 'Personal Income' THEN 'pi'                                   WHEN 'Personal Saving Rate' THEN 'ps'            END;

/*National COVID Cases vs. National Levels of Different Economic Factors	 PANEL */
SELECT Date, (CASE WHEN '$Economic_Factor' = 'Unemployment Rate' THEN Unemployment_Rate END) AS Unemployment_Rate,(CASE WHEN '$Economic_Factor' = 'Gross Domestic Product' THEN GDP END) AS Gross_Domestic_Product,(CASE WHEN '$Economic_Factor' = 'Personal Income' THEN Personal_Income END) AS Personal_Income, (CASE WHEN '$Economic_Factor' = 'Personal Saving Rate' THEN Personal_Saving_RateEND) AS Personal_Saving_RateFROM Total_Economic_Factors

SELECT c.MonthDate, c.Cases_TotalFROM COVID_Cases_Monthly c

/* DASHBOARD COVID and Private Sector GDP-1670120039739.json*/
/*No title found*/
SELECT * FROM (
SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC
) as b LIMIT 1

/*Peak Trends in Private Sector GDP	 PANEL */
SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_PeakFROM GDP_PeaksWHERE id = 'priv';

/*National COVID Cases vs. Private Sector Quarterly GDP	 PANEL */
SELECT m.MonthDate, Total_Private FROM GDP_By_Industry g, MonthDate_To_Quarter m WHERE g.Quarter = m.Quarter;

SELECT c.MonthDate, c.Cases_TotalFROM COVID_Cases_Monthly c

/*Quarterly GDP By Selected Private Sector Industry Subgroups	 PANEL */
SELECT m.MonthDate,(CASE WHEN '$Private_Subgroup' = 'Agriculture' THEN Agriculture END) AS Agriculture,(CASE WHEN '$Private_Subgroup' = 'Mining' THEN Mining END) AS Mining,(CASE WHEN '$Private_Subgroup' = 'Manufacturing' THEN Manufacturing END) AS Manufacturing,(CASE WHEN '$Private_Subgroup' = 'Retail Trade' THEN Retail_trade END) AS Retail_trade,(CASE WHEN '$Private_Subgroup' = 'Utilities' THEN Utilities END) AS Utilities,(CASE WHEN '$Private_Subgroup' = 'Financial Activities' THEN Financial_Activities END) AS Financial_Activities,(CASE WHEN '$Private_Subgroup' = 'Education/Health Services' THEN `Education_and_health services` END) AS Education_and_health_services,(CASE WHEN '$Private_Subgroup' = 'Construction' THEN Construction END) AS Construction,(CASE WHEN '$Private_Subgroup' = 'Wholesale Trade' THEN Wholesale_trade END) AS Wholesale_trade,(CASE WHEN '$Private_Subgroup' = 'Transportation/Warehousing' THEN Transportation_and_warehousing END) AS Transportation_and_warehousing,(CASE WHEN '$Private_Subgroup' = 'Information' THEN Information END) AS Information,(CASE WHEN '$Private_Subgroup' = 'Professional/Business Services' THEN Professional_and_business_services END) AS Professional_and_business_services,(CASE WHEN '$Private_Subgroup' = 'Leisure/Hospitality' THEN Leisure_and_Hospitality END) AS Leisure_and_Hospitality,(CASE WHEN '$Private_Subgroup' = 'Other Services' THEN Other_services END) AS Other_servicesFROM GDP_By_Industry g, MonthDate_To_Quarter m WHERE g.Quarter = m.Quarter;

/*Wild Type Variant Peak	 PANEL */
SELECTg.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_servicesFROM GDP_By_Industry g, MaxCaseWT m WHERE g.Quarter = m.Quarter;

/*Pre-COVID Private Sector Subgroup Breakdown of GDP	 PANEL */
SELECTg.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_servicesFROM GDP_By_Industry g, MaxPrivateGDP m WHERE g.Quarter = m.Quarter;

/*Delta Type Variant Peak	 PANEL */
SELECTg.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_servicesFROM GDP_By_Industry g, MaxCaseDelta m WHERE g.Quarter = m.Quarter;

/*Alpha Variant Peak 	 PANEL */
SELECTg.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_servicesFROM GDP_By_Industry g, MaxCaseAlpha m WHERE g.Quarter = m.Quarter;

/*Omicron Variant Peak	 PANEL */
SELECTg.Agriculture, g.Mining, g.Manufacturing, g.Retail_trade, g.Utilities, g.Financial_Activities, g.`Education_and_health services`, g.Construction, g.Wholesale_trade, g.Transportation_and_warehousing, g.Information, g.Professional_and_business_services, g.Leisure_and_Hospitality, g.Other_servicesFROM GDP_By_Industry g, MaxCaseOmicron m WHERE g.Quarter = m.Quarter;

/* DASHBOARD COVID and Unemployment Rate By Age-1670103303890.json*/
/*No title found*/
SELECT * FROM (
SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC
) as b LIMIT 1

/*Trends in Unemployment Rate For Ages 16 to 19	 PANEL */
SELECT urate.LUR1 AS Pre_COVID,       urate.LUR2 AS WildType_Peak,  	   urate.LUR3 AS Alpha_Peak,  	   urate.LUR4 AS Delta_Peak, 	   urate.LUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Yrs_16_19 ELSE 0 END) LUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Yrs_16_19 ELSE 0 END) LUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Yrs_16_19 ELSE 0 END) LUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Yrs_16_19 ELSE 0 END) LUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Yrs_16_19 ELSE 0 END) LUR5    FROM Unemployment_Rate u, MinL20UnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*Trends in Unemployment Rate For Ages 20 and Over	 PANEL */
SELECT urate.GUR1 AS Pre_COVID,       urate.GUR2 AS WildType_Peak,  	   urate.GUR3 AS Alpha_Peak,  	   urate.GUR4 AS Delta_Peak, 	   urate.GUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN ((u.Men_20_plus + u.Women_20_plus) / 2) ELSE 0 END) GUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN ((u.Men_20_plus + u.Women_20_plus) / 2) ELSE 0 END) GUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN ((u.Men_20_plus + u.Women_20_plus) / 2) ELSE 0 END) GUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN ((u.Men_20_plus + u.Women_20_plus) / 2) ELSE 0 END) GUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN ((u.Men_20_plus + u.Women_20_plus) / 2) ELSE 0 END) GUR5    FROM Unemployment_Rate u, MinG20UnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*Unemployment Rate By Age vs COVID Cases For All Ages	 PANEL */
SELECT u.Date, c.MonthDate, u.Yrs_16_19, ((u.Men_20_plus + u.Women_20_plus) / 2) as Yrs_20up, c.Cases_TotalFROM Unemployment_Rate u, COVID_Cases_Monthly cWHERE u.Date = c.MonthDate;

/*Employment Level By Age Group	 PANEL */
SELECT e.Date, e.Yrs_16_19, e.Yrs_20_24, e.Yrs_25_34, e.Yrs_35_44, e.Yrs_45_54, e.Yrs_55_upFROM EmpLevelAgeCol e;

/*Wild Type Variant Peak Age Group Breakdown of Employment Level	 PANEL */
SELECT e.Yrs_16_19, e.Yrs_20_24, e.Yrs_25_34, e.Yrs_35_44, e.Yrs_45_54, e.Yrs_55_upFROM EmpLevelAgeCol e, MaxCaseWT mWHERE e.Date = m.MonthDate;

/*Pre-COVID Age Group Breakdown of Employment Level	 PANEL */
SELECT e.Yrs_16_19, e.Yrs_20_24, e.Yrs_25_34, e.Yrs_35_44, e.Yrs_45_54, e.Yrs_55_upFROM EmpLevelAgeCol e, MaxEmpLevel mWHERE e.Date = m.Date;

/* Alpha Variant Peak Age Group Breakdown of Employment Level	 PANEL */
SELECT e.Yrs_16_19, e.Yrs_20_24, e.Yrs_25_34, e.Yrs_35_44, e.Yrs_45_54, e.Yrs_55_upFROM EmpLevelAgeCol e, MaxCaseAlpha mWHERE e.Date = m.MonthDate;

/*Delta Variant Peak Age Group Breakdown of Employment Level	 PANEL */
SELECT e.Yrs_16_19, e.Yrs_20_24, e.Yrs_25_34, e.Yrs_35_44, e.Yrs_45_54, e.Yrs_55_upFROM EmpLevelAgeCol e, MaxCaseDelta mWHERE e.Date = m.MonthDate;

/*Omicron Variant Peak Age Group Breakdown of Employment Level	 PANEL */
SELECT e.Yrs_16_19, e.Yrs_20_24, e.Yrs_25_34, e.Yrs_35_44, e.Yrs_45_54, e.Yrs_55_upFROM EmpLevelAgeCol e, MaxCaseOmicron mWHERE e.Date = m.MonthDate;

/* DASHBOARD COVID and Unemployment Rate By Gender-1670103287438.json*/
/*No title found*/
SELECT * FROM (
SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC
) as b LIMIT 1

/*Trends in Unemployment Rate For Men	 PANEL */
SELECT urate.WUR1 AS Pre_COVID,       urate.WUR2 AS WildType_Peak,  	   urate.WUR3 AS Alpha_Peak,  	   urate.WUR4 AS Delta_Peak, 	   urate.WUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Women_20_plus ELSE 0 END) WUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR5    FROM Unemployment_Rate u, MinWomenUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*Unemployment Rate vs COVID Cases For Men 	 PANEL */
SELECT u.Date, u.Men_20_plusFROM Unemployment_Rate u;

SELECT g.MonthDate, g.Cases_MaleFROM COVID_Cases_By_Gender_Monthly g;

/*Unemployment Rate vs COVID Cases For Women	 PANEL */
SELECT u.Date, u.Women_20_plusFROM Unemployment_Rate u

SELECT g.MonthDate, g.Cases_Female FROM COVID_Cases_By_Gender_Monthly g

/*Trends in Unemployment Rate For Women	 PANEL */
SELECT urate.MUR1 AS Pre_COVID,       urate.MUR2 AS WildType_Peak,  	   urate.MUR3 AS Alpha_Peak,  	   urate.MUR4 AS Delta_Peak, 	   urate.MUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Men_20_plus ELSE 0 END) MUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR5    FROM Unemployment_Rate u, MinMenUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*Unemployment Rate By Gender	 PANEL */
SELECT u.Date, u.Men_20_plus, u.Women_20_plusFROM Unemployment_Rate u

/*COVID Cases By Gender 	 PANEL */
SELECT g.MonthDate, g.Cases_Male, g.Cases_Female FROM COVID_Cases_By_Gender_Monthly g

/*COVID Cases By Gender 	 PANEL */
SELECT g.MonthDate, g.Cases_Male, g.Cases_Female FROM COVID_Cases_By_Gender_Monthly g

/* DASHBOARD COVID and Unemployment Rate By Race-1670103265834.json*/
/*No title found*/
SELECT * FROM (
SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC
) as b LIMIT 1

/*Trends in Unemployment Rate For White	 PANEL */
SELECT urate.WUR1 AS Pre_COVID,       urate.WUR2 AS WildType_Peak,  	   urate.WUR3 AS Alpha_Peak,  	   urate.WUR4 AS Delta_Peak, 	   urate.WUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.White ELSE 0 END) WUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.White ELSE 0 END) WUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN u.White ELSE 0 END) WUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN u.White ELSE 0 END) WUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN u.White ELSE 0 END) WUR5    FROM Unemployment_Rate u, MinWhiteUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*Unemployment Rate vs COVID Cases For Whites	 PANEL */
SELECT u.Date, u.WhiteFROM Unemployment_Rate u;

SELECT r.MonthDate, r.Cases_WhiteFROM COVID_Cases_By_Race_Monthly r;

/*Unemployment Rate vs COVID Cases For Blacks	 PANEL */
SELECT u.Date, u.BlackFROM Unemployment_Rate u;

SELECT r.MonthDate, r.Cases_BlackFROM COVID_Cases_By_Race_Monthly r;

/*Trends in Unemployment Rate For Black	 PANEL */
SELECT urate.BUR1 AS Pre_COVID,       urate.BUR2 AS WildType_Peak,  	   urate.BUR3 AS Alpha_Peak,  	   urate.BUR4 AS Delta_Peak, 	   urate.BUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Black ELSE 0 END) BUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Black ELSE 0 END) BUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Black ELSE 0 END) BUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Black ELSE 0 END) BUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Black ELSE 0 END) BUR5    FROM Unemployment_Rate u, MinBlackUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;    

/*Trends in Unemployment Rate For Hispanic	 PANEL */
SELECT urate.HUR1 AS Pre_COVID,       urate.HUR2 AS WildType_Peak,  	   urate.HUR3 AS Alpha_Peak,  	   urate.HUR4 AS Delta_Peak, 	   urate.HUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Hispanic ELSE 0 END) HUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Hispanic ELSE 0 END) HUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Hispanic ELSE 0 END) HUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Hispanic ELSE 0 END) HUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Hispanic ELSE 0 END) HUR5    FROM Unemployment_Rate u, MinHispanicUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*Unemployment Rate vs COVID Cases For Hispanics	 PANEL */
SELECT u.Date, u.HispanicFROM Unemployment_Rate u;

SELECT r.MonthDate, r.Cases_LatinXFROM COVID_Cases_By_Race_Monthly r;

/*Unemployment Rate vs COVID Cases For Asians	 PANEL */
SELECT u.Date, u.AsianFROM Unemployment_Rate u;

SELECT r.MonthDate, r.Cases_AsianFROM COVID_Cases_By_Race_Monthly r;

/*Trends in Unemployment Rate For Asian	 PANEL */
SELECT urate.AUR1 AS Pre_COVID,       urate.AUR2 AS WildType_Peak,  	   urate.AUR3 AS Alpha_Peak,  	   urate.AUR4 AS Delta_Peak, 	   urate.AUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Asian ELSE 0 END) AUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Asian ELSE 0 END) AUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Asian ELSE 0 END) AUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Asian ELSE 0 END) AUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Asian ELSE 0 END) AUR5    FROM Unemployment_Rate u, MinAsianUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*Unemployment Rate By Race	 PANEL */
SELECT u.Date, u.White, u.Black, u.Hispanic, u.AsianFROM Unemployment_Rate u

/*COVID Cases By Race	 PANEL */
SELECT r.MonthDate, r.Cases_White, r.Cases_Black, r.Cases_LatinX, r.Cases_AsianFROM COVID_Cases_By_Race_Monthly rWHERE r.MonthDate >= '2020-04-01'

/*COVID Cases By Race	 PANEL */
SELECT r.MonthDate, r.Cases_White, r.Cases_Black, r.Cases_LatinX, r.Cases_AsianFROM COVID_Cases_By_Race_Monthly r

/* DASHBOARD COVID and Unemployment Rate By Region-1670103250723.json*/
/*No title found*/
SELECT * FROM (
SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC
) as b LIMIT 1

/*Trends in Unemployment Rate For Western Region	 PANEL */
SELECT urate.WUR1 AS Pre_COVID,       urate.WUR2 AS WildType_Peak,  	   urate.WUR3 AS Alpha_Peak,  	   urate.WUR4 AS Delta_Peak, 	   urate.WUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.West ELSE 0 END) WUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.West ELSE 0 END) WUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN u.West ELSE 0 END) WUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN u.West ELSE 0 END) WUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN u.West ELSE 0 END) WUR5    FROM UnempRateRegionCol u, MinWestUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*Unemployment Rate vs COVID Cases For Western Region	 PANEL */
SELECT Date, WestFROM UnempRateRegionCol

SELECT MonthDate, Cases_WestFROM COVIDCasesMonthlyRegionCol

/*Unemployment Rate vs COVID Cases For Southern Region	 PANEL */
SELECT Date, SouthFROM UnempRateRegionCol

SELECT MonthDate, Cases_SouthFROM COVIDCasesMonthlyRegionCol

/*Trends in Unemployment Rate For Southern Region	 PANEL */
SELECT urate.SUR1 AS Pre_COVID,       urate.SUR2 AS WildType_Peak,  	   urate.SUR3 AS Alpha_Peak,  	   urate.SUR4 AS Delta_Peak, 	   urate.SUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.South ELSE 0 END) SUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.South ELSE 0 END) SUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN u.South ELSE 0 END) SUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN u.South ELSE 0 END) SUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN u.South ELSE 0 END) SUR5    FROM UnempRateRegionCol u, MinSouthUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*Trends in Unemployment Rate For Northeast Region	 PANEL */
SELECT urate.NEUR1 AS Pre_COVID,       urate.NEUR2 AS WildType_Peak,  	   urate.NEUR3 AS Alpha_Peak,  	   urate.NEUR4 AS Delta_Peak, 	   urate.NEUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Northeast ELSE 0 END) NEUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Northeast ELSE 0 END) NEUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Northeast ELSE 0 END) NEUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Northeast ELSE 0 END) NEUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Northeast ELSE 0 END) NEUR5    FROM UnempRateRegionCol u, MinNortheastUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*Unemployment Rate vs COVID Cases For Northeastern Region	 PANEL */
SELECT Date, NortheastFROM UnempRateRegionCol

SELECT MonthDate, Cases_NortheastFROM COVIDCasesMonthlyRegionCol

/*Unemployment Rate vs COVID Cases For Midwestern Region	 PANEL */
SELECT Date, MidwestFROM UnempRateRegionCol

SELECT MonthDate, Cases_MidwestFROM COVIDCasesMonthlyRegionCol

/*Trends in Unemployment Rate For Midwest	 PANEL */
SELECT urate.MWUR1 AS Pre_COVID,       urate.MWUR2 AS WildType_Peak,  	   urate.MWUR3 AS Alpha_Peak,  	   urate.MWUR4 AS Delta_Peak, 	   urate.MWUR5 AS Omicron_PeakFROM    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Midwest ELSE 0 END) MWUR1,           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Midwest ELSE 0 END) MWUR2,           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Midwest ELSE 0 END) MWUR3,           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Midwest ELSE 0 END) MWUR4,           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Midwest ELSE 0 END) MWUR5    FROM UnempRateRegionCol u, MinMidwestUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*Unemployment Rate By Region	 PANEL */
SELECT Date, West, South, Northeast, MidwestFROM UnempRateRegionCol

/*COVID Cases By Region	 PANEL */
SELECT r.MonthDate, r.Cases_West, r.Cases_South, r.Cases_Northeast, r.Cases_MidwestFROM COVIDCasesMonthlyRegionCol r

/*COVID Cases By Region	 PANEL */
SELECT MonthDate, Cases_West, Cases_South, Cases_Northeast, Cases_MidwestFROM COVIDCasesMonthlyRegionCol

/* DASHBOARD Landing Page Dashboard-1669511219504.json*/
/* DASHBOARD National COVID And Patient Outcomes By Race-1669509222429.json*/
/*No title found*/
/*No targets found*/
/*Wild Type Variant Peak Statistics 	 PANEL */
SELECT 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END)) as Deaths

FROM MaxDeathsWT

SELECT 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END)) as Cases

FROM MaxCasesWT

SELECT 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END)) as Hospitalizations

FROM MaxHospWT

/*Alpha Type Variant Peak Statistics 	 PANEL */
SELECT 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END)) as Deaths

FROM MaxDeathsAlpha

SELECT 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END)) as Cases

FROM MaxCasesAlpha

SELECT 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END)) as Hospitalizations

FROM MaxHospAlpha

/*General Delta Type Variant Peak Statistics 	 PANEL */
SELECT * FROM MaxDeathsDeltaGeneral


SELECT mx as Cases FROM MaxCaseDelta

SELECT 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END)) as Hospitalizations

FROM MaxHospDelta

/*General Omicron Type Variant Peak Statistics 	 PANEL */
SELECT * FROM MaxDeathsDeltaGeneral

SELECT mx as Cases FROM MaxCaseOmicron

SELECT 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END)) as Hospitalizations

FROM MaxHospDelta

/*Statistics for WildType	 PANEL */
SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Total_Deaths

FROM DeathsWT

SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Total_Cases

FROM CasesWT

SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Total_Hosp

FROM HospWT

/*Statistics for WildType	 PANEL */
SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Total_Deaths

FROM DeathsAlpha

SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Total_Cases

FROM CasesAlpha

SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Total_Hosp

FROM HospAlpha

/*Cases, Tests, and Deaths Per Race Nationally	 PANEL */
SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END)) as Total_Cases
FROM COVID_Cases_By_Race GROUP BY Date

SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Tests_Asian
WHEN '$Racial_Group' = 'Black' THEN Tests_Black
WHEN '$Racial_Group' = 'White' THEN Tests_White
WHEN '$Racial_Group' = 'Total' THEN Tests_Total
WHEN '$Racial_Group' = 'Latinx' THEN Tests_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Tests_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Tests_NHPI
END)) as Total_Tests
FROM COVID_Test_By_Race GROUP BY Date

SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END)) as Total_Deaths
FROM COVID_Deaths_By_Race GROUP BY Date

SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END)) as Total_Hospitalizations
FROM COVID_Hospitalizations_By_Race GROUP BY Date

/*State Population By Selected Racial Group	 PANEL */


SELECT 
State, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN AsianTotal
WHEN '$Racial_Group' = 'Black' THEN BlackTotal
WHEN '$Racial_Group' = 'White' THEN WhiteTotal
WHEN '$Racial_Group' = 'Latinx' THEN OtherTotal
WHEN '$Racial_Group' = 'AIAN' THEN HawaiianTotal
WHEN '$Racial_Group' = 'NHPI' THEN IndianTotal
END) as Population_Percentage
FROM US_Population_Racial

/*Cumulative  Hospitalizations By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN SUM(Hosp_Asian)
WHEN '$Racial_Group' = 'Black' THEN SUM(Hosp_Black)
WHEN '$Racial_Group' = 'White' THEN SUM(Hosp_White)
WHEN '$Racial_Group' = 'Total' THEN SUM(Hosp_Total)
WHEN '$Racial_Group' = 'Latinx' THEN SUM(Hosp_Latinx)
WHEN '$Racial_Group' = 'AIAN' THEN SUM(Hosp_AIAN)
WHEN '$Racial_Group' = 'NHPI' THEN SUM(Hosp_NHPI)
END) AS Total_Cases
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name;

/*Cumulative Tests By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN SUM(Tests_Asian)
WHEN '$Racial_Group' = 'Black' THEN SUM(Tests_Black)
WHEN '$Racial_Group' = 'White' THEN SUM(Tests_White)
WHEN '$Racial_Group' = 'Total' THEN SUM(Tests_Total)
WHEN '$Racial_Group' = 'Latinx' THEN SUM(Tests_Latinx)
WHEN '$Racial_Group' = 'AIAN' THEN SUM(Tests_AIAN)
WHEN '$Racial_Group' = 'NHPI' THEN SUM(Tests_NHPI)
END) AS Total_Tests
FROM COVID_Test_By_Race JOIN State_To_Code ON
COVID_Test_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name;

/*Cumulative Cases By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN SUM(Cases_Asian)
WHEN '$Racial_Group' = 'Black' THEN SUM(Cases_Black)
WHEN '$Racial_Group' = 'White' THEN SUM(Cases_White)
WHEN '$Racial_Group' = 'Total' THEN SUM(Cases_Total)
WHEN '$Racial_Group' = 'Latinx' THEN SUM(Cases_Latinx)
WHEN '$Racial_Group' = 'AIAN' THEN SUM(Cases_AIAN)
WHEN '$Racial_Group' = 'NHPI' THEN SUM(Cases_NHPI)
END) AS Total_Cases
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name;

/*Cumulative  Deaths By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN SUM(Deaths_Asian)
WHEN '$Racial_Group' = 'Black' THEN SUM(Deaths_Black)
WHEN '$Racial_Group' = 'White' THEN SUM(Deaths_White)
WHEN '$Racial_Group' = 'Total' THEN SUM(Deaths_Total)
WHEN '$Racial_Group' = 'Latinx' THEN SUM(Deaths_Latinx)
WHEN '$Racial_Group' = 'AIAN' THEN SUM(Deaths_AIAN)
WHEN '$Racial_Group' = 'NHPI' THEN SUM(Deaths_NHPI)
END) AS Total_Cases
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name;

/* DASHBOARD National COVID And Patient Outcomes By Race-1670103226737.json*/
/*No title found*/
/*No targets found*/
/*Wild Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseWTWeekly

/*Alpha Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseAlphaWeekly

/*Delta Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseDeltaWeekly

/*Omicron Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseOmicronWeekly

/*Wild Type Variant Peak Statistics 	 PANEL */
SELECT 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM MaxDeathsWT
ORDER BY Deaths_Total DESC LIMIT 1

SELECT 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases
FROM MaxCasesWT
ORDER BY Cases_Total DESC LIMIT 1

SELECT 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations
FROM MaxHospWT
ORDER BY Hosp_Total DESC LIMIT 1

/*Alpha Type Variant Peak Date	 PANEL */
SELECT
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM MaxDeathsAlpha
ORDER BY Deaths_Total DESC LIMIT 1

SELECT 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases

FROM MaxCasesAlpha
ORDER BY Cases_Total DESC LIMIT 1

SELECT 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END)) as Hospitalizations
FROM MaxHospAlpha
ORDER BY Hosp_Total DESC LIMIT 1

/*General Delta Type Variant Peak Statistics 	 PANEL */
SELECT * FROM MaxDeathsDeltaGeneral


SELECT mx as Cases FROM MaxCaseDeltaWeekly

SELECT 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END)) as Hospitalizations

FROM MaxHospDelta

/*General Omicron Type Variant Peak Statistics 	 PANEL */
SELECT * FROM MaxDeathsDeltaGeneral

SELECT mx as Cases FROM MaxCaseOmicronWeekly

SELECT 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END)) as Hospitalizations

FROM MaxHospDelta

/*Statistics for WildType	 PANEL */
SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Total_Deaths

FROM DeathsWT

SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Total_Cases

FROM CasesWT

SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Total_Hosp

FROM HospWT

/*Statistics for AlphaType	 PANEL */
SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Total_Deaths

FROM DeathsAlpha

SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Total_Cases

FROM CasesAlpha

SELECT Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Total_Hosp

FROM HospAlpha

/*Cases, Tests, and Deaths Per Race Nationally	 PANEL */
SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END)) as Total_Cases
FROM COVID_Cases_By_Race GROUP BY Date

SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Tests_Asian
WHEN '$Racial_Group' = 'Black' THEN Tests_Black
WHEN '$Racial_Group' = 'White' THEN Tests_White
WHEN '$Racial_Group' = 'Total' THEN Tests_Total
WHEN '$Racial_Group' = 'Latinx' THEN Tests_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Tests_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Tests_NHPI
END)) as Total_Tests
FROM COVID_Test_By_Race GROUP BY Date

SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END)) as Total_Deaths
FROM COVID_Deaths_By_Race GROUP BY Date

SELECT 
Date, 
SUM((CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END)) as Total_Hospitalizations
FROM COVID_Hospitalizations_By_Race GROUP BY Date

/*State Population By Selected Racial Group	 PANEL */


SELECT 
State, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN AsianTotal
WHEN '$Racial_Group' = 'Black' THEN BlackTotal
WHEN '$Racial_Group' = 'White' THEN WhiteTotal
WHEN '$Racial_Group' = 'Latinx' THEN OtherTotal
WHEN '$Racial_Group' = 'AIAN' THEN HawaiianTotal
WHEN '$Racial_Group' = 'NHPI' THEN IndianTotal
END) as Population_Percentage
FROM US_Population_Racial

/*Cumulative  Hospitalizations By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN SUM(Hosp_Asian)
WHEN '$Racial_Group' = 'Black' THEN SUM(Hosp_Black)
WHEN '$Racial_Group' = 'White' THEN SUM(Hosp_White)
WHEN '$Racial_Group' = 'Total' THEN SUM(Hosp_Total)
WHEN '$Racial_Group' = 'Latinx' THEN SUM(Hosp_Latinx)
WHEN '$Racial_Group' = 'AIAN' THEN SUM(Hosp_AIAN)
WHEN '$Racial_Group' = 'NHPI' THEN SUM(Hosp_NHPI)
END) AS Total_Cases
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name;

/*Cumulative Tests By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN SUM(Tests_Asian)
WHEN '$Racial_Group' = 'Black' THEN SUM(Tests_Black)
WHEN '$Racial_Group' = 'White' THEN SUM(Tests_White)
WHEN '$Racial_Group' = 'Total' THEN SUM(Tests_Total)
WHEN '$Racial_Group' = 'Latinx' THEN SUM(Tests_Latinx)
WHEN '$Racial_Group' = 'AIAN' THEN SUM(Tests_AIAN)
WHEN '$Racial_Group' = 'NHPI' THEN SUM(Tests_NHPI)
END) AS Total_Tests
FROM COVID_Test_By_Race JOIN State_To_Code ON
COVID_Test_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name;

/*Cumulative Cases By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN SUM(Cases_Asian)
WHEN '$Racial_Group' = 'Black' THEN SUM(Cases_Black)
WHEN '$Racial_Group' = 'White' THEN SUM(Cases_White)
WHEN '$Racial_Group' = 'Total' THEN SUM(Cases_Total)
WHEN '$Racial_Group' = 'Latinx' THEN SUM(Cases_Latinx)
WHEN '$Racial_Group' = 'AIAN' THEN SUM(Cases_AIAN)
WHEN '$Racial_Group' = 'NHPI' THEN SUM(Cases_NHPI)
END) AS Total_Cases
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name;

/*Cumulative  Deaths By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN SUM(Deaths_Asian)
WHEN '$Racial_Group' = 'Black' THEN SUM(Deaths_Black)
WHEN '$Racial_Group' = 'White' THEN SUM(Deaths_White)
WHEN '$Racial_Group' = 'Total' THEN SUM(Deaths_Total)
WHEN '$Racial_Group' = 'Latinx' THEN SUM(Deaths_Latinx)
WHEN '$Racial_Group' = 'AIAN' THEN SUM(Deaths_AIAN)
WHEN '$Racial_Group' = 'NHPI' THEN SUM(Deaths_NHPI)
END) AS Total_Cases
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name;

/* DASHBOARD State COVID And Patient Outcomes By Race-1669511167313.json*/
/*No title found*/
/*No targets found*/
/*Cases, Tests, Hospitalizations, and Deaths Per Race Per State	 PANEL */
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Total_Cases
FROM (SELECT * FROM COVID_Cases_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Tests_Asian
WHEN '$Racial_Group' = 'Black' THEN Tests_Black
WHEN '$Racial_Group' = 'Total' THEN Tests_Total
WHEN '$Racial_Group' = 'White' THEN Tests_White
WHEN '$Racial_Group' = 'Latinx' THEN Tests_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Tests_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Tests_NHPI
END) as Total_Tests
FROM (SELECT * FROM COVID_Test_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Total_Deaths
FROM (SELECT * FROM COVID_Deaths_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Total_Hospitalizations
FROM (SELECT * FROM COVID_Hospitalizations_By_With_State_Name WHERE State_Name = '$States') as b

/*Cases, Tests, Hospitalizations, and Deaths Per Race Per State	 PANEL */
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Total_Cases
FROM (SELECT * FROM COVID_Cases_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Tests_Asian
WHEN '$Racial_Group' = 'Black' THEN Tests_Black
WHEN '$Racial_Group' = 'Total' THEN Tests_Total
WHEN '$Racial_Group' = 'White' THEN Tests_White
WHEN '$Racial_Group' = 'Latinx' THEN Tests_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Tests_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Tests_NHPI
END) as Total_Tests
FROM (SELECT * FROM COVID_Test_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Total_Deaths
FROM (SELECT * FROM COVID_Deaths_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Total_Hospitalizations
FROM (SELECT * FROM COVID_Hospitalizations_By_With_State_Name WHERE State_Name = '$States') as b

/*Demographic Percentage Breakdown	 PANEL */
SELECT * FROM  US_Population_Racial_Percentages WHERE '$States' = State

/*WIld Variant Peak Statistics	 PANEL */
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

/*Alpha Variant Peak Statistics	 PANEL */
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01'AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

/*Racial Comparison of Cases Cumulative	 PANEL */
SELECT * FROM (
SELECT 
State_Name,
SUM(Cases_Asian) AS Asian_Total,
SUM(Cases_Black) AS Black_Total,
SUM(Cases_White) AS White_Total,
SUM(Cases_Total) AS Total,
SUM(Cases_Latinx) AS LatinX_Total,
SUM(Cases_AIAN) AS AIAN_Total,
SUM(Cases_NHPI) AS NHPI_Total

FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name ) as raw WHERE '$States' = State_Name

/*Racial Comparison of Deaths Cumulative	 PANEL */
SELECT * FROM (
SELECT 
State_Name,
SUM(Deaths_Asian) AS Asian_Total,
SUM(Deaths_Black) AS Black_Total,
SUM(Deaths_White) AS White_Total,
SUM(Deaths_Total) AS Total,
SUM(Deaths_Latinx) AS LatinX_Total,
SUM(Deaths_AIAN) AS AIAN_Total,
SUM(Deaths_NHPI) AS NHPI_Total

FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name ) as raw WHERE '$States' = State_Name

/*WIld Variant Peak Statistics	 PANEL */
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

/*Alpha Variant Peak Statistics	 PANEL */
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01'AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

/* DASHBOARD State COVID And Patient Outcomes By Race-1670103197040.json*/
/*No title found*/
/*No targets found*/
/*Cases, Tests, Hospitalizations, and Deaths Per Race Per State	 PANEL */
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Total_Cases
FROM (SELECT * FROM COVID_Cases_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Tests_Asian
WHEN '$Racial_Group' = 'Black' THEN Tests_Black
WHEN '$Racial_Group' = 'Total' THEN Tests_Total
WHEN '$Racial_Group' = 'White' THEN Tests_White
WHEN '$Racial_Group' = 'Latinx' THEN Tests_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Tests_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Tests_NHPI
END) as Total_Tests
FROM (SELECT * FROM COVID_Test_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Total_Deaths
FROM (SELECT * FROM COVID_Deaths_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Total_Hospitalizations
FROM (SELECT * FROM COVID_Hospitalizations_By_With_State_Name WHERE State_Name = '$States') as b

/*Cases, Tests, Hospitalizations, and Deaths Per Race Per State	 PANEL */
SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Total_Cases
FROM (SELECT * FROM COVID_Cases_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Tests_Asian
WHEN '$Racial_Group' = 'Black' THEN Tests_Black
WHEN '$Racial_Group' = 'Total' THEN Tests_Total
WHEN '$Racial_Group' = 'White' THEN Tests_White
WHEN '$Racial_Group' = 'Latinx' THEN Tests_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Tests_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Tests_NHPI
END) as Total_Tests
FROM (SELECT * FROM COVID_Test_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Total_Deaths
FROM (SELECT * FROM COVID_Deaths_By_With_State_Name WHERE State_Name = '$States') as b

SELECT 
Date, 
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Total_Hospitalizations
FROM (SELECT * FROM COVID_Hospitalizations_By_With_State_Name WHERE State_Name = '$States') as b

/*Demographic Percentage Breakdown	 PANEL */
SELECT * FROM  US_Population_Racial_Percentages WHERE '$States' = State

/*WIld Variant Peak Statistics	 PANEL */
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

/*Alpha Variant Peak Statistics	 PANEL */
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01'AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

/*Racial Comparison of Cases Cumulative	 PANEL */
SELECT * FROM (
SELECT 
State_Name,
SUM(Cases_Asian) AS Asian_Total,
SUM(Cases_Black) AS Black_Total,
SUM(Cases_White) AS White_Total,
SUM(Cases_Total) AS Total,
SUM(Cases_Latinx) AS LatinX_Total,
SUM(Cases_AIAN) AS AIAN_Total,
SUM(Cases_NHPI) AS NHPI_Total

FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name ) as raw WHERE '$States' = State_Name

/*Racial Comparison of Deaths Cumulative	 PANEL */
SELECT * FROM (
SELECT 
State_Name,
SUM(Deaths_Asian) AS Asian_Total,
SUM(Deaths_Black) AS Black_Total,
SUM(Deaths_White) AS White_Total,
SUM(Deaths_Total) AS Total,
SUM(Deaths_Latinx) AS LatinX_Total,
SUM(Deaths_AIAN) AS AIAN_Total,
SUM(Deaths_NHPI) AS NHPI_Total

FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code
GROUP BY State_To_Code.State_Name ) as raw WHERE '$States' = State_Name

/*WIld Variant Peak Statistics	 PANEL */
SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

/*Alpha Variant Peak Statistics	 PANEL */

/*Deaths by State racially*/

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Deaths_Asian
WHEN '$Racial_Group' = 'Black' THEN Deaths_Black
WHEN '$Racial_Group' = 'White' THEN Deaths_White
WHEN '$Racial_Group' = 'Total' THEN Deaths_Total
WHEN '$Racial_Group' = 'Latinx' THEN Deaths_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPI
END) as Deaths
FROM (
SELECT 
*
FROM COVID_Deaths_By_Race JOIN State_To_Code ON
COVID_Deaths_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01'AND State_Name = '$States' GROUP BY State
ORDER BY Deaths_Total DESC LIMIT 1
) as b 

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Cases_Asian
WHEN '$Racial_Group' = 'Black' THEN Cases_Black
WHEN '$Racial_Group' = 'White' THEN Cases_White
WHEN '$Racial_Group' = 'Total' THEN Cases_Total
WHEN '$Racial_Group' = 'Latinx' THEN Cases_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Cases_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPI
END) as Cases 
FROM (
SELECT 
*
FROM COVID_Cases_By_Race JOIN State_To_Code ON
COVID_Cases_By_Race.State = State_To_Code.code WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Cases_Total DESC LIMIT 1
) as b

SELECT 
Date,
(CASE 
WHEN '$Racial_Group' = 'Asian' THEN Hosp_Asian
WHEN '$Racial_Group' = 'Black' THEN Hosp_Black
WHEN '$Racial_Group' = 'White' THEN Hosp_White
WHEN '$Racial_Group' = 'Total' THEN Hosp_Total
WHEN '$Racial_Group' = 'Latinx' THEN Hosp_Latinx
WHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIAN
WHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPI
END) as Hospitalizations 
FROM (
SELECT 
*
FROM COVID_Hospitalizations_By_Race JOIN State_To_Code ON
COVID_Hospitalizations_By_Race.State = State_To_Code.code  WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND State_Name = '$States' GROUP BY State
ORDER BY Hosp_Total DESC LIMIT 1
) as b

