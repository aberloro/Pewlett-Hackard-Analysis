--Deliverable 1, Retiring Employees by Title--
--D1, retirement titles
SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t 
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e,emp_no;

--D1, remove dupes
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

--D1, employees by title about to retire
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

--Deliverable 2, Emps eligible for Mentorship Program
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t 
ON (e.emp_no = t.emp_no)
WHERE 
	de.to_date = '9999-01-01'AND
	e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;


--D3, two additional tables
--mentorship eligible by title--
SELECT COUNT(title), title
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT(title) DESC;

--compare current mentorship elegibility vs outgoing by dept
--refactor previous mentorship_elegibility table to include dept_name
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title,
	d.dept_name
INTO mentorship_eligibility_with_dept
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t 
ON (e.emp_no = t.emp_no)
INNER JOIN departments AS d
ON (d.dept_no = de.dept_no)
WHERE 
	de.to_date = '9999-01-01'AND
	e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;

--find count of available mentors per dept
SELECT COUNT(title) AS "potential_mentors", 
		dept_name 
INTO available_mentors
FROM mentorship_eligibility_with_dept
GROUP BY dept_name
ORDER BY COUNT(title) DESC;

--join available mentors with retiring employees per dept
SELECT COUNT(title) AS "potential_mentors", 
		dept_name 
INTO available_mentors
FROM mentorship_eligibility_with_dept
GROUP BY dept_name
ORDER BY COUNT(title) DESC;
