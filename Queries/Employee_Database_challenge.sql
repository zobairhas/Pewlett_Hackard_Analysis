-- Retrieve info from employees and titles tables
SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
	   ti.title,
	   ti.from_date,
	   ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
	ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no ASC

-- Create new table to hold number of retiring employees by title
SELECT COUNT(rt.title), rt.title
INTO retiring_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
GROUP BY rt.title
ORDER BY rt.count DESC;

-- Retrieve info from employees, dept_emp, and titles tables
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
	ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY emp_no ASC;

-- Total count from the mentorship_eligibility table
SELECT COUNT(*)
FROM mentorship_eligibility;

-- Total count from the unique_titles table
SELECT COUNT(*)
FROM unique_titles;