SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT employees.emp_no, employees.last_name, employees.first_name, department_manager.dept_no, departments.dept_name, department_manager.from_date, department_manager.to_date 
FROM employees
INNER JOIN department_manager ON employees.emp_no = department_manager.emp_no
INNER JOIN departments ON departments.dept_no = department_manager.dept_no;

SELECT employees.emp_no, employees.last_name, employees.first_name,  departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no;

SELECT *
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name,  departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

SELECT employees.emp_no, employees.last_name, employees.first_name,  departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name= 'Development';

SELECT last_name, COUNT(last_name) AS last_name_count
FROM employees
Group BY last_name
ORDER BY last_name_count DESC;







