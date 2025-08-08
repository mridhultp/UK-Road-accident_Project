-- 1. Total Casuality as per casuality table
-- Answer :  1,35,480 is matching with the accident table data.

select count(*)
from
casuality_10years
where "accident_year" = 2022

-- 2. Casuality severity (Death and injury)

-- Data explicitly says the number of killed, seriously and slighly injured in the year of 2022.

--"Fatal"	| 1,711
--"Serious"	| 25,820
--"Slight"	| 1,07,949

select casualty_severity, count(*)
from casuality_10years
where "accident_year" = 2022
group by casualty_severity

-- 3. 


	
