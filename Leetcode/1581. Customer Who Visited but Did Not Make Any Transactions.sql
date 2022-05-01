SELECT customer_id, COUNT(*) as count_no_trans          
FROM visits 
WHERE visit_id NOT IN (SELECT visit_id 
                      FROM transactions)
GROUP BY customer_id;
