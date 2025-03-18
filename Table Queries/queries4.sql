SELECT DATABASE();

/*
CREATE TABLE Movies2 (
id INT PRIMARY KEY,
title TEXT,
year YEAR
);
*/

-- Note : The above query will give an error because the id column is not set to AUTO_INCREMENT.
-- To fix this, we can add the AUTO_INCREMENT attribute to the id column.
-- Here's the corrected query:
CREATE TABLE Movies2 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title TEXT,
    year YEAR
);

Select * from movies2;

/*
INSERT INTO
Movies2 (id, title, year)
VALUES (
1,
'The Shawshank Redemption',
1994
);

INSERT INTO
Movies2 (id, title, year)
VALUES (2, 'The Godfather', 1972);

Select * from movies2;

INSERT INTO
movies2 (id, title, year)
VALUES (3, 'The Dark Knight', 2008);

INSERT INTO
movies2 (id, title, year)
VALUES (4, '12 Angry Men', 1957);

INSERT INTO
movies2 (id, title, year)
VALUES (5, "Schindler's List", 1993);

DROP Table movies2;
*/

INSERT INTO
    movies2 (title, year)
VALUES (
        'The Shawshank Redemption',
        1994
    ),
    ('The Godfather', 1972),
    ('The Dark Knight', 2008),
    ('12 Angry Men', 1957),
    ("Schindler's List", 1993),
    ('Pulp Fiction', 1994),
    (
        'The Lord of the Rings: The Return of the King',
        2003
    ),
    (
        'The Good, the Bad and the Ugly',
        1966
    ),
    ('Fight Club', 1999),
    ('Forrest Gump', 1994);

Select * from movies2;