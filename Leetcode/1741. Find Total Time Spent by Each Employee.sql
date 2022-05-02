SELECT event_day as day, emp_id, SUM(total_time) as total_time
FROM (SELECT *, out_time - in_time as total_time
     FROM employees) sub
GROUP BY day, emp_id;
