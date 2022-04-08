/**
-- LIST 1  : APPLE , EGG , MILK , PINEAPPLE, BREAD
-- LIST 2  : MILK , BREAD , OIL , WALNUT
-- UNION ALL -->> APPLE , EGG , MILK , PINEAPPLE, BREAD , MILK , BREAD , OIL , WALNUT
-- UNION     -->> APPLE , BREAD , EGG, MILK, PINEAPPLE , OIL , WALNUT
-- LIST 1  MINUS LIST 2
 -- LIST 2 HERE IS NO-NO LIST
  -- MINUS   --> APPLE , EGG , PINEAPPLE
-- LIST2 MINUS LIST 1
  -- LIST 1 HERE IS NO-NO LIST
  -- MINUS -->>   OIL , WALNUT
 --- INTERSECT
    -- LIST 1 INTERSECT LIST 2
        --->> ONLY COMMON PART OF BOTH LIST  -->> MILK , BREAD
  In order for SET Operators to work ,
Two tables or result of two query being used MUST HAVE
- same exact column count
- same exact column data type
- Ideally  same exact column name (if not first table column name will be used)
Unlike JOIN which require primary key and foreign key relationship,
SET Operator must have above pre-requisite or it will not work at all !
JOIN and SET Operators are two completely different concepts.
CREATE TABLE FIRST_TABLE AS (
    SELECT FIRST_NAME , SALARY FROM EMPLOYEES
    WHERE SALARY BETWEEN 10500 AND 13000
) ORDER BY 2 ;
CREATE TABLE SECOND_TABLE AS (
    SELECT FIRST_NAME , SALARY FROM EMPLOYEES
    WHERE SALARY BETWEEN 12000 AND 24000
) ORDER BY 2 ;
COMMIT ;
  */
                   --union all
--combine the result of 2 queries and return as it is->
-- no sorting, no removing duplicates
select * from FIRST_TABLE
union all
select * from SECOND_TABLE;

                   --union
--combine the result of 2 queries and return is->
-- remove duplicates, sort by first column
select * from FIRST_TABLE
union
select * from SECOND_TABLE;

                       --minus
--will remove those rows of table2 that exist in table1
select * from FIRST_TABLE
minus
select * from SECOND_TABLE;

                      --intersect

select * from SECOND_TABLE
intersect
select * from FIRST_TABLE;

      --list 1: milk, egg, bread, banana, yogurt, strawberry
      --list 2: bread, egg, tomato, potato, orange

--combine with 'Union all': will combine everything from both lists:
                  -- milk, egg, bread, banana, yogurt, strawberry
                  -- bread, egg, tomato, potato, orange

--combine with 'Union': combine everything from both lists without duplicates:
                  -- milk, egg, bread, banana, yogurt, strawberry
                  -- tomato, potato, orange

--combine with 'Minus': get everything from 'List1',
-- do not get any item if it shows in 'List2'
--list2 is my no no list-> list1-list2 = milk, banana, yogurt, strawberry
                        --list2-list1 = tomato, potato, orange

--combine with 'Intersect': get if items showed up in the both lists(duplicates)
-- List1 intersect List2
--Bread and Egg


