USE LUBGUBAN_DB;

SELECT	d.deptname, e.lastname, e.firstname
FROM	department d
JOIN	employee e ON e.empno = d.mgrno
ORDER BY 1;