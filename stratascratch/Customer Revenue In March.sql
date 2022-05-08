SELECT cust_id, sum(total_order_cost) 
FROM orders
WHERE order_date >= '2019-03-01' AND order_date < '2019-04-01' 
GROUP BY 1;
