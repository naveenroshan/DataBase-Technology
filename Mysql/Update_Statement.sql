USE employees;

SELECT * FROM employees
WHERE emp_no = 999901;

UPDATE employees
SET
	first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE emp_no = 999901;

select * from departments;

Update departments
SET
	dept_name = 'Data Analysis'
WHERE dept_no = 'd010';