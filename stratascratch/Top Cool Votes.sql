SELECT sub.business_name, sub.review_text, sub.cool
FROM(
        SELECT *,
        DENSE_RANK() OVER(ORDER BY cool DESC) as ranking
        FROM yelp_reviews
        ORDER BY cool DESC
    ) sub
WHERE sub.ranking < 2;
