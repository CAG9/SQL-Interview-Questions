SELECT type1.type, p1.counted_p / type1.counter_type
FROM (
        SELECT  type, COUNT(type) AS counter_type
        FROM facebook_complaints
        GROUP BY type ) type1
JOIN (SELECT type, COUNT(processed) AS counted_p
        FROM facebook_complaints
        WHERE processed = 1
        GROUP BY type) p1
ON p1.type = type1.type;
