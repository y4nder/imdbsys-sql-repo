--15 problem 15--
SELECT TOP 5	lastname, firstname, midinit, salary
FROM			employee
WHERE			job != 'PRESIDENT' AND job != 'MANAGER'
ORDER BY		salary DESC;