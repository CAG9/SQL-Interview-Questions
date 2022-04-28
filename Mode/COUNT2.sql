 SELECT COUNT("date")  AS "d",
 COUNT(year )AS "y",
 COUNT(month) AS "m",
 COUNT(open) AS "o",
 COUNT(high) AS "h",
 COUNT(low) AS "l",
 COUNT(close) AS "c",
 COUNT(volume) AS "v",
 COUNT(id) AS "i"
  FROM tutorial.aapl_historical_stock_price;
