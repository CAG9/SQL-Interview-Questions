SELECT COUNT(DISTINCT month) AS unique_month,
      COUNT(DISTINCT year) AS unique_year
FROM tutorial.aapl_historical_stock_price;
