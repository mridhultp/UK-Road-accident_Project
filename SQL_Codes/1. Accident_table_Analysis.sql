-- 1. Total Number of accident in the year 2022

	--answer: 1,06,004

select count(*)
from
accident_10years
where "accident_year" = 2022

-- 2. Total Number of 'casuality' & 'vehicle involved in accident' are in the year 2022

--casualty: 1,35,480
--vehicle : 1,93,545

select sum(number_of_casualties) as casualty,sum(number_of_vehicles) as vehicle
from
accident_10years
where "accident_year" = 2022



-- 3. Total Number of fatal accident , casuality & vehicle in the year 2022
--Answer

--Accident : 1,602
--casualty: 2,656
--vehicle : 2,846

select count(*) as Accident, sum(number_of_casualties) as casualty,sum(number_of_vehicles) as vehicle
from
accident_10years
where "accident_year" = 2022 and 
accident_severity_1 = 'Fatal'  

--4. Sevrity summary - it explain the total casuality based on the accident seveirty.  
-- which indicate How many Fatal,serious and slight accident occurred and its total casuality
-- Pls note fatal accident consist of number of death,seriously injured or slightly injured person.
-- This data deosn't tell us the individual casuality severity count who killed in the Road accident.

    Severity | Casuality| Vehicles
--"Fatal"	 |	2656	|	2846
--"Serious"	 |	31948	|	40605
--"Slight"	 |	100876	|	150094

select accident_severity_1 as accident_Severity, sum(number_of_casualties) as casualty,sum(number_of_vehicles) as vehicle
from
accident_10years
where "accident_year" = 2022
group by accident_severity_1

--5. Casuality at week days

"Friday"	23043
"Monday"	17968
"Saturday"	19958
"Sunday"	16119
"Thursday"	20102
"Tuesday"	18747
"Wednesday"	19543

select  day_of_week_1, sum(number_of_casualties) as casuality
from
accident_10years
where "accident_year" = 2022 
group by day_of_week_1
order by casuality desc


--6. Casuality at Speed Limit

select  Speed_limit, sum(number_of_casualties) as casuality
from
accident_10years
where "accident_year" = 2022 
group by Speed_limit
order by casuality desc

--7. Casuality by road type

select road_type_1, sum(number_of_casualties) as casuality
from
accident_10years
where "accident_year" = 2022 
group by road_type_1
order by casuality desc

--8. light_conditions_1

SELECT
    CASE 
        WHEN light_conditions_1 like 'Day%' THEN 'Daylight'
        ELSE 'Darkness'
    END AS light_group,
    SUM(number_of_casualties) AS casualty,
    ROUND(
        100.0 * SUM(number_of_casualties) / SUM(SUM(number_of_casualties)) OVER (),
        2
    ) AS percentage
FROM
    accident_10years
WHERE
    "accident_year" = 2022
GROUP BY
    light_group
ORDER BY
    casualty DESC;

