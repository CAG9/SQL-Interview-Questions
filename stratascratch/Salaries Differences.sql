SELECT ABS (
                (SELECT MAX(e.salary)
                FROM db_employee e 
                LEFT JOIN db_dept d 
                ON e.department_id = d.id
                WHERE d.department LIKE 'engineering'
                ) - (SELECT  MAX(e.salary)
                                FROM db_employee e 
                                LEFT JOIN db_dept d 
                                ON e.department_id = d.id
                                WHERE d.department LIKE 'marketing'
                                )) as salary_difference
