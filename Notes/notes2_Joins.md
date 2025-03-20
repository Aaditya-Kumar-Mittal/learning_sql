# JOINs in SQL

## Step 1: Create Tables with Data

### Table 1: Employees

This table contains employee details along with their `department_id` (which links them to a department).

```sql
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT
);

INSERT INTO Employees (employee_id, employee_name, department_id) VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103),
(4, 'David', NULL),
(5, 'Eve', 101);
```

---

### Table 2: Departments

This table contains department details.

```sql
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Departments (department_id, department_name) VALUES
(101, 'HR'),
(102, 'IT'),
(104, 'Finance');
```

---

## Step 2: Understanding Different Types of JOINs

Now, let's explore different types of SQL JOINs using these tables.

### 1. INNER JOIN (Common Data in Both Tables)

Returns only matching records between both tables based on `department_id`.

```sql
SELECT e.employee_id, e.employee_name, d.department_name
FROM Employees e
INNER JOIN Departments d ON e.department_id = d.department_id;
```

Output:

| employee_id | employee_name | department_name |
| ----------- | ------------- | --------------- |
| 1           | Alice         | HR              |
| 2           | Bob           | IT              |

(Charlie and David are missing because their `department_id` doesn't exist in the `Departments` table.)

---

### 2. LEFT JOIN (All Employees + Matching Departments)

Returns all employees and their departments (if available). If there is no matching department, it returns `NULL`.

```sql
SELECT e.employee_id, e.employee_name, d.department_name
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.department_id;
```

Output:

| employee_id | employee_name | department_name |
| ----------- | ------------- | --------------- |
| 1           | Alice         | HR              |
| 2           | Bob           | IT              |
| 3           | Charlie       | NULL            |
| 4           | David         | NULL            |
| 5           | Eve           | HR              |

(David and Charlie have no department, so `NULL` is shown.)

---

### 3. RIGHT JOIN (All Departments + Matching Employees)

Returns all departments and their employees. If no employee belongs to a department, `NULL` appears.

```sql
SELECT e.employee_id, e.employee_name, d.department_name
FROM Employees e
RIGHT JOIN Departments d ON e.department_id = d.department_id;
```

Output:

| employee_id | employee_name | department_name |
| ----------- | ------------- | --------------- |
| 1           | Alice         | HR              |
| 2           | Bob           | IT              |
| NULL        | NULL          | Finance         |

(The "Finance" department has no employees, so `NULL` is shown.)

---

### 4. FULL OUTER JOIN (All Employees and All Departments)

Returns all records from both tables. If there is no match, `NULL` appears.

```sql
SELECT e.employee_id, e.employee_name, d.department_name
FROM Employees e
FULL OUTER JOIN Departments d ON e.department_id = d.department_id;
```

Output:

| employee_id | employee_name | department_name |
| ----------- | ------------- | --------------- |
| 1           | Alice         | HR              |
| 2           | Bob           | IT              |
| 3           | Charlie       | NULL            |
| 4           | David         | NULL            |
| 5           | Eve           | HR              |
| NULL        | NULL          | Finance         |

(Charlie and David have `NULL` because they don’t have a department, and "Finance" has `NULL` because it has no employees.)

---

## Summary of JOINs

| JOIN Type       | Includes Employees Without Departments? | Includes Departments Without Employees? |
| --------------- | --------------------------------------- | --------------------------------------- |
| INNER JOIN      | ❌ No                                   | ❌ No                                   |
| LEFT JOIN       | ✅ Yes                                  | ❌ No                                   |
| RIGHT JOIN      | ❌ No                                   | ✅ Yes                                  |
| FULL OUTER JOIN | ✅ Yes                                  | ✅ Yes                                  |

---

These examples should give you a clear understanding of JOINs in SQL!
