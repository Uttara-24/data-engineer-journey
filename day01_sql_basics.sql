CREATE TABLE employees (
  id INTEGER PRIMARY KEY,
  name TEXT,
  department TEXT,
  salary INTEGER,
  city TEXT
);


INSERT INTO employees VALUES
(1,'Amit','IT',55000,'Pune'),
(2,'Neha','HR',45000,'Mumbai'),
(3,'Rahul','IT',70000,'Pune'),
(4,'Priya','Sales',40000,'Delhi'),
(5,'Karan','IT',90000,'Bangalore'),
(6,'Sneha','HR',50000,'Pune'),
(7,'Vikram','Sales',60000,'Mumbai');


SELECT * FROM employees;

select * from employees where city = 'Mumbai';

select * from employees where salary between 45000 and 65000;

SELECT name, salary
FROM employees
WHERE department = 'IT' AND salary > 60000;

select city, ROUND(AVG(salary), 0) AS avg_salary
from employees
group by city
order by avg_salary;

-- Average salary per city, only cities above 55000.
select city, ROUND(AVG(salary), 0) AS avg_salary
from employees
group by city
having AVG(salary) > 55000;

-- lowest paid employee
SELECT name, salary
FROM employees
ORDER BY salary ASC
LIMIT 2;


select max(salary) from employees;





