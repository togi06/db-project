/*
 Like statement :  partial search
 starts with: Chars%
 ends with: %Chars
 contains: %chars%

 syntax:
    select Column(s) from Table(s) where value like 'WildCard'
 */

 -- stars with;

select * from COUNTRIES;
select * from COUNTRIES
where COUNTRY_NAME like 'A%';
select * from COUNTRIES
where COUNTRY_NAME like 'Au%';

select * from COUNTRIES
where COUNTRY_NAME like 'B%';

--ends with:
select * from COUNTRIES
where COUNTRY_NAME like '%a';

select * from COUNTRIES
where COUNTRY_NAME like '%a' order by COUNTRY_NAME desc ;

--stars with & ends with:

select * from COUNTRIES
         where  COUNTRY_NAME like 'A%' and  COUNTRY_NAME like '%a';

-- contains: içerisindeki herhangi bir karakter
select  * from COUNTRIES where COUNTRY_NAME like '%b%';
select  COUNTRY_NAME from COUNTRIES where COUNTRY_NAME like '%b%';


-- count: aranan bilgiden kaç tane olduğunu gösterir

select count(COUNTRY_NAME) from COUNTRIES
                           where  COUNTRY_NAME like 'A%';

select count(COUNTRY_NAME) from COUNTRIES
where  COUNTRY_NAME like '%a';