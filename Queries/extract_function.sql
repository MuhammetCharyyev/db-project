select HIRE_DATE from EMPLOYEES;

-- EXTRACT FUNCTION IS A SINGLE ROW FUNCTION
-- THAT CAN EXTRACT ANY PART OF DATE TIME COLUMN
-- LIKE YEAR , MONTH , DAY , HOUR , MINUTE, SECOND

-- extract the year from hire_date
select HIRE_DATE, extract (year from HIRE_DATE) as HIRED_YEAR
from EMPLOYEES;

-- select month from hire_date
select HIRE_DATE, extract (month from HIRE_DATE) as HIRED_MONTH
from EMPLOYEES;

-- select day from hire_date
select HIRE_DATE, extract (day from HIRE_DATE) as HIRED_DAY
from EMPLOYEES;

-- find all employee hired in 2008
select FIRST_NAME, HIRE_DATE, extract(year from HIRE_DATE) as HIRED_YEAR
from EMPLOYEES
where extract(year from HIRE_DATE) = 2008;

-- find all employee hired in year 2001 - 2003
select FIRST_NAME, HIRE_DATE, extract(year from HIRE_DATE) as HIRED_YEAR
from EMPLOYEES
where extract(year from HIRE_DATE) between 2001 and 2003;

-- find how many people are hired in each year
-- optional filter the result if the count is more than 15
select extract(year from HIRE_DATE) as HIRED_YEAR, count(*) as EMPLOYEE_COUNT
from EMPLOYEES
group by extract(year from HIRE_DATE)
having count(*) >15
ORDER BY 1; -- ORDER BY FIRST COLUMN IN SELECT STATEMENT