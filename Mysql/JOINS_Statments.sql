# Inner joins :
USE employees;

SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
INNER JOIN 
departments_dup d ON m.dept_no = d.dept_no
GROUP BY dept_no;

SELECT e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM employees e
INNER JOIN
dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY emp_no;

SELECT e.first_name, e.last_name, e.hire_date, t.title
FROM employees e
JOIN
titles t ON e.emp_no = t.emp_no
WHERE first_name = 'Margareta'
AND last_name = 'Markovitch'
ORDER BY e.emp_no;   

SELECT e.gender, AVG(s.salary) AS average_salary
FROM employees e
INNER JOIN
salaries s ON e.emp_no = s.emp_no
GROUP BY gender;

#Left Join

SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
LEFT JOIN 
departments_dup d ON m.dept_no = d.dept_no
GROUP BY dept_no;

SELECT m.dept_no, m.emp_no, d.dept_name
FROM departments_dup d
LEFT JOIN 
dept_manager_dup m ON m.dept_no = d.dept_no
GROUP BY dept_no;

SELECT e.emp_no, e.first_name, e.last_name, dm.dept_no, dm.from_date  
FROM employees e  
LEFT JOIN   
dept_manager dm ON e.emp_no = dm.emp_no  
WHERE e.last_name = 'Markovitch'  
ORDER BY dm.dept_no DESC, e.emp_no;

# Right Join

SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
RIGHT JOIN 
departments_dup d ON m.dept_no = d.dept_no
GROUP BY dept_no;

SELECT e.emp_no, e.first_name, e.last_name, s.salary
FROM employees e 
RIGHT JOIN
salaries s ON e.emp_no = s.emp_no
WHERE s.salary > 145000;

#CROSS JOIN

SELECT dm.*, d.*
FROM dept_manager dm
CROSS JOIN
departments d
ORDER BY dm.emp_no, d.dept_no;

SELECT dm.*, d.*
FROM departments d
CROSS JOIN
dept_manager dm
WHERE d.dept_no <> dm.dept_no
ORDER BY dm.emp_no, d.dept_no;

SELECT e.*, d.*
FROM departments d
CROSS JOIN
dept_manager dm
INNER JOIN
employees e ON dm.emp_no = e.emp_no
WHERE d.dept_no <> dm.dept_no
ORDER BY dm.emp_no, d.dept_no;

SELECT dm.*, d.*
FROM dept_manager dm
CROSS JOIN
departments d
WHERE d.dept_no = 'd009';

SELECT e.*, d.*
FROM employees e
CROSS JOIN
departments d
WHERE e.emp_no < 10011
ORDER BY e.emp_no , d.dept_name;
