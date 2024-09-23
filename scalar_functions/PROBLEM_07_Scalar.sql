USE LUBGUBAN_DB;

SELECT 
    emp.empno, 
    CONCAT(
        emp.firstname, ' ', 
        CASE 
            WHEN emp.midinit IS NOT NULL THEN emp.midinit + '. ' 
            ELSE '' 
        END, 
        emp.lastname
    ) AS name, 
    dept.deptname, 
    emp.birthdate,
    
    DATEDIFF(
        YEAR, 
        emp.birthdate, 
        CASE 
            WHEN emp.hiredate IS NOT NULL THEN emp.hiredate 
            ELSE GETDATE() 
        END
    ) AS AGE
    
FROM 
    (SELECT * FROM employee WHERE empno IS NOT NULL) AS emp
    JOIN 
    (SELECT * FROM department WHERE deptno IS NOT NULL) AS dept 
    ON dept.deptno = emp.workdept
    
WHERE 
    DATEDIFF(YEAR, emp.birthdate, emp.hiredate) < 25
    
ORDER BY 
    CASE 
        WHEN DATEDIFF(YEAR, emp.birthdate, emp.hiredate) IS NOT NULL 
        THEN DATEDIFF(YEAR, emp.birthdate, emp.hiredate) 
        ELSE 0 
    END, 
    emp.empno;


--
SELECT	e.empno, CONCAT(e.firstname, ' ', e.midinit, '. ', e.lastname) AS name, d.deptname, e.birthdate,
		DATEDIFF(YEAR, e.birthdate, e.hiredate) AS AGE
FROM	employee e JOIN department d on d.deptno = e.workdept
WHERE	DATEDIFF(YEAR, e.birthdate, e.hiredate) < 25
ORDER BY 5, 1;

