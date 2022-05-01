SELECT u.name AS name, SUM(CASE WHEN distance IS NOT NULL THEN distance
                          ElSE 0 END) AS travelled_distance
FROM users u
LEFT JOIN rides r
ON u.id = r.user_id
GROUP BY u.name
ORDER BY travelled_distance DESC, u.name ASC;
