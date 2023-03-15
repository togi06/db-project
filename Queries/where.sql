--I want to see firstname lastname phone number of david(s)
-- net bir kordinat vermek için "where" i kullanıyoruz
-- ve "=" sonra da '...' yapıyoruz


SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER
from EMPLOYEES where FIRST_NAME = 'David' and LAST_NAME = 'Lee';

-- get me all information who is making more than 7000 salary
SELECT  * FROM EMPLOYEES
where SALARY >7000;

-- get me email of who  is making less than 4000
SELECT  EMAIL,SALARY from EMPLOYEES
where SALARY<4000;

-- get me all info who ,is working as IT_Prog or SA_Rep
SELECT * FROM EMPLOYEES
where JOB_ID = 'SA_REP' or JOB_ID ='IT_PROG';

--get me first_name, last_name, salary who is making more than 5000 and less than 1000
SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES
where SALARY >= 5000 and SALARY <=10000;

--2. yol // between ile bunu kolaylıkla yapabılıyorsun
SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES
where SALARY between 5000 and 10000;

-- get me all info where emp_id 130 to 170
SELECT * from EMPLOYEES
where EMPLOYEE_ID between 130 and 170;

-- get me all info where employee_id 135 176 154 129
-- birkaç farklı sayının aralığı isteniyorsa "between" yerine " or" kullanıyorsun ve bilgiden sonra "=" yapıyorsun!!
SELECT * FROM EMPLOYEES
where EMPLOYEE_ID = 135 or EMPLOYEE_ID =176 or EMPLOYEE_ID =154 or EMPLOYEE_ID = 129;

-- 2. yol -- uzun uzun yazmak yerine "in" yazığ parantez içine sayıları ya da parametreleri  yaz!!
SELECT * FROM EMPLOYEES
where EMPLOYEE_ID in(135,176,154,129);

-- get me city of where country_id IT,US,UK
SELECT CITY, COUNTRY_ID from LOCATIONS
where COUNTRY_ID in('IT','US','UK','TR');
