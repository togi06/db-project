/*
 View:
        create view:
            create view ViewName as Statement

        replace view;
                create or replace view ViewName as Statement;

        dropping view:
            drop view ViewName;
 */
 select  * from  EMPLOYEES;
select FIRST_NAME || ' ' || LAST_NAME from EMPLOYEES;
select FIRST_NAME || ' ' || LAST_NAME  as "Full Name" from EMPLOYEES;

create view EmployeeInfo as select FIRST_NAME || ' ' || LAST_NAME  as "Full Name" from EMPLOYEES;

select * from EmployeeInfo;

select FIRST_NAME || ' ' || LAST_NAME  as "Full Name",
       lower(EMAIL ||'@gmail.com')  as Email
from EMPLOYEES;

create  or replace view EmployeesInfo as select FIRST_NAME || ' ' || LAST_NAME  as "Full Name",
                                                lower(EMAIL ||'@gmail.com')  as Email
                                         from EMPLOYEES;

select  * from EmployeesInfo;

drop  view  EmployeeInfo;