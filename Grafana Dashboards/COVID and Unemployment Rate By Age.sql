/* DASHBOARD Grafana Dashboards/COVID and Unemployment Rate By Age.sql*/
/*No title found*/
SELECT * FROM (SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC) as b LIMIT 1

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

