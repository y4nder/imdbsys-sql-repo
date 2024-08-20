-- random queries
USE LUBGUBAN_DB;

---1. problem 2---
select 
	emp.LASTNAME,
	emp.BIRTHDATE,
	emp.SALARY

	from EMPLOYEE as emp

	where emp.SALARY > 30000.00

	order by emp.SALARY desc
;

--2. problem 2--
select 
	emp.LASTNAME,
	emp.FIRSTNAME,
	emp.WORKDEPT
from EMPLOYEE as emp
	order by 
		emp.WORKDEPT desc,
		emp.LASTNAME desc
;

--3. problem 3--
select distinct
	emp.EDLEVEL
	
from EMPLOYEE as emp
	order by emp.EDLEVEL desc
;

--4. problem 4--
select distinct
	ea.EMPNO,
	ea.PROJNO

	from EMP_ACT as ea
		where ea.EMPNO <= 100
		order by ea.EMPNO
;

--5 problem 5--
select 
	emp.LASTNAME,
	emp.SALARY,
	emp.COMM
	from EMPLOYEE as emp
		where emp.BIRTHDATE < '1980'
;

--6 problem 6--
select 
	emp.LASTNAME,
	emp.SALARY,
	emp.COMM
	from EMPLOYEE as emp
		where emp.SALARY > 20000.00 and emp.HIREDATE > '2001'
		order by emp.SALARY desc
;

--7 problem 7--
select 
	emp.FIRSTNAME,
	emp.LASTNAME,
	emp.SALARY,
	emp.BONUS,
	emp.COMM
	from EMPLOYEE as emp
		where (emp.SALARY > 22000.00 and emp.BONUS = 400.00) or (emp.BONUS = 500.00 and emp.COMM < 1900.00)
	order by emp.LASTNAME
;

--8 problem 8--
select 
	ea.PROJNO,
	ea.ACTNO,
	ea.EMSTDATE,
	ea.EMENDATE
	from EMP_ACT as ea
		where ea.PROJNO like 'AD%' and ea.ACTNO in (10, 80, 180)
	order by 
		ea.PROJNO,
		ea.ACTNO
;

--9 problem 9--
select 
	dep.MGRNO,
	dep.DEPTNO

	from DEPARTMENT dep
		where dep.MGRNO is not null
		order by dep.MGRNO
;

--10 problem 10--
select 
	emp.EMPNO,
	emp.LASTNAME,
	emp.SALARY,
	emp.BONUS
	from EMPLOYEE as emp
		where emp.BONUS >= 800.00 and emp.BONUS <= 1000.00

		order by 
			emp.BONUS,
			emp.EMPNO
;

--11 problem 11--

select
	emp.EMPNO,
	emp.LASTNAME,
	emp.SALARY,
	emp.WORKDEPT
	from EMPLOYEE as emp
		where emp.WORKDEPT between 'A00' and 'C01'
			order by
				emp.LASTNAME,
				emp.EMPNO
;

--12 problem 12--

select 
	p.PROJNO,
	p.PROJNAME,
	p.PRSTDATE,
	p.PRENDATE
	from PROJECT as p
		where p.MAJPROJ is null
		order by p.PROJNO
;

--13 problem 13--

select *
	from PROJECT as p
		where p.PROJNAME like '%SUPPORT%'
			order by p.PROJNO desc
;

--14 problem 14--

select * 
	from DEPARTMENT as dep
		where dep.DEPTNO like '_1_'
;


--15 problem 15--
select top 5 
	emp.LASTNAME,
	emp.FIRSTNAME,
	emp.MIDINIT,
	emp.SALARY
	from EMPLOYEE as emp
		where emp.JOB != 'PRESIDENT' and emp.JOB != 'MANAGER'
			order by emp.SALARY desc
;
