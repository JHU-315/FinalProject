SELECT u.Date, r.Region, AVG(Unemp_Rate) 
FROM Unemployment_Rate_By_State u, State_To_Region r
WHERE u.State = r.State
GROUP BY u.Date, r.Region;