--1. list the initials of all the employees
select * from EMPLOYEES;
select substr(FIRST_NAME,0,1)
           ||substr(LAST_NAME,0,1) as "Initials" from EMPLOYEES;

--2. list the full names of all employees
-- ( fullname: Lastname FirstName)
select FIRST_NAME || ' ' || LAST_NAME as fullname  from EMPLOYEES;

--3. who has the logest name in the employees table?

select * from EMPLOYEES where length(FIRST_NAME || ''||LAST_NAME)
= (select max(length(FIRST_NAME||''||LAST_NAME))from EMPLOYEES);

select  * from EMPLOYEES where length(PHONE_NUMBER)=
                               (select max(length(PHONE_NUMBER)) from EMPLOYEES);