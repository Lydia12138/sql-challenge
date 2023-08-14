# sql-challenge
 
# Background

I'm new data engineer at Pewlett Hackard (a fictional company) for twp weeks. Now I need to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
For this project, I will design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data.

This script first designs the tables to hold data in the CSVs, then imports the CSVs into a SQL database, and answers questions about the data. In other words, it performs:

1. Data Modeling

2. Data Engineering

3. Data Analysis

#### Data Modeling

Inspects the CSVs and sketch out an ERD of the tables.
 

#### Data Engineering

* Uses the information given to create a table schema for each of the six CSV files. Specify data types, primary keys, foreign keys, and other constraints.

* Imports each CSV file into the corresponding SQL table.

#### Data Analysis

After completing the database, I do the following:

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).