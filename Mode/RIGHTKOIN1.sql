SELECT companies.state_code, COUNT(DISTINCT companies.permalink) AS unique_companies, COUNT(DISTINCT acquisitions.company_permalink ) AS unique_companies_acquired
  FROM tutorial.crunchbase_acquisitions acquisitions
   RIGHT JOIN  tutorial.crunchbase_companies companies
    ON companies.permalink = acquisitions.company_permalink
WHERE companies.state_code IS NOT NULL
GROUP BY companies.state_code
ORDER BY 3 DESC;
