--1. List the employee number, last name, first name, sex, and salary of each employee

SELECT employees.emp_no, 
employees.last_name, 
employees.first_name,
employees.gender, 
salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no;


--2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT emp_no, last_name, first_name, hire_date 
FROM employees
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY emp_no;


--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dept_manager.dept_no, 
departments.dept_name,
dept_manager.emp_no,
employees.last_name, 
employees.first_name
FROM dept_manager
inner JOIN departments
ON dept_manager.dept_no = departments.dept_no
inner JOIN employees 
ON dept_manager.emp_no = employees.emp_no
ORDER BY emp_no;

--4. List the department of each employee with the following information:employee number, last name, first name, and department name.

SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.dept_no,
departments.dept_name
FROM employees 
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
order by emp_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

-- 6. List each employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name,
dept_emp.dept_no
FROM employees 
LEFT JOIN dept_emp 
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments 
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name='Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name,
dept_emp.dept_no
FROM employees 
LEFT JOIN dept_emp 
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments 
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name in ('Sales', 'Development');

-- 8. List the frequency counts, in descending order, of all the employee last names

SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;