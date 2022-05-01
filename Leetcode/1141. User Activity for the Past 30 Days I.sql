SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users 
FROM Activity
WHERE activity_date BETWEEN date_add('2019-07-27', INTERVAL -29 day) AND '2021-08-25'
GROUP BY activity_date;
