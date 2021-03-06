-- List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no=s.emp_no
ORDER BY emp_no ASC;

-- List employees who were hired in 1986.

SELECT * 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM departments d
INNER JOIN dept_manager m
ON d.dept_no=m.dept_no
INNER JOIN employees e
ON e.emp_no=m.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT x.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
INNER JOIN dept_emp x
ON d.dept_no=x.dept_no
INNER JOIN employees e
ON e.emp_no=x.emp_no
ORDER BY emp_no ASC;

-- List all employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name 
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT x.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
INNER JOIN dept_emp x
ON d.dept_no=x.dept_no
INNER JOIN employees e
ON e.emp_no=x.emp_no
WHERE d.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT x.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
INNER JOIN dept_emp x
ON d.dept_no=x.dept_no
INNER JOIN employees e
ON e.emp_no=x.emp_no
WHERE d.dept_name IN ('Sales', 'Development')

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, count(*) AS "Frequency Count" 
FROM employees 
GROUP BY last_name 
ORDER BY "Frequency Count" DESC;


