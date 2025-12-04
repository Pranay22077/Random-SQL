-- Switch to the target database
USE test_db;

-- Create the teacher table
CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY,           -- Unique teacher ID
    name VARCHAR(20) NOT NULL,            -- Teacher name
    dept CHAR(4),                         -- Department code (fixed length)
    student_id INT,                       -- Linked student roll number
    FOREIGN KEY (student_id) REFERENCES student(roll_no)
);

-- Insert sample records
INSERT INTO teacher (teacher_id, name, dept) VALUES
(101, 'abc', 'mat'),
(102, 'efg', 'sci'),
(104, 'xyz', 'bio');

-- View all teachers
SELECT * 
FROM teacher;

-- View all students
SELECT * 
FROM student;
