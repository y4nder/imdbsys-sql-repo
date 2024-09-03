--12 problem 12--
SELECT		projno, projname, prstdate, prendate
FROM		project
WHERE		majproj IS NULL
ORDER BY	projno;