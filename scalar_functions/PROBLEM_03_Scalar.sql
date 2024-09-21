USE LUBGUBAN_DB;

SELECT d.deptno, d.deptname, e.lastname, e.salary,
		CASE d.deptno
			WHEN 'D11' THEN CASE 
								WHEN e.salary >= 50000.00 * 0.80 THEN	CASE 
																			WHEN e.salary <= 50000.00 * 1.20 THEN e.salary - 1000
																		ELSE 
																			e.salary
																		END
							ELSE 
								e.salary
							END
		ELSE
			e.salary
		END AS 'DECR-SALARY'								
FROM employee e JOIN department d on d.deptno = e.workdept
ORDER BY 4;

-- option 2, more readable
SELECT d.deptno, d.deptname, e.lastname, e.salary,
		CASE d.deptno
			WHEN 'D11' THEN CASE 
								WHEN e.salary BETWEEN 50000 * 0.80 AND 50000 * 1.20 THEN e.salary - 1000.00
							ELSE
								e.salary
							END
		ELSE 
			e.salary
		END AS 'DECR-SALARY'

FROM employee e JOIN department d on d.deptno = e.workdept
ORDER BY 4;