SELECT Sales.product_id, SUM(Sales.quantity) AS total_quantity
FROM Sales
GROUP BY Sales.product_id;
