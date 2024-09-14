USE LUBGUBAN_DB;

SELECT e.lastname, e.firstname, d.deptname
FROM employee e JOIN department d ON e.workdept = d.deptno
ORDER BY d.deptname, e.lastname, e.firstname;