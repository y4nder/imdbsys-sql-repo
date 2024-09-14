USE LUBGUBAN_DB;

SELECT d.deptname, e.lastname, e.firstname
FROM department d JOIN employee e ON d.deptno = e.workdept
WHERE e.job = 'MANAGER'
ORDER BY d.deptname;