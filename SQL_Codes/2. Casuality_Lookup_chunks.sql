select count (distinct "field name")
from
casualty_lookup

select  *
from
casualty_lookup

select  *
from
casuality_class




create table casuality_class
as
select *
from
casualty_lookup
where "field name" = 'casualty_class'

alter table casuality_class rename column "code/format" to code


create table sex_of_casualty
as
select *
from
casualty_lookup
where "field name" = 'sex_of_casualty'

drop table age_of_casualty


create table age_band_of_casualty
as
select *
from
casualty_lookup
where "field name" = 'age_band_of_casualty'


create table casualty_severity
as
select *
from
casualty_lookup
where "field name" = 'casualty_severity'

create table pedestrian_location
as
select *
from
casualty_lookup
where "field name" = 'pedestrian_location'

create table pedestrian_movement
as
select *
from
casualty_lookup
where "field name" = 'pedestrian_movement'


create table car_passenger
as
select *
from
casualty_lookup
where "field name" = 'car_passenger'

create table bus_or_coach_passenger
as
select *
from
casualty_lookup
where "field name" = 'bus_or_coach_passenger'


create table pedestrian_road_maintenance_worker
as
select *
from
casualty_lookup
where "field name" = 'pedestrian_road_maintenance_worker'

create table casualty_type
as
select *
from
casualty_lookup
where "field name" = 'casualty_type'

create table casualty_home_area_type
as
select *
from
casualty_lookup
where "field name" = 'casualty_home_area_type'


create table casualty_imd_decile
as
select *
from
casualty_lookup
where "field name" = 'casualty_imd_decile'

create table lsoa_of_casualty
as
select *
from
casualty_lookup
where "field name" = 'lsoa_of_casualty'

create table enhanced_casualty_severity
as
select *
from
casualty_lookup
where "field name" = 'enhanced_casualty_severity'

create table casualty_distance_banding
as
select *
from
casualty_lookup
where "field name" = 'casualty_distance_banding'

