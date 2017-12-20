SELECT IF((SELECT MOD(COUNT(LAT_N),2) FROM STATION) = 0,
            (SELECT ROUND(S.LAT_N, 4) Median
                FROM STATION S
                WHERE ((SELECT COUNT(LAT_N) FROM STATION WHERE S.LAT_N > LAT_N) + 1) =
                      (SELECT COUNT(LAT_N) FROM STATION WHERE S.LAT_N < LAT_N)
                    OR
                      (SELECT COUNT(LAT_N) FROM STATION WHERE S.LAT_N > LAT_N) =
                      ((SELECT COUNT(LAT_N) FROM STATION WHERE S.LAT_N < LAT_N) + 1)
             ),
            (SELECT ROUND(S.LAT_N, 4) Median
                FROM STATION S
                WHERE (SELECT COUNT(LAT_N) FROM STATION WHERE S.LAT_N > LAT_N) = 
                      (SELECT COUNT(LAT_N) FROM STATION WHERE S.LAT_N < LAT_N)
             ));
