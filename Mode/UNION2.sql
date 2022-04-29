SELECt 'crunchbase_investments_part1' AS dataset_name, companies.status, COUNT(investments.investor_permalink)  AS amount_investors
FROM tutorial.crunchbase_companies companies
LEFT JOIN tutorial.crunchbase_investments_part1 investments
ON companies.permalink = investments.company_permalink
GROUP BY 1,2

UNION ALL 


SELECt 'crunchbase_investments_part2'  AS dataset_name, companies.status, COUNT(investments.investor_permalink)  AS amount_investors
FROM tutorial.crunchbase_companies companies
LEFT JOIN tutorial.crunchbase_investments_part2 investments
ON companies.permalink = investments.company_permalink
GROUP BY 1,2;
