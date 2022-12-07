/* DASHBOARD Grafana Dashboards/COVID and Unemployment Rate By Region.sql*/
/*No title found*/
SELECT * FROM (SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC) as b LIMIT 1

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

