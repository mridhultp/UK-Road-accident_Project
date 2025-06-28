  DELETE FROM vehicle_10years
	WHERE ctid IN (
    SELECT ctid
    FROM (
    SELECT ctid,
           row_number() OVER (PARTITION BY accident_index ORDER BY ctid) AS rn
    FROM vehicle_10years
  ) AS sub
  WHERE rn > 1
);
