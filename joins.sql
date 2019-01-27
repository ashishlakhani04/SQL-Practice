USE employees;
-- ** --
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager m
        INNER JOIN
    departments d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;
-- ** --
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager m
        LEFT JOIN
    departments d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;
-- ** --
SELECT 
    e.emp_no, e.first_name, e.last_name, s.salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    s.salary > 145000;
-- ** --
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;
-- ** --
-- same as cross join
SELECT 
    dm.*, d.*
FROM
    dept_manager dm,
    departments d
ORDER BY dm.emp_no , d.dept_no;
-- ** --
SELECT 
    e.gender, AVG(s.salary) AS average_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY e.gender;
-- ** --
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no;
-- ** --








