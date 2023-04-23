/*

 group by: divides the rows into



 Having:

 */

 select  * from EMPLOYEES ;
 select  JOB_ID from EMPLOYEES group by  JOB_ID;
 select  JOB_ID from EMPLOYEES group by  JOB_ID
                               order by JOB_ID desc ;

select  JOB_ID, count(*)  from  EMPLOYEES group by JOB_ID;
select  JOB_ID, max(SALARY) from EMPLOYEES group by JOB_ID;
select  JOB_ID, count(*),max(SALARY) from EMPLOYEES group by JOB_ID;
select  JOB_ID, min(SALARY) from EMPLOYEES group by JOB_ID;
select  JOB_ID, avg(SALARY) from EMPLOYEES group by JOB_ID;
select  JOB_ID, sum(SALARY) from EMPLOYEES group by JOB_ID;


select JOB_ID from EMPLOYEES group by JOB_ID having max(SALARY) >2000;
select JOB_ID, count(*) from EMPLOYEES group by JOB_ID having max(SALARY) >2000;

select JOB_ID from  EMPLOYEES group by  JOB_ID having avg(SALARY) >6000;
select JOB_Id, count(*) from  EMPLOYEES group by  JOB_ID having avg(SALARY) >6000;
select JOB_ID from  EMPLOYEES group by  JOB_ID having  min(SALARY) >6000;
select JOB_ID, count(*) from  EMPLOYEES group by  JOB_ID having  min(SALARY) >6000;


