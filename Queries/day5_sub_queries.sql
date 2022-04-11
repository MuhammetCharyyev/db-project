               -- Sub-Query : Query inside another query
--find out max salary from employees
select max(SALARY)
from EMPLOYEES;

select FIRST_NAME
from EMPLOYEES
where SALARY = 24000;

-- WE HARD CODED THE VALUE OF 24000 WE GOT FROM FIST QUERY INTO SECOND QUERY
-- NOW JUST LIKE FUNCTION CALL WE CAN USE THIS QUERY
-- AS A BLOCK OF QUERY THAT GENERATE MAX SALARY ANYTIME
-- SO EVEN IF MAX SALARY CHANGE AT SOME POINT WE WOULD GET CORRECT RESULT
select FIRST_NAME
from EMPLOYEES
where SALARY = (select max(SALARY)
                from EMPLOYEES);

--find out min salary from employees
select FIRST_NAME, SALARY
from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);

--find out employee that make more than avg salary
select avg(SALARY) from EMPLOYEES;

select FIRST_NAME, SALARY
from EMPLOYEES
where SALARY > (select avg(SALARY) from EMPLOYEES);

--display all empl if salary is not 24000
select  FIRST_NAME, SALARY
from EMPLOYEES
where SALARY != (select max(SALARY)
                 from EMPLOYEES);
--and find max (second max salary)
select  max(SALARY)
from EMPLOYEES
where SALARY != (select max(SALARY)
                 from EMPLOYEES);
--find 3d max salary
select  max(SALARY)
from EMPLOYEES
where SALARY < (select  max(SALARY)
                from EMPLOYEES
                where SALARY != (select max(SALARY) from EMPLOYEES));
               --filter all salary less than 2nd max
               --just replace with above query

--find first_name of empl who works in Executive Dept

--find the dept_id of executive
select DEPARTMENT_ID from DEPARTMENTS
where DEPARTMENT_NAME = 'Executive';

select FIRST_NAME from EMPLOYEES
where DEPARTMENT_ID = 90;

--now combine them
select FIRST_NAME from EMPLOYEES
where DEPARTMENT_ID = (select DEPARTMENT_ID from DEPARTMENTS
                       where DEPARTMENT_NAME = 'Executive');

                --find first_name of empl
                --who works in Executive and Admin Depts

-- FIND OUT THE DEPARTMENT_ID OF  Executive
-- AND Administration Department
select DEPARTMENT_ID from DEPARTMENTS
where DEPARTMENT_NAME in ('Executive', 'Administration');

--find first_name of empl
--who works in dept_id 90 and 10
select FIRST_NAME from EMPLOYEES
where DEPARTMENT_ID in (10,90);

--combine results of above both
select FIRST_NAME from EMPLOYEES
where DEPARTMENT_ID in (select DEPARTMENT_ID from DEPARTMENTS
                        where DEPARTMENT_NAME in ('Executive', 'Administration'));

-- result of Subquery can alos be use as table
--for example select * from  (Subquery goes here)
select FIRST_NAME, LAST_NAME, FIRST_NAME||' ' ||LAST_NAME as FULL_NAME
from EMPLOYEES
-- WHERE FULL_NAME = 'EllenAbel' WE CAN NOT USE ALIAS IN CONDITION
;

select *
from (select FIRST_NAME,  FIRST_NAME||' ' ||LAST_NAME as FULL_NAME
      from EMPLOYEES)
where FULL_NAME = 'Ellen Abel'; --we can select from created table

--find employee count of that dept with max quantity of empls
select DEPARTMENT_ID, count(*) as EMPLOYEE_COUNT
from EMPLOYEES
group by DEPARTMENT_ID;

select max(EMPLOYEE_COUNT)
from (select DEPARTMENT_ID, count(*) as EMPLOYEE_COUNT
      from EMPLOYEES
      group by DEPARTMENT_ID);

--find dept_id of that dept with max quantity of empls
select DEPARTMENT_ID
from (select DEPARTMENT_ID, count(*) as EMPLOYEE_COUNT
      from EMPLOYEES
      group by DEPARTMENT_ID);

--dense_rank function that fall into category of analytical functions
-- dense_rank() over(order by salary)
select FIRST_NAME, SALARY,
       dense_rank() over (order by salary desc) as SALARY_RANK
from EMPLOYEES;





