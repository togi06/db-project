select * from  DEPARTMENTS;

select DEPARTMENT_NAME from DEPARTMENTS;

select DEPARTMENT_NAME, DEPARTMENT_ID from DEPARTMENTS;

/*
 select ten sonra "ctrl + space" yaparsan o database deki kullanabileceğin
 tüm sıraları görebilirsin.
Ama bunu yapmadan önce "from "table" yapmak zorundasın!!
 */
select DEPARTMENT_NAME,DEPARTMENT_ID from DEPARTMENTS;



/*
 birden fazla tablodan da bilgi çağırabiliyoruz


 */
select * from EMPLOYEES;
select * from  DEPARTMENTS;

select  * from EMPLOYEES, DEPARTMENTS;

/*
 birden fazla tablodan birden fazla bilgi çağırabiliyoruz
 */
select EMPLOYEES.EMPLOYEE_ID, DEPARTMENTS.DEPARTMENT_ID from  EMPLOYEES,DEPARTMENTS;


/*                 
 distinct keyword: displays the result without the duplicate
 distinct keyword: makes duplicates information  to single
 */

 select distinct DEPARTMENT_ID from DEPARTMENTS;

select  * from  EMPLOYEES;

select  SALARY from  EMPLOYEES;
select distinct  SALARY from  EMPLOYEES;

select  DEPARTMENT_ID from EMPLOYEES;
select  distinct DEPARTMENT_ID from EMPLOYEES;

select *from jobs;
select distinct MAX_SALARY from JOBS;