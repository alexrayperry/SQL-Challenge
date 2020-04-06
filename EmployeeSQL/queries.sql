-- List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no=s.emp_no
ORDER BY emp_no ASC;

-- List employees who were hired in 1986.

select * 
from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
from departments d
inner join dept_manager m
on d.dept_no=m.dept_no
inner join employees e
on e.emp_no=m.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

select x.emp_no, e.last_name, e.first_name, d.dept_name
from departments d
inner join dept_emp x
on d.dept_no=x.dept_no
inner join employees e
on e.emp_no=x.emp_no
ORDER BY emp_no ASC;

-- List all employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name 
FROM employees 
WHERE first_name = 'Hercules' AND last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

select x.emp_no, e.last_name, e.first_name, d.dept_name
from departments d
inner join dept_emp x
on d.dept_no=x.dept_no
inner join employees e
on e.emp_no=x.emp_no
where d.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select x.emp_no, e.last_name, e.first_name, d.dept_name
from departments d
inner join dept_emp x
on d.dept_no=x.dept_no
inner join employees e
on e.emp_no=x.emp_no
where d.dept_name in ('Sales', 'Development')

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.



