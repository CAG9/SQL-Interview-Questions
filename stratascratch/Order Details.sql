SELECT c.first_name,o.order_date, o.order_details, o.total_order_cost
FROM customers c
JOIN orders  o
ON  c.id = cust_id
WHERE first_name  IN ('Jill', 'Eva')
ORDER BY c.id;
