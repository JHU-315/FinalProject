ALTER TABLE jhu_315_final_project.Unemployment_Rate ADD CONSTRAINT Unemployment_Rate_Chk_1 CHECK (Total >=0);
ALTER TABLE jhu_315_final_project.Unemployment_Rate ADD CONSTRAINT Unemployment_Rate_Chk_2 CHECK (Men_20_plus >=0);
ALTER TABLE jhu_315_final_project.Unemployment_Rate ADD CONSTRAINT Unemployment_Rate_Chk_3