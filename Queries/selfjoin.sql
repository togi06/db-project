--  get me aşş employees first_name, last_name and their managers first and lastname

select *
from EMPLOYEES;
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID from EMPLOYEES;

select e1.EMPLOYEE_ID, e1.FIRST_NAME,e1.LAST_NAME,e1.MANAGER_ID,
       e2.employee_id, e2.first_name,e2.last_name
from EMPLOYEES e1 join EMPLOYEES e2
on e1.MANAGER_ID = e2.EMPLOYEE_ID
order by e1.EMPLOYEE_ID
;
commit ;