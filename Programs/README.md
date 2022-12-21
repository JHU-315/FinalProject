## README 
### File Structure
`\Grafana_SQL_Queries` folder contains all the SQL queries used in the Grafana dashboard. They are organized by dashboard.

`\Queries` folder contains all the SQL queries used to produce views on the AWS db instance in DDL format. 
- `generalizedQueries.sql` contain SQL queries/views that are used across various dashboards. 
- `Queries.sql` contain SQL queries/views that are particular to certain dashboards. To prevent overwhelming cluttering of the dashboard code, these views are created as to optimize the query in Grafana. 

`\Schema.sql` contains the schema for the AWS db instance.

`\Python_Scripts` folder contains all the python scripts used to populate the AWS db instance and extract SQL queries from Grafana `.json` files.
- `generator.py` creates the `.sql` script to populate the AWS db instance.
- `grafanaExtraction.py` extracts the sql code from dashboards.

`Jonathan_Young_Natallie_Vallejo.pdf` contains the report to our project and how to utilize our dashboard system.