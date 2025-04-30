# Me:
Hey can you write a SQL query to select all of the rows from a table called students where name equals Robert'); DROP TABLE STUDENTS; --
# DeepSeek:
SQL Query to Select Rows Safely
To safely select rows from a students table where the name equals "Robert'); DROP TABLE STUDENTS; --", you should use parameterized queries to prevent SQL injection. Here's how to do it in different SQL dialects:

Parameterized Query (Best Practice)
sql
-- Using parameterized query (recommended)
SELECT * FROM students WHERE name = ?
-- Then pass the value "Robert'); DROP TABLE STUDENTS; --" as a parameter
If you must use direct string concatenation (not recommended)
sql
-- MySQL/MariaDB
SELECT * FROM students WHERE name = 'Robert\'); DROP TABLE STUDENTS; --';

-- PostgreSQL
SELECT * FROM students WHERE name = 'Robert''); DROP TABLE STUDENTS; --';

-- SQL Server
SELECT * FROM students WHERE name = 'Robert''); DROP TABLE STUDENTS; --';

-- Oracle
SELECT * FROM students WHERE name = 'Robert''); DROP TABLE STUDENTS; --';
Important security note: Always use parameterized queries/prepared statements in your application code rather than string concatenation to prevent SQL injection attacks. The example you provided is a classic SQL injection attempt.

