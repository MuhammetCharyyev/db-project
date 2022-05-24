```SELECT *
FROM employees;

SELECT employee_id, first_name,last_name
FROM employees;


SELECT *
FROM employees
WHERE department = 'Sports';

SELECT *
FROM employees
WHERE department LIKE '%nit%';


SELECT *
FROM employees
WHERE department LIKE 'g_____';

SELECT *
FROM employees
WHERE department ILIKE 'g_____';

SELECT *
FROM employees
WHERE salary > 100000;

SELECT *
FROM employees
WHERE salary <= 100000;

-- show me first_name,last_name,department,salary
-- of the employees who is working in Clothing department and making more than 90000
SELECT first_name,last_name,department,salary
FROM employees
WHERE department = 'Clothing' OR salary >90000;

--show me all employees who is working in Automotive Garden Beauty and Books departments
SELECT *
FROM  employees
WHERE department = 'Garden' or department = 'Beauty' or department = 'Automotive' or department = 'Books';

SELECT *
FROM employees
WHERE department IN('Garden','Beauty','Automotive','Books');

--show me everything not belongs to Sports department

SELECT *
FROM employees
WHERE department != 'Sports';

SELECT *
FROM employees
WHERE department <> 'Sports';

SELECT *
FROM employees
WHERE NOT department = 'Sports';

SELECT *
FROM employees
WHERE email IS NULL;

SELECT *
FROM employees
WHERE email IS NOT NULL;

--employees first and last name who is making more than 80k less then 100k
SELECT *
FROM employees
WHERE salary BETWEEN 80000 AND 100000;

SELECT *
FROM employees
ORDER BY employee_id DESC;

--asc  a-z 0-9
--desc z-a 9-0

SELECT *
FROM employees
ORDER BY salary DESC;

--how to limit result display on the screen
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

--SOMETHING NEW HERE
SELECT *
FROM employees
ORDER BY salary DESC
FETCH FIRST 5 ROWS ONLY;

--how to get unique departments
SELECT DISTINCT department
FROM employees;

--how to rename column on the display
SELECT salary AS annual_salary
FROM employees;

--SOMETHING NEW HERE
--STRING Manipulation
SELECT UPPER(first_name), LOWER(last_name)
FROM  employees;

SELECT LENGTH(first_name),first_name
FROm employees;

--SOMETHING NEW HERE
SELECT TRIM('   Hello There    ');
SELECT LENGTH('   Hello There    ');
SELECT LENGTH(TRIM('   Hello There    '));

--create a full name and display
SELECT first_name||' '||employees.last_name as full_name
FROM employees;

--boolean values
SELECT first_name,salary,(salary>140000) as GreaterThan140k
FROm employees;

--SOMETHING NEW HERE
--substring(string,start_position,length)
SELECT SUBSTRING('this is test data',1,4) as test_data;
SELECT SUBSTRING('this is test data' FROM 1 FOR 4) as test_data;

--aggregate functions
SELECT MAX(salary)
FROM employees;

SELECT MIN(salary)
FROM employees;

SELECT AVG(salary)
FROM employees;

SELECT ROUND(AVG(salary),2)
FROM employees;

SELECT SUM(salary)
FROM employees;

SELECT COUNT(*)
FROM employees;

SELECT COUNT(email)
FROM employees;

SELECT MAX(salary)
FROM employees;

--170333

SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

SELECT *
FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

SELECT DISTINCT department
from employees;

--how many employees working in Pharmacy department
SELECT COUNT(*)
FROM employees
WHERE department = 'Pharmacy';

SELECT COUNT(*)
FROM employees
WHERE department = 'Games';

SELECT department,count(*),sum(salary),MIN(Salary)
FROM employees
GROUP BY department;

--list the departments where they have more than 40 employees
SELECT department,count(*)
FROM employees
WHERE salary >50000
GROUP BY department
HAVING count(*) >40;

--how to find duplicate names and how many times they repeat?
SELECT  first_name,count(*)
FROM employees
group by first_name
having count(*)>1;

select *
from employees;

--SOMETHING NEW HERE:
--find me duplicate email domains and how many times they repeat
SELECT count(*),SUBSTRING(email,POSITION('@' IN email)+1) as email_domain
from employees
where email is not null
group by email_domain
having count(*)>1
order by count(*) desc;

--SOMETHING NEW HERE:
SELECT first_name,salary,
       CASE
            WHEN salary<80000 THEN 'UNDER PAID'
            WHEN salary>=80000 THEN 'PAID WELL'
            ELSE 'UNPAID'
       END as category
FROM employees;