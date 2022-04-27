SELECT year,
       month,
       west,
       south,
       midwest,
       northeast,
       west + south + midwest + northeast AS total
FROM tutorial.us_housing_units;
 
