-- Count columns in table
SELECT * FROM departments;
-- Drop a table (delete then write new code and insert and run)
-- Cascade indicateswe want to remove all connections to other tables in the database
DROP TABLE employees CASCADE
-- Filter by thirthday and frist and last name
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
-- Filter by two conditions
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Add count to determine the number of results
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Add "INTO" to create a new table out of filtered data
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- See what a table looks like 
SELECT * FROM retirement_info;
-- Joining two tables, SELECT = only columns we want to view from each table, FROM = first table to be joined, 
-- INNER JOIN points to second table to be joined, ON indicates where Postgres should look for matches
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;
-- Joining two tables
-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
	retirement_info.first_name,
    retirement_info.last_name,
	dept_employee.to_date
	FROM retirement_info
	LEFT JOIN dept_employee
	ON retirement_info.emp_no = dept_employee.emp_no;
-- Joining tables with shortened table names aka aliases temporary
SELECT ri.emp_no,
	ri.first_name,
ri.last_name,
	de.to_date 
	FROM retirement_info as ri
	LEFT JOIN dept_employee as de
	ON ri.emp_no = de.emp_no;
-- Use COUNT, GROUPBY, and ORDER BY
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_employee as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;
-- TRIPLE JOIN into new table 
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.gender,
	s.salary,
	de.to_date
INTO emp_info
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_employee as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01');
-- 
SELECT *
FROM dept_employee
WHERE dept_no = 'd007'