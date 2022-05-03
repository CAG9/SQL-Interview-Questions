SELECT n.name as name 
FROM neighborhoods  n 
LEFT JOIN users u 
ON n.id = u.neighborhood_id
WHERE u.id IS NULL;
