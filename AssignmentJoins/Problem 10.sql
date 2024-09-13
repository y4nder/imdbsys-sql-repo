SELECT ea.actno, m.empno, ea.emstdate, p.projno, e.lastname
FROM emp_act ea
JOIN employee e on e.empno = ea.empno
JOIN department d on e.workdept = d.deptno
JOIN employee m on m.empno = d.mgrno
JOIN project p on p.projno = ea.projno
WHERE ea.emstdate >= '2011-10-15'
ORDER BY ea.actno, ea.emstdate;