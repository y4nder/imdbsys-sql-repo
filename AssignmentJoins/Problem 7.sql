SELECT e.empno, p.projno, p.projname, ea.actno, p.prstdate
FROM emp_act ea
JOIN employee e on ea.empno = e.empno
JOIN project p on ea.projno = p.projno
WHERE p.prstdate >= '2007-10-01'
ORDER BY p.projno, e.empno, ea.actno;