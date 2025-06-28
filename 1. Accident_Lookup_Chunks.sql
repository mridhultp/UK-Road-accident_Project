Import Look_up table to SQL from web by using python and break the lookuptable into multiple smaller chunks as per 3NF method for joining the data to fact table.

fact table contain 37 column and 84 M rows , which has categorical and numerical values.however, almot 90% of observations under features has been coded with numerical values. we ned to convert this numerical values with its associated descriptions in the lookup table.


----renamed a cloumn in the accident look_up table

alter table accident_lookup rename "code/format" to code;

--- explored the look_up table.

select distinct "field name" from accident_lookup



create table accident_police_force as 

(select * from accident_lookup
where "field name" = 'police_force')




create table accident_day_of_week as  # 3

(select * from accident_lookup
where "field name" = 'day_of_week')


create table accident_day_of_week as 

(select * from accident_lookup
where "field name" = 'day_of_week')


create table accident_road_type as 

(select * from accident_lookup
where "field name" = 'road_type')



create table accident_speed_limit as 

(select * from accident_lookup
where "field name" = 'speed_limit')

create table accident_junction_detail as

(select * from accident_lookup
where "field name" = 'junction_detail')


create table accident_junction_control as

(select * from accident_lookup
where "field name" = 'junction_control')


create table accident_light_conditions as

(select * from accident_lookup
where "field name" = 'light_conditions')


create table accident_weather_conditions as

(select * from accident_lookup
where "field name" = 'weather_conditions')


create table accident_road_surface_conditions as

(select * from accident_lookup
where "field name" = 'road_surface_conditions')

create table accident_special_conditions_at_site as

(select * from accident_lookup
where "field name" = 'special_conditions_at_site')


create table accident_carriageway_hazards as

(select * from accident_lookup
where "field name" = 'carriageway_hazards')


create table accident_urban_or_rural_area as

(select * from accident_lookup
where "field name" = 'urban_or_rural_area')



create table accident_did_police_officer_attend_scene_of_accident as

(select * from accident_lookup
where "field name" = 'did_police_officer_attend_scene_of_accident')


create table trunk_road_flag as

(select * from accident_lookup
where "field name" = 'trunk_road_flag')


