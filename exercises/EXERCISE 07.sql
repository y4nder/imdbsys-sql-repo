--7 problem 7--
SELECT		firstname, lastname, salary, bonus, comm
FROM		employee
WHERE		(salary > 22000.00 AND bonus = 400.00) OR (bonus = 500.00 AND comm < 1900.00)
ORDER BY	lastname;