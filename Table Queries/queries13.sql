= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
-- AlTERing Commands
-- Add new Column, DROP a column, Modfy a Column, Rename a Column, 
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

USE testdb;

SELECT * FROM table2;

ALTER TABLE table2 ADD email_id VARCHAR(50) UNIQUE;

ALTER TABLE table2 MODIFY email_id VARCHAR(100);

ALTER TABLE table2 CHANGE COLUMN email_id email_address VARCHAR(100);

ALTER TABLE table2 DROP email_id;