/*
 create Table:
        syntax:
        create table Name(
 columnName1 DataType Constraint, ColumName2 DataType Constraint);

    Constraint is not mandatory
    ama en az bir tane "primary key" kullanmak zorundasın
                        "null"
                        "not null"
                        ya da yazmak zorunda değilsin

 DDL: Data Defination Language
 DML: Data Manuplation Language

 Insert: it allows us to enter the data in the table
        insert into TableName( Cloumn1, column2...)
        value (value1, value2...);
 Update:
        update TAbleName set columnName= Value where condition

 Delete:
        delete from TableName where condition
 kjdslkaj
 */

 create table  address1(
     address_id INTEGER primary key,
     address varchar(50) not null ,
     phone integer

 );

insert into address1(address_id, address, phone)  values (10,'Lee High Way', 32178361 );
insert into address1(address_id, address, phone) VALUES (20, 'JohannStraße 10', 1289312);
insert into  address1(address_id, address, phone) VALUES (15,'JohanStraße 12', 1231237612);

create  table customer1(
   customer_id INTEGER primary key,
   firstName varchar(30) null ,
   address_id INTEGER references address1(address_id)
                       -- referans olan bilgi iki tabloda da doğru olarak kesişmelidir
                       -- yoksa referanstan bilgi çekemiyorsun ve yeni tablo basılmıyor
                       -- ör: address_id ler 10 15 ve 20
                       -- yeni tabloda bu 3 sayıdan başka bir sayı ile veri girersen yeni bilgi girişi olmuyor!!

);

insert into customer1(customer_id, firstName, address_id) values (1, 'Tolga Bayter', 10);
insert into customer1(customer_id, firstName, address_id) values (2, 'Kartal Kerem Bayter', 10);
insert into customer1(customer_id, firstName, address_id) values (3, 'Türkan Akçalar Bayter', 10);


select * from address1;
select * from customer1;

update customer1 set address_id = 15 where customer_id =3;

delete  from customer1 where customer_id = 1 and address_id = 10;
insert into customer1(customer_id, firstName, address_id) values (1, 'Tolga Bayter', 10);

commit work;