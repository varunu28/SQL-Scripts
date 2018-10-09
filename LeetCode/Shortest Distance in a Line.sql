# Write your MySQL query statement below
SELECT MIN(DIFF) AS shortest 
FROM 
    (SELECT ABS(a.x - b.x) AS DIFF 
    FROM 
    point a, point b 
    WHERE a.x != b.x) AS temp;
