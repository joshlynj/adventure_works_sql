SELECT
  CASE 
    WHEN sl.status = 5 THEN 'shipped'
    ELSE 'unknown'
  END AS ship_status 
FROM sales.salesorderheader as sl
GROUP BY ship_status;