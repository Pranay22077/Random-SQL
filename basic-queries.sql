USE test_db;
SELECT *
FROM student
ORDER BY name DESC
LIMIT 4;

SELECT name, subject
FROM student
WHERE subject  = 'Not Decided' OR name = 'Pranay';

SELECT *
FROM student
WHERE subject <> 'Mathematics' AND subject <> 'Maths';
