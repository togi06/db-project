--mülakatta sorabilinir
-- find the highest 14th salary
---ilk 14 en yüksek para kazananlar
select *
from(select * from EMPLOYEES
order by SALARY desc )
where ROWNUM <15;

-- distinct kullanmalıyız cunku bazı rakamları birkaç kişi kazanıyor
-- we use "distinct" because of removing the duplicate values
select *
from(select distinct  SALARY from EMPLOYEES
     order by SALARY desc )
where ROWNUM <15;

-- 14. en yüksek kazanılan miktar --
select min(SALARY) -- min yapmamızın sebebi ilk 14'teki en az kazananı göstermek için
from(select distinct SALARY from EMPLOYEES
     order by SALARY desc )
where ROWNUM <15;

--find employee info who is making 14th highest salary
select *
from EMPLOYEES
where SALARY =(select min(SALARY)
               from(select distinct SALARY from EMPLOYEES
                    order by SALARY desc )
               where ROWNUM <15);

-- how to find duplicate names in employees table
select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having  count(*)>1;
