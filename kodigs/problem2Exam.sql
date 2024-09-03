SELECT		deptno, respemp, projno, projname, prendate, majproj,
			CASE deptno
				WHEN 'D11' THEN CASE	
									WHEN prstaff > 3.00 THEN '2 Weeks'
									WHEN prstaff > 2.00 THEN '2.5 Weeks'
								ELSE
									'3 Weeks'
								END
				WHEN 'D21' THEN CASE
									WHEN prstaff > 2.00 THEN '1 Weeks'
									WHEN prstaff > 1.00 THEN '2 Weeks'
								ELSE
									'2.5 Weeks'
								END
				WHEN 'E21' THEN CASE
									WHEN prstaff > 1.00 THEN '2 Weeks'
								ELSE
									'2.5 Weeks'
								END
				ELSE
					'No Extension'
			END AS 'PRJ-PRENDATE-EXT'
FROM		project
WHERE 
			CASE 
				WHEN majproj IS NOT NULL THEN 1
			ELSE 
				0
			END = 1
ORDER BY	deptno, respemp;



					