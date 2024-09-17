USE LUBGUBAN_DB;

SELECT		e.workdept, d.deptname, e.lastname AS EMPLOYEE, e.birthdate AS 'EMP-DOB', e.hiredate, mgr.lastname AS MANAGER, mgr.birthdate AS 'MGR_DOB', mgr.hiredate
FROM		employee e
			JOIN	department d on d.deptno = e.workdept
			JOIN	employee mgr on mgr.empno = d.mgrno
WHERE		e.birthdate < mgr.birthdate AND e.hiredate < mgr.hiredate 
			AND (d.deptname LIKE '%CENTER%' OR d.deptname LIKE '%SYSTEM%')
ORDER BY	d.deptname, e.lastname;