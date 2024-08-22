--11 problem 11--
SELECT		empno, lastname, salary, workdept
FROM		employee
WHERE		workdept BETWEEN 'A00' AND 'C01'
ORDER BY	lastname, empno;