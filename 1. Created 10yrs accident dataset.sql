

select count (*) from accident_dataset
where accident_year =2024;


select count(*) from accident_dataset

ALTER TABLE accident_dataset 
ADD COLUMN date_converted DATE;

UPDATE accident_dataset 
SET date_converted = TO_DATE(date, 'DD-MM-YYYY');

create table accident_10years
as
select  * from accident_dataset
where accident_year between 2013 and 2023;

alter table accident_dataset
drop column date_converted; 

alter table accident_dataset
alter column date type date
using TO_DATE(date,'DD,MM,YYYY');



