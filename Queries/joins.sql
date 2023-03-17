-- iki tablodaki bilgileri birleştirmek için
-- şunları yapmam lazım;
CREATE TABLE address(

                        address_id Integer PRIMARY KEY,
                        address VARCHAR(50) NOT NULL,
                        phone Integer NOT NULL

);


INSERT INTO address (address_id, address, phone) VALUES (5,  '1913 Hanoi Way'  ,  28303384);
INSERT INTO address (address_id, address, phone) VALUES (7,  '692 Joliet Street'  ,  44847719);
INSERT INTO address (address_id, address, phone) VALUES (8,  '1566 Inegl Manor'  ,  70581400);
INSERT INTO address (address_id, address, phone) VALUES (10,  '1795 Santiago '  ,  86045262);
INSERT INTO address (address_id, address, phone) VALUES (11,  '900 Santiago '  ,  16571220);


CREATE TABLE customer(

                         customer_id Integer PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50)NOT NULL,
                         address_id Integer REFERENCES address(address_id)

);


INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (1, 'Mary' ,  'Smith',  5);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (2,  'Patricia' ,  'Johnson' ,  NULl);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (3,  'Linda' ,  'Williams' ,  7);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (4, 'Barbara' ,  'Jones' , 8);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (5,  'Elizabeth' ,  'Brown' ,  NULL);





select * from ADDRESS;
select  *  from  CUSTOMER;

-- "join on" sayesinde iki tablodan ortak bir bilgi sayesinde yeni bir tablo oluşturabiliyoruz
select first_name, last_name, address,phone
from customer join address
                   on customer.address_id = address.address_id;

-- ortak bilgi yeni tablomuzda da görmel için birleşimde kullandığımız
-- ilk tablo ismini yazıp "." koyup ortak bilgiyi yaziyoruz
--ör: customer.adress_id
select first_name, last_name,customer.address_id, address,phone
from customer join address
                   on customer.address_id = address.address_id;
-- tablo isminden sonra bir boşluk bırakıp tablonun ilk harfini yazarsak
-- bundan sonra ki durumlarda sadece o tek harfi kullanarak işlem yapabiliriz
--ör: customer c
-- inner join ile join aynı

-- tablodaki ortak olmayan sol taraftaki tüm bilgileri birleştireceğimiz ortak tabloya eklemek istiyorsak
-- join'den önce "left" yazıyoruz!!
select first_name, last_name,a.address_id, address,phone
from customer c left join address a
                   on c.address_id = a.address_id;

-- tablodaki ortak olmayan sağ taraftaki tüm bilgileri birleştireceğimiz ortak tabloya eklemek istiyorsak
-- join'den önce "right" yazıyoruz!!
select first_name, last_name,a.address_id,a.address_id, address,phone
from customer c right join address a
                          on c.address_id = a.address_id;

-- her ne adar farklı bılgılerde olsa ıkı tabloyu bırleştıreceksek
-- full join i kullanıyoruz


select first_name, last_name,a.address_id, address,phone
from customer c full join address a
                          on c.address_id = a.address_id;



commit;

