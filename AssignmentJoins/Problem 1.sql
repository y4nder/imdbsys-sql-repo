USE LUBGUBAN_DB;

SELECT e.lastname, e.firstname, d.deptname
FROM employee e
JOIN department d ON d.deptno = e.workdept
ORDER BY d.deptname, e.lastname, e.firstname;