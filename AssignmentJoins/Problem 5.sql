SELECT DISTINCT p.projno, p.projname, ea.actno
FROM emp_act ea
JOIN project p on ea.projno = p.projno
WHERE p.projno LIKE 'AD%' OR p.projno LIKE '%11'
ORDER BY p.projno, ea.actno;
