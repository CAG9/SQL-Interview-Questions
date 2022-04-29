SELECT employee1.name AS Employee
FROM employee employee1
JOIN employee employee2
ON employee1.managerId = employee2.id
WHERE employee1.salary > employee2.salary
