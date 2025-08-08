create table accident (

accident_index text,
accident_year int,
accident_reference text,
location_easting_osgr double precision,
location_northing_osgr double precision,
longitude double precision,
latitude double precision,
police_force int,
accident_severity int,
number_of_vehicles int,
number_of_casualties int,
date date,
day_of_week int,
time time,
local_authority_district text,
local_authority_ons_district text,
local_authority_highway TEXT,
first_road_class int,
first_road_number int,
road_type int,
speed_limit double precision,
junction_detail int,
junction_control int,
second_road_class int,
second_road_number int,
pedestrian_crossing_human_control int,
pedestrian_crossing_physical_facilities int,
light_conditions int,
weather_conditions int,
road_surface_conditions int,
special_conditions_at_site int,
carriageway_hazards int,
urban_or_rural_area int,
did_police_officer_attend_scene_of_accident int,
trunk_road_flag int,
lsoa_of_accident_location text,
enhanced_severity_collision int

)

select * from accident

select count(*) from accident


SELECT COUNT(*) 
FROM information_schema.columns 
WHERE table_name = 'accident'
  AND table_schema = 'public';