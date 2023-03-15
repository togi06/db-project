SELECT * FROM COUNTRIES ;
--select means reads, * means all the columns
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

-- get only firstname from employees table
SELECT FIRST_NAME FROM EMPLOYEES;

--display address names
SELECT * FROM LOCATIONS;

--display city name
SELECT CITY FROM LOCATIONS;

--we can make multiple display..
SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES;

Select STREET_ADDRESS,POSTAL_CODE FROM LOCATIONS;

-- remove duplicates
SELECT distinct FIRST_NAME FROM EMPLOYEES;





