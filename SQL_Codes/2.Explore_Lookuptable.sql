select * from lookuptable

select count(*) from lookuptable

ALTER TABLE lookuptable rename column "table" to table_nam

select distinct table_nam from lookuptable

select * from lookuptable
where table_nam in ('collision_adjustment')

select table_nam,count(label) from lookuptable
group by table_nam
order by count(label) desc



SELECT SUM(count) AS total_casualty_count
FROM (
    SELECT COUNT(label) AS count
    FROM lookuptable
    WHERE table_nam IN ('casualty', 'casualty_adjustment')
    GROUP BY table_nam
);

