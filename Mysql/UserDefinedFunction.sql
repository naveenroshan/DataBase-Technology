# function one
DELIMITER $$
# create function with name and return data type here its decimal
CREATE FUNCTION f_emp_avg_salary(p_emp_no INTEGER) RETURNS DECIMAL(10,2)
# error handleing error = 1418
DETERMINISTIC NO SQL READS SQL DATA
BEGIN
# creating variables with the return data type
DECLARE v_avg_salary DECIMAL(10,2);
SELECT AVG(s.salary)
INTO v_avg_salary 
FROM employees e 
JOIN
salaries s ON e.emp_no = s.emp_no
WHERE e.emp_no = p_emp_no;
# here we are returning the value for the funcation
RETURN v_avg_salary;
END$$
DELIMITER ;

#calling a function
SELECT f_emp_avg_salary(11300);

#function two
DELIMITER $$
# create function with name and return data type here its decimal
CREATE FUNCTION f_emp_info( p_first_name varchar(255), p_last_name varchar(255)) RETURNS DECIMAL(10,2)
# error handleing error = 1418
DETERMINISTIC NO SQL READS SQL DATA
BEGIN
DECLARE v_max_from_date DATE ;
DECLARE v_salary DECIMAL(10,2);
SELECT MAX(from_date)
INTO v_max_from_date 
FROM employees e
JOIN
salaries s ON e.emp_no = s.emp_no
WHERE e.first_name = p_first_name
AND e.last_name = p_last_name;

SELECT s.salary
INTO v_salary
FROM employees e
JOIN
salaries s ON e.emp_no = s.emp_no
WHERE e.first_name = p_first_name
AND e.last_name = p_last_name
AND s.from_date = v_max_from_date;
RETURN v_salary;
END$$
DELIMITER ;

SELECT f_emp_info('Aruna', 'Journel');


# function inside the select statement
SET @v_emp_no = 11300;
SELECT emp_no, 
       first_name,
       last_name,
       # calling a function in the select statement
       f_emp_avg_salary(@v_emp_no)
FROM employees 
WHERE emp_no = @v_emp_no;
