SELECT u.name  as name, SUM(amount) as balance
FROM users u
JOIN transactions t
ON u.account = t.account
GROUP BY u.name
HAVING balance > 10000;
