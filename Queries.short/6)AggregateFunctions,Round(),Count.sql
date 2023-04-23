/*
 Aggregate Functions;
    min(): selects the min value from the column
    select min(columName) from TableName;

    max(): selects the max value from the column
    select max(columName)  from TableName;

    avg(): selects the average value from the column
        select avg(columName) from TableName;

    sum(): select the sum of all values
        select sum (columName) from TableName
 --------------------------------------------------

 count():
    select count(ColumName) from TableName Condition;

 Round(): used for decimal formatting
    select Round(avg(columName), 2) from TableName;

 */
 select * from DEPARTMENTS;
 select LOCATION_ID from DEPARTMENTS;
select min( LOCATION_ID) from DEPARTMENTS;
select * from DEPARTMENTS where LOCATION_ID = 1400; -- bu değişebilir o yuzden alttaki satır en ıyısı
select * from DEPARTMENTS where LOCATION_ID = (select min( LOCATION_ID) from DEPARTMENTS);

select max(LOCATION_ID) from DEPARTMENTS;
select * from DEPARTMENTS where LOCATION_ID = (select  max(LOCATION_ID) from DEPARTMENTS);


select * from EMPLOYEES;
select min(SALARY) from EMPLOYEES;
select * from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES);

select max(SALARY) from EMPLOYEES;
select * from EMPLOYEES where  SALARY = (select max(SALARY) from EMPLOYEES);

-- avg : küsüratlı çıktığında "round" u kullanıyoruz ve
-- virgülden sonra kaç basamak görmek istiyorsak onu yazıyoruz virgülden sonra
select SALARY from EMPLOYEES;
select avg(SALARY) from EMPLOYEES;
select round(avg(SALARY), 2) from EMPLOYEES;


select * from EMPLOYEES;
select SALARY from EMPLOYEES;
select sum(SALARY) from EMPLOYEES; -- returns the sum of the values


select * from EMPLOYEES;
select * from EMPLOYEES where MANAGER_ID= 100;
select count(*) from EMPLOYEES where MANAGER_ID= 100;

select  * from EMPLOYEES where SALARY < 10000;
select  count(*)from EMPLOYEES where SALARY < 10000;