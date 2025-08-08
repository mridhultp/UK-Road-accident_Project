create table vehicle_type
as
select * from 
vehicle_lookup
where "field name" = 'vehicle_type'


create table towing_and_articulation
as
select * from 
vehicle_lookup
where "field name" = 'towing_and_articulation'

create table vehicle_manoeuvre
as
select * from 
vehicle_lookup
where "field name" = 'vehicle_manoeuvre'


create table vehicle_direction_from
as
select * from 
vehicle_lookup
where "field name" = 'vehicle_direction_from'


create table vehicle_direction_to
as
select * from 
vehicle_lookup
where "field name" = 'vehicle_direction_to'


create table vehicle_location_restricted_lane
as
select * from 
vehicle_lookup
where "field name" = 'vehicle_location_restricted_lane'

create table junction_location
as
select * from 
vehicle_lookup
where "field name" = 'junction_location'

create table skidding_and_overturning
as
select * from 
vehicle_lookup
where "field name" = 'skidding_and_overturning'

create table hit_object_in_carriageway
as
select * from 
vehicle_lookup
where "field name" = 'hit_object_in_carriageway'


create table vehicle_leaving_carriageway
as
select * from 
vehicle_lookup
where "field name" = 'vehicle_leaving_carriageway'


create table hit_object_off_carriageway
as
select * from 
vehicle_lookup
where "field name" = 'hit_object_off_carriageway'


create table first_point_of_impact
as
select * from 
vehicle_lookup
where "field name" = 'first_point_of_impact'

create table vehicle_left_hand_drive
as
select * from 
vehicle_lookup
where "field name" = 'vehicle_left_hand_drive'

create table journey_purpose_of_driver
as
select * from 
vehicle_lookup
where "field name" = 'journey_purpose_of_driver'

create table journey_purpose_of_driver
as
select * from 
vehicle_lookup
where "field name" = 'journey_purpose_of_driver'


create table sex_of_driver
as
select * from 
vehicle_lookup
where "field name" = 'sex_of_driver'


create table age_of_driver
as
select * from 
vehicle_lookup
where "field name" = 'age_of_driver'

drop table age_of_driver

select * from engine_capacity_cc


create table age_band_of_driver
as
select * from 
vehicle_lookup
where "field name" = 'age_band_of_driver'


create table age_band_of_driver
as
select * from 
vehicle_lookup
where "field name" = 'age_band_of_driver'


create table propulsion_code
as
select * from 
vehicle_lookup
where "field name" = 'propulsion_code'

create table driver_home_area_type
as
select * from 
vehicle_lookup
where "field name" = 'driver_home_area_type'

create table lsoa_of_driver
as
select * from 
vehicle_lookup
where "field name" = 'lsoa_of_driver'


create table escooter_flag
as
select * from 
vehicle_lookup
where "field name" = 'escooter_flag'


create table dir_from_e
as
select * from 
vehicle_lookup
where "field name" = 'dir_from_e'

create table dir_from_n
as
select * from 
vehicle_lookup
where "field name" = 'dir_from_n'


create table dir_to_e
as
select * from 
vehicle_lookup
where "field name" = 'dir_to_e'

create table dir_to_n
as
select * from 
vehicle_lookup
where "field name" = 'dir_to_n'


create table age_of_vehicle
as
select * from 
vehicle_lookup
where "field name" = 'age_of_vehicle'

