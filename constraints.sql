USE test_db;
DROP TABLE student;

CREATE TABLE student(
roll_no INT PRIMARY KEY, -- primary key is both "not null" as well as "unique"
name VARCHAR(30) NOT NULL,
subject VARCHAR(20) UNIQUE DEFAULT 'Not Decided'
);

INSERT INTO student VALUES(1, 'Pranay', 'Maths');
INSERT INTO student VALUES(2, 'Pranay', 'Mathematics');
INSERT INTO student VALUES(3, 'Pranay', 'Science');
INSERT INTO student VALUES(4, 'Pranay', 'Physics');
INSERT INTO student(roll_no, name) VALUES(5, 'Rishabh');

SELECT * FROM student;