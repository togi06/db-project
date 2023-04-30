select *  from CUSTOMER;
select * from ADDRESS;


select * from CUSTOMER c
    left outer join ADDRESS a on c.ADDRESS_ID = a.ADDRESS_ID;

-- left outer join: returns the matching records, and left table' none matching records
select c.CUSTOMER_ID,c.FIRST_NAME,
       c.LAST_NAME, a.ADDRESS, a.PHONE from CUSTOMER c
       left outer join ADDRESS a on c.ADDRESS_ID = a.ADDRESS_ID;

-- for not matching
-- let join  with where : returns the none matching records from left table
select c.CUSTOMER_ID,c.FIRST_NAME,
       c.LAST_NAME, a.ADDRESS, a.PHONE from CUSTOMER c
       left outer join ADDRESS a on c.ADDRESS_ID = a.ADDRESS_ID
        where a.ADDRESS_ID is null ;