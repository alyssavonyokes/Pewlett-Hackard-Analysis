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