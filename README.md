# SQL Learning Repository

This repository contains my personal collection of SQL scripts and examples that I've put together while learning database concepts. It's meant to serve as a quick reference guide for common SQL operations and patterns.

## What's Inside

The repository covers fundamental to intermediate SQL concepts through practical examples:

**Database Basics**
- `datatypes.sql` - Overview of common SQL data types (INT, VARCHAR, DECIMAL, DATE, etc.)
- `first_table.sql` - Creating your first table, basic schema modifications

**Core Operations**
- `basic-queries.sql` - SELECT statements with WHERE, ORDER BY, and LIMIT clauses
- `inesrting-into-a-table.sql` - INSERT operations and syntax variations
- `update-and-delete.sql` - Modifying and removing data from tables

**Constraints & Relationships**
- `constraints.sql` - PRIMARY KEY, NOT NULL, UNIQUE, and DEFAULT constraints
- `foreign-key-basic.sql` - Setting up relationships between tables

**Advanced Topics**
- `aggregate-functions.sql` - COUNT, MAX, MIN, AVG, and SUM operations
- `some-basic-operators.sql` - Comparison and logical operators (=, <>, AND, OR, IN)
- `full-script.sql` - Comprehensive example with a company database including:
  - Table creation and modification (ALTER, RENAME, DROP)
  - Complex queries with JOINs
  - Pattern matching with LIKE
  - GROUP BY and HAVING clauses
  - Nested queries (IN, NOT IN, ALL, SOME)
  - Views
  - Transactions (COMMIT, ROLLBACK, SAVEPOINT)
  - Triggers

## Getting Started

You'll need a MySQL database to run these scripts. I recommend using MySQL Workbench or the MySQL command-line client.

To try out these examples:

1. Create a test database:
   ```sql
   CREATE DATABASE test_db;
   USE test_db;
   ```

2. Run any script file in your MySQL environment. Most scripts assume you're working in `test_db`, but the `full-script.sql` uses a `company` database.

3. Feel free to modify the examples and experiment with different queries.

## Learning Path

If you're new to SQL, I'd suggest following this order:

1. Start with `datatypes.sql` to understand data types
2. Move to `first_table.sql` for table creation
3. Learn data manipulation with `inesrting-into-a-table.sql` and `update-and-delete.sql`
4. Practice queries with `basic-queries.sql` and `some-basic-operators.sql`
5. Understand constraints with `constraints.sql`
6. Explore relationships with `foreign-key-basic.sql`
7. Get into aggregate operations with `aggregate-functions.sql`
8. Finally, work through `full-script.sql` for a complete picture

## Notes

- Some scripts contain deliberate examples of data modification (like DELETE or UPDATE without WHERE clauses) to demonstrate what happens. Be careful when running these on production databases!
- The examples use simple schemas focused on students, teachers, employees, and departments.
- Comments are included throughout to explain what each query does.

## Database Used

These scripts are written for MySQL but should work with minimal modifications on other SQL databases like PostgreSQL or MariaDB.

---

Feel free to use these examples for your own learning. If you spot any errors or have suggestions for improvement, contributions are welcome!
