--Drop table
DROP TABLE IF EXISTS titles;
--create table
CREATE TABLE titles(
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
);

--Drop table
DROP TABLE IF EXISTS employees;
--Create Table
CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

--Drop table
DROP TABLE IF EXISTS departments;
--Create Table
CREATE TABLE departments(
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

--Drop table
DROP TABLE IF EXISTS dept_manager;
--create table
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

--Drop table
DROP TABLE IF EXISTS dept_emp;
--Create Table
CREATE TABLE dept_emp(
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

--Drop table
DROP TABLE IF EXISTS salaries;
--create table
CREATE TABLE salaries(
	emp_no INTEGER NOT NULL PRIMARY KEY, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER NOT NULL
);