WITH temp as (SELECT *,
        LAG(price) OVER(PARTITION BY stock_name ORDER BY operation_day) as lag_price
        FROM stocks)


SELECT sub.stock_name, SUM(sub.profit) as capital_gain_loss
FROM (SELECT stock_name, operation, price - lag_price as profit FROM temp WHERE operation LIKE 'Sell') sub 
GROUP BY stock_name
