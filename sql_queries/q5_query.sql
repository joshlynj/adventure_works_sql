SELECT
    CASE
        WHEN p.listprice >= 0 AND p.listprice < 50 THEN '0 - 49'
        WHEN p.listprice >= 50 AND p.listprice < 100 THEN '50 - 99'
        WHEN p.listprice >= 100 AND p.listprice < 200 THEN '100 - 199'
        WHEN p.listprice >= 200 AND p.listprice < 500 THEN '200 - 499'
        WHEN p.listprice >= 500 THEN '500+'
        ELSE 'Unknown'
    END AS price_bracket,
    COUNT(*) AS product_count
FROM
    production.product as p
GROUP BY
    price_bracket;
