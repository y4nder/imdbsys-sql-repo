USE LUBGUBAN_DB;

SELECT	projno, projname, CAST(ROUND(DATEDIFF(DAY, prstdate, prendate)/7.0, 1) AS DECIMAL(10,1)) AS 'DURATION IN WEEKS'
FROM	project
WHERE	projno LIKE 'MA%' OR projno LIKE 'OP%'
ORDER BY 1;