============================
-- ORDER BY is used to sort the result set of a SELECT statement.
-- You can specify one or more columns to sort by and optionaly specufy the sort order (ascending or descending) for each column
============================

USE game_db;

SELECT * FROM games ORDER BY name ASC;
SELECT * FROM games ORDER BY name DESC;

-- LIMIT is used to restrict the number or rows returned by a SELECT statement. It is often used with conjunction with the ORDER BY clause to retrieve a specific number or rows from a particular position in the result set.

SELECT * FROM games ORDER BY name ASC LIMIT 2;