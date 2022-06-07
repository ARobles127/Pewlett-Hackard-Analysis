-- Deliverable 1: The Number of Retiring Employees by Title
select emp_no, first_name ,last_name
from employees

select title, from_date, to_date
from title

select e.emp_no, 
e.first_name,
e.last_name,
t.title,
t.from_date, 
t.to_date
into retirement_titles 
from title as t
left join employees as e
on (t.emp_no = e.emp_no)
where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
select emp_no, first_name, last_name, title 
from retirement_titles

SELECT DISTINCT ON (emp_no) emp_no, 
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, title DESC;

-- retrieve the number of employees by their most recent job title who are about to retire.
select count (title), title
into retiring_titles
from unique_titles
group by title
order by count desc;

-- Deliverable 2: The Employees Eligible for the Mentorship Program
select distinct on (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
into mentorship_eligibility
from employees as e
left join dept_emp as de 
on (e.emp_no = de.emp_no)
inner join title as t
on (e.emp_no = t.emp_no)
where (de.to_date = '9999-01-01')
	and (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by e.emp_no asc; 