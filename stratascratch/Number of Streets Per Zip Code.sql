SELECT sub.business_postal_code, COUNT(DISTINCT sub.address_cleaned) count_street
FROM(
        SELECT *,
                CASE WHEN LEFT(business_address,1) IN ('0','1','2','3','4','5','6','7','8','9')  THEN SUBSTRING_INDEX(SUBSTRING_INDEX(business_address, ' ', 2),' ', -1)
                    ELSE SUBSTRING_INDEX(business_address, ' ', 1)  END AS address_cleaned
        from sf_restaurant_health_violations) sub
WHERE sub.business_postal_code IS NOT NULL
GROUP BY sub.business_postal_code
ORDER BY count_street DESC, sub.business_postal_code ASC
