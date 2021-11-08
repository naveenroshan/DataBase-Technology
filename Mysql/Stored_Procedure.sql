USE employees;

DROP PROCEDURE IF EXISTS select_employees;

# SP ONE
DELIMITER $$

CREATE PROCEDURE select_employees()
BEGIN
SELECT * FROM employees
LIMIT 1000;
END$$
DELIMITER ; 

CALL employees.select_employees();

# SP Two
DELIMITER $$

CREATE PROCEDURE avgSalary_employees()
BEGIN
SELECT AVG(salary) FROM salaries;
END$$
DELIMITER ; 

CALL employees.avgSalary_employees();

#SP Three
DELIMITER $$

CREATE PROCEDURE emp_salary(IN p_emp_no INTEGER)
BEGIN
SELECT e.first_name, e.last_name, s.salary, s.from_date, s.to_date
FROM employees e
JOIN
salaries s ON e.emp_no = s.emp_no
WHERE e.emp_no = p_emp_no;
END$$

DELIMITER ;

CALL employees.emp_salary(11300);

#SP four input and output Parameters
DELIMITER $$

CREATE PROCEDURE emp_avg_salary_in_out(IN p_emp_no INTEGER, out p_avg_salary DECIMAL(10,2))
BEGIN
SELECT AVG(s.salary)
INTO p_avg_salary
FROM employees e
JOIN
salaries s ON e.emp_no = s.emp_no
WHERE e.emp_no = p_emp_no;
END$$

DELIMITER ;

CALL employees.emp_avg_salary_in_out(11300);

#SP Five
DELIMITER $$

CREATE PROCEDURE emp_info(in p_first_name varchar(255), in p_last_name varchar(255), out p_emp_no integer)
BEGIN
SELECT e.emp_no
INTO p_emp_no 
FROM employees e
WHERE e.first_name = p_first_name
AND e.last_name = p_last_name;
END$$

DELIMITER ;

CALL employees.emp_info('Georgi','Facello');

select * from employees
limit 1;




