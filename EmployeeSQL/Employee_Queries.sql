-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
FROM Employees AS E
JOIN Salaries AS S
ON E.emp_no = S.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date >= '1986-01-01' 
AND hire_date <= '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT DM.dept_no, D.dept_name, E.emp_no, E.last_name, E.first_name
FROM Dept_manager AS DM
JOIN Departments AS D
ON DM.dept_no = D.dept_no
JOIN Employees AS E
ON DM.emp_no = E.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT DE.dept_no, DE.emp_no, E.last_name, E.first_name, D.dept_name
FROM Dept_emp AS DE
JOIN Employees AS E
ON DE.emp_no = E.emp_no
JOIN Departments AS D
ON D.dept_no = DE.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.

SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM Employees AS E
JOIN Dept_emp AS DE
ON DE.emp_no = E.emp_no
JOIN Departments AS D
ON DE.dept_no = D.dept_no
WHERE dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM Employees AS E
JOIN Dept_emp AS DE
ON DE.emp_no = E.emp_no
JOIN Departments AS D
ON DE.dept_no = D.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS "last_name_count"
FROM Employees
GROUP BY last_name
ORDER BY "last_name_count" DESC;