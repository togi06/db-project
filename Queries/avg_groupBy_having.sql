-- get me unique job_ids
select distinct JOB_ID from EMPLOYEES;

-- get me average salary for IT_PROG
SELECT avg(SALARY) from EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

-- get me average salary for all jobs
-- burada tüm mesleklerin verilerinin aktarılması için "group by" kullanılyoruz
-- group by bu yüzden çok önemli ve mülakatlarda gelir


SELECT JOB_ID,avg(SALARY), count(*), sum(SALARY) from EMPLOYEES
group by JOB_ID;

-- get me job_ids where their avg salary more than 5k
-- "where" kullandığımızda bılgiye göre eleme yapıyor
-- örneğin 5k 'nın üstüne kazananlar diyince sadece 5 K'nın üzerinde kazananları alıyor
-- altında kalanları değil
-- ama "having" yaptığımızda ise o işte çalışan herkesi hesaba katıyor
SELECT JOB_ID,avg(SALARY), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY)> 5000;


