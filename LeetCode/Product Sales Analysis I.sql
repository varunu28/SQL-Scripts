SELECT Product.product_name, Sales.year, Sales.price
FROM Sales INNER JOIN Product
ON Sales.product_id = product.product_id;
