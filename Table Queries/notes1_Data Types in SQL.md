# Various Data Types in SQL

## Table of Contents

- [Various Data Types in SQL](#various-data-types-in-sql)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Data Type Categories](#data-type-categories)
    - [1. Numeric Data Types](#1-numeric-data-types)
    - [2. Character/String Data Types](#2-characterstring-data-types)
    - [3. Date and Time Data Types](#3-date-and-time-data-types)
    - [4. Large Object (LOB) Data Types](#4-large-object-lob-data-types)
    - [5. Boolean Data Type](#5-boolean-data-type)
    - [6. Other Special Data Types](#6-other-special-data-types)
  - [Choosing the Right Data Type](#choosing-the-right-data-type)
  - [Conclusion](#conclusion)

---

## Introduction

SQL (Structured Query Language) provides a variety of data types to store different kinds of values in a database. Choosing the right data type is crucial for optimizing storage, performance, and data integrity.

---

## Data Type Categories

### 1. Numeric Data Types

Numeric data types store numbers, including integers and decimals.

| Data Type             | Description                                                                                                                                                       | Storage |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| `TINYINT`             | Small integer (-128 to 127 or 0 to 255 unsigned)                                                                                                                  | 1 byte  |
| `SMALLINT`            | Medium integer (-32,768 to 32,767)                                                                                                                                | 2 bytes |
| `MEDIUMINT`           | Larger integer (-8,388,608 to 8,388,607)                                                                                                                          | 3 bytes |
| `INT` / `INTEGER`     | Standard integer (-2,147,483,648 to 2,147,483,647)                                                                                                                | 4 bytes |
| `BIGINT`              | Large integer (-9 quintillion to 9 quintillion)                                                                                                                   | 8 bytes |
| `DECIMAL` / `NUMERIC` | Fixed-point numbers with precision . DECIMAL(p,s), where p is the total number of digits, and s is scale, the number of digits to the right of the decimal point. | Varies  |
| `FLOAT`               | Single-precision floating point                                                                                                                                   | 4 bytes |
| `DOUBLE`              | Double-precision floating point                                                                                                                                   | 8 bytes |

---

### 2. Character/String Data Types

Used for storing text-based data.

| Data Type    | Description                                                                                              |
| ------------ | -------------------------------------------------------------------------------------------------------- |
| `CHAR(n)`    | Fixed-length string (0 to 255 characters). If you store a shorter string, it will be padded with spaces. |
| `VARCHAR(n)` | Variable-length string (0 to 65,535 characters)                                                          |
| `TEXT`       | Large text data                                                                                          |
| `ENUM`       | String object with predefined values                                                                     |
| `SET`        | A string object that can hold multiple values from a predefined list                                     |

---

### 3. Date and Time Data Types

Used to store date, time, and timestamps.

| Data Type   | Description                                      |
| ----------- | ------------------------------------------------ |
| `DATE`      | Stores date values (YYYY-MM-DD)                  |
| `DATETIME`  | Stores date and time (YYYY-MM-DD HH:MM:SS)       |
| `TIMESTAMP` | Stores a timestamp, usually for tracking changes |
| `TIME`      | Stores time (HH:MM:SS)                           |
| `YEAR`      | Stores year values (YYYY)                        |

---

### 4. Large Object (LOB) Data Types

Used to store large amounts of data such as files, images, or videos.

| Data Type    | Description                                 |
| ------------ | ------------------------------------------- |
| `TINYBLOB`   | Small binary large object (up to 255 bytes) |
| `BLOB`       | Binary large object (up to 65,535 bytes)    |
| `MEDIUMBLOB` | Medium binary large object (up to 16 MB)    |
| `LONGBLOB`   | Large binary large object (up to 4 GB)      |
| `TEXT`       | Text large object (up to 65,535 characters) |
| `LONGTEXT`   | Very large text (up to 4 GB)                |

---

### 5. Boolean Data Type

SQL does not have a dedicated Boolean type, but it uses `TINYINT(1)` where:

- `0` = FALSE
- `1` = TRUE

Example:

```sql
CREATE TABLE users (
    id INT PRIMARY KEY,
    is_active TINYINT(1) NOT NULL
);
```

---

### 6. Other Special Data Types

| Data Type  | Description                           |
| ---------- | ------------------------------------- |
| `JSON`     | Stores JSON-formatted data            |
| `XML`      | Stores XML data                       |
| `UUID`     | Stores Universally Unique Identifiers |
| `GEOMETRY` | Stores spatial data                   |

---

## Choosing the Right Data Type

Selecting the appropriate data type can significantly impact performance and storage.

- Use **smaller numeric types** (TINYINT, SMALLINT) when possible to save space.
- Use **VARCHAR** instead of CHAR for variable-length text.
- Use **TIMESTAMP** for automatic date/time updates.
- Use **ENUM** for predefined sets of values instead of VARCHAR.

---

## Conclusion

SQL provides a variety of data types, each suited for different scenarios. Understanding these types helps in designing efficient databases that ensure data integrity, optimize storage, and enhance query performance.
