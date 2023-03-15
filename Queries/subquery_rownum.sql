
SELECT * from EMPLOYEES
order by SALARY desc ;
--- get me the highest salary
select max(SALARY) from EMPLOYEES;

--highest salary employee info
select * from EMPLOYEES
where SALARY = 24000;

-- how to find employee info of who is making highest salary in the company
--subquery solution in one shot
select * from EMPLOYEES
where SALARY =(select max(SALARY) from EMPLOYEES);

-- finding second highest salary
---get highest salary first
select max(SALARY)from EMPLOYEES;

select max(SALARY)from EMPLOYEES
where SALARY < 24000;

-- one shot combining to queries
select max(SALARY)from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);


-- employee info of who is making second highest salary?
select *from EMPLOYEES
where SALARY = (select max(SALARY)from EMPLOYEES
                where SALARY < (select max(SALARY) from EMPLOYEES));


select * from   EMPLOYEES
    order by   SALARY desc ;

select *
from EMPLOYEES
where ROWNUM <11;

-- get me list the employees who is making top 10 salary
-- bu liste sadece ilk 10 kişiyi  listeliyor
select *
from EMPLOYEES
where ROWNUM < 11 order by   SALARY desc ;

-- order all employee based on salary high to low then display only first 10 result
-- from dan sonra en fazla kazananlar listesini koyup sonrasında "where  rownum" ile ilk 10 u seçiyoruz
select *
from(select * from   EMPLOYEES
     order by   SALARY desc)
where ROWNUM < 11  ;

