-- EMPLOYEE DETAILS VIEW
	-- List the following details of each employee: employee number, last name, first name, sex, and salary.
	
CREATE VIEW employee_details AS
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s ON
s.emp_no = e.emp_no

SELECT * FROM employee_details

-- DATE OF HIRE VIEW
	-- List first name, last name, and hire date for employees who were hired in 1986.

CREATE VIEW emp_hire_date AS
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date ASC

-- MANAGER DETAILS VIEW
	-- List the manager of each department with the following information: 
	-- department number, department name, the manager's employee number, last name, first name.
	
SELECT dpt.dept_no, dpt.dept_name, dm.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_manager AS dm ON
dm.emp_no = e.emp_no
JOIN departments AS dpt ON
dm.dept_no = dpt.dept_no	
	