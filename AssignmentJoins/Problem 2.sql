USE LUBGUBAN_DB

SELECT e.lastname, e.firstname, d.deptname, e.job
FROM employee e JOIN department d ON e.workdept = d.deptno
WHERE 
	d.deptno BETWEEN 'AO2' AND 'D22' AND 
	e.job NOT IN('PRESIDENT', 'MANAGER')
ORDER BY d.deptname, e.job, e.lastname, e.firstname;
