USE test_db;

INSERT INTO student VALUES(
(1, 'Pranay', 'Mathematics'),
(2, 'Rishabh', 'CSE');

INSERT INTO student(roll_no, subject) VALUES( 3, 'ECE');

SELECT * FROM student;
