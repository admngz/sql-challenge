-- #1. list the following details of each employee: employee #, last name, first name, sex, and salary
SELECT employees.emp_no, employees.lastname, employees.firstname, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;


-- #2. list first name, last name, and hire date for employees who were hired in 1986
SELECT firstname, lastname, hiredate
FROM employees WHERE hiredate LIKE '______1986';


-- 3. list the manager of each department with the following information: department #, department name, the manager's employee number, last name first name
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.lastname, employees.firstname
FROM departments
INNER JOIN dept_manager ON
departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON
employees.emp_no = dept_manager.emp_no;


-- 4.list the department of each employee with the following information: employee number, last name, first name, and department name
SELECT employees.emp_no, employees.lastname, employees.firstname, departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;


-- 5. list first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"
SELECT employees.firstname, employees.lastname, employees.sex 
FROM employees
WHERE firstname = 'Hercules' AND lastname LIKE 'B%';


-- 6. list all employees in the sales department, including their employee number, last name, first name, and department name
SELECT * FROM departments;
-- sales = d007
-- development = d005


SELECT employees.emp_no, employees.lastname, employees.firstname, departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_emp.dept_no = 'd007';


-- 7. list all employees in the sales and development departments, including their employee number, last name, first name, and department name
SELECT employees.emp_no, employees.lastname, employees.firstname, departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_emp.dept_no IN ('d007', 'd005');


-- 8. in decending order, list the frequency count of employee last names, i.e., how many employees share each last name
SELECT lastname, COUNT(*) 
FROM employees
GROUP BY lastname
ORDER BY lastname DESC;