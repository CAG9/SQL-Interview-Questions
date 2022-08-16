WITH temp AS (SELECT c.algorithm AS algo,
                        SUM(t.volume) AS volume,
                         QUARTER(t.dt) AS q 
                FROM transactions t
                 JOIN coins c
                ON t.coin_code = c.code
                WHERE YEAR(dt) = 2020
                GROUP BY algo,q)
                
SELECT c.algorithm,
        q1.volume as transactions_Q1,
        q2.volume as transactions_Q2,
        q3.volume as transactions_Q3,
        q4.volume as transactions_Q4
FROM coins c 
LEFT JOIN temp q1
ON c.algorithm = q1.algo AND q1.q = 1
LEFT JOIN temp q2
ON c.algorithm = q2.algo AND q2.q = 2
LEFT JOIN temp q3
ON c.algorithm = q3.algo AND q3.q = 3
LEFT JOIN temp q4
ON c.algorithm = q4.algo AND q4.q = 4
WHERE c.code NOT LIKE 'DOGE'
ORDER BY c.algorithm
