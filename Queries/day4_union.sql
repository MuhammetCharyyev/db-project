
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


