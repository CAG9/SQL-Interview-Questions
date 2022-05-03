WITH max_timestamp as
(
    SELECT
    user_id,DATE(timestamp) as date_part, MAX(timestamp) as max_page_load
    FROM
    facebook_web_log
    WHERE
    action = 'page_load'
    GROUP BY
    1,2
),
min_timestamp as
(
    SELECT
    user_id,DATE(timestamp) as date_part , MIN(timestamp) as min_page_exit
    FROM
    facebook_web_log
    WHERE
    action = 'page_exit'
    GROUP BY
    1,2
)
SELECT
min_T.user_id,
AVG(min_T.min_page_exit - max_T.max_page_load)
FROM
min_timestamp min_T
JOIN
max_timestamp max_T
ON
min_T.user_id = max_T.user_id
AND min_T.date_part = max_T.date_part
GROUP By
1
