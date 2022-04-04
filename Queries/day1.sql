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


