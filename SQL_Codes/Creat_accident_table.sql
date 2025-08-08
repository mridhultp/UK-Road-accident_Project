create table accident_10years
as

(
SELECT
	a.accident_index,
	accident_year,
	a.accident_reference,
	a.location_easting_osgr,
	a.location_northing_osgr,
	a.longitude,
	a.latitude,
   	pf.label AS police_force_1,
	a.number_of_vehicles,
	a.number_of_casualties,
	to_char(a.date,'dd-mm-yyyy') as date,
	to_char(a.time,'HH12:MI AM') as time,
	ass.label as accident_severity_1,
	ay.label as day_of_week_1,
	ald.label as local_authority_district_1,
	aod.label as local_authority_ons_district_1,
	ar.label as road_type_1,
	a.speed_limit,
	aj.label as junction_detail_1,
	ajc.label as junction_control_1,
	lc.label as light_conditions_1,
	wc.label as weather_conditions_1,
	sc.label as road_surface_conditions_1,
	sp.label as special_conditions_at_site_1,
	ch.label as carriageway_hazards_1,
	ru.label as urban_or_rural_area,
	dd.label as did_police_officer_attend_scene_of_accident_1,
	fl.label as trunk_road_flag_1	
	
FROM accident a

left join accident_police_force pf 
    ON a.police_force = pf.code::int
	
left join accident_severity ass
on a.accident_severity = ass.code::int

left join accident_day_of_week ay
on a.day_of_week = ay.code::int

left join accident_local_authority_district ald
on a.local_authority_district = ald.code

left join accident_local_authority_ons_district aod
on a.local_authority_ons_district = aod.code

left join accident_road_type ar
on a.road_type = ar.code::int

left join accident_junction_detail aj
on a.junction_detail = aj.code::int

left join accident_junction_control ajc
on a.junction_control = ajc.code::int

left join accident_light_conditions lc
on a.light_conditions = lc.code::int

left join accident_weather_conditions wc
on a.weather_conditions = wc.code::int

left join accident_road_surface_conditions sc
on a.road_surface_conditions = sc.code::int

left join accident_special_conditions_at_site sp
on a.special_conditions_at_site = sp.code::int

left join accident_carriageway_hazards ch 
    ON a.carriageway_hazards = ch.code::int

left join accident_urban_or_rural_area ru 
    ON a.urban_or_rural_area = ru.code::int

left join accident_did_police_officer_attend_scene_of_accident dd 
    ON a.did_police_officer_attend_scene_of_accident = dd.code::int

left join trunk_road_flag fl 
    ON a.trunk_road_flag = fl.code::int
	
)


	







