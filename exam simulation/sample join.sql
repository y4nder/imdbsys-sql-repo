SELECT 
	(	SELECT	projname 
		FROM	project
		WHERE	project.projno = emp_act.projno)
		AS 'project name',
	(
		SELECT lastname 
		FROM	employee
		WHERE	employee.empno = emp_act.empno
	)	AS 'last name'	

FROM emp_act;


SELECT	p.projname, e.lastname
FROM	emp_act ea
JOIN	project p on p.projno = ea.projno
JOIN	employee e on e.empno = ea.empno;


	



