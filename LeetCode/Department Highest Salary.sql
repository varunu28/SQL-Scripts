SELECT Department.Name AS Department,Employee.Name AS Employee, Employee.Salary 
FROM Department JOIN 
(SELECT DepartmentId, MAX(Salary) Salary 
		FROM Employee
	 	GROUP BY DepartmentId) AS MaxSalaries
JOIN Employee
ON Department.Id=Employee.DepartmentId
AND Employee.Salary=MaxSalaries.Salary
AND Employee.DepartmentId=MaxSalaries.DepartmentId;
