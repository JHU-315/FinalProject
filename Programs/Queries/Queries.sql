
/*GENDER*/

/*Cases per variant - sum total by all dates over the course of the time period*/
CREATE OR REPLACE VIEW COVID_Cases_By_Gender_WT AS
    SELECT State, SUM(Total_Count) AS Total_Count_WT,SUM(Male_Count) AS Male_Count_WT,SUM(Female_Count) AS Female_Count_WT FROM COVID_Cases_By_Gender
    WHERE Date >= '2020-01-01' and Date < '2020-11-01' GROUP BY State;

CREATE OR REPLACE VIEW COVID_Cases_By_Gender_Alpha AS
    SELECT State, SUM(Total_Count) AS Total_Count_Alpha,SUM(Male_Count) AS Male_Count_Alpha,SUM(Female_Count) AS Female_Count_Alpha FROM COVID_Cases_By_Gender
    WHERE Date >= '2020-11-01' and Date < '2021-06-01' GROUP BY State;

CREATE OR REPLACE VIEW COVID_Cases_By_Gender_Delta AS
    SELECT State, SUM(Total_Count) AS Total_Count_Delta,SUM(Male_Count) AS Male_Count_Delta,SUM(Female_Count) AS Female_Count_Delta FROM COVID_Cases_By_Gender
    WHERE Date >= '2021-06-01' and Date < '2021-11-01' GROUP BY State;

CREATE OR REPLACE VIEW COVID_Cases_By_Gender_Omicron AS
    SELECT State, SUM(Total_Count) AS Total_Count_Omicron,SUM(Male_Count) AS Male_Count_Omicron,SUM(Female_Count) AS Female_Count_Omicron FROM COVID_Cases_By_Gender
    WHERE Date >= '2021-11-01' GROUP BY State;

/*Join all variant data into one view*/
CREATE OR REPLACE VIEW COVID_Cases_By_Gender_AllVariants AS
    SELECT * FROM COVID_Cases_By_Gender_Alpha NATURAL JOIN COVID_Cases_By_Gender_WT NATURAL JOIN COVID_Cases_By_Gender_Delta NATURAL JOIN COVID_Cases_By_Gender_Omicron

/*Deaths Per Variant for each gender - data is structure differently than above, hence twice the amount of views*/
/*sum total by all dates over the course of the time period*/
CREATE OR REPLACE VIEW COVID_Deaths_M_By_Gender_WT AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_M_WT FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND Sex = "Male" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_F_By_Gender_WT AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_F_WT FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND Sex = "Female" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_T_By_Gender_WT AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_T_WT FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-01-01' and Date < '2020-11-01' AND Sex = "All Sex" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_M_By_Gender_Alpha AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_M_Alpha FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND Sex = "Male" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_F_By_Gender_Alpha AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_F_Alpha FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND Sex = "Female" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_T_By_Gender_Alpha AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_T_Alpha FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2020-11-01' and Date < '2021-06-01' AND Sex = "All Sex" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_M_By_Gender_Delta AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_M_Delta FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-06-01' and Date < '2021-11-01' AND Sex = "Male" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_F_By_Gender_Delta AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_F_Delta FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-06-01' and Date < '2021-11-01' AND Sex = "Female" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_T_By_Gender_Delta AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_T_Delta FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-06-01' and Date < '2021-11-01' AND Sex = "All Sex" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_M_By_Gender_Omicron AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_M_Omicron FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-11-01' AND Sex = "Male" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_F_By_Gender_Omicron AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_F_Omicron FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-11-01' AND Sex = "Female" GROUP BY Age_Group;

CREATE OR REPLACE VIEW COVID_Deaths_T_By_Gender_Omicron AS
    SELECT Age_Group, SUM(Total_Deaths) as Total_Deaths_T_Omicron FROM COVID_Deaths_By_Age_Gender
    WHERE Date >= '2021-11-01' AND Sex = "All Sex" GROUP BY Age_Group;

/*all variant data joined in one view for males*/
CREATE OR REPLACE VIEW COVID_Deaths_Age_M_Breakdown AS 
    SELECT * FROM COVID_Deaths_M_By_Gender_WT NATURAL JOIN COVID_Deaths_M_By_Gender_Alpha 
    NATURAL JOIN COVID_Deaths_M_By_Gender_Delta NATURAL JOIN COVID_Deaths_M_By_Gender_Omicron;

/*all variant data joined in one view for females*/
CREATE OR REPLACE VIEW COVID_Deaths_Age_F_Breakdown AS 
SELECT * FROM (
    SELECT * FROM COVID_Deaths_F_By_Gender_WT NATURAL JOIN COVID_Deaths_F_By_Gender_Alpha 
    NATURAL JOIN COVID_Deaths_F_By_Gender_Delta NATURAL JOIN COVID_Deaths_F_By_Gender_Omicron
 ) as a  WHERE Age_Group <> 'All Ages';

/*all variant data joined in one view for total*/
CREATE OR REPLACE VIEW COVID_Deaths_Age_T_Breakdown AS 
SELECT * FROM (   
SELECT * FROM COVID_Deaths_T_By_Gender_WT NATURAL JOIN COVID_Deaths_T_By_Gender_Alpha 
    NATURAL JOIN COVID_Deaths_T_By_Gender_Delta NATURAL JOIN COVID_Deaths_T_By_Gender_Omicron
 ) as a  WHERE Age_Group <> 'All Ages';

/*All Gender COVID Deaths combined*/
CREATE OR REPLACE VIEW COVID_Deaths_Age_Breakdown_All_Genders AS 
SELECT * FROM (    
SELECT * FROM COVID_Deaths_Age_M_Breakdown NATURAL JOIN COVID_Deaths_Age_F_Breakdown
    NATURAL JOIN COVID_Deaths_Age_T_Breakdown
 ) as a  WHERE Age_Group <> 'All Ages';

