USE LUBGUBAN_DB;

SELECT 
    dept.deptname, 
    CONCAT(
        SUBSTRING(
            emp.firstname, 1, 1
        ), '.', 
        emp.midinit, '.', 
        emp.lastname
    ) AS 'EMP-NAME',
    
    (
        emp.salary + 
        COALESCE(emp.comm, 0) + 
        COALESCE(emp.bonus, 0)
    ) AS INCOME
    
FROM 
    (SELECT * FROM employee WHERE salary IS NOT NULL) AS emp
    JOIN 
    (SELECT * FROM department WHERE deptno = 'D11') AS dept
    ON 
        dept.deptno = emp.workdept
        
WHERE 
    (
        emp.salary + 
        COALESCE(emp.comm, 0) + 
        COALESCE(emp.bonus, 0)
    ) > (
        emp.salary + 
        CASE 
            WHEN emp.salary IS NOT NULL THEN emp.salary * 0.10 
            ELSE 0 
        END
    ) AND dept.deptno = 'D11'
    
ORDER BY 
    CASE 
        WHEN (
            emp.salary + 
            COALESCE(emp.comm, 0) + 
            COALESCE(emp.bonus, 0)
        ) IS NOT NULL 
        THEN (
            emp.salary + 
            COALESCE(emp.comm, 0) + 
            COALESCE(emp.bonus, 0)
        )
        ELSE 0 
    END DESC;


--
SELECT	d.deptname, CONCAT(SUBSTRING(e.firstname, 1, 1), '.', e.midinit, '.', e.lastname) AS  'EMP-NAME',
		(e.salary + COALESCE(e.comm, 0) + COALESCE(e.bonus, 0)) AS INCOME
FROM	employee e JOIN department d on d.deptno = e.workdept
WHERE	(e.salary + COALESCE(e.comm, 0) + COALESCE(e.bonus, 0)) > e.salary + e.salary * 0.10 AND d.deptno = 'D11'
ORDER BY 3 DESC;
