-- 1. get me first 10 result of first_name and job_id.
select FIRST_NAME, JOB_ID from EMPLOYEES
where ROWNUM <=20;

-- 2. get me all employees whose salary is lower than average
select FIRST_NAME, SALARY from EMPLOYEES
where SALARY < (select avg(SALARY) from EMPLOYEES);

-- 3. get me those departments whose employees more than department 80
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID = 80;

select DEPARTMENT_ID from EMPLOYEES
group by DEPARTMENT_ID
having count(DEPARTMENT_ID) > (select count(DEPARTMENT_ID)from EMPLOYEES
                               where DEPARTMENT_ID = 100);

-- 4. get me those employees who is older than any IT programmer in the company
-- first find the oldest hired IT programmer:
select min(HIRE_DATE) from EMPLOYEES
where JOB_ID = 'IT_PROG';
-- then find name and hire date of all empl who is older by hiring
select FIRST_NAME, HIRE_DATE from EMPLOYEES
where HIRE_DATE < (select min(HIRE_DATE) from EMPLOYEES
                   where JOB_ID = 'IT_PROG');

-- 5. get me first name and department name in same table
-- combine 2 tables by common column department_id
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES
join DEPARTMENTS on DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID;

-- 6. get me job id and manager id in one table
select JOB_ID, DEPARTMENTS.MANAGER_ID
from EMPLOYEES
inner join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

-- 7. get me department names and end date( if any employee quit)
-- combine all information from left table to the right, but if info from right one
-- is not matching to left then it will be not joined
select DEPARTMENT_NAME, END_DATE from DEPARTMENTS
left outer join JOB_HISTORY on DEPARTMENTS.DEPARTMENT_ID = JOB_HISTORY.DEPARTMENT_ID;

-- 8. get me job id and job title together
select EMPLOYEES.JOB_ID, JOB_TITLE from EMPLOYEES
left outer join JOBS
on EMPLOYEES.JOB_ID = JOBS.JOB_ID;

-- 9. get me first name who left the company
select FIRST_NAME, END_DATE from EMPLOYEES
right outer join JOB_HISTORY
on EMPLOYEES.EMPLOYEE_ID = JOB_HISTORY.EMPLOYEE_ID;

-- 10. get me first name and job title for those whose salary is equal
-- to max salary of that job  title
select FIRST_NAME, SALARY, JOB_TITLE, MAX_SALARY from EMPLOYEES
right outer join JOBS on EMPLOYEES.SALARY = JOBS.MAX_SALARY;

-- 11.get me department name, city in same table
select DEPARTMENT_NAME, CITY
from DEPARTMENTS
full outer join LOCATIONS  on LOCATIONS.LOCATION_ID = DEPARTMENTS.LOCATION_ID;

-- 12. get me first name , start date, end date in same table
select FIRST_NAME, START_DATE, END_DATE
from EMPLOYEES
full join JOB_HISTORY on EMPLOYEES.EMPLOYEE_ID = JOB_HISTORY.EMPLOYEE_ID;

-- 13. create a table name laptops, with id, brand, color, price
CREATE TABLE LAPTOPS
(   ID    integer primary key,
    brand VARCHAR(25),
    color VARCHAR(25),
    Price integer );

select * from LAPTOPS;

-- 14. create table phones with id, brand, color, price
create table phones(id_number integer primary key ,
                       brand varchar(25),
                       color varchar(25),
                       price integer);

-- 15. insert laptops table below values
/*
 1. (1, 'hp' , 'black', 1500)
 2. (2, 'msi', 'grey', 1300)
 3. (3, 'dell', 'black', 1600)
 4. (4, 'hp', 'white', 1300)
 5. (5, 'macbook', 'white', 1800)
 */
insert into laptops values (1, 'hp', 'black', 1500);
insert into laptops values (2, 'msi', 'grey', 1300);
insert into laptops values (3, 'dell', 'red', 1600);
insert into laptops values (4, 'hp', 'white', 1300);
insert into laptops values (5, 'macbook', 'white', 1800);

-- 16. insert phones table belwo values
/*
    1. (1, 'samsung' , 'black', 700)
    2. (2, 'dell', 'grey', 1000)
    3. (3, 'msi', 'black', 800)
    4. (4, 'iphone', 'white', 1100)
 */
insert into phones values (1, 'samsung', 'black', 700);
insert into phones values (2, 'dell', 'grey', 1000);
insert into phones values (3, 'msi', 'black', 800);
insert into phones values (4, 'iphone', 'white', 1100);

-- 17. update dell price to 1500
update laptops
set price = 1500
where ID = 3;

select * from laptops;

-- 18. delete macbook from table
delete  from laptops
where ID = 5;

-- 19. combine all brand names in one table( from laptops and phones)
select brand from laptops
union select brand from  PHONES;

-- 20. combine unique brand names in one table
select brand , color from LAPTOPS
union all select brand from  PHONES;

-- 21. get me unique prices and sort them
select price from LAPTOPS
union  select price from PHONES;

-- 22. get me common colors for phones and laptops
select color from LAPTOPS
intersect
select color from PHONES;

-- 23. get me the colors only laptops have
select color from LAPTOPS
minus select color from PHONES;

select color from LAPTOPS;
select COLOR from PHONES;

-- 24. get me the brands only phones have
select brand from PHONES
minus
select brand from LAPTOPS
