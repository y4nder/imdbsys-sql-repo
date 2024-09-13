SELECT DISTINCT p.projno, p.projname, e.empno, e.lastname, ea.actno
FROM emp_act ea
JOIN project p on p.projno = ea.projno
JOIN employee e on e.empno = ea.empno
WHERE p.projno IN('AD3113','IF2000','MA2112','OP2012')
ORDER BY p.projno, ea.actno;