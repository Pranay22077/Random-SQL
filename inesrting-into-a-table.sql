USE test_db;

SELECT * FROM student;

INSERT INTO student VALUES(
1, 'Pranay', 'Mathematics'
);
INSERT INTO student VALUES(
2, 'Pruunay', 'CSE'
);

INSERT INTO student(roll_no, subject) VALUES( 3, 'ECE');
