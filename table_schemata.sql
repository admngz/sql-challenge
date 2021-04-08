-- employee table
DROP TABLE employees;
CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	title_id VARCHAR(5),
	birthday VARCHAR,
	firstname VARCHAR(30),
	lastname VARCHAR(30),
	sex VARCHAR,
	hiredate VARCHAR
);

SELECT * FROM employees;

-- titles table
DROP TABLE titles;
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(30) NOT NULL
);

SELECT * FROM titles;

-- departments table
DROP TABLE departments;
CREATE TABLE departments(
	dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

SELECT * FROM departments;

-- salaries table
DROP TABLE salaries;
CREATE TABLE salaries(
	emp_no INT,
	salary INT
);

SELECT * FROM salaries;

-- employees in each department
DROP TABLE dept_emp;
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(4)
);

SELECT * FROM dept_emp;

-- dept_manager table
DROP TABLE dept_manager;
CREATE TABLE dept_manager(
	dept_no VARCHAR(4),
	emp_no INT
);

SELECT * FROM dept_manager;