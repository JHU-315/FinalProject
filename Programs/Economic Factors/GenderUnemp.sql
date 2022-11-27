/*
Find the date corresponding to the min unemployment rate for men 20 years and older through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinMenUnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Men_20_plus) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Men_20_plus and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Find the date corresponding to the min unemployment rate for women 20 years and older through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinWomenUnempRate AS 
SELECT u1.min, u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Women_20_plus) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Women_20_plus and (Date >= '2019-06-01' and Date <= '2019-12-01');

/*
Compare unemployment rates of men and women 20 years and over. Has COVID disproportionately affected a gender group in terms of employment?*/

/*
Analyze the trend in unemployment rate for men and women over 20 years of age at the peak periods of different COVID variants in comparison to the pre-COVID rate, defined as December 2019. Has COVID disproportionately affected a gender group in terms of unemployment?
*/

/*
Analyze the trend in unemployment rate for men over 20 years of age at the peak periods of different COVID variants in comparison to the pre-COVID rate, defined as December 2019.
*/

SELECT urate.MUR1 AS Men_Pre_COVID,
       urate.MUR2 AS Men_WildType_Peak, 
 	   urate.MUR3 AS Men_Alpha_Peak, 
 	   urate.MUR4 AS Men_Delta_Peak,
 	   urate.MUR5 AS Men_Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Men_20_plus ELSE 0 END) MUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Men_20_plus ELSE 0 END) MUR5
    FROM Unemployment_Rate u, MinMenUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;

/*
SELECT 
CASE WHEN '$Gender' = 'Men' THEN 
WHEN '$Gender' = 'Women' THEN NULL
END
*/

/*
Analyze the trend in unemployment rate for women over 20 years of age at the peak periods of different COVID variants.
*/

SELECT urate.WUR1 AS Women_Pre_COVID,
       urate.WUR2 AS Women_WildType_Peak, 
 	   urate.WUR3 AS Women_Alpha_Peak, 
 	   urate.WUR4 AS Women_Delta_Peak,
 	   urate.WUR5 AS Women_Omicron_Peak
FROM
    (SELECT SUM(CASE WHEN u.Date=m.Date THEN u.Women_20_plus ELSE 0 END) WUR1,
           SUM(CASE WHEN u.Date=wt.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR2,
           SUM(CASE WHEN u.Date=a.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR3,
           SUM(CASE WHEN u.Date=d.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR4,
           SUM(CASE WHEN u.Date=o.MonthDate THEN u.Women_20_plus ELSE 0 END) WUR5
    FROM Unemployment_Rate u, MinWomenUnempRate as m, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron o
    WHERE u.Date in (m.Date, wt.MonthDate, a.MonthDate, d.MonthDate, o.MonthDate)) urate;


CREATE or REPLACE VIEW COVID_Cases_By_Gender_Monthly AS
SELECT md.MonthDate, SUM(Total_Count) Cases_Total, SUM(Male_Count) Cases_Male,  SUM(Female_Count) Cases_Female
FROM COVID_Cases_By_Gender c, Date_To_MonthDate md
WHERE c.Date = md.Date
GROUP BY md.MonthDate;

/* Compare trends in unemployment rate by gender to trends in COVID cases by gender over all relevant dates*/

SELECT u.Date, g.MonthDate, u.Women_20_plus, g.Cases_Female 
FROM Unemployment_Rate u, COVID_Cases_By_Gender_Monthly g
WHERE u.Date = g.MonthDate;

SELECT u.Date, g.MonthDate, u.Men_20_plus, g.Cases_Male
FROM Unemployment_Rate u, COVID_Cases_By_Gender_Monthly g
WHERE u.Date = g.MonthDate;

SELECT u.Date, u.Men_20_plus, u.Women_20_plus
FROM Unemployment_Rate u

SELECT g.MonthDate, g.Cases_Male, g.Cases_Female 
FROM COVID_Cases_By_Gender_Monthly g