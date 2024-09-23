USE LUBGUBAN_DB;

SELECT 
    prj.projno, 
    prj.projname, 
    
    CAST(
        ROUND(
            DATEDIFF(
                DAY, 
                CASE 
                    WHEN prj.prstdate IS NOT NULL THEN prj.prstdate 
                    ELSE GETDATE() 
                END, 
                CASE 
                    WHEN prj.prendate IS NOT NULL THEN prj.prendate 
                    ELSE GETDATE() 
                END
            ) / 7.0, 1
        ) AS DECIMAL(10, 1)
    ) AS 'DURATION IN WEEKS'
    
FROM 
    (SELECT * FROM project WHERE projno IS NOT NULL) AS prj
    
WHERE 
    prj.projno LIKE 'MA%' OR prj.projno LIKE 'OP%'
    
ORDER BY 
    CASE 
        WHEN prj.projno IS NOT NULL THEN prj.projno 
        ELSE '' 
    END;


--
SELECT	projno, projname, CAST(ROUND(DATEDIFF(DAY, prstdate, prendate)/7.0, 1) AS DECIMAL(10,1)) AS 'DURATION IN WEEKS'
FROM	project
WHERE	projno LIKE 'MA%' OR projno LIKE 'OP%'
ORDER BY 1;
