SELECT DISTINCT buyer_id
FROM Sales JOIN Product
ON Sales.product_id = Product.product_id
WHERE Product.product_name = "S8"
AND buyer_id NOT IN (
    SELECT DISTINCT buyer_id 
    FROM Sales JOIN Product
    ON Sales.product_id = Product.product_id
    WHERE Product.product_name = "iPhone"
);
