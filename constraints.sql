-- Switch to the target database
USE test_db;

-- Drop the table if it already exists
DROP TABLE IF EXISTS student;

-- Create the student table
CREATE TABLE student (
    roll_no INT PRIMARY KEY,              -- Primary key (NOT NULL + UNIQUE)
    name VARCHAR(30) NOT NULL,            -- Student name (cannot be NULL)
    subject VARCHAR(20) UNIQUE            -- Subject must be unique
           DEFAULT 'Not Decided'          -- Default value if not provided
);

-- Insert sample records
INSERT INTO student VALUES (1, 'Pranay', 'Maths');
INSERT INTO student VALUES (2, 'Pranay', 'Mathematics');
INSERT INTO student VALUES (3, 'Pranay', 'Science');
INSERT INTO student VALUES (4, 'Pranay', 'Physics');
INSERT INTO student (roll_no, name) VALUES (5, 'Rishabh'); -- subject defaults to 'Not Decided'

-- View all records
SELECT * FROM student;
