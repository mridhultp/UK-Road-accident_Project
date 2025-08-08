CREATE TABLE casuality_dataset AS
SELECT
    accident_index,
    accident_year,
    accident_reference,
    vehicle_reference,
    casualty_reference,
    
    cl.label AS casualty_class,
    sl.label AS sex_of_casualty,
    age_of_casualty,
    ag.label AS age_band_of_casualty,
    cs.label AS casualty_severity,
    pl.label AS pedestrian_location,
    pd.label AS pedestrian_movement,
    cp.label AS car_passenger,
    bp.label AS bus_or_coach_passenger,
    rm.label AS pedestrian_road_maintenance_worker,
    ct.label AS casualty_type,
    cd.label AS casualty_imd_decile,
    ch.label AS casualty_home_area_type,
    di.label AS casualty_distance_banding

FROM
    casuality c

LEFT JOIN casuality_class cl 
    ON c.casualty_class = cl."code/format"::int

LEFT JOIN sex_of_casualty sl 
    ON c.sex_of_casualty = sl."code/format"::int

LEFT JOIN age_band_of_casualty ag 
    ON c.age_band_of_casualty = ag."code/format"::int

LEFT JOIN casualty_severity cs 
    ON c.casualty_severity = cs."code/format"::int

LEFT JOIN pedestrian_location pl 
    ON c.pedestrian_location = pl."code/format"::int

LEFT JOIN pedestrian_movement pd 
    ON c.pedestrian_movement = pd."code/format"::int

LEFT JOIN car_passenger cp 
    ON c.car_passenger = cp."code/format"::int

LEFT JOIN bus_or_coach_passenger bp 
    ON c.bus_or_coach_passenger = bp."code/format"::int

LEFT JOIN pedestrian_road_maintenance_worker rm 
    ON c.pedestrian_road_maintenance_worker = rm."code/format"::int

LEFT JOIN casualty_type ct 
    ON c.casualty_type = ct."code/format"::int

LEFT JOIN casualty_imd_decile cd 
    ON c.casualty_imd_decile = cd."code/format"::int

LEFT JOIN casualty_home_area_type ch 
    ON c.casualty_home_area_type = ch."code/format"::int

LEFT JOIN casualty_distance_banding di 
    ON c.casualty_distance_banding = di."code/format"::int;