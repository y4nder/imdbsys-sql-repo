USE LUBGUBAN_DB;

SELECT 
    prj.projno, 
    COALESCE(prj.majproj, 'MAIN PROJECT') AS majproj, 
    
    CONCAT(
        emp.firstname, ' ', 
        emp.lastname, ' ', 
        DATENAME(WEEKDAY, prj.prstdate), ' ', 
        CONVERT(VARCHAR(10), prj.prstdate, 120)
    ) AS 'EMP-NAME'
    
FROM 
    project prj
    JOIN employee emp ON prj.respemp = emp.empno
    
WHERE 
    prj.projno LIKE 'MA%'
    
ORDER BY 
    prj.projno;

--
SELECT	p.projno, COALESCE(p.majproj, 'MAIN PROJECT') AS majproj, 
		CONCAT(e.firstname , ' ', e.lastname, ' ', DATENAME(WEEKDAY, p.prstdate), ' ',p.prstdate) AS 'EMP-NAME'
FROM	project p JOIN employee e on p.respemp = e.empno
WHERE	p.projno LIKE 'MA%'
ORDER BY 1;
