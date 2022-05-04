WITH a AS (
    SELECT 
        id
        ,student
        ,lag(student) over(ORDER BY  id) AS pre_student
        ,lead(student) over(ORDER BYid) AS sub_student
    FROM Seat
)

SELECT id
    ,   CASE WHEN id%2 = 0 THEN pre_student 
        WHEN id%2 = 1  AND sub_student IS NOT NULL THEN sub_student 
        WHEN id%2 = 1  AND sub_student IS  NULL THEN student
    END AS student   
    
FROM;
