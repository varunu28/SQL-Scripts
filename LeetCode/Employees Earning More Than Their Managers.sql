SELECT e.Name Employee
FROM Employee e
WHERE e.Salary > (SELECT Salary 
                  FROM Employee f 
                  WHERE f.Id=e.ManagerId);
