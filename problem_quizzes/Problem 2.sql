--Problem 2

SELECT		empno, lastname, department.deptname, job, comm,
			
			
			CASE job
				WHEN 'CLERK'	THEN comm + 100.00
				WHEN 'OPERATOR' THEN comm + 75.00
				WHEN 'SALESREP' THEN comm + 60.00
			ELSE
				comm + 50.00
			END AS 'INC-COMM'


FROM		employee
JOIN		department ON department.deptno = employee.workdept
WHERE		job IN('CLERK', 'OPERATOR', 'SALESREP', 'FIELDREP') 
ORDER BY	comm DESC;






