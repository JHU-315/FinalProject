# README

### Description 
Final project for Johns Hopkins University Databases (EN.601.315/415/615) course. 

### Access
The bulk of our program information and specific `README` documentation can be found in the `Programs` folder.

_NOTE: Dashboard functionality will not be available after December 2022 due to the expiration of the AWS db instance._

### File Structure
`Cleaned_Data` folder contains all the cleaned data used to populate the AWS db instance.

`Grafana Dashboards` folder contains all the `.json` files for the Grafana dashboards.

`Programs` folder contains the main portion of the project. 


### Since this project is no longer active, to utilize for your own purposes please follow the following steps:
1. Create a new db instance that runs on MySQL 5.7.
2. Run the SQL scripts in the `Snapshot/` folder. This folder contains all tables and their corresponding schema and data
3. Run the views in the `Programs/Queries` folder
4. Set up the Grafana connection your database instance