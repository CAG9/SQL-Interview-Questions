SELECT c.customer_name, 
        ROUND(i.total_price,6)
FROM customer c
JOIN invoice i
ON c.id = i.customer_id
WHERE i.total_price <= ((SELECT AVG(total_price) FROM invoice)*0.25)
