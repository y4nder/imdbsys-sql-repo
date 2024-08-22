--10 problem 10--
SELECT		empno, lastname, salary, bonus
FROM		employee
WHERE		bonus >= 800.00 AND bonus <= 1000.00
ORDER BY	bonus, empno;