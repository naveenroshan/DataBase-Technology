# Query for Task 1:
SELECT YEAR(td.from_date) AS Calender_date,
	   te.gender AS gender,
       count(te.emp_no) AS No_Of_Employees
FROM t_employees te
JOIN t_dept_emp td on td.emp_no = te.emp_no
GROUP BY Calender_date, te.gender
HAVING Calender_date >= 1990;
