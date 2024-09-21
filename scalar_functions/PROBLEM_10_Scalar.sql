USE LUBGUBAN_DB;

SELECT	p.projno, e.lastname, d.deptname, p.prendate AS ESTIMATED,
		DATEADD(DAY, DATEDIFF(DAY, prstdate, prendate) * 0.10, p.prendate) AS EXPECTED
FROM	project p	JOIN employee e on e.empno = p.respemp
					JOIN department d on d.deptno = e.workdept
WHERE	p.projno NOT LIKE 'MA%'
ORDER BY 1;

