/*
 Where clause: used as the filter option
 select column(s) from table(s) where conditions;
 operator:
 > , <, >= , <=, =, !=, or, and
 */

 select  * from EMPLOYEES;
 select  * from EMPLOYEES where SALARY < 5000;
 select  * from EMPLOYEES where SALARY < 5000 and MANAGER_ID = 114;

/*
 between statement: used for specifying the range of the condition
        value between Lowest and highest
 */

select * from DEPARTMENTS;
select * from  DEPARTMENTS
         where LOCATION_ID between 1800 and 2400;

select * from   EMPLOYEES;
select * from  EMPLOYEES
         where  SALARY between   3500 and 5000;

/*
 in statement: used for specifying the range the condition
 bunda parantez kullanmak zorundayız!!!
  */
select  * from EMPLOYEES;
select * from EMPLOYEES
where DEPARTMENT_ID in (60,30,110);

select * from COUNTRIES;
select * from  COUNTRIES where REGION_ID in(2,3);
select * from  COUNTRIES where REGION_ID in(1,4);