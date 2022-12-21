## README 
### Utilizing the COVID-19 Dashboard System
Link: https://jonathanjymd.grafana.net/goto/0ceI0C5Vk?orgId=1

Username: jyoun127

Password: grafanajhu315

### File Structure
`\Grafana_SQL_Queries` folder contains all the SQL queries used in the Grafana dashboard. They are organized by dashboard.

`\Queries` folder contains all the SQL queries used to produce views on the AWS db instance in DDL format. 
- `COVID_Cases_Peaks.sql` contains SQL views that are used across various COVID Economic dashboards for the purposes of calculating 
                          peaks and visualizing COVID trends by different time units.
- `generalizedQueries.sql` contains SQL queries/views that are used across various COVID Health dashboards. 
- `Queries.sql` contains SQL queries/views created for optimizing queries in Grafana. This prevents overwhelming cluttering of the dashboard code.

`\Schema.sql` contains the full relational table specification of the AWS db instance in the SQL DDL.

`\Python_Scripts` folder contains all the python scripts used to populate the AWS db instance and extract SQL queries from Grafana `.json` files.
- `generator.py` creates the `.sql` script to populate the AWS db instance.
- `grafanaExtraction.py` extracts the sql code from dashboards on Grafana.

`Cleaned_Data` folder contains the raw `.csv` files that are parsed for our use. The folder contains a sub-folder for csv files called `CSV Files` which house our data

`Jonathan_Young_Natalie_Vallejo.pdf` contains the report to our project and instructions for how to utilize our dashboard system.

`Jonathan_Young_Natalie_Vallejo.zip` contains the all of the project folders in one zipped nested directory 
