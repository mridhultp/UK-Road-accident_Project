**UK Road Accident Analysis (2013–2023)**

 Project Summary

This project focuses on analyzing road accident data in the United Kingdom from 2013 to 2023. The main objective is to discover trends, causes, and patterns behind road accidents and casualties using data-driven methods. The analysis was done using Python for data extraction and cleaning, PostgreSQL for data transformation, and Power BI for interactive visualization.

🛠 Tools & Technologies

Python – Used for importing, cleaning, and preprocessing raw data.

PostgreSQL (SQL) – Used for organizing data into tables, performing joins, filtering, and creating calculated fields.

Power BI – Used to build a dynamic dashboard for visual analysis and insights.

 Data Collection & Cleaning (Python)
The original accident data was collected from the UK government road safety database.

Data included accident details, vehicle types, road conditions, time of accident, weather, casualty severity, gender, and age.

Python was used to:

Load data from multiple CSV files.

Remove missing values and duplicates.

Convert coded values using lookup dictionaries.

Standardize date, time, and numeric formats.

Filter out data before 2013 to keep the focus on the last 10 years (2013–2023).

 Data Transformation (SQL – PostgreSQL)
After cleaning the data in Python, it was loaded into PostgreSQL for further transformation and analysis:

Joins were used to merge accident, vehicle, and casualty tables using common keys like accident_index.

Lookup mapping: Code columns (e.g., road type, light condition, casualty class) were replaced with readable descriptions using mapping tables.

Filtering: Only data from 2013 to 2023 was selected.

Calculated columns were added, such as:

hour_group for accident time slot (e.g., 4–6 PM),

day_of_week,

road_type_classification.

Example SQL transformation:

sql
Copy
Edit
SELECT 
  a.accident_index,
  a.date,
  EXTRACT(DOW FROM a.date) AS day_of_week,
  c.casualty_class,
  v.vehicle_type,
  r.road_type_desc,
  l.light_condition,
  a.speed_limit
FROM 
  accident a
JOIN casualty c ON a.accident_index = c.accident_index
JOIN vehicle v ON a.accident_index = v.accident_index
JOIN road_lookup r ON a.road_type = r.road_code
JOIN light_lookup l ON a.light_condition = l.code
WHERE 
  a.accident_year BETWEEN 2013 AND 2023;


 
** Data Visualization (Power BI)**


![image](https://github.com/user-attachments/assets/91050145-555c-4958-8706-b28e14faceb4)



Once data was prepared in SQL, the final tables were imported into Power BI. An interactive dashboard was created with the following sections:

 Key Metrics (Top Cards)
1M total accidents

2M casualties

2M vehicles involved

19K fatal, 261K serious, and 1M slight injuries

 Trends Over Time
A line graph shows how accident and casualty numbers changed from 2013 to 2023.

There is a visible drop in accidents around 2020, likely due to COVID-19 restrictions, with a slight increase post-2021.

 Casualties by Gender
Pie chart shows males make up over 90% of all casualties, indicating a strong gender imbalance in road risk exposure.

🗓 Casualties by Day of Week
Friday sees the highest number of accidents, followed by Thursday and Wednesday.

Weekends (Saturday and Sunday) have the lowest casualty counts.

 Accidents by Time
Most accidents happen between 4 PM and 6 PM, indicating evening rush hours are the riskiest.

Fewer accidents happen late at night or early morning (2 AM – 6 AM).

 Accident by Speed Limit
Accidents are more common in zones with speed limits between 40–60 mph.

As speed increases, the number of accidents slightly drops, likely due to fewer high-speed roads but higher fatality risks.

 Accident Locations (Map)
Most accident clusters appear in urban areas such as London, Birmingham, and Manchester.

Densely populated areas see a higher accident rate.

 Vehicle Types Involved
Cars are involved in the most accidents (13.38 lakh cases).

Trucks (1.4 lakh), Buses (46K), and Motorcycles (1.29 lakh) also contribute significantly.

Pedal cycles and other vehicles are also included in the breakdown.

Road Types
Most casualties occur on single carriageways (1.27 million), followed by dual carriageways and roundabouts.

Slip roads and one-way streets have the lowest numbers.

 Casualties by Age Group
Highest casualties are in the 18–29 age group, followed by 30–44.

Under 18s and 60+ have lower accident counts, suggesting either lower travel rates or more caution.

Light Conditions
Accidents mostly happen during the day, with fewer in poor lighting or nighttime.

Light condition is still a factor in determining accident severity.

Top 10 Cities by Casualties
Birmingham ranks highest, followed by Leeds, Westminster, and Cornwall.

 Insights and Patterns
Evening peak traffic (4–6 PM) is the most dangerous time.

Single carriageways and urban roads are more accident-prone than motorways.

Young adults (18–29) face the highest risk of road casualties.

Speed zones between 40–60 mph see the most crashes.

Cars are the most involved vehicle type; trucks and motorcycles also carry significant risk.

Accident rates are higher on Fridays, possibly due to end-of-week rush or fatigue.

Cities like Birmingham and Leeds require stronger road safety programs based on casualty volume.

** Conclusion**
This project successfully used Python for ETL, PostgreSQL for structured data transformation, and Power BI for interactive analysis to uncover meaningful insights from a decade of UK road accident data.

The dashboard helps identify:

High-risk roads and times,

Vulnerable age groups,

Traffic patterns affecting safety.

These findings can support policy makers, transport departments, and public awareness campaigns to take targeted actions and reduce road accidents across the UK.

