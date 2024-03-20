-- Test-1 with a larger dataset:
CREATE TABLE employees(id int, sal int);
INSERT INTO employees VALUES(generate_series(1,100),generate_series(2000,5000));
SELECT max_to_min(sal) FROM employees;
SELECT max_to_min(id) FROM employees;


CREATE TABLE test_table_large AS SELECT generate_series(1, 100) AS val;
-- Query using max_to_min function
SELECT max_to_min(val) AS result FROM test_table_large;


-- Test-2 with negative integers:
CREATE TABLE test_table_negative AS SELECT generate_series(-10, -1) AS val;
-- Query using max_to_min function
SELECT max_to_min(val) AS result FROM test_table_negative;



-- Test-3 with NULL values:
CREATE TABLE test_table_null AS SELECT generate_series(1, 5) AS val UNION ALL SELECT NULL;
-- Query using max_to_min function
SELECT max_to_min(val) AS result FROM test_table_null;


