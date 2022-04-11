
/*## Question :
1. given 2 tables with same column names column data types and column count Employee1 and Employee2 with full of data :
How do you determine, they have same exact data
TABLE 1
ID  NAME
1 , ADAM
2 , MARY
3 , JON

TABLE 2
1 , ADAM
2 , MARY
3 , JON
4 , Muhammad

-- check row count equality , if not same END OF STORY!
else
-- Try using intersect, check the result count
     if the result count is same as table row count
         it means every rows are common rows
     if the result count is less than row count
         it means there are rows that not common --> NOT SAME

TABLE 1 - TABLE2 && TABLE2 -TABLE1 BOTH SHOULD BE 0
- Navigate to
  https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all
  - Click Restore Database on the right
    to start writing queries
  - Type your query inside the box and click run

 */