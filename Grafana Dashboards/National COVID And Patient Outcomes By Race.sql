/* DASHBOARD Grafana Dashboards/National COVID And Patient Outcomes By Race.sql*/
/*No title found*/
/*No targets found*/
/*Wild Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseWTWeekly

/*Alpha Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseAlphaWeekly

/*Delta Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseDeltaWeekly

/*Omicron Type Variant Peak Date	 PANEL */
SELECT Date FROM MaxCaseOmicronWeekly

/*Wild Type Variant Peak Statistics 	 PANEL */
SELECT (CASE WHEN '$Racial_Group' = 'Asian' THEN Deaths_AsianWHEN '$Racial_Group' = 'Black' THEN Deaths_BlackWHEN '$Racial_Group' = 'White' THEN Deaths_WhiteWHEN '$Racial_Group' = 'Total' THEN Deaths_TotalWHEN '$Racial_Group' = 'Latinx' THEN Deaths_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIANWHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPIEND) as DeathsFROM MaxDeathsWTORDER BY Deaths_Total DESC LIMIT 1

SELECT (CASE WHEN '$Racial_Group' = 'Asian' THEN Cases_AsianWHEN '$Racial_Group' = 'Black' THEN Cases_BlackWHEN '$Racial_Group' = 'White' THEN Cases_WhiteWHEN '$Racial_Group' = 'Total' THEN Cases_TotalWHEN '$Racial_Group' = 'Latinx' THEN Cases_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Cases_AIANWHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPIEND) as CasesFROM MaxCasesWTORDER BY Cases_Total DESC LIMIT 1

SELECT (CASE WHEN '$Racial_Group' = 'Asian' THEN Hosp_AsianWHEN '$Racial_Group' = 'Black' THEN Hosp_BlackWHEN '$Racial_Group' = 'White' THEN Hosp_WhiteWHEN '$Racial_Group' = 'Total' THEN Hosp_TotalWHEN '$Racial_Group' = 'Latinx' THEN Hosp_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIANWHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPIEND) as HospitalizationsFROM MaxHospWTORDER BY Hosp_Total DESC LIMIT 1

/*Alpha Type Variant Peak Date	 PANEL */
SELECTDate,(CASE WHEN '$Racial_Group' = 'Asian' THEN Deaths_AsianWHEN '$Racial_Group' = 'Black' THEN Deaths_BlackWHEN '$Racial_Group' = 'White' THEN Deaths_WhiteWHEN '$Racial_Group' = 'Total' THEN Deaths_TotalWHEN '$Racial_Group' = 'Latinx' THEN Deaths_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIANWHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPIEND) as DeathsFROM MaxDeathsAlphaORDER BY Deaths_Total DESC LIMIT 1

SELECT (CASE WHEN '$Racial_Group' = 'Asian' THEN Cases_AsianWHEN '$Racial_Group' = 'Black' THEN Cases_BlackWHEN '$Racial_Group' = 'White' THEN Cases_WhiteWHEN '$Racial_Group' = 'Total' THEN Cases_TotalWHEN '$Racial_Group' = 'Latinx' THEN Cases_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Cases_AIANWHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPIEND) as CasesFROM MaxCasesAlphaORDER BY Cases_Total DESC LIMIT 1

SELECT SUM((CASE WHEN '$Racial_Group' = 'Asian' THEN Hosp_AsianWHEN '$Racial_Group' = 'Black' THEN Hosp_BlackWHEN '$Racial_Group' = 'White' THEN Hosp_WhiteWHEN '$Racial_Group' = 'Total' THEN Hosp_TotalWHEN '$Racial_Group' = 'Latinx' THEN Hosp_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIANWHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPIEND)) as HospitalizationsFROM MaxHospAlphaORDER BY Hosp_Total DESC LIMIT 1

/*General Delta Type Variant Peak Statistics 	 PANEL */
SELECT * FROM MaxDeathsDeltaGeneral

SELECT mx as Cases FROM MaxCaseDeltaWeekly

SELECT SUM((CASE WHEN '$Racial_Group' = 'Asian' THEN Hosp_AsianWHEN '$Racial_Group' = 'Black' THEN Hosp_BlackWHEN '$Racial_Group' = 'White' THEN Hosp_WhiteWHEN '$Racial_Group' = 'Total' THEN Hosp_TotalWHEN '$Racial_Group' = 'Latinx' THEN Hosp_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIANWHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPIEND)) as HospitalizationsFROM MaxHospDelta

/*General Omicron Type Variant Peak Statistics 	 PANEL */
SELECT * FROM MaxDeathsDeltaGeneral

SELECT mx as Cases FROM MaxCaseOmicronWeekly

SELECT SUM((CASE WHEN '$Racial_Group' = 'Asian' THEN Hosp_AsianWHEN '$Racial_Group' = 'Black' THEN Hosp_BlackWHEN '$Racial_Group' = 'White' THEN Hosp_WhiteWHEN '$Racial_Group' = 'Total' THEN Hosp_TotalWHEN '$Racial_Group' = 'Latinx' THEN Hosp_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIANWHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPIEND)) as HospitalizationsFROM MaxHospDelta

/*Statistics for WildType	 PANEL */
SELECT Date,(CASE WHEN '$Racial_Group' = 'Asian' THEN Deaths_AsianWHEN '$Racial_Group' = 'Black' THEN Deaths_BlackWHEN '$Racial_Group' = 'White' THEN Deaths_WhiteWHEN '$Racial_Group' = 'Total' THEN Deaths_TotalWHEN '$Racial_Group' = 'Latinx' THEN Deaths_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIANWHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPIEND) as Total_DeathsFROM DeathsWT

SELECT Date,(CASE WHEN '$Racial_Group' = 'Asian' THEN Cases_AsianWHEN '$Racial_Group' = 'Black' THEN Cases_BlackWHEN '$Racial_Group' = 'White' THEN Cases_WhiteWHEN '$Racial_Group' = 'Total' THEN Cases_TotalWHEN '$Racial_Group' = 'Latinx' THEN Cases_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Cases_AIANWHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPIEND) as Total_CasesFROM CasesWT

SELECT Date,(CASE WHEN '$Racial_Group' = 'Asian' THEN Hosp_AsianWHEN '$Racial_Group' = 'Black' THEN Hosp_BlackWHEN '$Racial_Group' = 'White' THEN Hosp_WhiteWHEN '$Racial_Group' = 'Total' THEN Hosp_TotalWHEN '$Racial_Group' = 'Latinx' THEN Hosp_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIANWHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPIEND) as Total_HospFROM HospWT

/*Statistics for AlphaType	 PANEL */
SELECT Date,(CASE WHEN '$Racial_Group' = 'Asian' THEN Deaths_AsianWHEN '$Racial_Group' = 'Black' THEN Deaths_BlackWHEN '$Racial_Group' = 'White' THEN Deaths_WhiteWHEN '$Racial_Group' = 'Total' THEN Deaths_TotalWHEN '$Racial_Group' = 'Latinx' THEN Deaths_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIANWHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPIEND) as Total_DeathsFROM DeathsAlpha

SELECT Date,(CASE WHEN '$Racial_Group' = 'Asian' THEN Cases_AsianWHEN '$Racial_Group' = 'Black' THEN Cases_BlackWHEN '$Racial_Group' = 'White' THEN Cases_WhiteWHEN '$Racial_Group' = 'Total' THEN Cases_TotalWHEN '$Racial_Group' = 'Latinx' THEN Cases_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Cases_AIANWHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPIEND) as Total_CasesFROM CasesAlpha

SELECT Date,(CASE WHEN '$Racial_Group' = 'Asian' THEN Hosp_AsianWHEN '$Racial_Group' = 'Black' THEN Hosp_BlackWHEN '$Racial_Group' = 'White' THEN Hosp_WhiteWHEN '$Racial_Group' = 'Total' THEN Hosp_TotalWHEN '$Racial_Group' = 'Latinx' THEN Hosp_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIANWHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPIEND) as Total_HospFROM HospAlpha

/*Cases, Tests, and Deaths Per Race Nationally	 PANEL */
SELECT Date, SUM((CASE WHEN '$Racial_Group' = 'Asian' THEN Cases_AsianWHEN '$Racial_Group' = 'Black' THEN Cases_BlackWHEN '$Racial_Group' = 'White' THEN Cases_WhiteWHEN '$Racial_Group' = 'Total' THEN Cases_TotalWHEN '$Racial_Group' = 'Latinx' THEN Cases_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Cases_AIANWHEN '$Racial_Group' = 'NHPI' THEN Cases_NHPIEND)) as Total_CasesFROM COVID_Cases_By_Race GROUP BY Date

SELECT Date, SUM((CASE WHEN '$Racial_Group' = 'Asian' THEN Tests_AsianWHEN '$Racial_Group' = 'Black' THEN Tests_BlackWHEN '$Racial_Group' = 'White' THEN Tests_WhiteWHEN '$Racial_Group' = 'Total' THEN Tests_TotalWHEN '$Racial_Group' = 'Latinx' THEN Tests_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Tests_AIANWHEN '$Racial_Group' = 'NHPI' THEN Tests_NHPIEND)) as Total_TestsFROM COVID_Test_By_Race GROUP BY Date

SELECT Date, SUM((CASE WHEN '$Racial_Group' = 'Asian' THEN Deaths_AsianWHEN '$Racial_Group' = 'Black' THEN Deaths_BlackWHEN '$Racial_Group' = 'White' THEN Deaths_WhiteWHEN '$Racial_Group' = 'Total' THEN Deaths_TotalWHEN '$Racial_Group' = 'Latinx' THEN Deaths_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Deaths_AIANWHEN '$Racial_Group' = 'NHPI' THEN Deaths_NHPIEND)) as Total_DeathsFROM COVID_Deaths_By_Race GROUP BY Date

SELECT Date, SUM((CASE WHEN '$Racial_Group' = 'Asian' THEN Hosp_AsianWHEN '$Racial_Group' = 'Black' THEN Hosp_BlackWHEN '$Racial_Group' = 'White' THEN Hosp_WhiteWHEN '$Racial_Group' = 'Total' THEN Hosp_TotalWHEN '$Racial_Group' = 'Latinx' THEN Hosp_LatinxWHEN '$Racial_Group' = 'AIAN' THEN Hosp_AIANWHEN '$Racial_Group' = 'NHPI' THEN Hosp_NHPIEND)) as Total_HospitalizationsFROM COVID_Hospitalizations_By_Race GROUP BY Date

/*State Population By Selected Racial Group	 PANEL */
SELECT State, (CASE WHEN '$Racial_Group' = 'Asian' THEN AsianTotalWHEN '$Racial_Group' = 'Black' THEN BlackTotalWHEN '$Racial_Group' = 'White' THEN WhiteTotalWHEN '$Racial_Group' = 'Latinx' THEN OtherTotalWHEN '$Racial_Group' = 'AIAN' THEN HawaiianTotalWHEN '$Racial_Group' = 'NHPI' THEN IndianTotalEND) as Population_PercentageFROM US_Population_Racial

/*Cumulative  Hospitalizations By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, (CASE WHEN '$Racial_Group' = 'Asian' THEN SUM(Hosp_Asian)WHEN '$Racial_Group' = 'Black' THEN SUM(Hosp_Black)WHEN '$Racial_Group' = 'White' THEN SUM(Hosp_White)WHEN '$Racial_Group' = 'Total' THEN SUM(Hosp_Total)WHEN '$Racial_Group' = 'Latinx' THEN SUM(Hosp_Latinx)WHEN '$Racial_Group' = 'AIAN' THEN SUM(Hosp_AIAN)WHEN '$Racial_Group' = 'NHPI' THEN SUM(Hosp_NHPI)END) AS Total_CasesFROM COVID_Hospitalizations_By_Race JOIN State_To_Code ONCOVID_Hospitalizations_By_Race.State = State_To_Code.codeGROUP BY State_To_Code.State_Name;

/*Cumulative Tests By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, (CASE WHEN '$Racial_Group' = 'Asian' THEN SUM(Tests_Asian)WHEN '$Racial_Group' = 'Black' THEN SUM(Tests_Black)WHEN '$Racial_Group' = 'White' THEN SUM(Tests_White)WHEN '$Racial_Group' = 'Total' THEN SUM(Tests_Total)WHEN '$Racial_Group' = 'Latinx' THEN SUM(Tests_Latinx)WHEN '$Racial_Group' = 'AIAN' THEN SUM(Tests_AIAN)WHEN '$Racial_Group' = 'NHPI' THEN SUM(Tests_NHPI)END) AS Total_TestsFROM COVID_Test_By_Race JOIN State_To_Code ONCOVID_Test_By_Race.State = State_To_Code.codeGROUP BY State_To_Code.State_Name;

/*Cumulative Cases By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, (CASE WHEN '$Racial_Group' = 'Asian' THEN SUM(Cases_Asian)WHEN '$Racial_Group' = 'Black' THEN SUM(Cases_Black)WHEN '$Racial_Group' = 'White' THEN SUM(Cases_White)WHEN '$Racial_Group' = 'Total' THEN SUM(Cases_Total)WHEN '$Racial_Group' = 'Latinx' THEN SUM(Cases_Latinx)WHEN '$Racial_Group' = 'AIAN' THEN SUM(Cases_AIAN)WHEN '$Racial_Group' = 'NHPI' THEN SUM(Cases_NHPI)END) AS Total_CasesFROM COVID_Cases_By_Race JOIN State_To_Code ONCOVID_Cases_By_Race.State = State_To_Code.codeGROUP BY State_To_Code.State_Name;

/*Cumulative  Deaths By State Per Race	 PANEL */
SELECT State_To_Code.State_Name, (CASE WHEN '$Racial_Group' = 'Asian' THEN SUM(Deaths_Asian)WHEN '$Racial_Group' = 'Black' THEN SUM(Deaths_Black)WHEN '$Racial_Group' = 'White' THEN SUM(Deaths_White)WHEN '$Racial_Group' = 'Total' THEN SUM(Deaths_Total)WHEN '$Racial_Group' = 'Latinx' THEN SUM(Deaths_Latinx)WHEN '$Racial_Group' = 'AIAN' THEN SUM(Deaths_AIAN)WHEN '$Racial_Group' = 'NHPI' THEN SUM(Deaths_NHPI)END) AS Total_CasesFROM COVID_Deaths_By_Race JOIN State_To_Code ONCOVID_Deaths_By_Race.State = State_To_Code.codeGROUP BY State_To_Code.State_Name;

