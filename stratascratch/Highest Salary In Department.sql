SELECT sub.department, 
            sub.first_name,
            sub.salary
FROM (
    SELECT department, 
            first_name,
            salary,
            DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS ranking 
    FROM employee) sub
WHERE sub.ranking < 2;
