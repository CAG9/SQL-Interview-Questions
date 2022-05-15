SELECT c.first_name, SUM(o.total_order_cost) as total_order_cost_completed, o.order_date
FROM customers c
JOIN orders o
ON c.id = o.cust_id AND o.order_date >= '2019-02-01' AND o.order_date < '2019-05-02' 
GROUP BY c.first_name, o.order_date 
ORDER BY total_order_cost_completed DESC LIMIT 1;
