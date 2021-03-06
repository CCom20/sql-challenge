-- 1. EMPLOYEE DETAILS VIEW
	-- List the following details of each employee: employee number, last name, first name, sex, and salary.
	
CREATE VIEW employee_details AS
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s ON
s.emp_no = e.emp_no

SELECT * FROM employee_details

-- 2. DATE OF HIRE VIEW
	-- List first name, last name, and hire date for employees who were hired in 1986.

CREATE VIEW emp_hire_date AS
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date ASC

SELECT * FROM emp_hire_date

-- 3. MANAGER DETAILS VIEW
	-- List the manager of each department with the following information: 
	-- department number, department name, the manager's employee number, last name, first name.

CREATE VIEW dept_manager_details AS
SELECT dpt.dept_no, dpt.dept_name, dm.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_manager AS dm ON
dm.emp_no = e.emp_no
JOIN departments AS dpt ON
dm.dept_no = dpt.dept_no

SELECT * FROM dept_manager_details
ORDER BY last_name ASC

-- 4. EMPLOYEE DEPT VIEW
	-- List the department of each employee with the following information: 
	-- employee number, last name, first name, and department name.

CREATE VIEW emp_department AS
SELECT e.emp_no, e.last_name, e.first_name, dept.dept_name
FROM employees AS e
JOIN dept_emp AS de ON
e.emp_no = de.emp_no
JOIN departments AS dept ON
de.dept_no = dept.dept_no
ORDER BY last_name ASC

SELECT * FROM emp_department

-- 5. EMPLOYEE FILTERED VIEW
	-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

CREATE VIEW employee_filtered AS
SELECT first_name, last_name, sex
FROM employees
WHERE last_name ILIKE 'B%'
AND first_name = 'Hercules'
ORDER BY last_name ASC

SELECT * FROM employee_filtered

-- 6. SALES EMPLOYEES VIEW
	-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

CREATE VIEW sales_employees AS
SELECT e.emp_no, e.last_name, e.first_name, dept.dept_name
FROM employees AS e
JOIN dept_emp AS de ON
e.emp_no = de.emp_no
JOIN departments AS dept ON
de.dept_no = dept.dept_no
WHERE dept_name = 'Sales'
ORDER BY last_name ASC

SELECT * FROM sales_employees

-- 7. SALES and DEVELOPMENT VIEW
	-- List all employees in the Sales and Development departments, 
	-- including their employee number, last name, first name, and department name.

CREATE VIEW sales_dev_employees AS
SELECT e.emp_no, e.last_name, e.first_name, dept.dept_name
FROM employees AS e
JOIN dept_emp AS de ON
e.emp_no = de.emp_no
JOIN departments AS dept ON
de.dept_no = dept.dept_no
WHERE dept_name IN ('Sales', 'Development') 
ORDER BY last_name ASC

SELECT * FROM sales_dev_employees

-- 8. COUNT NAMES VIEW
	-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

CREATE VIEW count_names AS
SELECT last_name, COUNT(last_name) AS count 
FROM employees
GROUP BY last_name
ORDER BY count DESC

SELECT * FROM count_names
