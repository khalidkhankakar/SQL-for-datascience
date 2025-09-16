-- Basic Syntax
DELETE FROM table_name WHERE condition;

-- Delete One Row
DELETE FROM users WHERE id = 4;

-- Delete Multiple Rows
DELETE FROM users WHERE gender= 'Male';

-- Delete All Rows (but keep table structure)
DELETE FROM users;

-- Drop the Entire Table (use with caution)
DROP TABLE users;
-- This removes the table structure and all data permanently.

-- QUICK QUIZ
-- 1. Delete the user with the username 'john_doe' from the users table.
DELETE FROM users WHERE username='john_doe';

-- 2. Remove all products from the products table where the price is less than 10.
DELETE FROM products WHERE price < 10;

-- 3. Delete all orders from the orders table that have a status of 'cancelled'.
DELETE FROM orders WHERE status = 'cancelled';

-- 4. Remove all rows from the employees table but keep the table structure.
DELETE FROM employees;

-- 5. Delete the customer from the customers table whose email is 'test@example.com'.
DELETE FROM customers WHERE email='text@example.com';

-- 6. Remove all students from the students table who graduated before 2020.
DELETE FROM students WHERE graduated < 2020.

-- 7. Delete all entries from the logs table.
DELETE FROM logs;

-- 8. Drop the archive table completely from the database.
DROP TABLE archive;

-- 9. Delete all books from the books table where the author is 'Unknown'.
DELETE FROM books WHERE author = 'Unknown';

-- 10.Remove all records from the sales table where the amount is 0.
DELETE FROM sales WHERE amount = 0;




