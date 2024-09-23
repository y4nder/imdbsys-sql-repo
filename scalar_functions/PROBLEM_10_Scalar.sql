USE LUBGUBAN_DB;

SELECT 
    prj.projno, 
    emp.lastname, 
    dept.deptname, 
    prj.prendate AS ESTIMATED, 
    
    DATEADD(
        DAY, 
        CAST(
            DATEDIFF(
                DAY, 
                COALESCE(prj.prstdate, GETDATE()), 
                COALESCE(prj.prendate, GETDATE())
            ) * 0.1 AS INT
        ), 
        prj.prendate
    ) AS EXPECTED
    
FROM 
    project prj
    JOIN employee emp ON emp.empno = prj.respemp
    JOIN department dept ON dept.deptno = emp.workdept
    
WHERE 
    prj.projno NOT LIKE 'MA%'
    
ORDER BY 
    prj.projno;


--
SELECT	p.projno, e.lastname, d.deptname, p.prendate AS ESTIMATED,
		DATEADD(DAY, DATEDIFF(DAY, prstdate, prendate) * 0.1, p.prendate) AS EXPECTED
FROM	project p	JOIN employee e on e.empno = p.respemp
					JOIN department d on d.deptno = e.workdept
WHERE	p.projno NOT LIKE 'MA%'
ORDER BY 1;

