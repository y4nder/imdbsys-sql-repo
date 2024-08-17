-- this query is for resetting the database
--USE LUBGUBAN_DB;

alter table DEPARTMENT
	drop 
		constraint FK_ADMRDEPT,
		constraint FK_MGRNO;

alter table EMPLOYEE
	drop
		constraint FK_WORKDEPT;

alter table PROJECT 
	drop
		constraint FK_DEPTNO,
		constraint FK_RESPEMP;

alter table EMP_ACT
	drop
		constraint FK_EMPNO,
		constraint FK_PROJNO

		
drop table EMP_ACT;
drop table EMPLOYEE;
drop table PROJECT;
drop table DEPARTMENT;

drop database LUBGUBAN_DB;
