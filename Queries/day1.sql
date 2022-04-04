--this is how to write comments
/*
 multiline comments
 */
--SQL space and case insensitive
select * from REGIONS;
--'select' means select 'from' the data base
--star '*' means select all. here it means all columns

select * from COUNTRIES;
--semi-colon is mandatory
--if you want to run the second statement you need to click on it and run

select * from LOCATIONS;

select * from DEPARTMENTS;

select * from JOBS;

select * from JOB_HISTORY;

select * from EMPLOYEES;
--i want to select only some column from the table:
select FIRST_NAME
from EMPLOYEES;--will print only first name column from Empl

--if you want to select more than 1 column it should be separated by comma ,
select FIRST_NAME, LAST_NAME, EMAIL
from EMPLOYEES;

select DEPARTMENT_ID, DEPARTMENT_NAME
from DEPARTMENTS;

--getting unique value from result
--for ex, only get first name from employee table

select distinct FIRST_NAME--distinct means remove duplicates
from EMPLOYEES;

--get unique last name
select distinct LAST_NAME
from EMPLOYEES;

--getting unique last and first name
--looking for names with unique full name
select distinct FIRST_NAME, LAST_NAME
from EMPLOYEES;

--restricting rows in the result using 'where':
--operators: =, >, >=, <, <=, !=, <>
--logic operators: AND, OR

--display employee info for employee first name 'Ellen'
select * from EMPLOYEES
where FIRST_NAME = 'Ellen';
--single quote for Strings, value is case sensitive

--display employee full name info with salary 11000
select  FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where SALARY = 11000;

--display employee with salary 4800 and first name David
select  FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where SALARY = 4800 AND FIRST_NAME = 'David';
--if you highlight some and push run it will run only highlighted

--display employee with salary 4800 OR first name David
select  FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where SALARY = 4800 OR FIRST_NAME = 'David';

--display employees with salary more 5000 and less 12000
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where SALARY > 5000 AND SALARY< 12000;

--display employees that have JOB_ID of:
--AD_VP
--AD_ASST
--FI_ACCOUNT
--AC_ACCOUNT
SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'AD_VP' OR JOB_ID = 'AD_ASST' OR
      JOB_ID = 'FI_ACCOUNT' OR JOB_ID='AC_ACCOUNT' ;


