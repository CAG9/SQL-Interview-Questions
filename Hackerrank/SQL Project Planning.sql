SELECT MIN(start_date), DATE(MAX(start_date)+1)
FROM (SELECT start_date,
        RIGHT(start_date,2),
        RIGHT(start_date,2) - ROW_NUMBER() OVER(ORDER BY start_date) AS rdx
     FROM projects) sub
GROUP BY sub.rdx
ORDER BY MAX(start_date)-MIN(start_date),MIN(start_date);
