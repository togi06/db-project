/*
 primary key: oluşturulan her tabloda en az bir tane olmak zorunda

 Foreign key: başka bir tablodan alınan referans bilgisinin "primary key" olması lazım
 aksi taktirde bilgi geçisi ya da tablo birleştirme yapamayız. Ama iki bilgi başlığınında
 adı farklı olabilir!!!


 */

create table  ClassMates(
    Student_id INTEGER primary key , -- must be unique, cannot be null
    "First Name" varchar(30),
    "Last Name" varchar(30)
);

select * from CLASSMATES;

create table  Coworkers(
    Employee_id integer primary key,-- must be unique, connot be null
    "First Name" varchar(30),
    "Last Name" varchar(30),
    personal_id integer references  CLASSMATES(Student_id)
    -- foreing key, data needs to be with the referenced primary key
    -- foreign key, can be duplicated and can be null
);

insert into  Coworkers values (1,'John', 'Eric', null);
-- classmate tablosunda "studen_id" kısmına bir veri girişi yazılmadığı için
-- "null" yazmak zorunda kaldık, "null" dan başka bir şey yazamayız, yazarsak hata verir

select * from Coworkers;

insert into CLASSMATES values (1,'Aaron', 'Daniel');
select * from  CLASSMATES;
-- bu bilgiden sonra Coworker' a girelecek her bilginin
-- foreign key yani "personal_id" si ya 1 ya da null olmak zorunda

insert into  Coworkers values (2,'Jimmy', 'Rose', 1);

insert into  Coworkers values (3, 'Ahmet', 'Mamat', 1);

--insert into  Coworkers values (3, 'Ahmet', 'Mamat', 2);
--foreign key data is not matching with the referenced primary key's data

select * from CLASSMATES;

/*iki tablo arasında bir karmaşa yaşanırsa ya foreign key bilgisini "drop" sileceğiz
 ya da foreign key 'li tabloyu...

  update clasmmate ser student_id =4 where student_id=1;
  alter table coworkers drop column personal_id;
  truncate table classmates;
  drop table classmates;

  alter table coworkers drop column personal_id= 4 where stundent_id=1;


 */