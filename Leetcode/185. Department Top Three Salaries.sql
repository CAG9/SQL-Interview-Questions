SELECT sub.Department AS Department, sub.name AS Employee, sub.Salary as Salary
FROM(
    SELECT e.id AS id,e.name AS name, e.salary AS Salary, d.name AS Department,
    DENSE_RANK() OVER(PARTITION BY e.departmentid ORDER BY e.salary DESC) AS rank_earners
    FROM employee e 
    LEFT JOIN department d
    ON e.departmentId = d.id ) sub
WHERE sub.rank_earners < 4;
