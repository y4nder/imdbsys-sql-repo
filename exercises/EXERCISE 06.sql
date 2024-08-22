--6 problem 6--
SELECT		lastname, salary, comm
FROM		employee
WHERE		salary > 20000.00 AND hiredate > '2001'
ORDER BY	salary DESC;