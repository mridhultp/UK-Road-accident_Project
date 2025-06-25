# UK-Road-accident_Project

Introduction
This project presents an analytical overview of road accidents in the United Kingdom using data-driven insights. The aim is to understand patterns, causes, and severity of accidents, and visualize the trends using advanced business intelligence tools. A comprehensive and scalable data pipeline was created using Python, SQL, and Power BI to analyze one of the largest public road accident datasets available.
________________________________________
Project Background
The primary dataset, o**riginally sourced from the UK government's road safety data portal, includes billions of records collected between 1979 and 2023**. The dataset comprises detailed accident information, vehicle types involved, casualty details, and location-wise mappings. Each field in the dataset is encoded using numeric or alphanumeric codes, with corresponding descriptive mappings available in separate lookup tables.
Given the enormous size and complexity of the data (with over 30 columns and multiple fact tables), working with it presented significant technical and analytical challenges. **To maintain relevance and focus, the analysis was restricted to the most recent decade (2014–2023)**.
________________________________________
**Methodology**
**
1.	Data Extraction and Cleaning (Python):

o	The original dataset was imported from the web using Python.
o	Initial data exploration involved handling missing values, detecting and removing duplicate rows, and correcting inconsistent or corrupt entries.
o	Data types were standardized, and unnecessary columns were dropped to optimize performance and clarity.

2.	Data Transformation (SQL):
   
o	The cleaned dataset was transferred from Python into a PostgreSQL environment for relational data management.
o	Fact tables (accidents, vehicles, casualties) were joined with their respective lookup tables to convert coded values into meaningful descriptive fields (e.g., road types, weather conditions, vehicle types).
o	Additional transformations included categorizing continuous variables, filtering by year (2014), and basic aggregations.

3.	Data Integration (Power BI):
   
o	Final datasets were imported into Power BI for visualization and reporting.
o	Three main datasets—Accident, Casualty, and Vehicle—along with lookup mappings were structured into an efficient data model using relationships and custom measures.**
________________________________________
Design and Visualization
The Power BI dashboard was designed to offer an intuitive and interactive user experience. It includes:
•	Key Metrics Cards: Total number of accidents (146K), casualties (194K), vehicles involved (269K), and fatal, serious, and slight injury counts.
•	Trend Analysis: A line graph shows accident and casualty trends over the years.
•	Demographic Breakdown: Pie charts visualize casualties by gender, light conditions, and geographical regions.
•	Temporal Patterns: Casualties by day of the week and time of day highlight peak accident periods.
•	Road and Vehicle Insights: A matrix and bar charts illustrate the relation between road type, vehicle category, and accident severity.
•	Geospatial View: A map pinpoints the accident locations across the UK.
All visualizations are filtered to display only data from the year 2014, offering a focused view for that period.

![image](https://github.com/user-attachments/assets/b495be7f-0bad-481e-9107-d0dcce05071a)


________________________________________
Insights and Impact
•	Vehicle Involvement: Cars and trucks were involved in the majority of accidents in 2014, with cars accounting for over 1.5 lakh incidents.
•	Casualty Demographics: Males formed the overwhelming majority (90.31%) of casualties, indicating potential risk behavior or exposure.
•	Temporal Trends: Most accidents occurred between 4 PM and 6 PM, aligning with post-work traffic congestion.
•	High-Speed Risk: The bar chart confirms a spike in both accidents and casualties in higher speed zones (40–60 mph), underlining the importance of speed regulation.
•	Road Type: Single carriageways and dual carriageways reported the highest accident counts, suggesting targeted infrastructure improvements could reduce accident rates.
________________________________________
Conclusion
This project successfully demonstrates how large-scale, multi-dimensional public datasets can be transformed into actionable insights through a structured pipeline. Leveraging Python for ETL, SQL for transformation, and Power BI for storytelling enabled the creation of a robust analytical dashboard.
The study not only highlights critical road safety challenges in the UK (specifically in 2014) but also serves as a model for similar public data analytics projects. The insights derived can guide policymakers, transport departments, and public awareness campaigns to reduce accidents and improve road safety.

