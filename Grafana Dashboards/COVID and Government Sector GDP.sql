/* DASHBOARD Grafana Dashboards/COVID and Government Sector GDP.sql*/
/*No title found*/
SELECT * FROM (SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC) as b LIMIT 1

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
SELECT * FROM (SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC) as b LIMIT 1

/*Delta Type Variant Peak Breakdown	 PANEL */
SELECT g.Federal, g.State_and_localFROM GDP_By_Industry g, MaxCaseDelta m WHERE g.Quarter = m.Quarter;

/*Pre-COVID Breakdown	 PANEL */
SELECT g.Federal, g.State_and_localFROM GDP_By_Industry g, MaxGovGDP m WHERE g.Quarter = m.Quarter;

/*Alpha Type Variant Peak Breakdown	 PANEL */
SELECT g.Federal, g.State_and_localFROM GDP_By_Industry g, MaxCaseAlpha m WHERE g.Quarter = m.Quarter;

/*Omicron Variant Peak Breakdown	 PANEL */
SELECT g.Federal, g.State_and_localFROM GDP_By_Industry g, MaxCaseOmicron m WHERE g.Quarter = m.Quarter;

