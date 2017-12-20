SELECT 
CASE
  WHEN A = B AND B = C THEN "Equilateral"
  WHEN (A + B <= C) OR (B + C <= A) OR (C + B <= A) THEN "Not A Triangle"
  WHEN (A = B AND B != C) OR (A = C AND B != C) OR (C = B AND B != A) THEN "Isosceles"
  ELSE "Scalene"
END
FROM TRIANGLES
