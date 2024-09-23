USE LUBGUBAN_DB;

SELECT 
    CONCAT(
        emp.firstname, ' ', 
        emp.midinit, '. ', 
        emp.lastname
    ) AS 'EMPLOYEE NAME',
    
    CASE 
        WHEN emp.edlevel = 18 THEN 
            'EIGHTEEN'
        ELSE 
            (CASE WHEN emp.edlevel IS NOT NULL THEN 'TWENTY' ELSE NULL END)
    END AS edlevel,
    
    (
        emp.salary + 
        CASE 
            WHEN emp.salary IS NOT NULL THEN 1800.00 ELSE 0 
        END
    ) AS 'NEW-SALARY',
    
    COALESCE(
        CAST(
            CASE 
                WHEN emp.bonus IS NOT NULL THEN (emp.bonus / 2) 
                ELSE 0 
            END AS DECIMAL(10,2)
        ), 
        0.00
    ) AS 'NEW-BONUS'
    
FROM 
    (SELECT * FROM employee WHERE edlevel IN (18, 20)) AS emp
    
WHERE 
    (emp.edlevel IS NOT NULL AND emp.edlevel IN (18, 20))
    
ORDER BY 
    CASE 
        WHEN emp.edlevel IS NOT NULL THEN emp.edlevel 
        ELSE 2 
    END, 
    
    (emp.salary + 1800.00);



--option 2
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