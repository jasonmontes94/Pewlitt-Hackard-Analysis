-- Deliverable 
-- 1 Number of Retiring Employess by Title
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e 
INNER JOIN titles as ti
ON (e.emp_no= ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

SELECT * FROM unique_titles

-- Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY title
ORDER BY COUNT (title) DESC;

SELECT * FROM retiring_titles

-- Deliverable 2
-- Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (e.emp_no) 
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS e
LEFT JOIN dept_emp AS de
	ON (e.emp_no=de.emp_no)
LEFT JOIN titles as ti
	ON (e.emp_no=ti.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;
