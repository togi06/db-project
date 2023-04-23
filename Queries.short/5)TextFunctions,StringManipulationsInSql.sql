/*
 Text Functions: String manipulations
        1. concatenation operator: ||
        2. Concat(Value1, Value2)
        3. Upper(Value)
        4. Lower(Value)
        5. INITCAP(Value)
        6. Lenght()
        7. replace(columName, oldValue, newValue)
        8. substr(columName, Beg index, end index)
        9. Trim(Value)

            Only used for display option, does not modify  the table

 */
--1. concatenation operator: ||
-- || bu işaretten sonra istediğin bilgiye String olarak istediğini  görünüş olarak ekleyebiliyorsun!!
select * from EMPLOYEES;
 select  EMAIL || '@gmail.com' from EMPLOYEES;
 select  EMAIL || '@hotmail.com' from EMPLOYEES;

select  FIRST_NAME || LAST_NAME from  EMPLOYEES;
select  FIRST_NAME || ' ' || LAST_NAME from  EMPLOYEES;


--2. Concat(Value1, Value2)
--  concatenation operator ile concat birbirine benziyor ama arada çok ufak bir nüans var
select EMAIL from EMPLOYEES;
select  concat( EMAIL,'@gmail.com' ) from  EMPLOYEES;
select  concat( concat(FIRST_NAME, ' ') , LAST_NAME) from   EMPLOYEES;
select concat( concat( concat(FIRST_NAME, ' ') , LAST_NAME), ' ' || EMAIL || 'gmail.com')  from   EMPLOYEES;

-- 3. Upper(Value)
select * from EMPLOYEES;
select FIRST_NAME from EMPLOYEES;
select UPPER( FIRST_NAME)  from EMPLOYEES;

--4. Lower(Value)
select * from EMPLOYEES;
select LAST_NAME from  EMPLOYEES;
select LOWER(LAST_NAME) from  EMPLOYEES;

-- 5. INITCAP(Value) - ilk harfi büyütüyor
select * from EMPLOYEES;
select EMAIL from EMPLOYEES;
select initcap(EMAIL) from  EMPLOYEES;

-- 6. Lenght()

select * from EMPLOYEES;

select  PHONE_NUMBER from EMPLOYEES;
select length(PHONE_NUMBER) from  EMPLOYEES;
select  PHONE_NUMBER, length(PHONE_NUMBER) from  EMPLOYEES;
select length(FIRST_NAME) from  EMPLOYEES;
select length(FIRST_NAME || LAST_NAME) from  EMPLOYEES;

-- 7. replace(columName, oldValue, newValue)

select FIRST_NAME from EMPLOYEES;
select replace(FIRST_NAME, 'e', 'a' )from EMPLOYEES;
select replace(FIRST_NAME, 'e', 'E' )from EMPLOYEES;

--8. substr(columName, Beg index, end index)
select FIRST_NAME from EMPLOYEES;
select FIRST_NAME,substr(FIRST_NAME,0, 1) from EMPLOYEES;
select FIRST_NAME,substr(FIRST_NAME,0, 2) from EMPLOYEES;
select FIRST_NAME,substr(FIRST_NAME,0, 2), LAST_NAME, substr(LAST_NAME, 0,2) from EMPLOYEES;

select substr(FIRST_NAME,0, 1) || substr(LAST_NAME, 0,1) from EMPLOYEES;
select substr(FIRST_NAME,0, 1) || ' ' || substr(LAST_NAME, 0,1) from EMPLOYEES;

--9. Trim(Value)
-- gereksiz boşlukları alıyor
select * from  EMPLOYEES;
select FIRST_NAME from  EMPLOYEES;
select concat( '    ', FIRST_NAME) from  EMPLOYEES;
select trim(concat( '    ', FIRST_NAME)) from  EMPLOYEES;

