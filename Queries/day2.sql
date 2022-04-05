       --what about the partial search?
--use LIKE AND % (Wild Card)
-- '%' can represent 0 or more character of any kind
-- '_' can represent exactly one character of any kind

/*
     'D%'  -- anything that starts with D
            David , Danny, Dog
     '%d'  -- anything that end with d
            Sid , Bid , Kid , Dad
     '%d%' -- anything that contains d
            Aladdin, Cassandra, Adam , Brandon
            Sid , Bid , Kid , Dad
            david , danny, dog
      'D%a' -- anything starts with D and end with a
            Diana, Donna , Damla , Daria
      'S%e%n' -- any start with S end with n
                --and has e something in the middle
            Steven , Stephen, Selen , Serkan , Sebastian

      'T_'  -- Starts with T and followed by
                exactly one character of any kind
            Tj , TD , Ta , T! , TV , T2
      '_a_' -- starts with any one character, followed by a
             and followed by any one character
            Dad , Man  , Fat, Tab , Gap , Mad
 */

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'D%';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '%d';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'D%a';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'S%e%n';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'T_';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '_a_';

--try find phone num by 'wild card', as it's stored String
select PHONE_NUMBER from EMPLOYEES
where PHONE_NUMBER like '515%';

--find start with 515 -- 21
-- contains 121
select PHONE_NUMBER from EMPLOYEES
where PHONE_NUMBER like '%.121.%';

        --YOU CAN OPTIONALY GIVE A NICKNAME FOR YOUR COLUMN (for view only,
-- but not for changing purpose as you dont have rights to change database)
-- USING THE KEYWORD AS RIGHT AFTER COLUMN NAME
-- and PROVIDE NICKNAME Either without " " if single word
-- and USE "" IF MORE THAN ONE WORD   AS "MORE THAN ONE"

--display first names. salary in Employees
--modify the column name for salary in result to Money
select FIRST_NAME, SALARY as money--change the output of 'salary' to 'money'
from EMPLOYEES;

--display first names. last names in Employees
--modify the column name for AS BELOW
--FIRST_NAME -> GIVEN_NAME, LAST_NAME ->FAMILY_NAME
select FIRST_NAME as GIVEN_NAME, LAST_NAME as FAMILY_NAME
from EMPLOYEES;
--FIRST_NAME -> GIVEN NAME, LAST_NAME ->FAMILY NAME
select FIRST_NAME as "GIVEN NAME", LAST_NAME as "FAMILY NAME"
from EMPLOYEES;

              --concatenation in SQL use double || (this is not OR)
--display FIRST_NAME, LAST_NAME -> FULL_NAME
select FIRST_NAME, LAST_NAME, FIRST_NAME || ' ' || LAST_NAME as "FULL_NAME"
from EMPLOYEES;

              --arithmetic operations: + - * /
--display name and salary and increased salary after 5000 raise
select FIRST_NAME, SALARY, SALARY + 5000 as "ICREASED_SALARY"
from EMPLOYEES;
--display name and salary and decreased salary after 2000 cut
select FIRST_NAME, SALARY, SALARY - 2000 as "DECREASED_SALARY"
from EMPLOYEES;
--and yearly salary ->multiply by 12
select FIRST_NAME, SALARY, SALARY * 12 as "YEARLY_SALARY"
from EMPLOYEES;
--and weekly rate -> divide by 4
select FIRST_NAME, SALARY, SALARY / 4 as "WEEKLY_SALARY"
from EMPLOYEES;
--summary table
select FIRST_NAME, SALARY,
       SALARY + 5000 as "ICREASED_SALARY",
       SALARY - 2000 as "DECREASED_SALARY",
       SALARY * 12 as "YEARLY_SALARY",
       SALARY / 4 as "WEEKLY_SALARY"
from EMPLOYEES;

              --SQL built-in functions:
--reusable code that wrapped into function for common tasks
--like ruonding number, getting length of string and more
--single row function: affects each row and return same number of row
--FEW TEXT FUNCTIONS:
--upper; accept one parameter (column name) and return upper case
--lower; accept one parameter (column name) and return lower case
--length; return with length

--display first name and upper, lower and length of first name
select FIRST_NAME,
       upper(FIRST_NAME) as "UPPERCASE_NAME",
       lower(FIRST_NAME) as "LOWERCASE_NAME",
       length(FIRST_NAME) as "CHAR_COUNT"
from EMPLOYEES;

--display all first names and chars count
--display only if chars count exactly 5
select FIRST_NAME, length(FIRST_NAME)
from EMPLOYEES
where length(FIRST_NAME) = 5;

-- ONLY DISPLAY IF FIRST NAME CHARACTER COUNT IS MORE THAN 10
select FIRST_NAME, length(FIRST_NAME)
from EMPLOYEES
where length(FIRST_NAME) > 10;
-- ONLY DISPLAY IF FIRST NAME CHARACTER COUNT BETWEEN 7-9
select FIRST_NAME, length(FIRST_NAME)
from EMPLOYEES
where length(FIRST_NAME) between 7 and 9;
-- ONLY DISPLAY IF FIRST NAME CHARACTER COUNT NOT BETWEEN 5-10
select FIRST_NAME, length(FIRST_NAME)
from EMPLOYEES
where length(FIRST_NAME) not between 5 and 10;
-- ONLY DISPLAY IF FIRST NAME CHARACTER COUNT IS 2 OR 9 OR 11
select FIRST_NAME, length(FIRST_NAME)
from EMPLOYEES
where length(FIRST_NAME) in (2, 9, 11);

--display first names that contains 'd' or 'D'
--transform everything to lower or upper case and then search
select FIRST_NAME, upper(FIRST_NAME)
from EMPLOYEES
where upper(FIRST_NAME) like '%D%';

--you can use single row anywhere
--including in selecting column list, conditions, order by
select FIRST_NAME
from EMPLOYEES
order by  length(FIRST_NAME) desc ;
--this will return with the list starting from less letters to larger
--or add 'desc' in opposite order from large to smaller

                 -- NUMBER FUNCTIONS:
--round (decimal number here) -> rounder nym
--round (decimal number, digit you wanna keep) - round num with desired digits

---ROUND (DECIMAL NUMBER HERE, DIGIT YOU WANNA KEEP)  -->> ROUNDED NUMBER WITH DESIRED DIGIT
--      ROUND(3.4444444 , 1) = > 3.4
--      ROUND(3.4444444 , 2) = > 3.44
--      ROUND(3.4444444 , 3) = > 3.444
--      ROUND(3.4444444 , 4) = > 3.4444
--      ROUND(100, 4) => 100

--display salary and daily salary of employee
--indicate how many digits you want after dot
select SALARY,
       round(SALARY/30),
       round(SALARY/30, 2)
from EMPLOYEES;

       --MULTI ROW FUNCTION | GROUP FUNCTIONS | AGGREGATE FUNCTIONS
--count, max, min, sun, avg
--count(*) and count(FIRST_NAME) will count the same q-ty of first names
--you can use 'count' either with * or column name
--will return with non-null row only
select count(*), count(FIRST_NAME)
from EMPLOYEES;

--commission pct is percentage value
--we have only 35 with commission_pct value not null
select count(COMMISSION_PCT)
from EMPLOYEES;

--get the employee with dept_id is 90
select count(*)
from EMPLOYEES
where DEPARTMENT_ID =90;

               --display MAX salary employee
select max(SALARY)
from EMPLOYEES;

 --display MAX salary employee but exclude the biggest one
select SALARY
from EMPLOYEES
where SALARY != 24000;

--display MAX salary after the biggest one
select max(SALARY)
from EMPLOYEES
where SALARY <> 24000;

            --display MIN salary employee
select min(SALARY)
from EMPLOYEES;

--display MIN salary employee excluding the smallest
select MIN(SALARY)
from EMPLOYEES
where SALARY != 2100;

                --get the sum of all employees
--get a sum of salary of employees from dept 90
select sum(SALARY)
from EMPLOYEES
where DEPARTMENT_ID =90;

        --display average salary of all employee
select avg(SALARY)
from EMPLOYEES;

--rounding to 2 digits
select round(avg(SALARY), 2)
from EMPLOYEES;

                  --SUMMARIZE, all in one
select count(*) as "EMPLOYEE COUNT",
       max(SALARY) as "HIGHEST SALARY",
       min(SALARY) as "LOWEST SALARY",
       sum(SALARY) as "SUM OF ALL SALARY",
       avg(SALARY) as "AVERAGE SALARY"
from EMPLOYEES;

                     --GROUP BY
-- can be used along with multi-row (aggregate, group)
--to generate result per group instead of whole table
-- IT CAN ONLY BE USED ALONG WITH MULTI-ROW FUNCTIONS
-- CAN NOT BE USED BY ITSELF
SELECT MAX(SALARY)
FROM EMPLOYEES ;

--display count of employees in each dept
select count(*)
from EMPLOYEES
group by DEPARTMENT_ID;

select DEPARTMENT_ID,
       count(*) as "DEP_EMP_COUNT"
from EMPLOYEES
group by DEPARTMENT_ID;

--display count of employee in each job_id
SELECT JOB_ID,
         COUNT(*) AS "JOBD_EMP_COUNT"
FROM EMPLOYEES
GROUP BY JOB_ID;

--display max salary of each dept
select DEPARTMENT_ID, max(SALARY) as "MAX_SALARY"
from EMPLOYEES
group by DEPARTMENT_ID;
--display min salary of each dept
select DEPARTMENT_ID, min(SALARY) as "MIN_SALARY"
from EMPLOYEES
group by DEPARTMENT_ID;
--display sum salary of each dept
select DEPARTMENT_ID, sum(SALARY) as "SUM_SALARY"
from EMPLOYEES
group by DEPARTMENT_ID;
--display avg salary of each dept
select DEPARTMENT_ID, round(avg(SALARY)) as "AVG_SALARY"
from EMPLOYEES
group by DEPARTMENT_ID;

--display count of countries in each region
select REGION_ID, count(*) as "NUMBER_OF_COUNTRIES"
from COUNTRIES
group by REGION_ID;

--display count of depts in each location_id

             --HAVING
--can be used after 'group by' filter
--already combined result further more
--you can only use HAVING if using aggregate functions in condition
--for example if count of employees in each dept more than 10


--display count of employees in each dept
--only display if the count are more than 10
select DEPARTMENT_ID,
       count(*) as "DEP_EMP_COUNT"
from EMPLOYEES
group by DEPARTMENT_ID
having count(*) >10;

--display max salary in each dept if the dept max salary is more 10000
select DEPARTMENT_ID, max(SALARY)
from EMPLOYEES
group by DEPARTMENT_ID
having max(SALARY) > 10000;

--display max salary in each dept if dept_id salary is not 100
select DEPARTMENT_ID, max(SALARY)
from EMPLOYEES
where DEPARTMENT_ID !=100
group by DEPARTMENT_ID
--having DEPARTMENT_ID !=100
;
--do not use WHERE with filtered results: max, min, avg, count etc.






