USE LUBGUBAN_DB;

SELECT p.projno, COALESCE(p.majproj, 'MAIN PROJECT') AS majproj, CONCAT(e.firstname , ' ', e.lastname, ' ', DATENAME(WEEKDAY, p.prstdate), ' ',p.prstdate) AS 'EMP-NAME'
FROM project p JOIN employee e on p.respemp = e.empno
WHERE p.projno LIKE 'MA%'
ORDER BY 1;
