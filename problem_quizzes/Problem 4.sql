--problem 4
SELECT		deptno, respemp, employee.lastname, projno, prendate, prstaff,
			CASE deptno
				WHEN 'D11' THEN CASE 
									WHEN prstaff > 3.00 THEN '2 Weeks'
									WHEN prstaff > 2.00 THEN '2.5 Weeks'
								ELSE
									'3 Weeks'
								END

				WHEN 'D21' THEN CASE
									WHEN prstaff > 2.00 THEN '1 Week'
									WHEN prstaff > 1.00 THEN '2 Weeks'
								ELSE
									'2.5 Weeks'
								END
			ELSE
				CASE
					WHEN prstaff > 1.00 THEN '2 Weeks'
				ELSE 
					'2.5 Weeks'
				END
			END AS 'PRJ-PRENDATE-EXT'
FROM		project
JOIN		employee ON employee.empno = respemp
WHERE		deptno IN('D11', 'D21', 'E21')
ORDER BY	deptno, projno, empno;
				



					