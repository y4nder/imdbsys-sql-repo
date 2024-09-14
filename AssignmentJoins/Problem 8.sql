SELECT d.deptno, e.lastname, p.projname, ea.actno
FROM emp_act ea JOIN employee e on ea.empno = e.empno
				JOIN department d on e.workdept = d.deptno
				JOIN project p on ea.projno = p.projno
WHERE d.deptno = 'A00'
ORDER BY e.empno, ea.actno;