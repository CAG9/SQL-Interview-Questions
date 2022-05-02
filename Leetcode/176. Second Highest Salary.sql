SELECT MAX(SALARY) AS SecondHighestSalary
FROM employee
WHERE salary < (SELECT MAX(salary) FROM employee);
