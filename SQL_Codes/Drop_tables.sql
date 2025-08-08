select distinct accident_year from vehicle


create table vehicle_10yrs
as
select * from vehicle
where accident_year between 2013 and 2023

drop table vehicle_10yrs


select * from accident
select * from accident_10years

drop table 
accident_day_of_week,
accident_local_authority_district,
accident_local_authority_ons_district,
accident_road_type,
accident_junction_detail,
accident_junction_control,
accident_light_conditions,
accident_weather_conditions,
accident_road_surface_conditions,
accident_special_conditions_at_site,
accident_carriageway_hazards,
accident_urban_or_rural_area,
accident_did_police_officer_attend_scene_of_accident,
trunk_road_flag;

drop table accident



drop table casuality_class,
sex_of_casualty,
age_band_of_casualty,
casualty_severity,
pedestrian_location,
pedestrian_movement,
car_passenger,
bus_or_coach_passenger,
pedestrian_road_maintenance_worker,
casualty_type,
casualty_home_area_type,
casualty_imd_decile,
lsoa_of_casualty,
enhanced_casualty_severity,
casualty_distance_banding


drop table casualty_reference

select * from casualty_reference



