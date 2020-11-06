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