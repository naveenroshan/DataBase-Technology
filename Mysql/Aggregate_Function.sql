USE employees;

SELECT COUNT(salary)
FROM salaries;

SELECT COUNT(DISTINCT from_date)
FROM salaries;

SELECT COUNT(DISTINCT dept_no )
FROM dept_emp;

SELECT SUM(salary)
FROM salaries;

SELECT SUM(salary)
FROM salaries
WHERE from_date > '1997-01-01';

SELECT MAX(salary)
FROM salaries;

SELECT MIN(salary)
FROM salaries;

SELECT MAX(emp_no)
FROM salaries;

SELECT MIN(emp_no)
FROM salaries;

SELECT AVG(salary)
FROM salaries;

SELECT AVG(salary)
FROM salaries
WHERE from_date > '1997-01-01';

SELECT ROUND(AVG(salary))
FROM salaries;

SELECT ROUND(AVG(salary),3)
FROM salaries;

SELECT dept_no,
IFNULL(dept_name, 'New Department') AS dept_name
FROM departments_dup;

SELECT dept_no,
COALESCE(dept_name, 'New Department') AS dept_name
FROM departments_dup;

SELECT dept_no, dept_name,
COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM departments_dup
ORDER BY dept_no ASC;

SELECT dept_no, dept_name,
COALESCE(dept_no, dept_name) AS dept_info
FROM departments_dup
ORDER BY dept_no ASC;

SELECT
IFNULL(dept_no, 'N/A') as dept_no,
IFNULL(dept_name, 'Department name not provided') AS dept_name,
COALESCE(dept_no, dept_name) AS dept_info
FROM departments_dup
ORDER BY dept_no ASC;