
/* year to year percent changes in consumption, gdp, and employment */
SELECT c.State, ROUND((RPC_2020/RPC_2019 - 1) * 100, 2) as Personal_Consumption_2019_2020,
       ROUND((RPC_2021/RPC_2020 - 1) * 100, 2) as Personal_Consumption_2020_2021,
       ROUND((RGDP_2020/RGDP_2019 - 1) * 100, 2) as GDP_2019_2020,
       ROUND((RGDP_2021/RGDP_2020 - 1) * 100, 2) as GDP_2020_2021,
       ROUND((Employment_2020/Employment_2019 - 1) * 100, 2) as Employment_2019_2020,
       ROUND((Employment_2021/Employment_2020 - 1) * 100, 2) as Employment_2020_2021

FROM Real_Personal_Consumption_By_State c, Total_Employment_By_State e, Real_GDP_By_State as g
WHERE c.State = e.State and c.State = g.State and e.State = g.State and c.State = '$States'

/* visualizing GDP and consumption together */
SELECT c.State, RPC_2019 as Consumption_2019, RGDP_2019 as GDP_2019, RPC_2020 as Consumption_2020, RGDP_2020 as GDP_2020, RPC_2021 as Consumption_2021, RGDP_2021 as GDP_2021
FROM Real_Personal_Consumption_By_State c, Real_GDP_By_State as g
WHERE c.State = g.State and c.State = '$States'

/* year to year percent changes in personal, household income, and poverty */
SELECT i.State, ROUND((RPI_2020/RPI_2019 - 1) * 100, 2) as Personal_Income_2019_2020,
       ROUND((RPI_2021/RPI_2020 - 1) * 100, 2) as Personal_Income_2020_2021,
       ROUND((MHI_2020/MHI_2019 - 1) * 100, 2) as Median_Household_Income_2019_2020,
       ROUND((MHI_2021/MHI_2020 - 1) * 100, 2) as Median_Household_Income_2020_2021,
       ROUND((Poverty_Estimate_2020/Poverty_Estimate_2019 - 1) * 100, 2) as Poverty_Estimate_2019_2020,
       ROUND((Poverty_Estimate_2021/Poverty_Estimate_2020 - 1) * 100, 2) as Poverty_Estimate_2020_2021
           
FROM Real_Personal_Income_By_State i, Poverty_Estimate_By_State p, Median_Household_Income_By_State as h
WHERE i.State = p.State and i.State = h.State and h.State = p.State and i.State = '$States'  

SELECT Wealth_Designator as Designator, MHI_2021 as Median_Household_Income 
FROM State_Is_Wealthy w, Median_Household_Income_By_State m WHERE m.State = w.State and m.State = '$States';

/* visualizing trends in personal income and poverty alongside each other */
SELECT m.MonthDate, i.State, i.`Personal Income`
FROM Personal_Income_By_State i, Month_To_Quarter q, MonthString_To_MonthDate m 
WHERE q.Month = m.MonthString and i.Quarter = q.Quarter and i.State = '$States'

SELECT p.Year, p.Poverty_Percent
FROM Poverty_Rate_By_State p
WHERE State = '$States'

/* life expectancy on map */
SELECT State, latitude, longitude, Life_Expectancy
FROM Life_Expectancy_By_State l, State_Locations s
WHERE l.State = s.State_Name and l.State = '$States' and l.Year = '$Year'

/* top industries per state */
SELECT Employment, Industry
FROM State_Has_Top_Industries
WHERE State = '$States'