USE LUBGUBAN_DB;

SELECT	lastname, salary, CAST((salary + salary * 0.05) AS DECIMAL(10,2)) AS 'INC-Y-SALARY', CAST((salary / 12) AS DECIMAL(10,2)) AS 'INC-M-SALARY'
FROM	employee
WHERE	(salary + salary * 0.05) <= 60000.00
ORDER BY 'INC-Y-SALARY' DESC;