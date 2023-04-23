/*
 order by statement: used for sorting the result
 ascedning order : ASC
 descending order: DESC
 order by : sıralama yapıyor.
 Asc = alfabetik olarak a-z ye ya da sayı olarak kuçükten büyüğe
 **= order by dan sonra bir şey yazmazsak direk "asc" yapıyor!!!
 Desc= büyükten küçüge ya da z den a ya sıralama yapıyor
 */
 select * from COUNTRIES;
 select * from COUNTRIES order by REGION_ID;
 select * from COUNTRIES order by REGION_ID asc ;
 select * from COUNTRIES  where REGION_ID < 5 order by REGION_ID asc ;
 select * from COUNTRIES order by COUNTRY_NAME;
 select * from COUNTRIES order by COUNTRY_NAME asc;

select * from  COUNTRIES order by REGION_ID desc ;
select * from  COUNTRIES order by COUNTRY_NAME desc ;