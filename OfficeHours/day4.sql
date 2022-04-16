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
-- 12. get me first name , start date, end date in same table
-- 13. create a table name laptops, with id, brand, color, price
-- 14. create table phones with id, brand, color, price
-- 15. insert laptops table below values
/*
 1. (1, 'hp' , 'black', 1500)
 2. (2, 'msi', 'grey', 1300)
 3. (3, 'dell', 'black', 1600)
 4. (4, 'hp', 'white', 1300)
 5. (5, 'macbook', 'white', 1800)
 */

-- 16. insert phones table belwo values
/*
    1. (1, 'samsung' , 'black', 700)
    2. (2, 'dell', 'grey', 1000)
    3. (3, 'msi', 'black', 800)
    4. (4, 'iphone', 'white', 1100)
 */
-- 17. update dell price to 1500
-- 18. delete macbook from table
-- 19. combine all brand names in one table( from laptops and phones)
-- 20. combine unique brand names in one table
-- 21. get me unique prices and sort them
-- 22. get me common colors for phones and laptops
-- 23. get me the colors only laptops have
-- 24. get me the brands only phones have