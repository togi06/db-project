--mülakatta sorabilinir
-- find the highest 14th salary
---ilk 14 en yüksek para kazananlar
select *
from(select * from EMPLOYEES
order by SALARY desc )
where ROWNUM <15;

-- distinct kullanmalıyız cunku bazı rakamları birkaç kişi kazanıyor
select *
from(select distinct  SALARY from EMPLOYEES
     order by SALARY desc )
where ROWNUM <15;

-- 14. en yüksek kazanılan miktar --
select min(SALARY)
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

