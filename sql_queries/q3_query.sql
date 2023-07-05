SELECT
    pp.name as cat_name,
    MIN(product.listprice) AS lowest_price,
    MAX(product.listprice) AS highest_price,
    (MAX(product.listprice) - MIN(product.listprice)) AS price_difference,
    COUNT(*) AS number_of_products
FROM
    production.product AS product
JOIN
    production.productcategory as pp ON product.productsubcategoryid = pp.productcategoryid
GROUP BY
  cat_name;