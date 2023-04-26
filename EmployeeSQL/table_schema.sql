-- Create table departments
DROP TABLE department;
CREATE TABLE department (
  dept_no VARCHAR(50) NOT NULL,
  dept_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (dept_no)
);
SELECT * FROM department;

-- Create table employees

DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	gender VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees

--create table titles
DROP TABLE titles;
CREATE TABLE titles (
	title_id varchar(5) PRIMARY KEY,
	title varchar(30)
);

-- create department managers table
DROP TABLE dept_manager;
CREATE TABLE dept_manager (
	dept_no varchar(5) references departments(dept_no),
	emp_no varchar(10)
);

-- create department employees table
DROP TABLE dept_emp;
CREATE TABLE dept_emp (
	emp_no varchar(10) references employees(emp_no),
	dept_no varchar(5) references departments(dept_no)
);

-- create salaries table
DROP TABLE salaries;
CREATE TABLE salaries (
	emp_no varchar(10) references employees(emp_no),
	salary int
);