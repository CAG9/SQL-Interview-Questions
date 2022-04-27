SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group" ILIKE '%Dr. Dre%'
   AND ((year < 2001) OR (year > 2009) );
