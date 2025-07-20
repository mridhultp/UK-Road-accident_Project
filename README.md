**UK Road Accident Analysis (2013–2023)**

# Summary

I used original dataset from the below government official web site for analysis instead of downloading cleaned one from Kaggle. It was a challenging task as it had huge files contained billions of rows and 30 pluse column in a single file. Every  fact table column was recorded with unique code and corresponding code description is available in the look up table. The table is mixed up with categorical and numerical data. 

The below files have been imported from web to python and cleaned. Fact tables contain the uk road accident,casuality and vehicle data from  1979 to 2023. We have considered only recent decade of data for the analysis.

 Data set exported from python to sql post data exploration , removing duplicates and manipulation and other additional task.

In sql , we have mapped the lookup table with fact table inorder to replace the coded data to Descriptive data. Additionally, some of the basic data manipulation has been done without loosing the accuracy of data.

Then, I imported three dataset to power bi for visualization and answer our questions.


1. Accident dataset  - Road Safety Data - Collisions 1979 - Latest Published Year

2. Casuality data set  - Road Safety Data - Casualties 1979 - Latest Published Year
   
3. Vehicle data set  - Road Safety Data - Vehicles 1979 - Latest Pubished Year
   
4. Look up data set

> **Dataset Title:** Road Safety Data

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
   
 #### 2. Most number of accident occurs at 4pm to 6 pm and single and dual carriage way in the year from 2013 to 2023.   

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


## Accident Data Exploration with SQL

--0 To get the first two latest incidents of accident based on the Accident severity

select *

from (
	select 
 
	row_number() over(partition by accident_severity_1 order by accident_year desc) as rn, a.*
 
	from
 
	accident_10years a) x

where x.rn <3


-- 1 select accident table

select * 

from

accident_10years

-- 2 Count of accident table

select distinct count (*) 

from

accident_10years

-- 3 Total number of accident,casuality and vehicle involved?

select count(*)as accident, sum(number_of_casualties) as number_of_casualties,
sum(number_of_vehicles) as number_of_vehicles

from

accident_10years

-- 4 what is the total number of year by year accdent and casuality and vehicle involved in the accident?

select accident_year,  to_char(count(*), '99,99,999') as number_of_accident , sum(number_of_casualties)as number_of_casualties,
sum(number_of_vehicles) as number_of_vehicles
from

accident_10years

group by accident_year


-- 5 Accident by severity - 'fatal - atleast one death of a incident is considered as fatal'
--(This means the casualty count in the accidents table is a total
--for instance, fatal accident consist of all level severity with atleast 1 death )

select accident_year, count (*) as number_of_fatal_Accident, sum (number_of_casualties) as number_of_casualties,
sum(number_of_vehicles) as number_of_vehicles

from accident_10years

where accident_severity_1 = 'Fatal'

group by accident_year


-- 6 Accident by severity - 'Serious (There will not be have any death but consit of slight and seriously inured)

select accident_year, count (*) as number_of_serious_Accident, sum (number_of_casualties) as number_of_casualties,
sum(number_of_vehicles) as number_of_vehicles

from accident_10years

where accident_severity_1 = 'Serious'

group by accident_year


--7 Accident by severity - 'Serious (There will not be have any death or serious injury but consit of slightly inured)


select accident_year, count (*) as number_of_Slight_Accident, sum (number_of_casualties) as number_of_casualties,
sum(number_of_vehicles) as number_of_vehicles

from accident_10years

where accident_severity_1 = 'Slight'

group by accident_year



-- 8 Slight accident details + Grand Total

select 

  accident_year::text as accident_year,
  count(*) as number_of_slight_accident,
  sum(number_of_casualties) as number_of_casualties,
  sum(number_of_vehicles) as number_of_vehicles
  
from accident_10years

where accident_severity_1 = 'Slight'

group by accident_year

union all

select 

  'Total' as accident_year,
  count(*) as number_of_slight_accident,
  sum(number_of_casualties),
  sum(number_of_vehicles)
  
from accident_10years

where accident_severity_1 = 'Slight';


-- 9 Accident by road_type

select accident_year,count(*)as  Single_carriageway
from accident_10years

where road_type_1 = 'Single carriageway' 

group by accident_year

-- 10 Total Casualty by road_type


select

  accident_year,
  sum(number_of_casualties) filter (where road_type_1 = 'Single carriageway') AS single_carriageway,
  sum(number_of_casualties) filter (where road_type_1 = 'Dual carriageway') AS dual_carriageway,
  sum(number_of_casualties) filter (where road_type_1 = 'One way street') AS one_way_street,
  sum(number_of_casualties) filter (where road_type_1 = 'Roundabout') AS roundabout,
  sum(number_of_casualties) filter (where road_type_1 = 'Slip road') AS slip_road,
  SUM(number_of_casualties) FILTER (WHERE road_type_1 = 'Unknown') AS unknown
  
from accident_10years

group by accident_year

order by accident_year;

--or 

SELECT 

  accident_year,
  road_type_1,
  SUM(number_of_casualties) AS total_casualties
FROM accident_10years

WHERE road_type_1 IN (
  'Dual carriageway',
  'One way street',
  'Roundabout',
  'Single carriageway',
  'Slip road',
  'Unknown'
)
GROUP BY accident_year, road_type_1
ORDER BY accident_year, road_type_1;


-- 11 Total Casualty by day_of_week_1

select 
	accident_year,
	sum(number_of_casualties)filter(where day_of_week_1 = 'Sunday') as Sunday,
	sum(number_of_casualties)filter(where day_of_week_1 = 'Monday') as Monday,
	sum(number_of_casualties)filter(where day_of_week_1 = 'Tuesday') as Tuesday,
	sum(number_of_casualties)filter(where day_of_week_1 = 'Wednesday') as Wednesday,
	sum(number_of_casualties)filter(where day_of_week_1 = 'Thursday') as Thursday,
	sum(number_of_casualties)filter(where day_of_week_1 = 'Friday') as Friday,
	sum(number_of_casualties)filter(where day_of_week_1 = 'Saturday') as Saturday
 
from accident_10years

group by accident_year

order by accident_year;


-- 11 Total Casualty by speed_limit (assume -1 as 10)

select 

	accident_year,
	sum(number_of_casualties)filter(where speed_limit = '-1') as limit_10,
	sum(number_of_casualties)filter(where speed_limit = '20') as limit_20,
	sum(number_of_casualties)filter(where speed_limit = '30') as limit_30,
	sum(number_of_casualties)filter(where speed_limit = '40') as limit_40,
	sum(number_of_casualties)filter(where speed_limit = '50') as limit_50,
	sum(number_of_casualties)filter(where speed_limit = '60') as limit_60,
	sum(number_of_casualties)filter(where speed_limit = '70') as limit_70
 
from accident_10years

group by accident_year

order by accident_year;


--12 find the number of Fatal accdent that has more than 20 casuality?

select * 

from 

accident_10years

where number_of_casualties >20 and accident_severity_1 = 'Fatal'

order by number_of_casualties desc

-- 13  find the 15 most number of fatal accdent and casualities?

select *

from

(select a.*, 
row_number() over(partition by accident_severity_1 order by number_of_casualties desc ) as rn
from accident_10years a
where accident_severity_1 = 'Fatal' ) as x

where x.rn < 16

--








