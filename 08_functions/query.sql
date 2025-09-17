-- Aggeration Functions
-- These return a single value from a set of rows.

-- COUNT()
-- Count total number of users:
SELECT COUNT(*) AS total_users FROM users;

-- Count users who are Female:
SELECT COUNT(*) AS total_female FROM users WHERE gender='female';

-- MIN() and MAX()
-- Get the minimum and maximum salary
SELECT MIN(salary) AS minimum_salary, MAX(salary) AS maximum FROM users;

-- SUM()
-- Calculate total salary payout:
SELECT SUM(salary) AS total_payroll FROM users;

-- AVG()
-- Find average salary:
SELECT AVG(salary) AS average_salary FROM users;

-- Grouping with GROUP BY
-- Average salary by gender:
SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;

-- String Functions
-- LENGTH()
-- Length of user names
SELECT name, LENGTH(name) AS name_length FROM users;

-- LOWER() and UPPER()
-- Convert names to lowercase or uppercase:
SELECT name, LOWER(name) AS lowercase_name, UPPER(name) AS uppercase_name FROM users;

-- CONCAT()
-- Combine name and email:
SELECT CONCAT(name, '<', email, '>') AS user_contact FROM users;

-- Date Functions
-- NOW()
-- Current date and time:
SELECT NOW();

-- YEAR() , MONTH() , DAY()
-- Extract parts of date_of_birth :
SELECT name, YEAR(dob) AS year, MONTH(dob) AS month, DAY(dob) as day FROM users;

-- DATEDIFF()
-- Find number of days between today and birthdate:
SELECT name, DATEDIFF(CURDATE(),dob) AS days_lived FROM users;

-- TIMESTAMPDIFF()
-- Calculate age in years
SELECT name, TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS age FROM users;

-- 4. Mathematical Functions
-- ROUND() , FLOOR() , CEIL()
SELECT salary,
 ROUND(salary) AS rounded,
 FLOOR(salary) AS floored,
 CEIL(salary) AS ceiled
FROM users;

-- MOD()
-- Find even or odd user IDs:
SELECT id, MOD(id, 2) AS remainder FROM users;

-- 5. Conditional Functions
-- IF()
SELECT name, IF(gender='Female', 'Yes', 'No') AS is_female FROM users;



