-- how can wee rename the column that we displayed
select FIRST_NAME as "given_name", LAST_NAME as"surname"
from EMPLOYEES;

-- text functions,  string mani.
--java first_name + "" + last_name
-- in sql concat is ||
-- || bunları koyduktan sonra tek tınağın içine ne yazarsan onu bilgiye ekliyor
select  FIRST_NAME ||' '||LAST_NAME as "full_name"
from EMPLOYEES;

--task @gmail.com and name new column to full email
select EMAIL from EMPLOYEES;
select EMAIL|| '@gmail.com' as "full_email"
from EMPLOYEES;

--making all lowercase
select lower (EMAIL|| '@gmail.com') as "full_email"
from EMPLOYEES;

--making all upper
select upper (EMAIL|| '@gmail.com') as "full_email"
from EMPLOYEES;

--length (value)
--"as" den sonra veri giriyorsun sonra "order by" kullanıp bu veriyi tırnak içinde yazıyorsun
select FIRST_NAME,length(FIRST_NAME) as "length_name"
from EMPLOYEES
order by "length_name" desc;

-- substr(calName,BegIndex,NumberOfChar)
select substr(FIRST_NAME,0,1) ||'.'||substr(LAST_NAME,0,1)
as "initials" from EMPLOYEES;

--combine
select substr(FIRST_NAME,0,1) ||'.'||substr(LAST_NAME,0,1)  as "initials",
FIRST_NAME ||' '||LAST_NAME as "full_name",
lower (EMAIL|| '@gmail.com') as "full_email"
from EMPLOYEES;

--View
CREATE VIEW EmailList3 as select substr(FIRST_NAME,0,1)|| '.'||substr(LAST_NAME,0,1)as "initials",
FIRST_NAME|| ' '||LAST_NAME as "full_name", lower(email||'@gmail.com') as "full_name"
from EMPLOYEES;

CREATE VİEW EList as select substr(FIRST_NAME,0,1) ||'.'||substr(LAST_NAME,0,1)  as "initials",
FIRST_NAME ||' '||LAST_NAME as "full_name",
lower (EMAIL|| '@gmail.com') as "full_email"
from EMPLOYEES;

CREATE VİEW EmailList_Togi as select substr(FIRST_NAME,0,1) ||'.'||substr(LAST_NAME,0,1)  as "initials",
                            FIRST_NAME ||' '||LAST_NAME as "full_name",
                            lower (EMAIL|| '@gmail.com') as "full_email"
                     from EMPLOYEES;

--to remove view
drop view EMAILLIST;

select  * from EMPLOYEES;






