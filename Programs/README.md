
1. Group Members
    Jonathan Young
    Natalie Vallejo

2. Target Domain 
    The impact of COVID on patient outcomes, symptoms, and longevity as well as the economy. 

3. English Questions
    a. Compare the total unemployment rate as of December 2019 to the total unemployment rate as of April 2020. Has COVID impacted the employment rate?
    b. Compare unemployment rates of men and women who are 16 to 19-year-olds, 20 years and over, and over 65 years old in December 2019 vs. April 2020. Has COVID disproportionately affected some age groups versus others in terms of employment? 
    c. Compare unemployment rates of Asian, White, Black or African American, Hispanic, or Latinos in December 2019 vs. April 2020. Do certain races face higher unemployment rates than others?
    d. Compare the percent contribution of each nonfarm sector of the economy to the total employment level in both December 2019 vs. April 2020.
    e. How does the pandemic affect different sectors of industry in terms of GDP? Were some industries more clearly affected than others? If so, which ones?
    f. Compare the total GDP for all industries in the first quarter of 2020 vs. the second quarter of 2020. How signifiganctly did the pandemic impact the economy?
    g. Do quarters with lower/negative percent changes in GDP from the preceding period in total GDP correspond to peaks in COVID cases
    h. Do quarters with lower/negative percent changes in GDP from the preceding period of certain service sectors, like healthcare services, correspond to peaks in COVID cases?
    i. How did consumer prices for selected items, like medical care services, increase during the pandemic? Did they correlate with peaks? 
    j. How was unemployment of women affected (have to stay more with children) vs. men?
    k How were different races/ethnicities affected in employment (Hispanics and blacks work more in service sectors/manual labor) during the pandemic? Were these races also affected by COVID?
    l. Which gender group was more likely to be affected by the pandemic? In terms of outcomes?
    m. Which age group was more likely to be affected by the pandemic? 
    n. Are the 65 and older population more prone to death or health complications due to the pandemic? 
    o. Are certain races/ethnicities more prone to deaths or cases in the pandemic?
    p. Associate that with a possible correlation between race and corresponding household income (working in certain service sectors)
    q. Has COVID disproportionately affected household income of some races/ethnic groups?
    r. Does a peak in COVID cases correspond to higher unemployment? And is there a direct correlation, or have industries adapted to COVID? 
    s. Does vaccination decrease hospitalizations? 
    t. Are states with high vaccination rates having low rates of COVID deaths and cases? (Pointing the effectiveness of vaccination in a certain direction) 
    u. Do testing rates correlate with decreased hospitalizations, cases, or deaths?
    w. Which conditions contributed to COVID deaths?

4. Schema in SQL Format - schema.sql
   Schema in Relational Model - schema.png //TODO

5. SQL Queries - See Queries.sql

6. Loading Data 
    All of the data will come from downloading from the links listed in the section below:
    These .csv files will be loaded into a python script that isolates the column required to process, while also outputting the script required to input the data into the database according to the defined schema. 
    Key economic indicators in the time of COVID-19
    LINKS 
        https://data.bls.gov/apps/covid-dashboard/home.htm
        Civilian Unemployment Rate
        State Unemployment Rates Animated Map
        Reasons for Unemployment
        National Duration of Unemployment
        Employment-population ratios for demographic groups
        Employed part-time for economic and noneconomic reasons
        Job openings hires, and separations
        Nonfarm employment levels (by sector)
        Consumer Prices
        GDP data (by Industry)
        https://www.bea.gov/sites/default/files/2022-09/gdp2q22_3rd.xlsx
        Percent Change From Preceding Period in Real Gross Domestic Product
        https://apps.bea.gov/iTable/?reqid=19&step=2&isuri=1&categories=survey#eyJhcHBpZCI6MTksInN0ZXBzIjpbMSwyLDNdLCJkYXRhIjpbWyJjYXRlZ29yaWVzIiwiU3VydmV5Il0sWyJOSVBBX1RhYmxlX0xpc3QiLCIzMSJdXX0=
        COVID
        https://data.cdc.gov/Case-Surveillance/Weekly-United-States-COVID-19-Cases-and-Deaths-by-/pwn4-m3yp OR https://raw.githubusercontent.com/nytimes/covid-19-data/master/rolling-averages/us-states.csv (more workable)
        https://data.cdc.gov/NCHS/Provisional-COVID-19-Deaths-by-Week-Sex-and-Age/vsak-wrfu
        https://covid.cdc.gov/covid-data-tracker/#demographicsovertime
        https://data.cdc.gov/NCHS/Provisional-COVID-19-Deaths-by-Sex-and-Age/9bhg-hcku
        RACE
        https://covidtracking.com/race/dashboard
        https://data.cdc.gov/NCHS/Provisional-COVID-19-Deaths-Distribution-of-Deaths/pj7m-y5uh

        GENDER
        https://www.genderscilab.org/gender-and-sex-in-covid19/#DataTable
        HEALTH CONDITIONS
        https://data.cdc.gov/NCHS/Conditions-Contributing-to-COVID-19-Deaths-by-Stat/hk9y-quqm
        HOSPITALIZATIONS
        https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/g62h-syeh
        https://gis.cdc.gov/grasp/covidnet/covid19_5.html
        https://data.cdc.gov/Case-Surveillance/Rates-of-Laboratory-Confirmed-COVID-19-Hospitaliza/k3na-u7xf


        PCR TESTING
        https://healthdata.gov/dataset/COVID-19-Diagnostic-Laboratory-Testing-PCR-Testing/j8mb-icvb
        VACCINATION STATUS 
        https://data.cdc.gov/Public-Health-Surveillance/Rates-of-COVID-19-Cases-or-Deaths-by-Age-Group-and/3rge-nu2a
        https://data.cdc.gov/Vaccinations/Archive-COVID-19-Vaccination-and-Case-Trends-by-Ag/gxj9-t96f
        https://covid.cdc.gov/covid-data-tracker/#vaccinations_vacc-total-admin-rate-total


        EMPLOYMENT 
        Data for 65 years and over https://www.bls.gov/webapps/legacy/cpsatab6.htm
        HOUSEHOLD INCOME
        https://www.bea.gov/news/2022/gross-domestic-product-state-and-personal-income-state-2nd-quarter-2022
        https://www.bea.gov/sites/default/files/2021-12/lagdp1221.xlsx


7.  PHP files and HTML interface
    A drop-down menu of different questions with different PHP files and different inputs

8. Specialized/Advanced topics in Database Design 
    Object-oriented or distributed database design
    Advanced GUI form interface hopefully using AWS
