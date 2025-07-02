-- Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
# Write your MySQL query statement below
SELECT t1.id
FROM Weather t1
JOIN Weather t2
WHERE DATEDIFF(t1.recordDate, t2.recordDate) = 1 AND t1.temperature > t2.temperature;

-- There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process. The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run. The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.

# Write your MySQL query statement below

SELECT
A1.machine_id,
    ROUND(AVG(A2.timestamp - A1.timestamp), 3) as processing_time
FROM Activity A1, Activity A2
WHERE 
A1.machine_id = A2.machine_id
AND
A2.process_id = A2.process_id
AND 
A1.activity_type = 'start'
AND 
A2.activity_type = 'end'
GROUP BY A1.machine_id;


SELECT DISTINCT salary AS SecondHighestSalary
FROM Employee 
ORDER BY salary DESC
LIMIT 1,1;

# Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary <>
(SELECT MAX(salary) FROM Employee);


# Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary <
(SELECT MAX(salary) FROM Employee);