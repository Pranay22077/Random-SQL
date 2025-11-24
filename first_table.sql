-- Switch to the target database
USE test_db;

-- Create the student table
CREATE TABLE student (
    roll_no INT PRIMARY KEY,   -- Unique roll number
    name VARCHAR(30),          -- Student name
    subject VARCHAR(20)        -- Subject name
);

-- Add a new column for SGPA (supports values like 9.25)
ALTER TABLE student 
ADD sgpa DECIMAL(3,2);

-- Show table structure
DESCRIBE student;

-- Retrieve all records
SELECT * 
FROM student;

-- Ordering results by name (ascending by default)
SELECT * 
FROM student
ORDER BY name;

-- If you really want to drop the table, do it at the end
-- DROP TABLE student;
