SELECT h.nationality, COUNT(DISTINCT unit_id) AS units_per_nationality
FROM airbnb_hosts h
JOIN airbnb_units u
ON h.host_id = u.host_id AND h.age < 30 AND u.unit_type = 'Apartment'
GROUP BY h.nationality
ORDER BY units_per_nationality DESC;
