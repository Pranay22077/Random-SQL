-- Aggregate functions
COUNT --counts all rows in table (skips missing values)
COUNT (*) -- counts all rows, regardless of NULL values
MAX -- maximun of all rows
MIN -- minimum of all rows
AVG -- average 
SUM -- sum of all entries in that column
-- AVG and SUM only work on numerical data

-- Example usage:
SELECT MAX(salary) as max_salary
FROM employee;
