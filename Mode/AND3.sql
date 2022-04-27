SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE song_name ILIKE '%love%'
   AND year BETWEEN 1960 AND 1969;
   
