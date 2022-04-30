SELECT investor_name,
       COUNT(*) AS investments
  FROM (
        SELECT *
          FROM tutorial.crunchbase_investments_part1
         
         UNION ALL
        
         SELECT *
           FROM tutorial.crunchbase_investments_part2
       ) sub
       JOIN  tutorial.crunchbase_companies companies
       ON sub.company_permalink = companies.permalink AND  companies.status = 'operating'
 GROUP BY 1
 ORDER BY 2 DESC
