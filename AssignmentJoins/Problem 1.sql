USE LUBGUBAN_DB

SELECT e.lastname, e.firstname, d.deptname
FROM employee e
JOIN department d on e.workdept = d.deptno;