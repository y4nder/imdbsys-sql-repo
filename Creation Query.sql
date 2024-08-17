--this query creates the database

-- 1. Create The database
--CREATE DATABASE LUBGUBAN_DB;

------------------------------- 2. Create the Tables -------------------------------
USE LUBGUBAN_DB;

create table DEPARTMENT(
	DEPTNO char(3) primary key,
	DEPTNAME varchar(30) not null,
	MGRNO char(6),
	ADMRDEPT char(3) not null,
	LOC varchar(40)
)

create table EMPLOYEE(
	EMPNO char(6) primary key,
	FIRSTNAME varchar(20) not null,
	MIDINIT char(1),
	LASTNAME varchar(15) not null,
	WORKDEPT char(3),
	PHONENO char(11) unique,
	HIREDATE date,
	JOB char(10),
	EDLEVEL smallint,
	GENDER char(1) check(GENDER = 'M' or GENDER = 'F'),
	BIRTHDATE date,
	SALARY decimal(10,2),
	BONUS decimal(9,2),
	COMM decimal(9,2)
)

create table PROJECT(
	PROJNO char(6) primary key,
	PROJNAME varchar(30) not null,
	DEPTNO char(3),
	RESPEMP char(6),
	PRSTAFF decimal(4,2),
	PRSTDATE date,
	PRENDATE date,
	MAJPROJ char(6),
)

create table EMP_ACT(
	EMPNO char(6),
	PROJNO char(6),
	ACTNO smallint,
	EMPTIME decimal(3,2),
	EMSTDATE date,
	EMENDATE date
)

------------------------------- 3. Create the constraints -------------------------------

--ON DEPARTMENT
alter table DEPARTMENT
	add 
		--admin report foreing key, references department no
		constraint FK_ADMRDEPT 
		foreign key(ADMRDEPT) 
		references DEPARTMENT(DEPTNO),

		--manager foreign key, references employee no
		constraint FK_MGRNO
		foreign key(MGRNO)
		references EMPLOYEE(EMPNO);


--ON EMPLOYEE
-- work dept foreign key, references department no
alter table EMPLOYEE
	add constraint FK_WORKDEPT
	foreign key(WORKDEPT)
	references DEPARTMENT(DEPTNO);

--ON PROJECT
alter table PROJECT
	add 
		-- dep no foreign key, references department no
		constraint FK_DEPTNO
		foreign key(DEPTNO)
		references DEPARTMENT(DEPTNO),

		-- responsible employee foreign key, references employee no
		constraint FK_RESPEMP
		foreign key(RESPEMP)
		references EMPLOYEE(EMPNO);

	
-- ON EMP_ACT
alter table EMP_ACT
	add 
		--add employee no foreign key, references employee no
		constraint FK_EMPNO
		foreign key(EMPNO)
		references EMPLOYEE(EMPNO),

		--add proj no foreign key, references project no
		constraint FK_PROJNO
		foreign key(PROJNO)
		references PROJECT(PROJNO);

----------------------------------------------------------------------------------------------
