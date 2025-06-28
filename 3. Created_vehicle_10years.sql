create table vehicle_10yrs

as

select accident_index,
accident_year,
accident_reference,
vehicle_reference,
vt.label as vehicle_type,
ta.label as towing_and_articulation,
vm.label as vehicle_manoeuvre,
vd.label as vehicle_direction_from,
vit.label as vehicle_direction_to,
vl.label as vehicle_location_restricted_lane,
jl.label as junction_location,
so.label as skidding_and_overturning,
ho.label as hit_object_in_carriageway,
vc.label as vehicle_leaving_carriageway,
hc.label as hit_object_off_carriageway,
fp.label as first_point_of_impact,
vh.label as vehicle_left_hand_drive,
j.label as journey_purpose_of_driver,
s.label as sex_of_driver,
age_of_driver,
ab.label as age_band_of_driver,
engine_capacity_cc,
pc.label as propulsion_code,
age_of_vehicle,
driver_home_area_type

from vehicle_10years v
left join vehicle_type vt
on v.vehicle_type = cast (vt."code/format" as int)

left join towing_and_articulation ta
on v.towing_and_articulation = ta."code/format" :: int

left join vehicle_manoeuvre vm
on v.vehicle_manoeuvre = vm."code/format" :: int

left join vehicle_direction_from vd
on v.vehicle_direction_from = vd."code/format" :: int


left join vehicle_direction_to vit
on v.vehicle_direction_to = vit."code/format" :: int


left join vehicle_location_restricted_lane vl
on v.vehicle_location_restricted_lane = vl."code/format" :: int

left join junction_location jl
on v.junction_location = jl."code/format" :: int

left join skidding_and_overturning so
on v.skidding_and_overturning = so."code/format" :: int

left join hit_object_in_carriageway ho
on v.hit_object_in_carriageway = ho."code/format" :: int

left join vehicle_leaving_carriageway vc
on v.vehicle_leaving_carriageway = vc."code/format" :: int

left join hit_object_off_carriageway hc
on v.hit_object_off_carriageway = hc."code/format" :: int

left join first_point_of_impact fp
on v.first_point_of_impact = fp."code/format" :: int

left join vehicle_left_hand_drive vh
on v.vehicle_left_hand_drive = vh."code/format" :: int

left join journey_purpose_of_driver j
on v.journey_purpose_of_driver = vh."code/format" :: int

left join sex_of_driver s
on v.sex_of_driver = s."code/format" :: int

left join age_band_of_driver ab
on v.age_band_of_driver = ab."code/format" :: int

left join propulsion_code pc
on v.propulsion_code = pc."code/format" :: int


left join driver_home_area_type dt
on v.driver_home_area_type = dt."code/format" :: int




