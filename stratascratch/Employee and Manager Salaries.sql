SELECT e1.first_name, e1.salary as esalary
FROM employee e1
LEFT JOIN employee e2
ON e1.manager_id = e2.id
WHERE e1.salary > e2.salary ;
