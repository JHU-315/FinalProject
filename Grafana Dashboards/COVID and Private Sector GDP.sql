/* DASHBOARD Grafana Dashboards/COVID and Private Sector GDP.sql*/
/*No title found*/
SELECT * FROM (SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC) as b LIMIT 1

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

