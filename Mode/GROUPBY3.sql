SELECT year, month, MIN(low), MAX(high)
  FROM tutorial.aapl_historical_stock_price
  GROUP BY year, month
  ORDER BY year, month;
