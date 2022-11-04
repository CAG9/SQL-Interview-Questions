with temp AS (
SELECT 
    case when (lead(num) over(ORDER BY id) = num AND lag(num) over(ORDER BY id) = num) 
    then num end AS ConsecutiveNums
FROM Logs)

SELECT DISTINCT ConsecutiveNums FROM temp 
WHERE ConsecutiveNums IS NOT NULL;
