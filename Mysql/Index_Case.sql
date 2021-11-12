SELECT * FROM employees 
WHERE hire_date > '2000-01-01';

CREATE INDEX i_hire_date ON employees (hire_date);

SELECT * FROM employees
WHERE first_name = 'Georgi'
AND last_name = 'Facello';

CREATE INDEX i_first_last ON employees(first_name, last_name);

SHOW INDEX FROM employees;

SELECT * FROM salaries 
where salary > 89000;

CREATE INDEX i_salary ON salaries(salary);

# CASE----------------------------------------
SELECT emp_no, first_name, last_name,
CASE
    WHEN gender = 'M' THEN 'MALE'
    ELSE 'Female'
END AS gender
FROM employees;

SELECT e.emp_no, e.first_name, e.last_name,
CASE
	WHEN dm.emp_no IS NOT NULL THEN 'MANAGER'
    ELSE 'EMPLOYEE' 
END AS 'Employee'
FROM employees e
LEFT JOIN 
dept_manager dm ON dm.emp_no = e.emp_no
WHERE e.emp_no > 109990;

SELECT emp_no, first_name, last_name,
IF(gender = 'M', 'MALE', 'FEMALE') AS gender
FROM employees;

SELECT 
dm.emp_no,
e.first_name,
e.last_name,
MAX(s.salary) - MIN(s.salary) AS salary_diff,
CASE
	WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN 'Salary was raised by more then $30000'
    WHEN MAX(s.salary) - MIN(s.salary) BETWEEN 20000 AND 30000 THEN 'Salary was raised by more than $20000 but less than $30000'
    ELSE 'Salary was raised by less than $20000'
END AS salary_incr
FROM dept_manager dm 
JOIN
employees e ON e.emp_no = dm.emp_no
JOIN
salaries s ON s.emp_no = dm.emp_no
GROUP BY s.emp_no;

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    de.to_date,
    CASE
        WHEN MAX(de.to_date) > SYSDATE() THEN 'Is still employed'
        ELSE 'Not an employee anymore'
    END AS current_employee
FROM
    employees e
        JOIN
    dept_emp de ON de.emp_no = e.emp_no
GROUP BY de.emp_no
LIMIT 100;   
