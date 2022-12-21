
/*
Find the corresponding week where the total number of COVID cases was the highest in the database. 
*/
/*  2022-01-20 */
CREATE or REPLACE VIEW MaxCaseDate AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases_Weekly c2, Date_To_MonthDate md,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Weekly) c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;

/*
Create a view corresponding to all cases on a given date (weekly data) throughout all states.
*/

CREATE or REPLACE VIEW COVID_Cases_Weekly AS
SELECT Date, SUM(new_cases) Cases_Total
FROM COVID_Cases_By_State
GROUP BY Date;

/*
Create a view corresponding to all cases in a given month (monthly data) throughout all states.
*/

CREATE or REPLACE VIEW COVID_Cases_Monthly AS
SELECT md.MonthDate, SUM(c.Cases_Total) Cases_Total
FROM COVID_Cases_Weekly c, Date_To_MonthDate md
WHERE c.Date = md.Date
GROUP BY md.MonthDate;

/*
Create a view corresponding to all cases in a given quarter (quarterly data) throughout all states.
*/

CREATE or REPLACE VIEW COVID_Cases_Quarterly AS
SELECT mq.Quarter, SUM(c.Cases_Total) Cases_Total
FROM COVID_Cases_Monthly c, MonthDate_To_Quarter mq
WHERE c.MonthDate = mq.MonthDate
GROUP BY mq.Quarter;

CREATE or REPLACE VIEW MonthDate_To_Quarter AS
SELECT m.MonthDate, q.Quarter
FROM MonthString_To_MonthDate m, Month_To_Quarter q
WHERE m.MonthString = q.Month;


/*
Create a view corresponding to the COVID Wild Type peak, i.e. the corresponding week where the total number cases was highest within the time period where the Wild Type variant was most prevalent.
*/
/*2020-10-29*/
CREATE or REPLACE VIEW MaxCaseWTWeekly AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases_Weekly c2, Date_To_MonthDate md,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Weekly
     WHERE Date >= '2020-01-01' and Date < '2020-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;

/*
Create a view corresponding to the COVID Wild Type peak, i.e. the corresponding month (and quarter) where the total number cases was highest within the time period where the Wild Type variant was most prevalent.
*/
/* 2020-07-01 */
CREATE or REPLACE VIEW MaxCaseWT AS 
SELECT c1.mx, c2.MonthDate, mq.Quarter
FROM COVID_Cases_Monthly c2, MonthDate_To_Quarter mq, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Monthly
     WHERE MonthDate >= '2020-01-01' and MonthDate < '2020-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.MonthDate = mq.MonthDate;

/*
Create a view corresponding to the COVID Alpha peak, i.e. the corresponding week where the total number cases was highest within the time period where the Alpha variant was most prevalent.
*/

/*2021-01-14*/
CREATE or REPLACE VIEW MaxCaseAlphaWeekly AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases_Weekly c2, Date_To_MonthDate md,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Weekly
     WHERE Date >= '2020-11-01' and Date < '2021-06-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;

/*
Create a view corresponding to the COVID Alpha peak, i.e. the corresponding month (and quarter) where the total number cases was highest within the time period where the Alpha variant was most prevalent.
*/
/* 2020-12-01 */
CREATE or REPLACE VIEW MaxCaseAlpha AS 
SELECT c1.mx, c2.MonthDate, mq.Quarter
FROM COVID_Cases_Monthly c2, MonthDate_To_Quarter mq, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Monthly
     WHERE MonthDate >= '2020-11-01' and MonthDate < '2021-06-01') c1
WHERE c1.mx = c2.Cases_Total and c2.MonthDate = mq.MonthDate;

/*
Create a view corresponding to the COVID Delta peak, i.e. the corresponding week (and quarter) where the total number cases was highest within the time period where the Delta variant was most prevalent.
*/

/*2021-09-02*/

CREATE or REPLACE VIEW MaxCaseDeltaWeekly AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases_Weekly c2, Date_To_MonthDate md,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Weekly
     WHERE Date >= '2021-06-01' and Date < '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;


/*
Create a view corresponding to the COVID Delta peak, i.e. the corresponding month (and quarter) where the total number cases was highest within the time period where the Delta variant was most prevalent.
*/
/* 2021-09-01 */
CREATE or REPLACE VIEW MaxCaseDelta AS 
SELECT c1.mx, c2.MonthDate, mq.Quarter
FROM COVID_Cases_Monthly c2, MonthDate_To_Quarter mq, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Monthly
     WHERE MonthDate >= '2021-06-01' and MonthDate < '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.MonthDate = mq.MonthDate;

/*
Create a view corresponding to the COVID Omicron peak, i.e. the corresponding week where the total number cases was highest within the time period where the Omicron variant was most prevalent.
*/
/*2022-01-20*/
CREATE or REPLACE VIEW MaxCaseOmicronWeekly AS 
SELECT c1.mx, c2.Date, md.MonthDate
FROM COVID_Cases_Weekly c2, Date_To_MonthDate md, 
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Weekly
     WHERE Date >= '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.Date = md.Date;

/*
Create a view corresponding to the COVID Omicron peak, i.e. the corresponding month (and quarter) where the total number cases was highest within the time period where the Omicron variant was most prevalent.
*/
/* 2022-01-01 */
CREATE or REPLACE VIEW MaxCaseOmicron AS
SELECT c1.mx, c2.MonthDate, mq.Quarter
FROM COVID_Cases_Monthly c2, MonthDate_To_Quarter mq,
    (SELECT MAX(Cases_Total) mx
     FROM COVID_Cases_Monthly
     WHERE MonthDate >= '2021-11-01') c1
WHERE c1.mx = c2.Cases_Total and c2.MonthDate = mq.MonthDate;
