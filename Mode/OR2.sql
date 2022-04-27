SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE song_name LIKE '%California%'
   AND ((year BETWEEN 1970 AND 1979) OR (year BETWEEN 1990 AND 1999) );
