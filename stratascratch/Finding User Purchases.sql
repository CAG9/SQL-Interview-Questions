SELECT DISTINCT sub.user_id
FROM(
    SELECT *,
    LAG(created_at) OVER( PARTITION BY user_id ORDER BY user_id, created_at) as lag_date
    FROM amazon_transactions 
    ORDER BY user_id, created_at) sub
WHERE DATEDIFF(sub.created_at,sub.lag_date) >= 0 AND DATEDIFF(sub.created_at,sub.lag_date) < 7    
