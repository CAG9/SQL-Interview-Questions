SELECT COUNT(companies.permalink) AS companie_count, COUNT(acquisitions.company_permalink) AS acquisition_count
FROM tutorial.crunchbase_companies companies
JOIN tutorial.crunchbase_acquisitions acquisitions
ON companies.permalink = acquisitions.company_permalink;
