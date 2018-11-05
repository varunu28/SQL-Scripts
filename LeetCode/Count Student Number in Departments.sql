# Write your MySQL query statement below
SELECT dept_name, 
CASE 
    WHEN student_name IS NOT NULL THEN COUNT(*) 
    ELSE 0
END AS student_number
FROM department LEFT JOIN student ON department.dept_id = student.dept_id
GROUP BY department.dept_id
ORDER BY student_number DESC, department.dept_name;
