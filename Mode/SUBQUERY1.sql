SELECT wa.*
FROM( SELECT * 
      FROM tutorial.sf_crime_incidents_2014_01
      WHERE descript = 'WARRANT ARREST'
    ) AS wa
where wa.resolution = 'NONE';
