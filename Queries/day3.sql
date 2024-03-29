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

--display dept_name (depts) and city(locations)

select DEPARTMENTS.DEPARTMENT_NAME, LOCATIONS.CITY
from DEPARTMENTS
inner join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID;
--same result with renaming
select d.DEPARTMENT_NAME, l.CITY
from DEPARTMENTS d
inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID;

--display first name(employees) and dept_name(departments)
-- THEY ARE RELATED BY DEPARTMENT_ID

SELECT EMPLOYEES.FIRST_NAME, DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES
INNER JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID ;

--- INNER JOIN WILL RETURN THE DATA THAT MATCH FROM BOTH TABLE
--- IT'S RETURNING ONLY ROWS THAT HAS MATCHING DEPARTMENT_ID FROM BOTH TABLE
--- ANYTHING ELSE IS EXCLUDED
--- FOR EXAMPLE : KIMBERLY WITH NO DEPARTMENT ID
---               DEPARTMENTS WITH NO EMPLOYEES (MEANING NONE OF THE EMPLOYEES HAS THOSE DEPARTMENT_ID)
-- 106
SELECT e.FIRST_NAME, d.DEPARTMENT_NAME
FROM EMPLOYEES e
INNER JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID ;

-- WE WANT TO DISPLAY FIRST_NAME, DEPARTMENT_NAME
--- INCLUDING THOSE THAT DOES NOT HAVE MATCHING DEPARTMENT_ID
--- LIKE KIMBERLY HAS NULL DEPARTMENT ID BUT WE STILL WANT TO GET THAT DATA
--- 106
SELECT e.FIRST_NAME, d.DEPARTMENT_NAME
FROM EMPLOYEES e
LEFT OUTER JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID ;

--- -- WE WANT TO DISPLAY FIRST_NAME, DEPARTMENT_NAME
--- INCLUDING THOSE DEPARTMENTS THAT DOES NOT HAVE ANY MATCHING EMPLOYEES
--- 122
SELECT e.FIRST_NAME, d.DEPARTMENT_NAME
FROM EMPLOYEES e
RIGHT OUTER JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID ;

--- -- WE WANT TO DISPLAY FIRST_NAME, DEPARTMENT_NAME
--- INCLUDING THOSE THAT DOES NOT HAVE MATCHING DEPARTMENT_ID
--- INCLUDING THOSE DEPARTMENTS THAT DOES NOT HAVE ANY MATCHING EMPLOYEES
--- 123
SELECT e.FIRST_NAME, d.DEPARTMENT_NAME
FROM EMPLOYEES e
FULL OUTER JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID ;

--- FACT : ALL DEPARTMENTS ARE LOCATED IN 7 DISTINCT CITY
--- FACT : THERE ARE 27 CITY IN LOCATIONS TABLE MEANING 16 OF THEM HAS NO DEPARTMENTS
---  DISPLAY ALL DEPARTMENT_NAME (DEPARTMENTS) AND CITY(LOCATIONS)
--- INCLUDING THOSE CITY WITH NO DEPARTMENT IN IT
-- 43
select d.DEPARTMENT_NAME, l.CITY
from DEPARTMENTS d
inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID;

--Display first name and job_title
select e.FIRST_NAME, j.JOB_TITLE
from EMPLOYEES e
inner join JOBS j on j.JOB_ID = e.JOB_ID;

--Display first name(employees) and job_title(jobs) and dept_name(departments)
select e.FIRST_NAME, j.JOB_TITLE, d.DEPARTMENT_NAME
from EMPLOYEES e
inner join JOBS j on j.JOB_ID = e.JOB_ID
inner join DEPARTMENTS d on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

--this is the no alias version of same query
select EMPLOYEES.FIRST_NAME, JOBS.JOB_TITLE, DEPARTMENTS.DEPARTMENT_NAME
from EMPLOYEES
inner join JOBS  on EMPLOYEES.JOB_ID = JOBS.JOB_ID
inner join DEPARTMENTS  on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

--display city(locations), country name(Countries), region name(regions)
select l.CITY, c.COUNTRY_NAME, r.REGION_NAME
from LOCATIONS l
inner join COUNTRIES c on c.COUNTRY_ID = l.COUNTRY_ID
inner join REGIONS r on r.REGION_ID = c.REGION_ID;


SELECT  d.DEPARTMENT_NAME, count (e.FIRST_NAME)
FROM EMPLOYEES e
FULL OUTER JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
group by d.DEPARTMENT_NAME;