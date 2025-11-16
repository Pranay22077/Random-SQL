USE test_db;

UPDATE student
SET subject = 'Math'
WHERE subject = 'Mathematics';

UPDATE student 
SET name = 'Anshita', subject = 'Accounts'
WHERE roll_no = 2;

UPDATE student
SET name = 'human';

DELETE FROM student
WHERE subject = 'Maths' OR subject = 'Math' OR subject = 'Not Decided';

DELETE FROM student;

SELECT * FROM student;
