WITH revenue AS (
                    SELECT created_at,
                            LEFT(created_at,4) AS year_c,
                            SUBSTRING(created_at,6,2) AS month_c,
                            SUM(value) as total
                    FROM sf_transactions
                    GROUP BY year_c, month_c
                    ORDER BY year_c, month_c)
SELECT CONCAT(sub.year_c,'-',sub.month_c), ROUND((sub.total - sub.last_month)/ sub.last_month * 100,2)
FROM (
    SELECT *,
            LAG(total) OVER(ORDER BY year_c, month_c ) AS last_month
    FROM revenue) sub
