/**
  IntelliJ Comes with great visual feature to
  create tables and perform crud operation on that table
        -- C (Create new row)
        -- R (Read rows)
        -- U (Update rows)
        -- D (Delete rows)
  It will also help to generate the query needed to make it happen
  Here is the MESSAGE Table with 2 Columns (MESSAGE_ID, CONTENT) we did

 */

-- CREATING TABLE
create table MESSAGES
(
    MESSAGE_ID NUMBER       not null
        constraint MESSAGE_PK
            primary key,
    CONTENT    VARCHAR2(50) not null
);

--adding row

INSERT INTO HR.MESSAGES (MESSAGE_ID, CONTENT)
VALUES (2, 'b25 like repeating');

commit ; --this will save changes

--reading row
SELECT * FROM MESSAGES ;

--updating row
UPDATE MESSAGES
SET CONTENT = 'B25 like LEARNING'
WHERE MESSAGE_ID = 2;

commit ; --this will save changes

--delete row ->right click on row, choose delete and preview
DELETE
FROM HR.MESSAGES
WHERE MESSAGE_ID = 2;

commit ; --this will save changes

--how to clear everything in the table
-- 'TRUNCATE'
truncate table MESSAGES; --run this code and preview or update

--how to modify the table -- like adding column
alter table MESSAGES
    add SCORE INTEGER; -- right click on MESSAGES,'modify table', add column

--how to completely delete table MESSAGES
drop table MESSAGES;