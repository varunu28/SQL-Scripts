# Write your MySQL query statement below
SELECT SUM(TIV_2016) AS TIV_2016
FROM insurance i
WHERE 
(SELECT COUNT(*) FROM insurance WHERE LAT=i.LAT AND LON=i.LON) = 1
AND
(SELECT COUNT(*) FROM insurance WHERE TIV_2015=i.TIV_2015) > 1;
