SELECT e.empno, e.lastname, e.job, d.deptno, d.deptname
FROM department d
JOIN employee e ON e.empno = d.mgrno
WHERE d.mgrno IS NOT NULL
ORDER BY d.deptno;



