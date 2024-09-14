USE LUBGUBAN_DB;

SELECT e.empno, p.projno, p.projname, ea.actno, p.prstdate
FROM emp_act ea JOIN employee e ON ea.empno = e.empno
				JOIN project p ON ea.projno = p.projno
WHERE p.prstdate >= '2007-10-01'
ORDER BY p.projno, e.empno, ea.actno;