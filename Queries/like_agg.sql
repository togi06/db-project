-- get me info who is working as IT_PROG or SA_REP

select * from  EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');

-- How many employee are working as IT_PROG or SA_REP
-- count (*) bize bılgi vermeden kaç tane olduğu gösterir
select count (*) from  EMPLOYEES
where JOB_ID in('IT_PROG', 'SA_REP');

-- how many employee making more than 800
SELECT count(*) from EMPLOYEES
where SALARY > 8000;

-- how many unique first name we have?
SELECT count (distinct FIRST_NAME) from EMPLOYEES;

-- get me all employee info based on who is making more salary to low salary
--sıralama yapan değerler "order by" +;
-- desc = 9-0 /Z-A
-- asc = 0-9 / A-Z
SELECT * from EMPLOYEES
order by SALARY desc ;

SELECT * from EMPLOYEES
order by SALARY asc ;
-- get me employee order by alphabetical based on firstname
SELECT * from EMPLOYEES
order by FIRST_NAME desc ;

SELECT * from EMPLOYEES
order by FIRST_NAME asc;

--Note: default order type is asc if you dont sprecify after column name

-- get me all employee whose first name starts with C
-- like '.' , % koyarsak limitsiz yapıyoruz
SELECT  * from EMPLOYEES
where FIRST_NAME like 'C%';

-- get me 5 letter first names where the middle char is z;

SELECT  * from  EMPLOYEES
where FIRST_NAME like '__z__';

-- get me first name where second char is u
SELECT * from EMPLOYEES
where FIRST_NAME like '_u%';

-- find me the min salary
SELECT min(SALARY)from EMPLOYEES;

-- find me the max salary
SELECT max(SALARY)from EMPLOYEES;

-- find me the avg salary
SELECT avg(SALARY)from EMPLOYEES;
--round                 buradaki sayı noktadan sonrasını gösterir
SELECT round(avg(SALARY),2)from EMPLOYEES;

SELECT sum(SALARY) from EMPLOYEES;





