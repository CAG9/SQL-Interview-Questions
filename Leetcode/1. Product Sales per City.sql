WITH temp AS (SELECT  invoice_item.invoice_id,
                    invoice_item.product_id,
                    invoice_item.line_total_price,
                    invoice.customer_id,
                    product.product_name
                FROM invoice_item
                LEFT JOIN invoice
                ON invoice_item.invoice_id = invoice.id
                JOIN product
                ON invoice_item.product_id = product.id )
SELECT c1.city_name, temp.product_name,ROUND(SUM(temp.line_total_price),2)
FROM temp
JOIN          
    (SELECT customer.id, city.city_name
    FROM customer
    LEFT JOIN city
    ON customer.city_id = city.id) AS c1
ON temp.customer_id = c1.id
GROUP BY c1.city_name, temp.product_name


