SELECT id ,
CASE WHEN p_id IS NULL THEN 'Root'
     WHEN id  NOT IN (SELECT p_id from tree WHERE id != p_id) THEN 'Leaf'
     WHEN p_id IS NOT NULL AND id IN (SELECT p_id from tree WHERE id != p_id) THEN 'Inner' END AS type
FROM tree
