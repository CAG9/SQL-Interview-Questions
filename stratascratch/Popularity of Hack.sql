SELECT f_e.location as location, AVG(f_h.popularity) as avg_popularity
FROM facebook_employees f_e
LEFT JOIN facebook_hack_survey f_h
ON f_e.id = f_h.employee_id
GROUP BY f_e.location
