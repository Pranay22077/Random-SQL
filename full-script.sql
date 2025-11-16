USE company;

RENAME TABLE gemini_tut.departments TO company.departments;

CREATE TABLE departments(
dept_id CHAR(4) PRIMARY KEY,
dept_name VARCHAR(30) NOT NULL,
location VARCHAR(50)
);

create table employees(
emp_id int primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
email varchar(100) unique,
salary decimal(10,2),
dept_id char(4),
FOREIGN KEY (dept_id) references departments(dept_id)
);


ALTER TABLE departments
CHANGE COLUMN dept_name name VARCHAR(40);

ALTER TABLE departments
CHANGE COLUMN name dept_name VARCHAR(40);

DESCRIBE departments;