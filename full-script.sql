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

SELECT * FROM employees;
