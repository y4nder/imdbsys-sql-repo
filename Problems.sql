-- random queries
USE LUBGUBAN_DB;

---1. problem 2---
SELECT		lastname, birthdate, salary
FROM		employee
WHERE		salary > 30000.00
ORDER BY	salary DESC;

--2. problem 2--
SELECT		lastname, firstname, workdept
FROM		employee
ORDER BY	workdept DESC, lastname DESC;

--3. problem 3--
SELECT DISTINCT edlevel
FROM			employee 
ORDER BY		edlevel DESC;

--4. problem 4--
SELECT DISTINCT		empno, projno
FROM				emp_act
WHERE				empno <= 100
ORDER BY			empno;

--5 problem 5--
SELECT		lastname, salary, comm
FROM		employee
WHERE		birthdate < '1980';

--6 problem 6--
SELECT		lastname, salary, comm
FROM		employee
WHERE		salary > 20000.00 AND hiredate > '2001'
ORDER BY	salary DESC;

--7 problem 7--
SELECT		firstname, lastname, salary, bonus, comm
FROM		employee
WHERE		(salary > 22000.00 AND bonus = 400.00) OR (bonus = 500.00 AND comm < 1900.00)
ORDER BY	lastname;

--8 problem 8--
SELECT		projno, actno, emstdate, emendate
FROM		emp_act
WHERE		projno LIKE 'AD%' AND actno IN (10, 80, 180)
ORDER BY	projno, actno;

--9 problem 9--
SELECT		mgrno, deptno
FROM		department 
WHERE		mgrno IS NOT NULL
ORDER BY	mgrno;

--10 problem 10--
SELECT		empno, lastname, salary, bonus
FROM		employee
WHERE		bonus >= 800.00 AND bonus <= 1000.00
ORDER BY	bonus, empno;

--11 problem 11--
SELECT		empno, lastname, salary, workdept
FROM		employee
WHERE		workdept BETWEEN 'A00' AND 'C01'
ORDER BY	lastname, empno;

--12 problem 12--
SELECT		projno, projname, prstdate, prendate
FROM		project
WHERE		majproj IS NULL
ORDER BY	projno;

--13 problem 13--
SELECT		*
FROM		project
WHERE		projname LIKE '%SUPPORT%'
ORDER BY	projno DESC;

--14 problem 14--
SELECT		* 
FROM		department 
WHERE		deptno LIKE '_1_';


--15 problem 15--
SELECT TOP 5	lastname, firstname, midinit, salary
FROM			employee
WHERE			job != 'PRESIDENT' AND job != 'MANAGER'
ORDER BY		salary DESC;
