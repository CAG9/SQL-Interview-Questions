SELECT w.id, wp.age, w.coins_needed, w.power
FROM wands w
JOIN wands_property wp
ON w.code = wp.code
WHERE is_evil = 0
AND w.coins_needed IN (SELECT MIN(COINS_NEEDED) 
                                          FROM wands AS x
                                          JOIN wands_property AS y 
                                          ON (X.code = Y.code) 
                                          WHERE x.power = w.power AND y.age = wp.age)
ORDER BY w.power DESC, wp.age DESC;
