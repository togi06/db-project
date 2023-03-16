/*
 create table syntax:
 create table TableName(
        colName1 Datatype Constraints,
        colName2 Datatype Constraints(optional),
        colName3 Datatype Constraints,
        ...
        );
 */
--Unutma Tabloyu 1 kere oluşturuyorsun sonrasında veri girişi yapamıyorsun, en azından sımdılık bılımıyorsun
--ınterger primary key: sayı yazımı
-- varchar : karakter yaazımı parantez içi de maks karakter sayısı.
-- not null : aynı isimde ya da veride bilgilerin olmasına izin verir
--unique: aynı isimde bir bilginin olmasına izin vermez
 CREATE TABLE ScrumTeam_Tolga(
    Emp_ID Integer PRIMARY KEY ,
    FirstName varchar(30) not null,
    LastName varchar(30),
    JobTitle varchar(20)

 );

select  * from SCRUMTEAM_TOLGA;

/*
 INSERT INTO tableName(column1, column2, ...)
 VALUES ( value1, value2, ...);

oluşturdupun tabloya bu şekilde veri girişi yapıyorsun!!!

 */

INSERT INTO ScrumTeam_Tolga(emp_id, firstname, lastname, jobtitle)
VALUES (1,'Severus', 'Snape', 'Tester');

INSERT INTO ScrumTeam_Tolga VALUES (2,'Tolga', 'Bayter', 'QA');
INSERT INTO ScrumTeam_Tolga VALUES (3,'Türkan', 'Akçalar Bayter', 'Jeoloji Müh.');
INSERT INTO ScrumTeam_Tolga VALUES (4,'Kartal Kerem', 'Bayter', 'Star');
INSERT INTO ScrumTeam_Tolga VALUES (5,'Muhittin', 'Yılmaz', 'PO');

-- how to update data
-- bilgi güncelleme
/*
 UPDATE table_name
 SET column1 = value1,
 column2=value2,....
 WHERE condition;
 */
UPDATE ScrumTeam_Tolga
SET JobTitle = 'Tester'
WHERE Emp_ID = 4;
select  * from SCRUMTEAM_TOLGA;

UPDATE ScrumTeam_Tolga
SET LASTNAME = 'Bayter'
WHERE Emp_ID = 4;


--Delete from table
DELETE FROM ScrumTeam_Tolga
where Emp_ID=5;



select  * from SCRUMTEAM_TOLGA;
commit ;

