--Write a query that displays all rows from the three categories with the fewest incidents reported.

SELECT crime.*, sub.count_category AS incidents_in_category 
FROM tutorial.sf_crime_incidents_2014_01 crime
  JOIN (
        SELECT category, COUNT(*) as count_category
        FROM tutorial.sf_crime_incidents_2014_01
        GROUP By 1
        ORDER BY 2 
        LIMIT 3 
      ) sub
      ON crime.category = sub.category;
