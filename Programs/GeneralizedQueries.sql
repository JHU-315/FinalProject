CREATE or REPLACE VIEW MinWhiteUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(White) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

CREATE or REPLACE VIEW MaxCaseDate AS 
SELECT c2.Date
FROM COVID_Cases_By_Race c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_By_Race) c1
WHERE c1.mx = c2.Cases_Total;

/*
Find the date corresponding to the min total unemployment rate through the 6 months before the pandemic started.
*/

CREATE or REPLACE VIEW MinUnempRate AS 
SELECT u2.Date
FROM Unemployment_Rate u2, 
    (SELECT MIN(Total) min
     FROM Unemployment_Rate
     WHERE Date >= '2019-06-01' and Date <= '2019-12-01') u1
WHERE u1.min = u2.Total;

/*
Create a view corresponding to all cases on a given date throughout all states.
*/

CREATE or REPLACE VIEW COVID_Cases AS
SELECT Date, SUM(new_cases) Cases_Total
FROM COVID_Cases_By_State
GROUP BY Date;

/*
Create a view corresponding to the COVID Wild Type peak, i.e. the corresponding month where the total number cases was highest within the time period where the Wild Type variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseWT AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2020-01-01' and Date < '2020-11-01') c1
WHERE c1.mx = c2.Cases_Total;

/*
Create a view corresponding to the COVID Alpha peak, i.e. the corresponding month where the total number cases was highest within the time period where the Alpha variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseAlpha AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2020-11-01' and Date < '2021-06-01') c1
WHERE c1.mx = c2.Cases_Total;


/*
Create a view corresponding to the COVID Delta peak, i.e. the corresponding month where the total number cases was highest within the time period where the Delta variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseDelta AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2021-06-01' and Date < '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total;


/*
Create a view corresponding to the COVID Omicron peak, i.e. the corresponding month where the total number cases was highest within the time period where the Omicron variant was most prevalent.
*/

CREATE or REPLACE VIEW MaxCaseOmicron AS 
SELECT c2.Date
FROM COVID_Cases c2, 
    (SELECT MAX(COVID_Cases.Cases_Total) mx
     FROM COVID_Cases
     WHERE Date >= '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total;
