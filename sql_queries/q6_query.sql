SELECT
    EXTRACT(YEAR FROM s2.orderdate) AS year,
    EXTRACT(MONTH FROM s2.orderdate) AS month,
    COUNT(*) AS shipped_order_count,
    SUM(s2.subtotal) AS monthly_subtotal
FROM
    sales.salesorderdetail as s
JOIN
    sales.salesorderheader as s2 ON s.salesorderid = s2.salesorderid
WHERE
    s2.status = 5
GROUP BY
    EXTRACT(YEAR FROM s2.orderdate),
    EXTRACT(MONTH FROM s2.orderdate)
ORDER BY
    EXTRACT(YEAR FROM s2.orderdate),
    EXTRACT(MONTH FROM s2.orderdate);