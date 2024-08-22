--8 problem 8--
SELECT		projno, actno, emstdate, emendate
FROM		emp_act
WHERE		projno LIKE 'AD%' AND actno IN (10, 80, 180)
ORDER BY	projno, actno;