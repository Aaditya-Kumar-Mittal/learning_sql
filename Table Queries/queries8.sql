= = = = = = = = = = = = = = = = = = = = = = = = = = =
-- Functions in SQL
= = = = = = = = = = = = = = = = = = = = = = = = = = =

-- SUBSTRING() Funcion -> It is used to extract a substring from a string. Allows you to specify the starting position and length of the substring
SELECT SUBSTRING("Aaditya Kumar Mittal", 1, 7);
SELECT SUBSTRING("Aaditya Kumar Mittal", 9, 5); -- Kumar
SELECT SUBSTRING("Aaditya Kumar Mittal", 15, 6); -- Mittal
SELECT SUBSTRING("Aaditya Kumar Mittal", 1, 20); -- Aaditya Kumar Mittal


-- SUBSTRING_INDEX() Function -> It is used to extract a substring from a string based on a specified delimiter. It allows you to specify the number of occurrences of the delimiter to consider.
SELECT SUBSTRING_INDEX("Aaditya Kumar Mittal", " ", 1); -- Aaditya

-- REPLACE(string, old_substring, new_substring) -> It is used to replace all occurrences of a substring within a string with another substring.
SELECT REPLACE("Aaditya Kumar Mittal", "Aaditya", "Aadit"); -- Aadi Kumar Mittal


-- REVERSE(string) -> It is used to reverse the order of characters in a string.
SELECT REVERSE("Aaditya Kumar Mittal"); -- lattiM ramuK aytidA

-- REPEAT(string, count) -> It is used to repeat a string a specified number of times.
SELECT REPEAT("Aaditya ", 3); -- Aaditya Aaditya Aaditya

-- LEFT(string, count) -> It is used to extract a specified number of characters from the left side of a string.
SELECT LEFT("Aaditya Kumar Mittal", 5); -- Aadit

-- CHAR_LENGTH(string) -> It is used to return the length of a string in characters.
SELECT CHAR_LENGTH("Aaditya Kumar Mittal"); -- 20

SHOW DATABASES;

USE game_db;

SELECT * FROM games;

SELECT REVERSE(name), genre FROM games; -- Reverse the name of the game and show the genre
SELECT REPLACE(name, 'a', 'A'), genre FROM games; -- Replace all occurrences of 'a' with 'A' in the name of the game and show the genre
SELECT name, genre, CHAR_LENGTH(name) as name_length FROM games; -- Show the name of the game, genre, and length of the name in characters