USE test_db;
CREATE TABLE student(
roll_no INT PRIMARY KEY,
name VARCHAR(30),
subject VARCHAR(20)
);

ALTER TABLE student ADD sgpa DECIMAL(3,2);

DROP TABLE student;

DESCRIBE student;

SELECT * FROM student;

--ordering
SELECT * 
FROM student
ORDER BY name;
