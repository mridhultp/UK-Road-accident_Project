**UK Road Accident Analysis (2013–2023)**

# Summary

I used original dataset from the below government official web site for analysis instead of downloading cleaned one from Kaggle. It was a challenging task as it had huge files contained billions of rows and 30 pluse column in a single file. Every  fact table column was recorded with unique code and corresponding code description is available in the look up table. The table is mixed up with categorical and numerical data. 

The below files have been imported from web to python and cleaned. Fact tables contain the uk road accident,casuality and vehicle data from  1979 to 2023. We have considered only recent decade of data for the analysis.

 Data set exported from python to sql post data exploration , removing duplicates and manipulation and other additional task.

In sql , we have mapped the lookup table with fact table inorder to replace the coded data to Descriptive data. Additionally, some of the basic data manipulation has been done without loosing the accuracy of data.

Then, I imported three dataset to power bi for visualization and answer our questions.


1. Accident dataset

2. Casuality data set
   
3. Vehicle data set
   
4. Look up data set

> **Dataset Title:** Road accidents and safety statistics  
> **Source:** [UK Government Open Data Portal](https://www.data.gov.uk/dataset/cb7ae6f0-4be6-4935-9277-47e5ce24a11f/road-accidents-safety-data)


This project provides a detailed analysis of road accidents in the United Kingdom over a ten-year span, from 2013 to 2023. By exploring various dimensions such as time, location, weather, road conditions, demographics, and vehicle types, it aims to uncover patterns in accident severity and identify critical risk factors that influence fatalities.

<img width="1298" height="725" alt="image" src="https://github.com/user-attachments/assets/c5359fbd-d685-4948-995c-af9760ec2f70" />








# Tools and Technologies Used**

Python : Used for data import, cleaning, preprocessing, and preliminary exploratory analysis.

SQL (PostgreSQL): For querying large datasets efficiently and joining multiple relational tables such as accidents, casualties, and vehicles.

Power BI: A dynamic dashboard was built to visualize trends, filter data interactively, and present insights in a user-friendly interface.

Jupyter Notebook: Used during the data exploration and transformation phase for detailed analysis and testing of logic.

GitHub: For documentation of the project.

The combination of Python and SQL enabled deep exploration of data, while Power BI helped in building a high-impact, interactive visual dashboard that brings those insights to life.

## Findings

1. The highest number of accidents happened in 2014, while the lowest was in 2020 (Possibly due to covid 19) over the last 10 years.
   
**2. Most number of accident occurs at 4pm to 6 pm in single and dual carriage way in the year from 2013 to 2023.   

3. Percentage of  fatal accident is 40.81% at night and 59.19 at daylight.
   
4. Death rate is more among the age range of  18 to 29 followed by 60+ and range of 30 to 44.
   
5. Most deaths happened at the road where the speed limit was 30 and 60, making up 33.10% and 34.01% of the total deaths.
    
6. Most number of fatal accident and death occurred in Saturdays.
    
7. Cars involved in accident over 21K is highest among vehicle type.
    
8. Rural area (68.95%) has more death in comparison with urban area.
    
9. Most number of fatal accident occurred in Cornwall.
    
10. Male had more casualties than female.

**Recommendations**

Prioritize early intervention to reduce fatalities at the point of accident.

Increase traffic enforcement and surveillance at high-risk hours—particularly 2 PM to 6 PM and nighttime.

Focus on rural and single carriageway safety, using smart infrastructure and stricter controls.

# Notes:
I could have done the entire analysis by using Postgres and Power bi but have an another plan. hence used python.

^ I plan to complete the entire analysis and visualization using Python since power bi desktop vesrion has some limtation using visuals. I'm currently bussy with other works and expect to start this project soon.

