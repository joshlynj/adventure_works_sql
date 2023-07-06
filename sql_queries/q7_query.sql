SELECT
    sc.customerid,
    sc.storeid,
    ss.name AS StoreName,
    SUM(s2.subtotal) AS totalordered
FROM
    sales.salesorderheader AS s2
JOIN
    sales.customer AS sc ON s2.customerid = sc.customerid
JOIN
    sales.store AS ss ON sc.storeid = ss.businessentityid
JOIN
    sales.salesperson AS sp ON ss.salespersonid = sp.businessentityid
WHERE
    s2.status = 5 -- Shipped orders
GROUP BY
    sc.customerid,
    sc.storeid,
    ss.name
ORDER BY
    totalordered DESC;