**UK Road Accident Analysis (2013–2023)**

# Summary

I used original data set for analysis from the below government official web site. It was a challenging task as it is a huge file contained billions of rows and 30 pluse column in a single file. Every  fact table column was recorded with unique code and corresponding code description is available in the look up table. The table is mixed up with categorical and numerical data. 

The above table has been imported from web to python and cleaned data set. Fact tables contain the uk road accident data from  1979 to 2023. We have considered only recent decade of data for the study.

After data exploration and removing duplicates and manipulate null values and other additional task data set exported from python to sql.

In sql , we have mapped the lookup table with fact table inorder to replace the coded data to Descriptive data. Additionally, some of the basic data manipulation has been done without loosing the accuracy of data.

Then, I imported three dataset to power bi for visualization and answer our questions.


1. Accident dataset

2. Casuality data set
   
3. Vehicle data set
   
4. Look up data set

Visit the [Official Project Website](https://www.data.gov.uk/dataset/cb7ae6f0-4be6-4935-9277-47e5ce24a11f/road-accidents-safety-data) for more details.


This project provides a detailed analysis of road accidents in the United Kingdom over a ten-year span, from 2013 to 2023. By exploring various dimensions such as time, location, weather, road conditions, demographics, and vehicle types, it aims to uncover patterns in accident severity and identify critical risk factors that influence fatalities.

![image](https://github.com/user-attachments/assets/3411bd71-1438-4340-93f8-642f34459db1)




**Tools and Technologies Used**

Python : Used for data import, cleaning, preprocessing, and preliminary exploratory analysis.

SQL (PostgreSQL): For querying large datasets efficiently and joining multiple relational tables such as accidents, casualties, and vehicles.

Power BI: A dynamic dashboard was built to visualize trends, filter data interactively, and present insights in a user-friendly interface.

GitHub: For version control and documentation of the project.

Jupyter Notebook: Used during the data exploration and transformation phase for detailed analysis and testing of logic.

The combination of Python and SQL enabled deep exploration of data, while Power BI helped in building a high-impact, interactive visual dashboard that brings those insights to life. inaddion to this, used ChatGPT
for the project to be done effienlty and promptly.

Accident Trends Over the Years
Accidents peaked in 2014, while 2020 saw the lowest count—likely due to reduced travel during the pandemic. Despite year-on-year variation, the overall trend highlights key timeframes and geographies with recurring accident hotspots.

Time, Day & Road Patterns
Most accidents occurred during 4 PM to 6 PM, especially on single and dual carriageways, aligning with evening rush hours. Saturdays recorded the highest number of fatal incidents, possibly due to increased recreational travel and relaxed vigilance.

 Light Conditions and Fatality Rates
Nighttime accounted for 40.81% of fatal accidents, with 59.19% occurring during daylight. Although visibility is a factor, it’s clear that human behavior and traffic density are major contributors to fatal crashes.

Age, Gender & Casualty Insights
The 18–29 age group had the highest death rate, followed by 60+ and those aged 30–44. Males had significantly more casualties than females, suggesting a potential area for targeted awareness campaigns.

 Speed Limits and Road Types
Fatalities were most common on roads with speed limits of 30 mph and 60 mph, contributing 33.10% and 34.01% respectively. Single carriageways alone accounted for over 22,000 casualties, highlighting their critical risk level.

Location and Vehicle Analysis
Cars were involved in the majority of accidents (over 20K incidents). Cornwall recorded the highest number of fatal accidents. Alarmingly, rural areas accounted for 68.95% of deaths, likely due to delayed emergency response and high-speed travel.

**Recommendations**

Prioritize early intervention to reduce fatalities at the point of accident.

Increase traffic enforcement and surveillance at high-risk hours—particularly 2 PM to 6 PM and nighttime.

Focus on rural and single carriageway safety, using smart infrastructure and stricter controls.

**Notes: **

I plan to complete the entire analysis and visualization using Python. I'm currently working on it and expect to start the project soon by the end of the july.

