-- SQL JOINs in MySQL
-- In SQL, JOINs are used to combine rows from two or more tables based on related columns — usually a foreign key in one table referencing a primary key in another

-- users table
-- ---------------
-- |id | name
-- ---------------
-- | 1 | Aarav 
-- | 2 | Sneha 
-- | 3 | Raj 


-- addresses table
-- --------------------
-- | id| user_id | city
-- --------------------
-- | 1 |    1    | Mumbai
-- | 2 |    2    | Kolkata
-- | 3 |    4    | Delhi



-- INNER JOIN
SELECT users.name, addresses.city
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;

-- users addresses
-- ----- ------
-- | 1 | | 1 |
-- | 2 | | 2 |
-- | | | |   |
-- => only matching pairs


-- 2. LEFT JOIN
-- Returns all rows from the left table ( users ), and matching rows from the right table ( addresses ). If no match is found, NULLs are returned.

SELECT users.name, addresses.city
FROM users
LEFT JOIN addresses ON users.id = addresses.user_id;

-- users addresses
-- ----- ------
-- | 1 | | 1 |
-- | 2 | | 2 |
-- | 3 | | null |
-- => all users + matched addresses (or NULL)


-- 3. RIGHT JOIN
-- Returns all rows from the right table ( addresses ), and matching rows from the left table ( users ). If no match is found, NULLs are returned.

SELECT users.name, addresses.city
FROM users
RIGHT JOIN addresses ON users.id = addresses.user_id;

-- users addresses
-- ----- ------
-- | 1 | | 1 |
-- | 2 | | 2 |
-- | null | | 4 |
-- => all addresses + matched users (or NULL)