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



