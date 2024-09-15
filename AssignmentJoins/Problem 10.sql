USE LUBGUBAN_DB;

SELECT ea.actno, m.empno, ea.emstdate, p.projno, e.lastname
FROM emp_act ea JOIN employee e ON e.empno = ea.empno
				JOIN department d ON e.workdept = d.deptno
				JOIN employee m ON m.empno = d.mgrno
				JOIN project p ON p.projno = ea.projno
WHERE ea.emstdate BETWEEN '2011-10-01' AND '2011-10-31'
ORDER BY ea.actno, ea.emstdate;