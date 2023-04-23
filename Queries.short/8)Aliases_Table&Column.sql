/*
 Aliases: used to give temporary name to tables and column

    column aliases: we use "As" keyword to give temporary name to the column
         select Column as "name" from Table

    Table aliases: given with a space
        select Column from TableName Name;
 */
-- column aliases: sütün ismi değişikliği yapılıyor ama sadece görünüşte
-- genel anlamda bir değişiklik yok!!

select * from EMPLOYEES;
select FIRST_NAME from EMPLOYEES;
select  FIRST_NAME as "GivenName" from EMPLOYEES;

select FIRST_NAME || ' ' || LAST_NAME  from  EMPLOYEES;
select FIRST_NAME || ' ' || LAST_NAME as "Full Name" from  EMPLOYEES;

select * from EMPLOYEES;
select concat(EMAIL,'@gmail.com') from EMPLOYEES;
select concat(EMAIL,'@gmail.com') as "Email Adress" from EMPLOYEES;

--table aliases;
select * from  EMPLOYEES,JOB_HISTORY;
select EMPLOYEES.employee_id, JOB_HISTORY.JOB_ID  from  EMPLOYEES, JOB_HISTORY;

select * from  EMPLOYEES e ,JOB_HISTORY j;
select e.employee_id, j.job_id from  EMPLOYEES e ,JOB_HISTORY j;


