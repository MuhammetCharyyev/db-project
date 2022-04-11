select * from EMPLOYEES;

-- CASE WHEN STATEMENT TO CONDITIONALLY DISPLAY VALUES

-- Display Employees FIRST_NAME, SALARY , SALARY_GRADE
--- SALARY_GRADE Column should be below VALUES
-- WHEN SALARY > 8000  "ABOVE AVERAGE"
-- ELSE  "BELOW AVERAGE"

SELECT FIRST_NAME, SALARY ,
       CASE WHEN SALARY > 8000 THEN 'ABOVE AVERAGE'
            ELSE  'BELOW AVERAGE'
           END AS SALARY_GRADE
FROM EMPLOYEES ;

-- Display Employees FIRST_NAME, SALARY , SALARY_GRADE2
--- SALARY_GRADE Column should be below VALUES
-- WHEN SALARY > 20000  THEN "A"
-- WHEN SALARY BETWEEN 10000 AND 20000  THEN "B"
-- WHEN SALARY BETWEEN 5000 AND 10000  THEN "C"
-- ELSE "D"

SELECT FIRST_NAME, SALARY , CASE
                             WHEN SALARY > 20000  THEN 'A'
                             WHEN SALARY BETWEEN 10000 AND 20000  THEN 'B'
                             WHEN SALARY BETWEEN 5000 AND 10000  THEN 'C'
                             ELSE 'D'
END AS SALARY_GRADE2
FROM EMPLOYEES ;

--- DATE FUNCTION
-- FIND OUT EVERY EMPLOYEES HIRED BEFORE DATE 2002-08-16
--to_date accept 2 parameters:
--date string
--the format of date provided in previous parameter
select FIRST_NAME, HIRE_DATE
from EMPLOYEES
-- where HIRE_DATE< '2002-08-16';-> '' did not work with date
where HIRE_DATE< to_date('2002-08-16', 'yyyy-mm-dd');

--find out every employees hired between '2001-01-13' and '2006-01-03'
select FIRST_NAME, HIRE_DATE
from EMPLOYEES
where HIRE_DATE between to_date('2001-01-13', 'yyyy-mm-dd')
                and to_date('2006-01-03', 'yyyy-mm-dd');