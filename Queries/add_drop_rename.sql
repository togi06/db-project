select  * from  SCRUMTEAM_TOLGA;

--adding new column
ALTER TABLE SCRUMTEAM_TOLGA ADD salary INTEGER;

-- update existing employee salary
UPDATE ScrumTeam_Tolga
SET salary =130000
WHERE Emp_ID = 1;

UPDATE SCRUMTEAM_TOLGA
SET SALARY = 150000
WHERE EMP_ID = 2;

UPDATE SCRUMTEAM_TOLGA
SET salary =180000
WHERE EMP_ID=3;

UPDATE SCRUMTEAM_TOLGA
SET SALARY  = 250000
WHERE EMP_ID=4;


--rename the column
ALTER TABLE SCRUMTEAM_TOLGA RENAME COLUMN salary To annual_salary;

--delete,drop column
ALTER TABLE SCRUMTEAM_TOLGA ADD salary INTEGER;
ALTER TABLE SCRUMTEAM_TOLGA DROP COLUMN salary;

--how to change table name?
ALTER TABLE SCRUMTEAM_TOLGA RENAME to   scrumteam_togi;


-- truncate, if we want to delete all data from the table, but still
-- keep the table structure, we use truncate
-- tablodaki bilgileri silmek için "Truncate Table " ı kullanıyorsun
--TRUNCATE TABLE scrumteam_togi;

--ıf we want to delete the table and data together
-- eğer tüm tabloyu silmek istiyorsak
--DROP TABLE scrumteam_togi;

select *from    scrumteam_togi;

commit ;
