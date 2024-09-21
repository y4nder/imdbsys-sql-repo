USE LUBGUBAN_DB;

SELECT DISTINCT p.projno, p.projname, ea.actno
FROM emp_act ea JOIN project p ON p.projno = ea.projno
WHERE p.projno LIKE 'AD%' OR p.projno LIKE '%11'
ORDER BY p.projno, ea.actno;