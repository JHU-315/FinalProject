/* DASHBOARD Grafana Dashboards/COVID and National Economic Factors.sql*/
/*No title found*/
SELECT * FROM (

/*Number of COVID Cases At Peak Point of Different Variants	 PANEL */
SELECT wt.mx Max_Cases_WildType, a.mx Max_Cases_Alpha, d.mx Max_Cases_Delta, o.mx Max_Cases_Omicron

/*Peak Trends in National Economic Factors	 PANEL */
SELECT Pre_COVID, WildType_Peak, Alpha_Peak, Delta_Peak, Omicron_PeakFROM Natl_Econ_PeaksWHERE id = CASE '$Economic_Factor' WHEN 'Unemployment Rate' THEN 'ur'                                   WHEN 'Gross Domestic Product' THEN 'gdp'                                   WHEN 'Personal Income' THEN 'pi'                                   WHEN 'Personal Saving Rate' THEN 'ps'            END;

/*National COVID Cases vs. National Levels of Different Economic Factors	 PANEL */
SELECT Date, (CASE WHEN '$Economic_Factor' = 'Unemployment Rate' THEN Unemployment_Rate END) AS Unemployment_Rate,(CASE WHEN '$Economic_Factor' = 'Gross Domestic Product' THEN GDP END) AS Gross_Domestic_Product,(CASE WHEN '$Economic_Factor' = 'Personal Income' THEN Personal_Income END) AS Personal_Income, (CASE WHEN '$Economic_Factor' = 'Personal Saving Rate' THEN Personal_Saving_RateEND) AS Personal_Saving_RateFROM Total_Economic_Factors

SELECT c.MonthDate, c.Cases_TotalFROM COVID_Cases_Monthly c
