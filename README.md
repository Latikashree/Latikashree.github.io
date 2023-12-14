# Cyclistic Bike Share Analysis

### Project Overview
---

Welcome, to the Cyclistic bike-share analysis case study! As a junior data analyst at Cyclistic, a dynamic bike-share company in Chicago, my journey aimed to address crucial business questions with the primary objective of maximizing annual memberships. Under the guidance of Moreno, our goal is to design marketing strategies that convert casual riders into dedicated Cyclistic members. The challenge lies in unraveling the nuances between annual members and casual riders, understanding why casual riders would opt for a membership. 

To meet this challenge, I adopted a systematic data analysis process, progressing through the stages of ask, prepare, process, analyze, share, and act. Employing various data analysis tools, I began with Microsoft Excel, navigating through initial data exploration and preparation stages. Subsequently, the data underwent transition into SQL, a powerful tool for cleansing and analysis. This methodical process culminated in the final phase, where I utilized Tableau to create comprehensive visualizations.

Each step of this process was aimed at analyzing trends within Cyclistic's historical bike trip data, forming the foundation for informed marketing strategies and data-driven decision-making. This case study showcases not only the technical aspects of data analysis but also the strategic thinking and insights crucial for addressing business challenges.

### Table Of Content:
---

### About The Company
---

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are
geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to
any other station in the system anytime. 

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in
analyzing the Cyclistic historical bike trip data to identify trends.

### ASK
---
In the Ask phase of the Cyclistic bike-share analysis, the focus is on addressing key questions to guide the future marketing program. Cyclistic's finance analysts have already concluded that annual memberships yield higher profitability than single-ride and day-passes, also the marketing director Lily Moreno's vision is to convert casual riders into annual members for sustainable company growth.

#### TASK 
The objective assigned by Marketing Director Lily Moreno is to understand how casual users and annual members utilize Cyclistic bikes differently. Key questions guiding this data analysis include:
- What are the preferred bicycle types for annual members and casual users?
- How do starting and ending stations differ between annual members and casual users?
- Which stations are the most frequented by all riders?
- What are the commonly used routes for annual members and casual users?
- At what times do riders prefer to use Cyclistic bikes, considering various time metrics?
- How does the duration of trips compare between annual members and casual users?

### PREPARE
---
Certainly! The historical trip data for this analysis is sourced from Cyclistic, a fictional bike-share company, and is publicly available from [Divvy_trip_data](https://divvy-tripdata.s3.amazonaws.com/index.html), made accessible by Motivate International Inc. under a specific [License](https://divvybikes.com/data-license-agreement). The datasets are suitable for addressing the business questions at hand. The chosen data spans one year, from October 2022 to October 2023. Importantly, the dataset respects privacy, as it prohibits the use of personally identifiable information, preventing the linkage of pass purchases to credit card numbers. This restriction ensures compliance with data privacy regulations. Furthermore, there are no credibility or bias issues, and considerations related to licensing, privacy, security, and accessibility have been diligently addressed. The data adheres to the ROCCC criteria, ensuring it is Reliable, Original, Comprehensive, Current, and Cited.

In the dataset, each record represents a ride made by either a casual or a member customer of Cyclistic. The data is organized across 12 CSV files, each corresponding to a specific month. Each file contains 13 columns, namely ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, and member_casual. The dataset does not include specific individual details such as gender, age, address, payment information, or other personal details, maintaining a focus on ride-related information for enhanced privacy and compliance with data protection standards. further steps done for data exploration and preperation are as follows:

- After extracting and unzipping the data, I uploaded it into a Microsoft Excel sheet for initial exploration. 
- During this process, I checked for duplicate entries, spelling errors, and issues related to letter casing but found none. Utilizing the filter option, I identified null values in specific columns such as start_station_name, start_station_id, end_station_name, end_station_id, end_lat, and end_lng. 
- In instances where start_station_name was blank, the corresponding start_station_id was also blank. 
- Some rows exhibited complete absence of information in start_station_name, start_station_id, end_station_name, and end_station_id. However, no null values were present in the started_at and ended_at columns.
- Further filtering ensured that only three types of bikes (electric bike, classic bike, and docked bike) and two rider types (casual and member) were recorded. 
- Due to the dataset's large size, I split the worksheet in Microsft Excel Sheets and proceeded to upload it into [BigQuery SQL](https://cloud.google.com/bigquery?utm_source=google&utm_medium=cpc&utm_campaign=na-none-all-en-dr-sitelink-all-all-trial-e-gcp-1605212&utm_content=text-ad-none-any-DEV_c-CRE_665665924750-ADGP_Hybrid+%7C+BKWS+-+MIX+%7C+Txt_BigQuery-KWID_43700077225652815-kwd-47616965283-userloc_9067609&utm_term=KW_bigquery-ST_bigquery-NET_g-&gclid=EAIaIQobChMIisiHto7JgQMVwfnICh2UmAfuEAAYASABEgJbSPD_BwE&gclsrc=aw.ds) for further analysis.

### PROCESS 
---
1. Data aggregation

A SQL query was employed to aggregate information from 12 distinct CSV tables each representing different months, was aggregated into a single table and ordered to sort started_at by ascending order and the table was named as united_data_table. [click here](https://github.com/Latikashree/Latikashree.github.io/blob/main/query%20for%20uniting%20tables.sql) to view the sql query used for this process. 62,11,510 is the total number of entries present in the united_data_table. By uniting the tables, trends and patterns in the entire dataset can be easily identified, providing a solid foundation for subsequent cleaning and analytical tasks.

2. Null values and Count

   In this step, a comprehensive analysis of null values was conducted to ensure data completeness. [click here](https://github.com/Latikashree/Latikashree.github.io/blob/main/code%20for%20null%20values%20and%20its%20count.sql) to view the SQL query that was crafted to find the total count of entries and identify the number of null values in each relevant column. The results revealed specific areas that required attention:

| Column names | Null values |
| ------------ | ----------- |
| start_station_name | 9,57,599 |
| start_station_id | 9,,57,731 |
| end_station_name | 10,15,409 |
| end_station_id | 10,15,550 |
| end_lat | 7,230 |
| end_lng | 7,230 |
| Total number of null values | 39,60,749 |

3. Data cleaning and Transformation
   
[click here](https://github.com/Latikashree/Latikashree.github.io/blob/main/data%20cleaning%20query.sql) to view the sql code that was generated for cleaning the data.
- In this process, a new table named 'cleaned_data' was crafted using a SQL query. The 'united_data_table,' which initially combined data from various sources, underwent thorough cleaning, and additional information was extracted and organized into the 'cleaned_data' table. 
- The initial steps involved the extraction of 'start_time' and 'start_date' from the 'started_at' column, along with 'end_date' and 'end_time' from 'ended_at.'
- Subsequently, the day of the week for both 'start_date' and 'end_date' was determined, followed by the assignment of month names based on their numeric representations.
- Also the duration of each ride was calculated in minutes.
- In the WHERE condition of the query, specific conditions were set to improve data quality such as Entries with ride lengths less than 1 minute or exceeding 1,440 minutes were excluded. Additionally, efforts were made to eliminate entries where 'ended_at' occurred chronologically before 'started_at.' Further refinement involved the removal of rows containing null values in latitude and longitude columns, namely 'start_lat,' 'start_lng,' 'end_lat,' and 'end_lng.'

### ANALYZE 
---

  In the analysis phase, using SQL query the key insights of bike-share usage pattern was extracted from cleaned_data table.  to view the SQL analysis [click here](https://github.com/Latikashree/Latikashree.github.io/blob/main/data%20analyze%20query.sql). further detailed and visual analysis was done using Tableau visualizations. the visualisations created in tableau are provided in SHARE section, [click here]() to view those. the key insights obtained from the data analysis are:

  1) The total number of rides taken by Annual members are 29,76,261 (64.15%) rides , while casual riders accounted for 16,62,927 (35.85%) rides. which shows that annual members are taking more rides than casual.

  2) The most used bike type by both annual member and casual member are classic_bike and the next type is electric_bike that is used. But the least is docked_bike that is only used by casual members and annual members has not used docked_bike. 

  3) The ride duration or length by casual riders are longer than annual members.

  4) The most used stations by both annual members and  casual members are more concentrated in city center and it is spread in little towards north and south of chicago.

  5) Most of the rides taken by Annual member are during the weekdays and Casual members take most rides during weekends. And the most rides are taken are in the summer months and in october. And the peak hours in a day are from 7am to 8pm.

### SHARE
---

#### Count OF Total rides

The analysis revealed how annual members and casual riders used the bike-sharing service differently. Annual members took a total of 29,76,261 rides, while casual riders had 16,62,927 rides. To view the visualization on Tableau Public [click here]()

![count of total rides]()

   
   


   

   


















