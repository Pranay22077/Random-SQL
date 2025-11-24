-- Switch to the target database
USE test_db;

-- Get the top 4 students ordered by name (descending)
SELECT *
FROM student
ORDER BY name DESC
LIMIT 4;

-- Retrieve students whose subject is 'Not Decided' or whose name is 'Pranay'
SELECT name, subject
FROM student
WHERE subject = 'Not Decided'
   OR name = 'Pranay';

-- Get all students excluding those with 'Mathematics' or 'Maths' as subject
SELECT *
FROM student
WHERE subject <> 'Mathematics'
  AND subject <> 'Maths';

