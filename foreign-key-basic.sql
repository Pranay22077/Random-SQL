USE test_db;

CREATE TABLE teacher(
teacher_id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
dept CHAR(4),
student_id INT,
FOREIGN KEY (student_id) REFERENCES student(roll_no)
);

INSERT INTO teacher(teacher_id, name, dept) VALUES
(101, 'abc', 'mat'),
(102, 'abd','sci'),
(104, 'xyz, 'bio');

SELECT * FROM teacher;
SELECT * FROM student;
