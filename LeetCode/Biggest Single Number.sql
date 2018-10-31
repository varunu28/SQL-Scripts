# Write your MySQL query statement below
SELECT
    (
        SELECT num 
        FROM number
        GROUP BY num
        HAVING COUNT(*) = 1
        ORDER BY num DESC
        LIMIT 1
    ) as num;
