USE LUBGUBAN_DB;

SELECT ea.actno, m.empno, ea.emstdate, p.projno, e.lastname
FROM emp_act ea JOIN project p on p.projno = ea.projno
				JOIN employee e on e.empno = ea.empno
				JOIN department d on d.deptno = e.workdept
				JOIN employee m on m.empno = d.mgrno
WHERE ea.emstdate >= '2011-10-15'
ORDER BY ea.actno, ea.emstdate;