USE LUBGUBAN_DB;

SELECT TOP 15	d.deptno, d.deptname, e.empno, e.lastname, e.firstname, e.job, 
				CASE 
					WHEN (e.salary + e.bonus + e.comm) IS NULL THEN 0
					ELSE e.salary + e.bonus + e.comm
				END AS 'Total Income',
				CASE 
					WHEN (e.salary + e.bonus + e.comm) BETWEEN 40000.00 AND 50000.00 THEN (e.salary + e.bonus + e.comm) * 0.05 
					WHEN (e.salary + e.bonus + e.comm) BETWEEN 50000.00 AND 60000.00 THEN (e.salary + e.bonus + e.comm) * 0.07 + 125.00
					WHEN (e.salary + e.bonus + e.comm) BETWEEN 60000.00 AND 70000.00 THEN (e.salary + e.bonus + e.comm) * 0.1 + 200.00
					ELSE (e.salary + e.bonus + e.comm) * 0.13
				END AS 'Tax Due'
FROM			employee e
JOIN			department d ON d.deptno = e.workdept
WHERE			e.job != 'PRESIDENT' AND e.job != 'MANAGER' AND (e.salary + e.bonus + e.comm) != 0
ORDER BY		d.deptno, 'Total Income' DESC;
