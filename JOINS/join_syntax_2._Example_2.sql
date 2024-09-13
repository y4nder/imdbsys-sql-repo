SELECT e.empno, e.firstname, e.lastname, e.hiredate, e.job, p.projno, p.projname, p.prstdate
FROM employee e 
	INNER JOIN project p 
			ON p.respemp = e.empno
	LEFT JOIN department d ON d.mgrno = p.respemp
WHERE d.mgrno is null
ORDER BY p.prstdate, e.empno;