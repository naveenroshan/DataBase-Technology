SELECT DISTINCT
    emp_no, from_date, to_date, COUNT(emp_no) AS NUM
FROM
    dept_emp
GROUP BY emp_no
HAVING NUM > 1;

CREATE OR REPLACE VIEW v_dept_emp_lastest_date AS
    SELECT 
        emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM
        dept_emp
    GROUP BY emp_no;
    
CREATE OR REPLACE VIEW v_manager_salary_AVG AS
    SELECT 
        ROUND(AVG(salary), 2) AS avg_salary
    FROM
        salaries;

SELECT * from employees.v_manager_salary_avg;