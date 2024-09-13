SELECT e.workdept, e.lastname AS 'EMPLOYEE', e.birthdate AS 'EMP-BDATE', m.lastname AS MANAGER, m.birthdate AS 'MGR-BDATE', m.job
FROM employee e JOIN department d 
					ON e.workdept = d.deptno
				JOIN employee m 
					ON m.empno = d.mgrno
WHERE e.birthdate < m.birthdate
ORDER BY e.workdept, e.birthdate;
