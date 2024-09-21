USE LUBGUBAN_DB;

SELECT	d.deptname, CONCAT(SUBSTRING(e.firstname, 1, 1), '.', e.midinit, '.', e.lastname) AS  'EMP-NAME',
		(e.salary + COALESCE(e.comm, 0) + COALESCE(e.bonus, 0)) AS INCOME
FROM	employee e JOIN department d on d.deptno = e.workdept
WHERE	(e.salary + COALESCE(e.comm, 0) + COALESCE(e.bonus, 0)) > e.salary + e.salary * 0.10 AND d.deptno = 'D11'
ORDER BY 3 DESC;