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

--4. Show all employees who work in any
-- one of these department id  90, 60, 100, 130, 120
-- bunun için "not in" kullanacak

select * from EMPLOYEES where DEPARTMENT_ID in(90,60,100,130,120);

select DEPARTMENT_ID from EMPLOYEES;

select * from EMPLOYEES where DEPARTMENT_ID not in(90,60,100,130,120);

--6. divide employees into groups by using thier job id
--6.1 display the maximum salaries in each groups
 select JOB_ID, max(SALARY) from EMPLOYEES group by JOB_ID;

--6.2 display the minium salaries in each groups
select JOB_ID, min(SALARY) from EMPLOYEES group by JOB_ID;

--6.3 display the average salary of each group
select JOB_ID, avg(SALARY) from EMPLOYEES group by JOB_ID;

--6.4 how many employees are there in each group that have minimum salary of 5000 ?

select count(*),JOB_ID from EMPLOYEES where SALARY >= 5000 group by JOB_ID;

--6.5 display the total budgests of each groups

select JOB_ID, round(sum(SALARY))  from EMPLOYEES group by JOB_ID;

--7. display employees' full email addresses and full names

--(assume that the domain of the email is @gmail

select FIRST_NAME ||' '|| LAST_NAME, EMAIL||'@gmail.com' from EMPLOYEES;
select concat(FIRST_NAME,LAST_NAME) as "Full Name",
       concat(EMAIL, '@gmail.com') as "Email Adress" from EMPLOYEES;

--8. display full addresses from locations table in a single column
--  (full address: Street_Addtess,  CityName  ZipCode,  Country_id)

select * from LOCATIONS;

select STREET_ADDRESS || ','|| CITY || ','
           ||POSTAL_CODE|| ','|| COUNTRY_ID as "Full Address" from LOCATIONS;