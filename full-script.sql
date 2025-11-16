USE company;

-- Renaming a table
RENAME TABLE gemini_tut.departments TO company.departments;

-- Create parent table
CREATE TABLE departments(
dept_id CHAR(4) PRIMARY KEY,
dept_name VARCHAR(30) NOT NULL,
location VARCHAR(50)
);

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

INSERT INTO employees(first_name, last_name, emp_id, email, salary)
VALUES ('Pranay', 'Gadh', 101, 'pranay1@gmail.com', 10000),
 ('Aarav', 'Shah', 102, 'aarav.shah@example.com', 12000),
 ('Riya', 'Patel', 103, 'riya.patel@example.com', 11000),
 ('Meera', 'Joshi', 104, 'meera.joshi@example.com', 9500),
 ('Karan', 'Desai', 105, 'karan.desai@example.com', 13000),
 ('Isha', 'Rana', 106, 'isha.rana@example.com', 14000),
 ('Vihaan', 'Kapoor', 107, 'vihaan.kapoor@example.com', 12500),
('Sara', 'Khan', 108, 'sara.khan@example.com', 11500);

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
-- % is for "uske baad/ pehle ka sab" and _ is for "bas ek letter aur"

SELECT *
FROM employees
WHERE first_name LIKE '%a_';
