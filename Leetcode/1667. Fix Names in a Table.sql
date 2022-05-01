SELECT user_id, CONCAT(UPPER(LEFT(LOWER(name),1)), RIGHT(LOWER(name),LENGTH(name)-1)) as name
FROM users
ORDER BY user_id;
