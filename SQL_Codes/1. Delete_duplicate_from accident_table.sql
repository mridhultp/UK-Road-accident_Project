select * from
accident_10years


DELETE FROM accident_10years
WHERE ctid IN (
  SELECT ctid
  FROM (
    SELECT ctid,
           row_number() OVER (PARTITION BY accident_index ORDER BY ctid) AS rn
    FROM accident_10years
  ) AS sub
  WHERE rn > 1
);