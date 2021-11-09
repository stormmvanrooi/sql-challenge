SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no=s.emp_no;

SELECT first_name, last_name, hire_date 
FROM employees
WHERE DATE_PART('year', hire_date::date) = 1986;

SELECT d.dept_no, d.dept_name, m.emp_no, e.first_name, e.last_name
FROM dept_manager m
INNER JOIN departments d ON m.dept_no=d.dept_no
INNER JOIN employees e on m.emp_no=e.emp_no;

SELECT e.emp_no, e.first_name, e.last_name, t.dept_name
FROM employees e
INNER JOIN dept_emp d ON e.emp_no=d.emp_no
INNER JOIN departments t ON d.dept_no=t.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

SELECT e.emp_no, e.first_name, e.last_name, t.dept_name
FROM employees e
INNER JOIN dept_emp d ON e.emp_no=d.emp_no
INNER JOIN departments t ON d.dept_no=t.dept_no
WHERE dept_name = 'Sales';

SELECT e.emp_no, e.first_name, e.last_name, t.dept_name
FROM employees e
INNER JOIN dept_emp d ON e.emp_no=d.emp_no
INNER JOIN departments t ON d.dept_no=t.dept_no
WHERE dept_name = 'Sales'  
OR dept_name = 'Development';

SELECT last_name, COUNT(last_name) as last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;