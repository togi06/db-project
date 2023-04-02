--order by
Select SALARY from  EMPLOYEES;

select SALARY from EMPLOYEES
order by SALARY desc;

select  SALARY from EMPLOYEES
order by  SALARY asc ;

select  SALARY  from EMPLOYEES
order by SALARY;

select FIRST_NAME, LAST_NAME from EMPLOYEES
order by FIRST_NAME asc , LAST_NAME desc ;

select  FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
order by  FIRST_NAME asc, SALARY desc ;


-- where and like
select FIRST_NAME  from EMPLOYEES
where FIRST_NAME like 'Jen%';

select FIRST_NAME  from EMPLOYEES
where FIRST_NAME like 'Da%';

select LAST_NAME  from EMPLOYEES
where LAST_NAME like '%es';

select LAST_NAME  from EMPLOYEES
where LAST_NAME like '_____';

select FIRST_NAME  from EMPLOYEES
where FIRST_NAME like '__a__';

select FIRST_NAME  from EMPLOYEES
where FIRST_NAME like 'D__%';

--- count ---  sadece kaç bilgi var onun sayısını veriyor
select count(JOB_ID) from JOB_HISTORY;

select count(*)  from   LOCATIONS;
-- count "null" ları saymıyor
select count(POSTAL_CODE) from LOCATIONS;

select count( distinct COUNTRY_ID)from LOCATIONS;

--- aggregate functions
--min
select min(SALARY) from EMPLOYEES;
select min(FIRST_NAME) from EMPLOYEES;


--max
select max(SALARY) from EMPLOYEES;
select max(LAST_NAME) from EMPLOYEES;
select max(HIRE_DATE) from EMPLOYEES;
select min(HIRE_DATE) from EMPLOYEES;

--sum
select sum(SALARY) from EMPLOYEES;
select sum(SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';

--avg
select avg(SALARY) from EMPLOYEES;


--row number
select FIRST_NAME from EMPLOYEES
where ROWNUM <=10;

--subquery
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY > (select avg(SALARY)from EMPLOYEES);

select  FIRST_NAME, SALARY from EMPLOYEES
where   SALARY = (select max(SALARY) from EMPLOYEES);

-- 2. en yüksek kazanç
select  max(SALARY)from EMPLOYEES
where SALARY <>(select max(SALARY)from EMPLOYEES);

--string functions
-- concatination
select  FIRST_NAME || ' ' ||LAST_NAME from  EMPLOYEES;

--lower or upper
select upper(FIRST_NAME) from EMPLOYEES;
select lower(FIRST_NAME) from EMPLOYEES;

-- lenght
select FIRST_NAME , length(FIRST_NAME)
from EMPLOYEES
where length(FIRST_NAME)< 6;

--substr
select LAST_NAME,substr(LAST_NAME,1,3) from EMPLOYEES;

select CITY, substr(CITY,1,2) from LOCATIONS;

--intcap
select initcap(lower(FIRST_NAME)) from EMPLOYEES;

--view
create view fullemail as select  FIRST_NAME || '.'|| LAST_NAME ||'@gmail.com' from EMPLOYEES;