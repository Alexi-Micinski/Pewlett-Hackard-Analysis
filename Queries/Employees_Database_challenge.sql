-- Retrieve emp_no, first_name, and last_name columns from the Employees table
SELECT emp_no, first_name, last_name
FROM employees;

-- Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT title, from_date, to_date
FROM titles;

-- Create a new table using the INTO clause.
SELECT emp_no, first_name, last_name
INTO retiring_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM retiring_info;

-- Join both tables on the primary key. Order by the employee number.
SELECT ri.emp_no,
    ri.first_name,
	ri.last_name,
    ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM retiring_info as ri
LEFT JOIN titles AS ti
ON ri.emp_no = ti.emp_no
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles;

-- First, retrieve the number of titles from the Unique Titles table. Then, create a Retiring Titles table to hold the required information.
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count DESC;

SELECT * FROM retiring_titles;

SELECT SUM(retiring_titles.count) 
FROM retiring_titles;

-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
SELECT emp_no, first_name, last_name, birth_date
FROM employees;

-- Retrieve the from_date and to_date columns from the Department Employee table.
SELECT from_date, to_date
FROM dept_emp;

-- Retrieve the title column from the Titles table.
SELECT title
FROM titles;

-- Write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibilty
FROM employees as e
	LEFT JOIN dept_emp as de
		ON e.emp_no = de.emp_no
	LEFT JOIN titles as ti
		ON e.emp_no = ti.emp_no
WHERE (de.to_date = '9999-01-01') 
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibilty;

-- Count membership eligibility
SELECT COUNT(me.title), me.title
INTO mentorship_titles
FROM mentorship_eligibilty as me
GROUP BY me.title
ORDER BY count DESC;

SELECT * FROM mentorship_titles;

SELECT SUM(mentorship_titles.count) 
FROM mentorship_titles;