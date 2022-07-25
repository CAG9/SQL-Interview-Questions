-- Replace with your SQL Query
WITH temp as (SELECT *, EXTRACT(MONTH FROM payment_date) AS month FROM payment),
      mike as (SELECT month,COUNT(month) AS mike_count, SUM(amount)  AS mike_amount
                FROM temp 
                WHERE staff_id = 1
                GROUP BY month
                ORDER BY month ASC),
      jon as (SELECT month,COUNT(month) AS jon_count, SUM(amount)  AS jon_amount
                FROM temp 
                WHERE staff_id = 2
                GROUP BY month
                ORDER BY month ASC),
      global as (SELECT month,
                 COUNT(month) AS total_count,
                 SUM(amount) AS total_amount
                  FROM temp
                  GROUP BY month
                  ORDER BY month ASC)
                  
SELECT * 
FROM global
JOIN mike ON global.month = mike.month
JOIN jon ON global.month = jon.month;


