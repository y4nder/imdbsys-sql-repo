--Problem 3
SELECT		department.deptname, empno, lastname, salary,
			
			CASE 
				WHEN salary > 40000.00 THEN 'Executive Mgt.'
				WHEN salary > 30000.00 THEN 'Middle Mgt,'
				WHEN salary > 20000.00 THEN 'First-Level Mgt.'
			ELSE
				'Intermediate Level'
			END AS 'Job Level'

FROM		employee
JOIN		department ON department.deptno = workdept
ORDER BY	department.deptname, empno;