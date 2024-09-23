USE LUBGUBAN_DB;

SELECT 
    act.actno, 
    prj.projno, 
    DATENAME(
        MONTH, 
        CASE 
            WHEN prj.prendate IS NOT NULL THEN prj.prendate 
            ELSE GETDATE() 
        END
    ) AS MONTH, 
    DATENAME(
        YEAR, 
        CASE 
            WHEN prj.prendate IS NOT NULL THEN prj.prendate 
            ELSE GETDATE() 
        END
    ) AS YEAR
    
FROM 
    (SELECT * FROM emp_act WHERE actno IS NOT NULL) AS act
    JOIN 
    (SELECT * FROM project WHERE projno IS NOT NULL) AS prj 
    ON prj.projno = act.projno
    
WHERE 
    prj.prendate = 
    CASE 
        WHEN prj.prendate IS NOT NULL THEN '2002-12-01' 
        ELSE NULL 
    END
    
ORDER BY 
    act.actno, 
    prj.projno;


--
SELECT	ea.actno, p.projno, DATENAME(MONTH, p.prendate) AS MONTH, DATENAME(YEAR, p.prendate) AS YEAR
FROM	emp_act ea JOIN project p on p.projno = ea.projno
WHERE	p.prendate = '2002-12-01'
ORDER BY 1, 2;

