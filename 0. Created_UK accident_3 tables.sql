select * from lookuptable

--- accident_table

create table accident_lookup
as
(select * from lookuptable
where table_nam = 'accident')

select * from accident_lookup

--- vehicle_table


create table vehicle_lookup
as
select * from lookuptable
where table_nam = 'vehicle'

select * from vehicle_lookup

-- casualty_table

create table casualty_lookup
as
(select * from lookuptable
where table_nam in ('casualty','casualty_adjustment'))

select * from casualty_lookup

