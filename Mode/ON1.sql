SELECT companies.permalink, companies.status, COUNT(DISTINCT investments.investor_name  )
FROM tutorial.crunchbase_companies companies
LEFT JOIN tutorial.crunchbase_investments investments
ON companies.permalink = investments.company_permalink
WHERE companies.state_code = 'NY'
GROUP BY 1,2
ORDER BY 3 DESC;
