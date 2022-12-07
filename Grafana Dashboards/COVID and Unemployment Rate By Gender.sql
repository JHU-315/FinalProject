/* DASHBOARD Grafana Dashboards/COVID and Unemployment Rate By Gender.sql*/
/*No title found*/
SELECT * FROM (SELECT Date,Cases_Asian,Cases_White,Cases_Black,Cases_Latinx FROM jhu_315_final_project.COVID_Cases_By_Race ORDER BY Cases_Total DESC) as b LIMIT 1

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

