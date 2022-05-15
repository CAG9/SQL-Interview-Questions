WITH data_center AS (
    SELECT * FROM fb_na_energy
    UNION ALL 
    SELECT * FROM fb_eu_energy
    UNION ALL 
    SELECT * FROM fb_asia_energy )

SELECT sub2.date, 
        sub2.total_energy
FROM (
        SELECT sub.date, 
                sub.total_energy,
                DENSE_RANK() OVER(ORDER BY sub.total_energy DESC) AS ranking 
        FROM (
                SELECT date, 
                SUM(consumption) AS total_energy
                FROM data_center
                GROUP BY date
                ORDER BY total_energy DESC ) sub ) sub2
WHERE sub2.ranking < 2;
