# Pewlett-Hackard-Analysis

## Project Overview
Explore and refine the employee database for Pewlett Hackard and determine how many, and which employees, will be retiring soon.
1. Create Entity Relationship Diagrams to display this data.
2. Create an SQL Database

## Resources 
- Data Source: employees.csv, departments.csv, salaries.csv, dept_manager.csv, dept_emp.csv, and titles.csv.
- Software: pgAdmin 4, Visual Studio Code 1.38.1, Microsoft Excel, QuickDBD

## Project Summary
1. Refined employee data into retirement_info.csv to display employees born between 1952-1955 and hired between 1985-1988, to show employees most likely retiring soon in the entire company. We received a list of 41,380 employees.
2. We refined the total number of soon-to-be retired employees into a table that organizes those employees by department, stating the department number and the number of employees soon-to-be retired into the ri_by_dept.csv.
3. Lastly, we filtered the list to show the employee name, number, and department number for a more detailed list in the retire_dept.csv. And then even further created another list for the sales team into the sales_retire.csv.

## Challenge Overview (Problem Trying to Solve)
1. Determine the total number of employees per title who will be retiring. A table containing the number of employees who are about to retire, grouped by job title (and the CSV containing the data) so the company knows how many employees of each title they will need to replace.
2. Identify those employees who are eligible to participate in a mentorship program. A table containing employees who are eligible for the mentorship program (and the CSV containing the data) to help the company see who is elidgible for the training necessary to fill those soon-to-be empty positions.
3. Present documentation (technical report - this README.md) to capture the work that was done with results and faults.

## Resources
- Data Source: employees.csv, departments.csv, salaries.csv, dept_manager.csv, dept_emp.csv, and titles.csv.
- Software: pgAdmin 4, Visual Studio Code 1.38.1, Microsoft Excel, QuickDBD

## Description of Analysis
1. I compiled a table including Employee Name, Number, Title, Hire Date, and Birth Date then filtered table by birth date between 1952-1955 and hire date between 1985-1988 using WHERE clause to specify the conditions. This table named emp_title_retire.csv resulted in 65,427 results.
  ISSUE --> One issue to note with results is that the results are showing specific employees multiple times, since they may   have held various positions throughout their time at the company (that is also why the results number is higher than that   of the retirement_info.csv). 
  FIX --> The table is organized by employee number from lowest to highest and further by ascending title. That way the       company can quickly see the employee's highest rank after its previously held positions.
2. I used the table compiled in the previous statment and filtered by birth date in the year 1965 to refine by eligibility for the Mentorship Program. That table is stated as mentorship.csv which found in 2,846 results.
  ISSUE --> Same as above.
  FIX --> Ordered and organized.
3. Built this README.md for the Technical Report.

## Challenge Summary

The next steps I would reccomend would be to, filter the mentorship.csv further by seinority at the company to ensure those deserved ascend into their next role. A key limitation I found was that we are not aware of the location of these employees retiring and eligible for the mentorship. I would try to acquire that data to see how many roles will need to be filled based on location and department before taking next steps.

![EmployeeDB](https://github.com/alyssavonyokes/Pewlett-Hackard-Analysis/blob/master/EmployeeDB.png)
