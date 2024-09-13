SELECT DISTINCT
		d.deptno,
		e.lastname, 
		p.projname, 
		ea.actno
FROM department d
JOIN employee e on e.workdept = d.deptno
JOIN emp_act ea on ea.empno = e.empno
JOIN project p on p.respemp = e.empno
WHERE d.deptno BETWEEN 'A00' AND 'C01'
ORDER BY d.deptno, e.lastname, ea.actno;
