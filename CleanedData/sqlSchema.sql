DROP TABLE IF EXISTS CovidCasesByGender;
CREATE TABLE CovidCasesByGender (
Date  VARCHAR(255),
State  VARCHAR(255),
Total_Count VARCHAR(255),
Male_Count INT,
Female_Count INT,
Male_Percentage FLOAT,
Female_Percentage FLOAT
);
