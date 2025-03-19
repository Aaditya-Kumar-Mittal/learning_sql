CREATE DATABASE IF NOT EXISTS game_db;

USE game_db;

CREATE TABLE games ( name VARCHAR(10), genre CHAR(100) );

-- CHAR uses extra space for fixed-length strings
-- VARCHAR uses only the space needed for the string length

INSERT INTO
    games (name, genre)
VALUES ('Pacman', 'Arcade'),
    ('Minecraft', 'Sandbox'),
    ('The Sims', 'Simulation'),
    ('Overwatch', 'FPS'),
    ('Fortnite', 'Battle Royale');

SELECT * from games;

CREATE DATABASE IF NOT EXISTS event_db;

USE event_db;

SHOW DATABASES;

CREATE TABLE events (
    event_name VARCHAR(255),
    event_date DATE,
    event_time TIME,
    event_location VARCHAR(255),
    event_datetime DATETIME,
    event_timestamp TIMESTAMP,
    event_year YEAR(4)
);

DESC events;

INSERT INTO
    events (
        event_name,
        event_date,
        event_time,
        event_location,
        event_datetime,
        event_timestamp,
        event_year
    )
VALUES (
        'Game Release',
        '2023-10-01',
        '14:00:00',
        'New York',
        '2023-10-01 14:00:00',
        '2023-10-01 14:00:00',
        2023
    ),
    (
        'Game Tournament',
        '2023-11-15',
        '18:30:00',
        'Los Angeles',
        '2023-11-15 18:30:00',
        '2023-11-15 18:30:00',
        2023
    ),
    (
        'Game Convention',
        '2024-01-20',
        '09:00:00',
        'San Francisco',
        '2024-01-20 09:00:00',
        '2024-01-20 09:00:00',
        2024
    );

SELECT * FROM events;

INSERT INTO
    events (
        event_name,
        event_date,
        event_time,
        event_location,
        event_datetime,
        event_timestamp,
        event_year
    )
VALUES (
        "event1",
        CURRENT_DATE,
        CURRENT_TIME,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        YEAR(CURRENT_DATE)
    ),
    (
        "event2",
        NOW(),
        NOW(),
        NOW(),
        NOW(),
        NOW(),
        YEAR(NOW())
    ),
    (
        "event3",
        SYSDATE(),
        SYSDATE(),
        SYSDATE(),
        SYSDATE(),
        SYSDATE(),
        YEAR(SYSDATE())
    ),
    (
        "event4",
        UTC_DATE(),
        UTC_TIME(),
        UTC_TIMESTAMP(),
        UTC_TIMESTAMP(),
        UTC_TIMESTAMP(),
        YEAR(UTC_DATE())
    );

-- Retrieve the current system date
SELECT CURRENT_DATE();

-- Retrieve the current system time
SELECT CURRENT_TIME();

-- Retrieve the current role of the session (useful for role-based access control)
SELECT CURRENT_ROLE();

-- Retrieve the current timestamp (date and time together)
SELECT CURRENT_TIMESTAMP();

-- Retrieve the current user executing the query
SELECT CURRENT_USER();

-- Retrieve the current date and time from the system
SELECT NOW();

-- Retrieve the current system date and time (similar to NOW(), but evaluated per statement)
SELECT SYSDATE();

-- Retrieve the current date in Coordinated Universal Time (UTC)
SELECT UTC_DATE();

-- Retrieve the current time in Coordinated Universal Time (UTC)
SELECT UTC_TIME();

-- Retrieve the current timestamp (date and time) in Coordinated Universal Time (UTC)
SELECT UTC_TIMESTAMP();


