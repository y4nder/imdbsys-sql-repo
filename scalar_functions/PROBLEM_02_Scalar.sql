USE LUBGUBAN_DB;

SELECT	CONCAT(firstname, ' ', midinit,'. ', lastname) AS 'EMPLOYEE NAME',
		CASE edlevel
			WHEN 18 THEN 'EIGHTEEN'
		ELSE 
			'TWENTY'
		END AS edlevel,
		(salary + 1800.00) AS 'NEW-SALARY',
		COALESCE(CAST((bonus/2) AS DECIMAL(10,2)), 0.00) AS 'NEW-BONUS'
FROM employee
WHERE edlevel IN (18, 20)
ORDER BY 2, 3;