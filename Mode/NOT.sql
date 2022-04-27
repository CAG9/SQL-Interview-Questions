SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2013
   AND song_name  NOT ILIKE '%a%';
