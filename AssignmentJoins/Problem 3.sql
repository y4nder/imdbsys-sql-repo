SELECT d.deptname, e.lastname, e.firstname
FROM department d
JOIN employee e ON d.mgrno = e.empno
ORDER BY d.deptname;