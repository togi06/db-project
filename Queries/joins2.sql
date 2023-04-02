select CUSTOMER_ID, FIRST_NAME, LAST_NAME,ADDRESS,PHONE
from CUSTOMER left outer join ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID is null ; -- where kısmında tablolardan bırınde olmayanı almamız lazım!!


select  CUSTOMER_ID, FIRST_NAME, LAST_NAME,ADDRESS,PHONE
from CUSTOMER full outer join ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID is null or CUSTOMER.ADDRESS_ID is null ;

select * from EMPLOYEES;
select *from DEPARTMENTS;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME from EMPLOYEES e
 left  join
    DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where e.DEPARTMENT_ID is null ;

--e tablo olduğunda;
-- get me FIRST_NAME,LAST_NAME and deparment_name , city for all employees
-- kaç tane tablo olursa olsun hep bir ortak nokta bulup "join on " ile hepsını
--o ortak nokta sayesinde bağlayabilirsin

select FIRST_NAME,LAST_NAME, DEPARTMENT_NAME, city from EMPLOYEES e
 join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;

select *  from EMPLOYEES;
select * from DEPARTMENTS;

select  FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS
d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select CUSTOMER_ID, FIRST_NAME , LAST_NAME,CUSTOMER.ADDRESS_ID, address, PHONE
from CUSTOMER left outer join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where CUSTOMER.ADDRESS_ID is NULL ;
--where address.address_Id is null da olabilirdi ama o zaman daha az bılgi birleştirebilirdik
--çünkü address kısmında "null" daha fazla

select * from CUSTOMER full outer join address
    on customer.ADDRESS_ID = ADDRESS.ADDRESS_ID
where customer.ADDRESS_ID is null  or
    address.ADDRESS_ID is null ;

commit ;
