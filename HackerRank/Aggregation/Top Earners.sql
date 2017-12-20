SELECT MAX(MONTHS*SALARY),
    (SELECT COUNT(*) 
     FROM Employee 
     WHERE MONTHS*SALARY = (SELECT MAX(MONTHS*SALARY) 
                            FROM Employee))
FROM Employee;
