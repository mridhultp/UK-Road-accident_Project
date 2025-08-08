
  select count (distinct accident_index) from casuality_10years

  select count(*) from casuality_10years

  DELETE FROM casuality_10years
	WHERE ctid IN (
    SELECT ctid
    FROM (
    SELECT ctid,
           row_number() OVER (PARTITION BY accident_index ORDER BY ctid) AS rn
    FROM casuality_10years
  ) AS sub
  WHERE rn > 1
);