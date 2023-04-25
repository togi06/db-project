--1. List all the employees' first and
-- last name with their salary in employees table

select  * from EMPLOYEES;
select  FIRST_NAME, LAST_NAME from EMPLOYEES;
select  FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;

--2. how many employees have salary less than 5000?
select count(FIRST_NAME) from EMPLOYEES where  SALARY <5000;
select FIRST_NAME from EMPLOYEES where  SALARY <5000;
select * from EMPLOYEES where SALARY < 5000;

--3. how many employees have salary between 6000 and 7000?
select count(LAST_NAME) from EMPLOYEES where SALARY between 6000 and 7000;
select LAST_NAME from EMPLOYEES where SALARY between 6000 and 7000;
select count(*) from EMPLOYEES where SALARY between  6000 and 7000;


--4. List all the different region_ids in countries table
select REGION_ID from COUNTRIES;
select distinct REGION_ID from COUNTRIES;

--5**. display the salary of the employee Grant Douglas
-- (lastName: Grant,  firstName: Douglas)

select SALARY from EMPLOYEES where FIRST_NAME like 'Douglas'
                               and LAST_NAME like 'Grant';

select  SALARY from EMPLOYEES where LAST_NAME ='Grant'
                                and FIRST_NAME ='Douglas';


--6. display the maximum salary in employees table

select max(SALARY) from EMPLOYEES;
select SALARY from EMPLOYEES;


--7. display all informations of the employee
-- who has the highest salary in employees table
select *from EMPLOYEES order by SALARY desc ;

select  * from EMPLOYEES where SALARY = (select max(SALARY) from EMPLOYEES);
select  * from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES);

--8. display the the second maximum salary
-- from the employees table
select  max(SALARY) from EMPLOYEES where SALARY < (select  max(SALARY) from EMPLOYEES);


--9. display all informations of the employee
-- who has the second highest salary
select  * from EMPLOYEES where SALARY =(select  max(SALARY) from EMPLOYEES where SALARY < (select  max(SALARY) from EMPLOYEES));

--10. display the the minimum salary in employees table
select min(SALARY) from EMPLOYEES;

--11. display all informations of the employee
-- who has the minimum salary in employees table
select * from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES);

--12. display the second minimum salary from the employees table

select min(SALARY)from EMPLOYEES where SALARY > (select min(SALARY)from EMPLOYEES);

--13. display all informations of the employee
-- who has the second minimum salary
select * from   EMPLOYEES where SALARY =
        (select min(SALARY)from EMPLOYEES where SALARY
         > (select  min(SALARY) from  EMPLOYEES));

--14. display the average salary of the employees;
select avg(SALARY) from EMPLOYEES;
select round(avg(SALARY),2) from EMPLOYEES;


--15. display the average salary of the employees;
select * from EMPLOYEES where SALARY> (select round(avg(salary),2) from Employees);

-- büyükten küçüğe sıralama!!
select * from EMPLOYEES where SALARY> (select round(avg(salary),2) from Employees) order by SALARY desc ;
-- küçükten büyüğe sıralama , (asc)  yazmasan da olur!!!
select * from EMPLOYEES where SALARY> (select round(avg(salary),2) from Employees) order by SALARY asc ;


--16. list all the employees who are making less than the average salary
select * from EMPLOYEES where SALARY < (select round(avg(salary),2) from Employees);

select * from EMPLOYEES where SALARY < (select round(avg(salary),2) from Employees) order by  SALARY desc ;

--17. count the total numbers of the departments
-- in departs table
select count(*) from  DEPARTMENTS;
select * from DEPARTMENTS;

--18. sort the start_date in ascending order in job_history's table
select * from JOB_HISTORY;
select * from JOB_HISTORY order by START_DATE;

--19. sort the start_date in descending
-- order in job_history's table
select * from JOB_HISTORY order by START_DATE desc ;

--20. list all the employees
-- whose first name starts with 'A'
select  * from EMPLOYEES where FIRST_NAME like 'A%';

--21. list all the employees whose job_ID contains 'IT'
select  * from EMPLOYEES where  JOB_ID like '%IT%';

--22. list all the employees
-- whose department id in 50, 80, 100

select  * from  EMPLOYEES where DEPARTMENT_ID in (50,80,100);