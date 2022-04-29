SELECT investor_name, 
        COUNT(*) as investments
  FROM (
      SELECT *
        FROM tutorial.crunchbase_investments_part1

       UNION ALL

      SELECT *
        FROM tutorial.crunchbase_investments_part2
     ) sub
     GROUP BY 1
     ORDER BY 2 DESC;
