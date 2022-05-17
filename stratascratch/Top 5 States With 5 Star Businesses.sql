WITH grouped AS (select state, COUNT(business_id) AS n_businesses
                    from yelp_business
                    WHERE stars = 5
                    GROUP BY state
                    ORDER BY n_businesses DESC )
SELECT sub.state, sub.n_businesses
FROM(
        SELECT *,
        RANK() OVER(ORDER BY n_businesses DESC) as ranking
        FROM grouped) sub
WHERE sub.ranking <=5
