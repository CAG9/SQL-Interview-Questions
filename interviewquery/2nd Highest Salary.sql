SELECT MAX(e.salary) as salary
FROM employees e 
JOIN departments d 
ON e.department_id = d.id 
WHERE d.name LIKE 'engineering' AND
e.salary < (SELECT MAX(e.salary)
            FROM employees e 
            JOIN departments d 
            ON e.department_id = d.id 
            WHERE d.name LIKE 'engineering'
            );
