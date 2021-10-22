SELECT first_name, last_name
FROM employees;
    
SELECT * FROM employees;
    
SELECT * FROM employees 
WHERE first_name = 'Elvis';

SELECT * FROM employees 
WHERE first_name = 'Elvis' AND gender = 'F';

SELECT * FROM employees 
WHERE first_name = 'Elvis' OR first_name = 'Denis';

SELECT * FROM employees
WHERE last_name = 'Denis' AND (gender = 'M' OR gender = 'F');

SELECT * FROM employees
WHERE first_name IN('Cathie', 'Mark', 'Nathan');

SELECT * FROM employees
WHERE first_name NOT IN('Cathie', 'Mark', 'Nathan');

SELECT * FROM employees
WHERE first_name LIKE('%Mar%')
AND hire_date LIKE( '%2000%')
AND emp_no LIKE(108201);

SELECT * FROM employees
WHERE first_name LIKE('Mar_');

SELECT * FROM employees
WHERE first_name NOT LIKE('%Mar%');

SELECT * FROM salaries
WHERE salary BETWEEN 66000 AND 70000;

SELECT * FROM departments
WHERE dept_no BETWEEN 'd003' AND 'd006';

SELECT * FROM employees
WHERE emp_no NOT BETWEEN 10004 AND 10012;

SELECT * FROM departments
WHERE dept_no IS NOT NULL;

SELECT * FROM departments
WHERE dept_no IS NULL;

SELECT * FROM salaries
WHERE salary <> 60000 AND salary > 60000;

SELECT * FROM employees
WHERE hire_date >= 2000-01-01
AND gender = 'F';

SELECT DISTINCT gender
FROM employees;

SELECT DISTINCT hire_date
FROM employees;

SELECT COUNT( DISTINCT first_name)
FROM employees;

SELECT COUNT(*)
FROM salaries
WHERE salary >= 100000;

SELECT COUNT(emp_no)
FROM dept_manager;

SELECT * FROM dept_manager
ORDER BY from_date;

SELECT * FROM dept_manager
ORDER BY from_date desc;

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name = 'aamer'
GROUP BY first_name;

SELECT first_name , COUNT(first_name) AS name_count
FROM employees
GROUP BY first_name
ORDER BY first_name desc;

SELECT salary, COUNT(emp_no) AS emps_with_same_salary
FROM salaries
WHERE salary > 80000
GROUP BY salary
ORDER BY salary;

SELECT salary, COUNT(emp_no)
FROM salaries
WHERE salary >80000
GROUP BY salary
HAVING COUNT(emp_no) >20;

SELECT *, AVG(salary)
FROM salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;

SELECT first_name, COUNT(first_name) AS names_count
FROM employees
WHERE hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200;

SELECT emp_no, COUNT(emp_no)
FROM dept_emp
WHERE from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1;

SELECT * FROM salaries
ORDER BY salary DESC
LIMIT 10;





