USE employees;
-- ** -- 
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M';
-- ** --
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Nathan', 'Mark');
-- ** --
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');
-- ** --
SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
-- ** --
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;
-- ** --
SELECT DISTINCT
    gender
FROM
    employees;
-- ** --
SELECT 
    COUNT(DISTINCT gender)
FROM
    employees;
-- ** --
SELECT 
    *
FROM
    employees
ORDER BY first_name;
-- ** --
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;
-- ** --
-- where clause cannot be used with aggregate functions but having can
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;
-- ** --
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC
LIMIT 20;
-- ** --





