USE LUBGUBAN_DB;

SELECT	e.empno, CONCAT(e.firstname, ' ', e.midinit, '. ', e.lastname) AS name, d.deptname, e.birthdate,
		DATEDIFF(YEAR, e.birthdate, e.hiredate) AS AGE
FROM	employee e JOIN department d on d.deptno = e.workdept
WHERE	DATEDIFF(YEAR, e.birthdate, e.hiredate) < 25
ORDER BY 5, 1;

-- naa lage negative 5 ang edad???? HAHHAHAHAH