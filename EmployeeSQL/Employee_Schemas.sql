--Data Engineering

DROP TABLE IF EXISTS Titles
DROP TABLE IF EXISTS Employees
DROP TABLE IF EXISTS Departments
DROP TABLE IF EXISTS Dept_emp
DROP TABLE IF EXISTS Dept_manager
DROP TABLE IF EXISTS Salaries

CREATE TABLE Titles
	(title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR NOT NULL);
	
SELECT * FROM Titles

CREATE TABLE Employees
	(emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id));
	
SELECT * FROM Employees LIMIT 10

CREATE TABLE Departments
	(dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL);
	
SELECT * FROM Departments
	
CREATE TABLE Dept_emp
	(emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no));
	
SELECT * FROM Dept_emp LIMIT 10
	
CREATE TABLE Dept_manager
	(dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no));
	
SELECT * FROM Dept_manager
	
CREATE TABLE Salaries
	(emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no));
	
SELECT * FROM Salaries LIMIT 10