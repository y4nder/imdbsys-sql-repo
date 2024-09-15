USE LUBGUBAN_DB;

SELECT DISTINCT d.deptno, e.lastname, p.projname, ea.actno
FROM emp_act ea
JOIN project p on p.projno = ea.projno
JOIN employee e on e.empno = ea.empno
JOIN department d on d.deptno = e.workdept
WHERE e.workdept BETWEEN 'A00' AND 'C01'
ORDER BY d.deptno, e.lastname, ea.actno;
