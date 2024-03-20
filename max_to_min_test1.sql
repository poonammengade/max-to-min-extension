CREATE TABLE employees(id int, sal int);
INSERT INTO employees VALUES(generate_series(1,100),generate_series(2000,5000));
SELECT max_to_min(sal) FROM employees;
SELECT max_to_min(id) FROM employees;
