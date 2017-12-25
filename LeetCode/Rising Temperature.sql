SELECT w2.Id
FROM Weather w1, Weather w2
WHERE w2.Temperature>w1.Temperature
AND TO_DAYS(w1.Date) - TO_DAYS(w2.Date) = -1;
