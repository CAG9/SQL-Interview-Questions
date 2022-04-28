SELECT CASE WHEN state IN ('CA','WA','WA') THEN 'West Coast'
            WHEN state = 'TX' THEN 'Texas'
            ELSE 'OTHER' END AS region,
            COUNT(1) AS players
FROM benn.college_football_players
WHERE weight >=300
GROUP BY 1 ;
