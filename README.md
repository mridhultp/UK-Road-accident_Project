**UK Road Accident Analysis (2013–2023) **

# Summary

I used original dataset from the below government official web site for analysis instead of downloading cleaned one from Kaggle. It was a challenging task as it had huge files contained billions of rows and 30 pluse column in Multipe files. Every  fact table column was recorded with unique code and corresponding code description is available in the look up table. The table is mixed up with categorical and numerical data. 

The below files have been imported from web to jupyter notebook and cleaned. Fact tables contain the uk road accident,casuality and vehicle data from  1979 to 2023. We have considered only recent decade of data for the analysis.

Each table exported from sql using jupyter notebook post data exploration , removing duplicates and manipulation and other additional task.However, a detailed feature engineering has not been done.

In sql , I have mapped the lookup table with fact table inorder to replace the coded data to Descriptive data. Additionally, some of the basic data manipulation has been done without loosing the accuracy of data.

Then, I imported three dataset to power bi for visualization and answer our questions.


1. Accident dataset  - Road Safety Data - Collisions 1979 - Latest Published Year [Download_file](https://data.dft.gov.uk/road-accidents-safety-data/dft-road-casualty-statistics-collision-1979-latest-published-year.csv)

2. Casuality data set  - Road Safety Data - Casualties 1979 - Latest Published Year [Download_file](https://data.dft.gov.uk/road-accidents-safety-data/dft-road-casualty-statistics-casualty-1979-latest-published-year.csv)
   
3. Vehicle data set  - Road Safety Data - Vehicles 1979 - Latest Pubished Year [Download_file](https://data.dft.gov.uk/road-accidents-safety-data/dft-road-casualty-statistics-vehicle-1979-latest-published-year.csv)
   
4. Look up data set [Download_file](https://data.dft.gov.uk/road-accidents-safety-data/dft-road-casualty-statistics-road-safety-open-dataset-data-guide-2024.xlsx)

> **Dataset Title:** Road Safety Data

> **Source:** [UK Government Open Data Portal](https://www.data.gov.uk/dataset/cb7ae6f0-4be6-4935-9277-47e5ce24a11f/road-accidents-safety-data)
>
> **Dashboard path** : [UK_RoadAccident_Dashbaord](https://drive.google.com/drive/folders/1yCeyc2gz9LVpij_U0d2Ufy6FqEeIB2VD?usp=drive_link)
> Download pbix file from google drive.
> 

This project provides a detailed analysis of road accidents in the United Kingdom over a ten-year span, from 2013 to 2023. By exploring various dimensions such as time, location, weather, road conditions, demographics, and vehicle types, it aims to uncover patterns in accident severity and identify critical risk factors that influence fatalities.

<img width="1317" height="741" alt="image" src="https://github.com/user-attachments/assets/38218ce1-6d8c-4b0e-a56c-388f7d8c54fa" />



<img width="1321" height="740" alt="image" src="https://github.com/user-attachments/assets/85799674-f0ca-472a-9e41-bd2a3c5ee59f" />












# Tools and Technologies Used**

Python (Jupyter Notebook) : Used for data import, cleaning, preprocessing, and preliminary exploratory analysis. Connect with postgresQL.

SQL (PostgreSQL): For querying large datasets efficiently and joining multiple relational tables such as accidents, casualties, and vehicles.
                  Feature encoding.

Power BI: A dynamic dashboard was built to visualize trends, filter data interactively, and present insights.

GitHub: For documentation of the project.

The combination of Python and SQL enabled deep exploration of data, while Power BI helped in building a high-impact, interactive visual dashboard that brings those insights to life.


**Tried to answer the following.**

Accident Trends for a decade from the year of 2013 to 2023?
Special Focus on the year the greatest number of accident and causality occurred.
Compare with other years and City-wise Accidents, Casualties and death.
Correlation between fatal accident and causalities.
Analyze city-wise Accident and casualties (fatal and non-fatal).
Soloutions (if any)

## Findings

1.	From 2014 to 2023, a total of 11 million accidents were recorded, resulting in 15 million casualties and involving 21 million vehicles.
2.	The highest number of accidents and causality happened in 2014, while the lowest was in 2020 over the last 10 years.
3.	The highest number of fatal accidents and causality occurred in 2016, while the lowest was in 2020.
4.	Most number of accidents in Birmingham from 2014 to 2023.
5.	Most number of fatal accidents occurred in Cornwall.
6.	Cars involved in accident over 10M is highest among vehicle type. 
7.	 The highest number of deaths were recorded among riders or drivers (appro 10,000), followed by passengers and pedestrians.
8.	Most deaths happened at the road where the speed limit was 30 and 60, making up 33.10% and 34.01% of the total deaths.
9.	Percentage of fatal accident is 40.81% at night and 59.19 at daylight.
10.	Male had more casualties than female.
11.	Most number of accidents occurs at 4pm to 6 pm and single and dual carriage way in the year from 2014 to 2023.
12.	Death rate is more among the age range of 18 to 29 followed by 60+ and range of 30 to 44.
13.	Most number of fatal accident and death occurred in Saturdays.
14.	Rural area (68.95%) has more death in comparison with urban area.


**Recommendations**

Prioritize early intervention to reduce fatalities at the point of accident.

Increase traffic enforcement and surveillance at high-risk hours—particularly 2 PM to 6 PM and nighttime.

Focus on rural and single carriageway safety, using smart infrastructure and stricter controls.

**Notes**:

Feature engineering and removal of unnecessary columns were not carried out to allow future reuse of the datasets, which has led to larger file sizes.

# Analysis Overview!?

<img width="1295" height="732" alt="image" src="https://github.com/user-attachments/assets/695b98ca-5d1f-46a9-b5d6-53f2857762d2" />










