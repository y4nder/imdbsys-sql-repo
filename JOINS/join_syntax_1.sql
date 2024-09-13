SELECT empno, firstname, lastname, projno, projname
FROM project, employee
WHERE respemp = empno AND projname LIKE '%PROGRAMMING%'
ORDER BY empno;