SELECT year, COUNT(DISTINCT month) AS unique_values
FROM tutorial.aapl_historical_stock_price
GROUP BY year
ORDER BY year;
