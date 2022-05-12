SELECT  LEFT(inspection_date,4) AS YEAR,
        COUNT(*) as an_inspections
FROM sf_restaurant_health_violations
WHERE business_name = 'Roxanne Cafe'
AND violation_id IS NOT NULL
GROUP BY 1
ORDER BY 2 ASC;
