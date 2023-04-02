create table Developers(
    Id_Number INTEGER primary key,
    Names varchar(30),
    Salary INTEGER
);

create table Testers(
    Id_Number INTEGER primary key,
    Names varchar(30),
    Salary INTEGER
);
insert into Developers values (1, 'Mike', 155000);
insert into Developers values (2, 'John', 142000);
insert into Developers values (3, 'Steven',850000);
insert into Developers values (4, 'Maria', 120000);
insert into Testers values (1,'Steven', 110000);
insert into Testers values (2,'Adam', 105000);
insert into Testers values (3,'Lex', 100000);

commit work ;
