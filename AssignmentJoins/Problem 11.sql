SELECT d.deptno, m.lastname AS MANAGER, m.hiredate, e.lastname AS EMPLOYEE, e.hiredate
FROM employee e
JOIN department d ON d.deptno = e.workdept
JOIN employee m ON m.empno = d.mgrno
WHERE d.deptno IN('A00','C01','D01', 'E01') AND e.hiredate > m.hiredate AND e.job NOT IN('PRESIDENT','MANAGER')
ORDER BY e.lastname;