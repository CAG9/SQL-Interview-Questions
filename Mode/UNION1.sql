SELECT company_permalink, company_name,  investor_name 
FROM tutorial.crunchbase_investments_part1
WHERE  company_name ILIKE 'T%'

UNION ALL 

SELECT company_permalink, company_name,  investor_name 
FROM tutorial.crunchbase_investments_part1
WHERE  company_name ILIKE 'M%';
