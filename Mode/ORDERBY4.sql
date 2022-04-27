SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE (year_rank  BETWEEN 10 AND 20)
 AND year IN (1993, 2003, 2013) --
 ORDER BY year, year_rank;
