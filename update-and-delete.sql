USE test_db;

UPDATE student
SET subject = 'Math'
WHERE subject = 'Mathematics';

UPDATE student 
SET name = 'Anshita', subject = 'Accounts'
WHERE roll_no = 2;

UPDATE student
SET name = 'in-humane';

DELETE FROM student
WHERE subject = 'Maths' OR subject = 'Math' OR subject = 'Not Decided';

SELECT * FROM student WHERE roll_no = 3;
