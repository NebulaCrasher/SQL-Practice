CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY, 
	title VARCHAR (30) 
);

CREATE TABLE employees(
	emp_no int PRIMARY KEY,
	emp_title VARCHAR(30),
	birth_date date,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date date,
	FOREIGN KEY(emp_title) REFERENCES titles(title_id)
);

CREATE TABLE salaries(
	emp_no int,
	salary int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE departments(
	dept_no VARCHAR(20) PRIMARY KEY,
	dept_name VARCHAR(45)
);

CREATE TABLE dept_emp(
	emp_no int,
	dept_no VARCHAR(20),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(20),
	emp_no int,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

