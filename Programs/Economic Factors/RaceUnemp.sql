/*
Find the date corresponding to the min unemployment rate for Whites through the 6 months before the pandemic started.
*/
/* unemployment rate by month, so represent month as first day of that month */
CREATE or REPLACE VIEW MinWhiteUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(White) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

/*
Find the date corresponding to the min unemployment rate for Blacks through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinBlackUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Black) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

/*
Find the date corresponding to the min unemployment rate for Hispanics through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinHispanicUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Hispanic) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;


/*
Find the date corresponding to the min unemployment rate for Asians through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinAsianUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Asian) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;


/*
Compare trends in unemployment rates of Asian, White, Black or African American, and Hispanic people at the peak periods of different COVID variants.

show increase or decline trends in unemployment by subtracting (minimum unemployment rate for a given racial group before pandemic - rate at a given variant peak ) */
       
/*
Analyze the trend in unemployment rate for Whites at the peak periods of different COVID variants.
*/

SELECT urate.WUR1 - urate.WUR2 AS wtChangeWhite,
 	   urate.WUR1 - urate.WUR3 AS AlphaChangeWhite,
 	   urate.WUR1 - urate.WUR4 AS DeltaChangeWhite,
 	   urate.WUR1 - urate.WUR5 AS OmicronChangeWhite
FROM
    (SELECT (CASE WHEN u.Date=w.Date THEN u.White ELSE 0 END) WUR1,
           (CASE WHEN u.Date=wt.Date THEN u.White ELSE 0 END) WUR2,
           (CASE WHEN u.Date=a.Date THEN u.White ELSE 0 END) WUR3,
           (CASE WHEN u.Date=d.Date THEN u.White ELSE 0 END) WUR4,
           (CASE WHEN u.Date=o.Date THEN u.White ELSE 0 END) WUR5	   
    FROM Unemployment_Rate u, MinWhiteUnempRate as w, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (w.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/*
Analyze the trend in unemployment rate for Blacks at the peak periods of different COVID variants.
*/

SELECT urate.BUR1 - urate.BUR2 AS wtChangeBlack,
 	   urate.BUR1 - urate.BUR3 AS AlphaChangeBlack,
 	   urate.BUR1 - urate.BUR4 AS DeltaChangeBlack,
 	   urate.BUR1 - urate.BUR5 AS OmicronChangeBlack
FROM
    (SELECT (CASE WHEN u.Date=b.Date THEN u.Black ELSE 0 END) BUR1,
            (CASE WHEN u.Date=wt.Date THEN u.Black ELSE 0 END) BUR2,
           (CASE WHEN u.Date=a.Date THEN u.Black ELSE 0 END) BUR3,
           (CASE WHEN u.Date=d.Date THEN u.Black ELSE 0 END) BUR4,
           (CASE WHEN u.Date=o.Date THEN u.Black ELSE 0 END) BUR5	   
    FROM Unemployment_Rate u, MinBlackUnempRate as b, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (b.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/*
Analyze the trend in unemployment rate for Hispanics at the peak periods of different COVID variants.
*/

SELECT urate.HUR1 - urate.HUR2 AS wtChangeHispanic,
 	   urate.HUR1 - urate.HUR3 AS AlphaChangeHispanic,
 	   urate.HUR1 - urate.HUR4 AS DeltaChangeHispanic,
 	   urate.HUR1 - urate.HUR5 AS OmicronChangeHispanic
FROM
    (SELECT (CASE WHEN u.Date=h.Date THEN u.Hispanic ELSE 0 END) HUR1,
            (CASE WHEN u.Date=wt.Date THEN u.Hispanic ELSE 0 END) HUR2,
           (CASE WHEN u.Date=a.Date THEN u.Hispanic ELSE 0 END) HUR3,
           (CASE WHEN u.Date=d.Date THEN u.Hispanic ELSE 0 END) HUR4,
           (CASE WHEN u.Date=o.Date THEN u.Hispanic ELSE 0 END) HUR5   
    FROM Unemployment_Rate u, MinHispanicUnempRate as h, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (h.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/*
Analyze the trend in unemployment rate for Asians at the peak periods of different COVID variants.
*/

SELECT urate.AUR1 - urate.AUR2 AS wtChangeAsian,
 	   urate.AUR1 - urate.AUR3 AS AlphaChangeAsian,
 	   urate.AUR1 - urate.AUR4 AS DeltaChangeAsian,
 	   urate.AUR1 - urate.AUR5 AS OmicronChangeAsian
FROM
    (SELECT (CASE WHEN u.Date=n.Date THEN u.Asian ELSE 0 END) AUR1,
           (CASE WHEN u.Date=wt.Date THEN u.Asian ELSE 0 END) AUR2,
           (CASE WHEN u.Date=a.Date THEN u.Asian ELSE 0 END) AUR3,
           (CASE WHEN u.Date=d.Date THEN u.Asian ELSE 0 END) AUR4,
           (CASE WHEN u.Date=o.Date THEN u.Asian ELSE 0 END) AUR5	   
    FROM Unemployment_Rate u, MinAsianUnempRate as n, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE u.Date in (n.Date, wt.Date, a.Date, d.Date, o.Date)) urate;

/* Compare trends in unemployment rate by race to trends in COVID cases by race over all relevant dates*/

SELECT u.Date, u.White, u.Black, u.Asian, u.Hispanic, c.Cases_White, c.Cases_Black, c.Cases_LatinX, c.Cases_Asian
FROM Unemployment_Rate u, COVID_Cases_By_Race c
WHERE u.Date = c.Date;