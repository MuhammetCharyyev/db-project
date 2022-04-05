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
--and yearly salary ->multiply by 12
--and weekly rate -> divide by 4
select FIRST_NAME, SALARY, SALARY - 2000 as "DECREASED_SALARY"
from EMPLOYEES;


