# Write your MySQL query statement below
SELECT DISTINCT s.name
FROM salesperson s LEFT JOIN orders o ON s.sales_id = o.sales_id
WHERE o.com_id IS NULL OR (SELECT DISTINCT com_id FROM company WHERE name = "RED") 
                                NOT IN (SELECT com_id FROM orders WHERE orders.sales_id = s.sales_id);
