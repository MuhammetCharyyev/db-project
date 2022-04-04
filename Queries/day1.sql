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

--range checking using BETWEEN ... AND
select * from EMPLOYEES
where SALARY between 5000 and 12000;

--display employees that have JOB_ID of:
--AD_VP
--AD_ASST
--FI_ACCOUNT
--AC_ACCOUNT
SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'AD_VP' OR JOB_ID = 'AD_ASST' OR
      JOB_ID = 'FI_ACCOUNT' OR JOB_ID='AC_ACCOUNT' ;

--using keyword IN for multiply possible value of same column
SELECT FIRST_NAME, JOB_ID from EMPLOYEES
WHERE JOB_ID IN ('AD_VP','AD_ASST','FI_ACCOUNT','AC_ACCOUNT') ;

        --using not equal != or <> -> meaning the same:
--find all regions except with REGION_ID of 1
select * from REGIONS
where REGION_ID !=1;-- or REGION_ID <>1

select *from REGIONS
where REGION_NAME <> 'Americas';

       --for BETWEEN AND -> NOT BETWEEN .. AND
--display employee DOES not make more 5000 and less 12000
select FIRST_NAME, SALARY from EMPLOYEES
where SALARY not between 5000 and 12000;

        --for IN -> NOT IN
--display employees that DOES not have JOB_ID of any:
--AD_VP--AD_ASST--FI_ACCOUNT--AC_ACCOUNT
select FIRST_NAME, JOB_ID
from EMPLOYEES
where JOB_ID not in ('AD_VP','AD_ASST','FI_ACCOUNT','AC_ACCOUNT');

     --how to use NULL value in condition
--find depts with null man_id (does NOT have man_id)
select * from DEPARTMENTS
where MANAGER_ID is null; --not '=' but 'is'

--find depts with NOT null man_id (does have man_id)
select * from DEPARTMENTS
where MANAGER_ID is not null; -- not '!=' but 'is not'


--sorting in ascending order (low to high)
--or descending (high to low)
--order by clause can be used to order the result of query
--it used either column name or column index
--it must be the last part of statement
-- ASC for (LOW TO HIGH ) by default ,
-- DESC  (HIGH TO LOW )

-- Display Employee FIRST_NAME and LAST_NAME and Salary
-- try to sort by below criteria separately
-- FIRST_NAME ASC
-- Salary DESC
-- LAST_NAME DESC
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
order by FIRST_NAME;-- or 'order by FIRST_NAME asc
--order by SALARY desc --descending order
--order by LAST_NAME desc
--order by 1 desc --this means sort of result by first column, find by index num
-- in SQL index starting from 1 not 0


         --what about the partial search?
--use LIKE AND % (Wild Card)
-- '%' can represent 0 or more character of any kind
-- '_' can represent exactly one character of any kind

--display all first name starting with letter 'A' in Employee
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like 'A%';-- % after letter will find starting with this letter

--display all first name ending with letter 'a' in Employee
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '%a'; -- % before letter will find ending with this letter

--display all first name that contains letter 'a'
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '%a%';-- % before and after letter will find any word with this letter

