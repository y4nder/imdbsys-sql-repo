USE LUBGUBAN_DB;

SELECT ea.actno, p.projno, DATEPART(MONTH, p.prendate) AS MONTH, DATEPART(YEAR, p.prendate) AS YEAR
FROM emp_act ea JOIN project p on p.projno = ea.projno
WHERE p.prendate = '2002-12-01'
ORDER BY 1, 2;

--empty cursor napod