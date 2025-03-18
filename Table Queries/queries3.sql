SHOW DATABASES;

CREATE DATABASE MovieList;

USE MovieList;

CREATE TABLE Movies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    release_year YEAR,
    comment CHAR(10),
    rating DECIMAL,
    comment_date DATE DEFAULT "2025-01-01",
    comment_time TIME DEFAULT "12:00:00"
);

DESC Movies;

-- Query 1: Insert new movies into the table
INSERT INTO Movies (title, release_year, comment, rating, comment_date, comment_time)
VALUES ("The Shawshank Redemption", 1994, "Great", 5.0, "2025-01-01", "12:00:00"),
  ("The Godfather", 1972, "Great", 5.0, "2025-01-01", "12:00:00"),
  ("The Dark Knight", 2008, "Great", 5.0, "2025-01-01", "12:00:00"),
  ("The Godfather: Part II", 1974, "Great", 5.0, "2025-01-01", "12:00:00"),
  ("12 Angry Men", 1957, "Average", 5.0, "2025-01-01", "12:00:00"),
  ("Schindler's List", 1993, "Best", 5.0, "2025-01-01", "12:00:00"),
  ("The Lord of the Rings: The Return of the King", 2003, "Average", 5.0, "2025-01-01", "12:00:00"),
  ("Pulp Fiction", 1994, "Average", 5.0, "2025-01-01", "12:00:00"),
  ("The Lord of the Rings: The Fellowship of the Ring", 2001, "Average", 5.0, "2025-01-01", "12:00:00"),
  ("Forrest Gump", 1994, "Average", 5.0, "2025-01-01", "12:00:00");

-- Query 2: Select all movies from the table
SELECT * FROM Movies;

-- Query 3: Select specific columns from the table
SELECT title, release_year FROM Movies;