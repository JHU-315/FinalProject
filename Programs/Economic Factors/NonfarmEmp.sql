
/*
Find the date corresponding to the max nonfarm employment level through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MaxNonFarmEmp AS 
SELECT e2.Date
FROM Nonfarm_Employment e2, 
    (SELECT MAX(Total_NonFarm) mx
     FROM Nonfarm_Employment
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') e1
WHERE e1.mx = e2.Total_NonFarm;

/*
Find the date corresponding to the max private sector employment level through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MaxPrivateEmp AS 
SELECT e2.Date
FROM Nonfarm_Employment e2, 
    (SELECT MAX(Total_Private) mx
     FROM Nonfarm_Employment
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') e1
WHERE e1.mx = e2.Total_Private;

/*
Find the date corresponding to the max government employment level through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MaxGovEmp AS 
SELECT e2.Date
FROM Nonfarm_Employment e2, 
    (SELECT MAX(Total_Government) mx
     FROM Nonfarm_Employment
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') e1
WHERE e1.mx = e2.Total_Government;


/* Analyze the non-farm employment level during peak periods of different COVID variants as a percentage of the max pre-COVID non-farm employment level to see trends */
/* inner query finds the total nonfarm employment level at max pre-COVID as well as COVID peaks and makes into separate columns */

SELECT nf.NFEL2/nf.NFEL1 * 100 AS nf_wt_pct,
 	   nf.NFEL3/nf.NFEL1 * 100 AS nf_alpha_pct,
 	   nf.NFEL4/nf.NFEL1 * 100 AS nf_delta_pct,
 	   nf.NFEL5/nf.NFEL1 * 100 AS nf_omicron_pct
FROM
    (SELECT (CASE WHEN e.Date=n.Date THEN e.Total_NonFarm ELSE 0 END) NFEL1,
           (CASE WHEN e.Date=wt.Date THEN e.Total_NonFarm ELSE 0 END) NFEL2,
           (CASE WHEN e.Date=a.Date THEN e.Total_NonFarm ELSE 0 END) NFEL3,
           (CASE WHEN e.Date=d.Date THEN e.Total_NonFarm ELSE 0 END) NFEL4,
           (CASE WHEN e.Date=o.Date THEN e.Total_NonFarm ELSE 0 END) NFEL5

    FROM Nonfarm_Employment e, MaxNonFarmEmp as n, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE e.Date in (n.Date, wt.Date, a.Date, d.Date, o.Date)) nf;
    
/* Analyze the private sector employment level during peak periods of different COVID variants as a percentage of the max pre-COVID private sector employment level to see trends */

SELECT priv.PEL2/priv.PEL1 * 100 AS priv_wt_pct,
       priv.PEL3/priv.PEL1 * 100 AS priv_alpha_pct,
       priv.PEL4/priv.PEL1 * 100 AS priv_delta_pct,
       priv.PEL5/priv.PEL1 * 100 AS priv_omicron_pct
FROM
    (SELECT (CASE WHEN e.Date=p.Date THEN e.Total_Private ELSE 0 END) PEL1,
           (CASE WHEN e.Date=wt.Date THEN e.Total_Private ELSE 0 END) PEL2,
           (CASE WHEN e.Date=a.Date THEN e.Total_Private ELSE 0 END) PEL3,
           (CASE WHEN e.Date=d.Date THEN e.Total_Private ELSE 0 END) PEL4,
           (CASE WHEN e.Date=o.Date THEN e.Total_Private ELSE 0 END) PEL5

    FROM Nonfarm_Employment e, MaxPrivateEmp as p, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE e.Date in (p.Date, wt.Date, a.Date, d.Date, o.Date)) priv;

/* Analyze the government sector employment level during peak periods of different COVID variants as a percentage of the max pre-COVID government sector employment level to see trends */

SELECT gov.GEL2/gov.GEL1 * 100 AS gov_wt_pct,
       gov.GEL3/gov.GEL1 * 100 AS gov_alpha_pct,
       gov.GEL4/gov.GEL1 * 100 AS gov_delta_pct,
       gov.GEL5/gov.GEL1 * 100 AS gov_omicron_pct
FROM
    (SELECT (CASE WHEN e.Date=g.Date THEN e.Total_Government ELSE 0 END) GEL1,
           (CASE WHEN e.Date=wt.Date THEN e.Total_Government ELSE 0 END) GEL2,
           (CASE WHEN e.Date=a.Date THEN e.Total_Government ELSE 0 END) GEL3,
           (CASE WHEN e.Date=d.Date THEN e.Total_Government ELSE 0 END) GEL4,
           (CASE WHEN e.Date=o.Date THEN e.Total_Government ELSE 0 END) GEL5

    FROM Nonfarm_Employment e, MaxGovEmp as g, MaxCaseWT as wt, MaxCaseAlpha as a, MaxCaseDelta as d, MaxCaseOmicron as o
    WHERE e.Date in (g.Date, wt.Date, a.Date, d.Date, o.Date)) gov;


/*
Compare trends in employment levels of the specific subdivisions of the private sector of the economy to trends in COVID cases 
*/

SELECT e.Date, e.Mining_and_Logging, e.Manufacturing, e.Retail_Trade, e.Utilities, e.Finance_and_Insurance, c.Education_and_Health_Services, e.Other_Services, e.Construction, e.Wholesale_Trade, e.Transportation_and_Warehousing, e.Information, e.Professional, e.Leisure_and_Hospitality, c.Cases_Total
FROM Nonfarm_Employment e, COVID_Cases c
WHERE e.Date = c.Date;

/*
Compare trends in employment levels of the overarching private and goverment sectors of the economy to trends in COVID cases 
*/
SELECT e.Date, e.Total_Private, e.Total_Government, c.Cases_Total
FROM Nonfarm_Employment e, COVID_Cases c
WHERE e.Date = c.Date;
