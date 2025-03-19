-- Note: WHERE keyword is used to filter the records that meet a specified condition. It is typically used in SELECT, UPDATE and DELETE statements to narrow down the results or specify which rows to update or create.
SHOW DATABASES;

USE Movielist;

DESC movies2;

SELECT * from movies2;

-- ALIAS keyword is used to give a table or a column a temporary name. It is often used to make column names more readable or to rename tables in the result set.

Select id as movie_id, title FROM movies2;

Select id, year, title as movie_name FROM movies2;

Select * from movies2 WHERE title = 'The Shawshank Redemption';

Select * from movies2 WHERE year > 1990;