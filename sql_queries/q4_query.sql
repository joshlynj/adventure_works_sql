SELECT
    pp.name as cat_name,
    ps.name as subcat_name,
    MIN(product.listprice) AS lowest_price,
    MAX(product.listprice) AS highest_price,
    (MAX(product.listprice) - MIN(product.listprice)) AS price_difference,
    COUNT(*) AS number_of_products
FROM
    production.product AS product
JOIN
    production.productsubcategory as ps ON product.productsubcategoryid = ps.productsubcategoryid
JOIN
    production.productcategory as pp ON pp.productcategoryid = ps.productcategoryid
GROUP BY
  cat_name, subcat_name;