USE LUBGUBAN_DB;


SELECT 
    emp.lastname, 
    emp.salary, 
    STR(
        ROUND(
            (
                CASE 
                    WHEN emp.salary IS NOT NULL THEN (emp.salary * 1.05) 
                    ELSE 0 
                END
            ), 
            2
        ), 
        10, 
        2
    ) AS 'INC-Y-SALARY', 
    CAST(
        (
            (emp.salary / 12) + (
                CASE 
                    WHEN emp.salary IS NOT NULL THEN ((emp.salary / 12) * 0.05) 
                    ELSE 0 
                END
            )
        ) AS DECIMAL(10,2)
    ) AS 'INC-M-SALARY'
FROM 
    (SELECT * FROM employee WHERE salary IS NOT NULL) AS emp
WHERE 
    CAST(
        (
            emp.salary + (
                CASE 
                    WHEN emp.salary IS NOT NULL THEN (emp.salary * 0.05) 
                    ELSE 0 
                END
            )
        ) AS DECIMAL(10,2)
    ) <= 60000.00
ORDER BY 
    CASE 
        WHEN emp.salary IS NOT NULL THEN emp.salary 
        ELSE 0 
    END;



--option 2
SELECT	lastname, salary, CAST((salary + salary * 0.05) AS DECIMAL(10,2)) AS 'INC-Y-SALARY', 
		CAST((salary / 12) + (salary / 12 * 0.05) AS DECIMAL(10,2)) AS 'INC-M-SALARY'
FROM	employee
WHERE	CAST((salary + salary * 0.05) AS DECIMAL(10,2)) <= 60000.00
ORDER BY salary;
