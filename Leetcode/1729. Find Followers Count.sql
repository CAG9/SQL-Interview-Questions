SELECT user_id, COUNT(DISTINCT follower_id) as followers_count
FROM followers
GROUP BY user_id
ORDER BY user_id;
