-- Display all FIRST_NAME that has letter a in second character
--- '_a%'
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '_a%';

--1.13 Display Unique LOCATION_ID , this is from tasks
--from depts table
select distinct LOCATION_ID
from DEPARTMENTS;

--from Location table count how many locations we have
select count(*)
from LOCATIONS;

--2.4 Display All Departments with DEPARTMENT_NAME Contains IT
-- exclude the exact match department name IT3
select * from DEPARTMENTS
where DEPARTMENT_NAME like '%IT%';

--   3.4 Display the Employee Count for EACH FIRST_NAME (yeah and observe what you got)
-- Filter the grouped result to only display if the count is more than 1
--i.e. display names that are more than one mentioning in the list
select FIRST_NAME, count(*)
from EMPLOYEES
group by FIRST_NAME
having count(*) >1;

                               --SQL JOIN--

