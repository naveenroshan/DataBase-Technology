# this is used to save the current state of the data base. when we delete the date we can go back to the commit saved state.
COMMIT;

SELECT * FROM employees
WHERE emp_no = 999903;

DELETE FROM employees
WHERE emp_no = 999903;

ROLLBACK;

select * from departments;

DELETE FROM departments
WHERE dept_no = 'd010';