/* DASHBOARD Grafana Dashboards/COVID and Unemployment Rate By Race.sql*/
/*No title found*/
SELECT * FROM (SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC) as b LIMIT 1

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

