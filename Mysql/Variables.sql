USE employees;

SET @v_avg_salary = 0;

CALL employees.emp_avg_salary_in_out(11300, @v_avg_salary);

SELECT @v_avg_salary;

SET @v_emp_no = 0;

CALL employees.emp_info('aruna', 'journel',@v_emp_no);

select @v_emp_no;