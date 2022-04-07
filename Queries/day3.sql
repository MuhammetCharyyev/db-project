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

SELECT EMPLOYEES.FIRST_NAME
FROM EMPLOYEES ;

SELECT bla.FIRST_NAME
FROM EMPLOYEES bla;

                               --SQL JOIN--

--used to get data from 2 or more tables that related to each other
--primary key and foreign relationship

--INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL OUTER JOIN

-- IN ORDER TO JOIN TWO TABLES THAT HAS RELATIONSHIP
-- SELECT DESIRED COLUMNS FROM BOTH TABLES
-- FROM TABLE 1
-- INNER JOIN TABLE 2 ON THE COMMON COLUMN


select COUNTRIES.COUNTRY_NAME, REGIONS.REGION_NAME
from COUNTRIES
inner join REGIONS on COUNTRIES.REGION_ID = REGIONS.REGION_ID;

--we can use alias for table to make above query slightly more readable
--nick names are followed by space and letter or word
--you can use nickname to select columns
--just like you did in java obj.VariableName
select c.COUNTRY_NAME, r.REGION_NAME
from COUNTRIES c
inner join REGIONS r on c.REGION_ID = r.REGION_ID;
--we simply rename COUNTRIES to 'c' and REGIONS to 'r'

--find out City (Location) and Country_name (Countries)
select LOCATIONS.CITY, COUNTRIES.COUNTRY_NAME
from LOCATIONS
inner join COUNTRIES on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;

select l.CITY, c.COUNTRY_NAME
from LOCATIONS l
inner join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID;
--renaming to simple 'l' and 'c'

select l.CITY, c.COUNTRY_NAME
from COUNTRIES c
inner join LOCATIONS l on l.COUNTRY_ID = c.COUNTRY_ID;
--change table but same result, left table is going first and right is going last


