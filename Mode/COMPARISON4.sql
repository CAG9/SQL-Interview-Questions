SELECT year,
       month,
       (south / (south + west + midwest + northeast) ) * 100 AS "SOUTH_PERCENTAGE",
       (west / (south + west + midwest + northeast)) * 100 AS "West_PERCENTAGE",
       (midwest / (south + west + midwest + northeast)) * 100 AS "Midwest_PERCENTAGE",
       (northeast / (south + west + midwest + northeast)) * 100 AS "Northeast_PERCENTAGE"
FROM tutorial.us_housing_units
WHERE year >= 2000;
 
