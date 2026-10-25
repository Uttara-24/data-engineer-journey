CREATE TABLE departments (
  dept_name TEXT PRIMARY KEY,
  manager TEXT,
  location TEXT
);

INSERT INTO departments VALUES
('IT','Suresh','Pune'),
('HR','Meena','Mumbai'),
('Sales','Rohan','Delhi'),
('Finance','Kavita','Pune');

-- One employee whose department has no match
INSERT INTO employees VALUES (8,'Anjali','Legal',65000,'Pune');

select * from departments;

select * from employees;

-- Show each employee’s name and their manager’s name.
select e.name, d.manager 
from employees e
Join departments d ON e.department = d.dept_name;

-- All employees, including those with no department match.
SELECT e.name, e.department, d.manager
FROM employees e
LEFT JOIN departments d ON e.department = d.dept_name;

-- Only employees whose department has no match.
SELECT e.name, e.department
FROM employees e
LEFT JOIN departments d ON e.department = d.dept_name
WHERE d.dept_name IS NULL;

-- Departments with no employees.
SELECT d.dept_name, d.manager
FROM departments d
LEFT JOIN employees e ON e.department = d.dept_name
WHERE e.id IS NULL;

-- How many employees each manager manages.
SELECT d.manager, COUNT(*) AS employee_count
FROM employees e
JOIN departments d ON e.department = d.dept_name
GROUP BY d.manager;

-- Show every manager, including those who manage nobody (count 0)
SELECT d.manager, COUNT(e.id) AS employee_count
FROM departments d
LEFT JOIN employees e ON e.department = d.dept_name
GROUP BY d.manager;