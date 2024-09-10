USE LUBGUBAN_DB;

SELECT		d.deptno, d.deptname, ea.actno, p.projname, e.empno, e.lastname,
			CASE e.gender
				WHEN 'M' THEN 'MALE'
				ELSE 'FEMALE'
			END AS gender,
			CASE e.gender
				WHEN 'F' THEN STR(e.edlevel, 2, 0)
				ELSE
					CASE e.edlevel
						WHEN 12 THEN 'TWELVE'
						WHEN 13 THEN 'THIRTEEN'
						WHEN 14 THEN 'FOURTEEN'
						WHEN 15 THEN 'FIFTEEN'
						WHEN 16 THEN 'SIXTEEN'
						WHEN 17 THEN 'SEVENTEEN'
						WHEN 18 THEN 'EIGHTEEN'
						WHEN 19 THEN 'NINETEEN'
						WHEN 20 THEN 'TWENTY'
					END
			END AS edlevel
FROM		emp_act ea
JOIN		employee e ON e.empno = ea.empno
JOIN		project p ON p.projno = ea.projno
JOIN		department d ON d.deptno = p.deptno
WHERE		ea.actno % 3 = 0 AND p.prstdate BETWEEN '2017-03-20' AND '2020-01-15'
ORDER BY	d.deptno ASC, ea.actno DESC;
