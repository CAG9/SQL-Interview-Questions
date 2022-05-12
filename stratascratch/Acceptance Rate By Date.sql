WITH sent_table AS (SELECT * 
                    FROM fb_friend_requests
                    WHERE action = 'sent'),
                    
    accepted_table AS (SELECT * 
                        FROM fb_friend_requests
                        WHERE action = 'accepted')
SELECT s.date, 
        COUNT(a.action) / COUNT(s.action) AS overall_friend_request
FROM sent_table s
LEFT JOIN accepted_table a
ON s.user_id_sender = a.user_id_sender
GROUP BY 1
ORDER BY 1
