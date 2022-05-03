SELECT d.name AS Department, e.name AS Employee, salary AS Salary
FROM employee e 
JOIN department d
ON e.departmentId = d.id
WHERE (departmentId , Salary) IN (
            SELECT departmentId  , MAX(salary) as Salary
            FROM employee 
            GROUP BY 1);
