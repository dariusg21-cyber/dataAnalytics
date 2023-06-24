CREATE DATABASE payroll;
USE payroll;
/*Write a query to create an employee table with the fields employee id, first name,
 last name, job id, salary, manager id, and department id.*/
CREATE TABLE employee(
emp_id INT PRIMARY KEY NOT NULL,
f_name VARCHAR(10),
l_name VARCHAR(10),
job_id VARCHAR(6),
salary INT,
manager_id int,
dept_id INT
);
/*Write a query to insert values into the employee table.*/
INSERT INTO employee(emp_id, f_name, l_name, job_id, salary, manager_id, dept_id) VALUES(201, 'Darius', 'Gates', 'HP112', 150000, 2, 23);

/*Write a query to find the first name and salary of the employee whose salary is
 higher than the employee with the last name Kumar from the employee table*/
 SELECT f_name, salary FROM employee WHERE salary > (SELECT salary from employee WHERE l_name = 'Kumar');
 
 /*Write a query to display the employee id and last name of the employee whose
 salary is greater than the average salary from the employee table.*/
 SELECT emp_id, l_name FROM employee WHERE salary > (SELECT AVG(salary) FROM employee);
 
 /*Write a query to display the employee id, first name, and salary of the employees who earn a salary that is higher than
 the salary of all the shipping clerks (JOB_ID = HP122). Sort the results of the salary in ascending order.*/
 SELECT emp_id, f_name, salary FROM employee WHERE salary > (SELECT salary FROM employee WHERE job_id = 'HP122' ORDER BY salary ASC);
 
 /*Write a query to display the first name, employee id, and salary of the first three employees with highest salaries.*/
 SELECT f_name, emp_id, salary FROM employee ORDER BY salary DESC LIMIT 3;