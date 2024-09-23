USE LUBGUBAN_DB;

SELECT 
    dept.deptno, 
    dept.deptname, 
    COALESCE(
        dept.mgrno, 
        'UNKNOWN MANAGER'
    ) AS MGRNO
FROM 
    (SELECT * FROM department WHERE deptno IS NOT NULL) AS dept
WHERE 
    dept.mgrno IS NULL
ORDER BY 
    dept.deptno;
--
SELECT	deptno, deptname, COALESCE(mgrno, 'UNKNOWN MANAGER') AS MGRNO
FROM	department
WHERE	mgrno IS NULL
ORDER BY 1;