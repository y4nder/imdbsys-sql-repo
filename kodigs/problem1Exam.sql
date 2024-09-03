SELECT		workdept, empno, firstname, lastname, salary,
			CASE 
				WHEN salary > 80000.00 THEN 'Executive Mgt.'
				WHEN salary > 60000.00 THEN 'Middle Mgt.'
				WHEN salary > 50000.00 THEN 'First-Level Mgt'
			ELSE
				'Intermediate Level'
			END AS 'Job Level'
FROM		employee
WHERE		salary < 100000.00
ORDER BY	workdept, empno;

		
