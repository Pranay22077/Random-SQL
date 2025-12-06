
-- COUNT(column)   : Counts non-NULL values in the column
-- COUNT(*)        : Counts all rows, including NULL values
-- MAX(column)     : Returns the maximum value
-- MIN(column)     : Returns the minimum value
-- AVG(column)     : Returns the average (numeric columns only)
-- SUM(column)     : Returns the total sum (numeric columns only)

-- Example:
SELECT MAX(salary) AS max_salary
FROM employee;
