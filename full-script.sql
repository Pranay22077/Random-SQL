USE company;

-- Renaming a table
RENAME TABLE gemini_tut.departments TO company.departments;

-- Create parent table
CREATE TABLE departments(
dept_id CHAR(4) PRIMARY KEY,
dept_name VARCHAR(30) NOT NULL,
location VARCHAR(50)
);

INSERT INTO department
VALUES ('23', 	'science', 'delhi'),
('24', 'maths', 'rohini'),
('25', 'bio', 'azadpur');

-- create child table
create table employees(
emp_id int primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
email varchar(100) unique,
salary decimal(10,2),
dept_id char(4),
FOREIGN KEY (dept_id) references department(dept_id)
);

-- Renaming a column
ALTER TABLE departments
CHANGE COLUMN dept_name name VARCHAR(40);

ALTER TABLE departments
RENAME TO department;

ALTER TABLE departments
CHANGE COLUMN name dept_name VARCHAR(40);

DESCRIBE department;
SELECT * FROM department WHERE name LIKE 'a%';

-- adding a new column
ALTER TABLE employees
ADD age int not null;

-- dropping a column
ALTER TABLE employees
DROP COLUMN age;

-- modifying an already existing column
ALTER TABLE employees
MODIFY first_name VARCHAR(40) NOT NULL UNIQUE;

-- Dropping a table
DROP TABLE employees;

-- Truncate a table 
TRUNCATE TABLE employees;

describe employees;

-- inserting into a table
INSERT INTO employees(first_name, last_name, emp_id, email, salary)
VALUES ('Pranay', 'Gadh', 123, 'example@gmail.com', 10000);

-- updating in a table
UPDATE employees
SET salary = 20000
WHERE first_name = 'Pranay';

-- deleting a tuple
DELETE FROM employees
WHERE emp_id = 123;

INSERT INTO employees(first_name, last_name, emp_id, email, salary, dept_id)
VALUES ('Pranay', 'Gadh', 101, 'pranay1@gmail.com', 10000, '23'),
 ('Aarav', 'Shah', 102, 'aarav.shah@example.com', 12000, '24'),
 ('Riya', 'Patel', 103, 'riya.patel@example.com', 11000, '25'),
 ('Meera', 'Joshi', 104, 'meera.joshi@example.com', 9500, '24'),
 ('Karan', 'Desai', 105, 'karan.desai@example.com', 13000, '23'),
 ('Isha', 'Rana', 106, 'isha.rana@example.com', 14000, '23'),
 ('Vihaan', 'Kapoor', 107, 'vihaan.kapoor@example.com', 12500, '24'),
('Sara', 'Khan', 108, 'sara.khan@example.com', 11500, '25');

-- select queries
SELECT * FROM employees;

-- a little more advanced
SELECT emp_id,first_name, email, salary 
FROM employees
WHERE emp_id%2 = 0; --  even emp ids

SELECT emp_id,first_name, email, salary 
FROM employees
WHERE emp_id%2 = 0 AND emp_id%4 = 0;

SELECT emp_id,first_name, email, salary 
FROM employees
WHERE emp_id%2 = 0 OR salary >= 13000;

SELECT first_name, last_name, email
FROM employees
WHERE emp_id%2 = 0
GROUP BY first_name DESC;

-- pattern matching using _ and %
-- % is for "uske baad/ pehle ka sab" and _ is for "atmost one letter"

SELECT *
FROM employees
WHERE first_name LIKE '%a_';

-- aggregate functions
SELECT COUNT(first_name) AS name_count
FROM employees;

SELECT MAX(salary) AS maximum_salary
FROM employees;

SELECT COUNT(*) AS name_count_all
FROM employees;

SELECT MIN(salary) AS mimimum_salary
FROM employees;

SELECT AVG(salary) AS average_salary
FROM employees;

SELECT SUM(salary) AS sum_of_salary
FROM employees
-- GROUP BY is used to apply that aggregate function on each desired group rather than on whole column
GROUP BY emp_id;

-- HAVING: a more stronger condtition after group by

-- Table aliases
SELECT D.dept_name, E.first_name
FROM employees E
INNER JOIN department D -- LEFT JOIN & RIGHT JOIN are also there
ON E.dept_id = D.dept_id;

-- set operations
-- UNION
SELECT E.first_name, E.last_name, E.salary, D.dept_name
FROM employees E
INNER JOIN department D
ON E.dept_id = D.dept_id

UNION

SELECT E.first_name, E.last_name, E.email, D.location
FROM employees E, department D;

-- nested queries using IN and NOT IN
SELECT E.first_name, E.last_name, D.dept_id
FROM employees E, department D
WHERE D.dept_id NOT IN (
	SELECT dept_id FROM department WHERE dept_id = '23' OR dept_id = '24');
    
SELECT E.first_name, E.last_name, D.dept_id
FROM employees E, department D
WHERE D.dept_id IN (
	SELECT dept_id FROM department WHERE dept_id = '23' OR dept_id = '24');
    
-- nested queries using ALL and SOME
SELECT E.salary, D.dept_name, D.location
FROM department D, employees E
WHERE E.salary > ALL (
		SELECT salary FROM employees WHERE salary <= 11000 );
        
-- creating views
CREATE VIEW employee_details_10k AS
SELECT first_name, last_name, salary
FROM employees
WHERE salary >= 10000;

DROP VIEW employee_details_10k;

SELECT * FROM employee_details_10k WHERE salary > 11000;

-- Transactions
-- START TRANSACTION, COMMIT, SAVEPOINT _name_, ROLLBACK, ROLLBACK TO _savepoint name_

START TRANSACTION;
UPDATE employees
SET salary = 12100
WHERE salary = 12000;

COMMIT;

START TRANSACTION;
UPDATE employees
SET salary = 9600
WHERE salary = 9500;

SAVEPOINT incr_100;
ROLLBACK TO incr_100;
UPDATE employees
SET first_name = 'new', last_name = 'member'
WHERE salary = 13000;

SAVEPOINT change_name;

ROLLBACK;


SELECT * FROM employees;

-- Triggers (BEFORE | AFTER // INSERT | UPDATE | DELETE)
DELIMITER //
CREATE TRIGGER loc_change
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
	UPDATE department
    SET location = 'San Francisco'
	WHERE location = 'rohini';
END //
DELIMITER ; 

UPDATE employees 
SET first_name = 'human'
WHERE salary >= 12000;

SELECT * FROM employees;

SELECT * FROM department;
