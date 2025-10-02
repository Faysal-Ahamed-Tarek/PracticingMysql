-- DQL - Data Query Language

-- 1. Basic Syntax:
--    SELECT column1, column2, ...
--    FROM table_name
--    WHERE condition
--    GROUP BY column
--    HAVING condition
--    ORDER BY column ASC|DESC
--    LIMIT number;


SELECT * FROM dummydb.employees
WHERE employee_id BETWEEN 100 AND 150
ORDER BY salary DESC
LIMIT 10;



SELECT department_id, COUNT(*) AS quantity FROM dummydb.employees
GROUP BY department_id
HAVING quantity >= 10
ORDER BY quantity DESC;


-- 2. Common Aggregate Functions:
--    COUNT()  - Returns number of distinct rows
--    SUM()    - Returns total sum of a column
--    AVG()    - Returns average value
--    MIN()    - Returns smallest value
--    MAX()    - Returns largest value


SELECT department_id, ROUND(SUM(salary)) AS quantity FROM dummydb.employees
GROUP BY department_id
HAVING quantity > 10000;