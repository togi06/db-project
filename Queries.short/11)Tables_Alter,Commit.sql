/*
 commit = commit work
 ama yaptıklarımdan anladığım kadarıyla "commit" yapınca table siliniyor.
 "commit work" yapınca table'ı nasıl bıraktıysan oradan devam ediyor

 ikisi de kaydetmek için kullanılıyor


 Alter: modify the table
        add column:
        Alter Table TableName add ColumName DataType

        rename column:
        alter table TableName rename column columnName to NewColumnName

        drop column:
            Alter Table TableName drop column ColumName;

        rename Table:
            alter Table TableName rename to NewTAbleNAme

 */

select * from  CUSTOMER1;
-- add column
alter table CUSTOMER1 add Email varchar(30);
update CUSTOMER1 set EMAIL = 'tb@gmail.com' where CUSTOMER_ID =1;
update CUSTOMER1 set EMAIL = 'kkb@gmail.com' where CUSTOMER_ID =2;
update CUSTOMER1 set EMAIL = 'tab@gmail.com' where CUSTOMER_ID =3;

alter table CUSTOMER1 add city varchar(30);
update CUSTOMER1 set city = 'Ankara'    where CUSTOMER_ID=1;
update CUSTOMER1 set city = 'Aachen'    where CUSTOMER_ID=2;
update CUSTOMER1 set city = 'Bursa'    where CUSTOMER_ID=3;



select * from  CUSTOMER1;

--rename column;
alter table CUSTOMER1 rename column firstname to fullname;
select * from  CUSTOMER1;

-- drop column
alter table CUSTOMER1 drop column city;


--  rename Table:
alter table CUSTOMER1 rename  to customer2;

select  * from  customer2;

commit work ;


