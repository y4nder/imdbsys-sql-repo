USE LUBGUBAN_DB;

WITH IncomeCTE AS (
    SELECT e.workdept AS deptno, 
           d.deptname, 
           e.empno, 
           e.lastname, 
           e.firstname, 
           e.job,
           COALESCE(e.salary + e.bonus + e.comm, 0) AS TotalIncome
    FROM employee e
    JOIN department d ON d.deptno = e.workdept
    WHERE e.job != 'PRESIDENT' AND e.job != 'MANAGER'
)
SELECT TOP 15 
       deptno, 
       deptname, 
       empno, 
       lastname, 
       firstname, 
       job, 
       TotalIncome,
       CASE 
           WHEN TotalIncome BETWEEN 40000.00 AND 50000.00 THEN TotalIncome * 0.05
           WHEN TotalIncome BETWEEN 50000.00 AND 60000.00 THEN TotalIncome * 0.07 + 125.00
           WHEN TotalIncome BETWEEN 60000.00 AND 70000.00 THEN TotalIncome * 0.1 + 200.00
           ELSE TotalIncome * 0.13
       END AS TaxDue
FROM IncomeCTE
WHERE TotalIncome != 0
ORDER BY deptno, TotalIncome DESC;
