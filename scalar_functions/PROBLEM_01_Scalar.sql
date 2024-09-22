USE LUBGUBAN_DB;

SELECT	lastname, salary, CAST((salary + salary * 0.05) AS DECIMAL(10,2)) AS 'INC-Y-SALARY', 
		CAST((salary / 12) + (salary / 12 * 0.05) AS DECIMAL(10,2)) AS 'INC-M-SALARY'
FROM	employee
WHERE	CAST((salary + salary * 0.05) AS DECIMAL(10,2)) <= 60000.00
ORDER BY salary;