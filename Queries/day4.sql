--find dept name and manager first name of each dept
--according to the dept table manager column comment
--manager_id is foreign key to employee_id of Employee column
--employees.employee_id = departments.manager_id
-- NOTE THAT COLUMN NAMES DOES NOT HAVE TO MATCH AS LONG AS RELATIONSHIP IS DEFINED
-- FACT : MANAGER_ID COLUMN OF DEPARTMENTS TABLE
--- IS THE EMPLOYEE_ID OF THAT MANAGER
select DEPARTMENTS.DEPARTMENT_NAME, EMPLOYEES.FIRST_NAME
from DEPARTMENTS
inner join EMPLOYEES on EMPLOYEES.EMPLOYEE_ID = DEPARTMENTS.MANAGER_ID;
--this is alias version
select d.DEPARTMENT_NAME, e.FIRST_NAME
from DEPARTMENTS d
inner join EMPLOYEES e  on e.EMPLOYEE_ID = d.MANAGER_ID;

--continue from above query, find manager first name of executive
select d.DEPARTMENT_NAME, e.FIRST_NAME
from DEPARTMENTS d
inner join EMPLOYEES e  on e.EMPLOYEE_ID = d.MANAGER_ID
where d.DEPARTMENT_NAME = 'Executive';

--continue from above query, display if dept_name start with A
--find dept name and manager first name of each dept
--where d.DEPARTMENT_NAME like 'A%'

--find how many countries in each region
--display region)name and country_count
select REGIONS.REGION_ID, count(COUNTRIES.COUNTRY_NAME) as "COUNTRY_COUNT"
from COUNTRIES
inner join REGIONS on COUNTRIES.REGION_ID = REGIONS.REGION_ID
group by REGIONS.REGION_ID;
