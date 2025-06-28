select * from accident_dataset

---what is the total number of accident 

select count (number_of_casualties)
from accident_dataset

--- what is the total number of casulaity

select sum (number_of_casualties)
from accident_dataset

--- Number of vehicle involved in the accident

select count (number_of_vehicles)
from accident_dataset

