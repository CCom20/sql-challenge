
-- EMPLOYEE DETAILS VIEW
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
CREATE VIEW employee_details AS
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s ON
s.emp_no = e.emp_no

SELECT * FROM employee_details