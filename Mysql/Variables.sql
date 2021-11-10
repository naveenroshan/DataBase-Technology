USE employees;

#Session variables
SET @v_avg_salary = 0;

CALL employees.emp_avg_salary_in_out(11300, @v_avg_salary);

SELECT @v_avg_salary;

SET @v_emp_no = 0;

CALL employees.emp_info('aruna', 'journel',@v_emp_no);

select @v_emp_no;

# Local variables is created in the begin - end statement only.

# Global variables
SET GLOBAL max_connections = 1000;

SET @@global.max_connections =1;

# user defined variables that are set by the user which are local , Session 
# System variables are set by the mysql server which are session , global 


