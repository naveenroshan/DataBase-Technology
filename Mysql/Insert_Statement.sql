use employees;

INSERT INTO employees
(
   emp_no,
   birth_date,
   first_name,
   last_name,
   gender,
   hire_date
)VALUES
( 
   999901,
   '2011-05-14',
   'Jhon',
   'Smith',
   'M',
   '2025-06-06'
   );
   
INSERT INTO employees
VALUES
(
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);

select * from titles 
order by emp_no desc
limit 10;

INSERT INTO titles
(
  emp_no,
  title,
  from_date
)VALUES
(
999903,
'Senior Engineer',
'1997-10-01'
);

select * from dept_emp 
order by emp_no desc
limit 10;


INSERT INTO dept_emp
(
   emp_no,
   dept_no,
   from_date,
   to_date
)VALUES
(
   999903,
   'd004',
   '1997-10-01',
   '9999-01-01'
);

CREATE TABLE departments_dup
(
	dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

INSERT INTO departments_dup
(
	dept_no,
    dept_name
)
SELECT * FROM departments
where dept_no = 'd010';

SELECT * FROM departments_dup;

INSERT INTO departments
(
	dept_no,
    dept_name
)VALUES 
(
	'd010',
    'Business Analysis'
);


   
   
  