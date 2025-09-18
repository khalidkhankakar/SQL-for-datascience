-- SQL UNION and UNION ALL
-- The UNION operator in SQL is used to combine the result sets of two or more SELECT statements. It removes duplicates by default.
-- If you want to include all rows including duplicates, use UNION ALL .

-- UNION:- This returns a single list of unique names from both tables
-- UNION ALL :- If you want to keep duplicate names (if any), use UNION ALL.

SELECT name FROM employees
UNION
SELECT name FROM programmers;


SELECT name FROM employees
UNION ALL
SELECT name FROM programmers;

SELECT name, 'EMPLOYEE' AS role FROM employees
UNION ALL
SELECT name,'PROGRAMMER' AS role  FROM programmers;


SELECT name FROM users
UNION
SELECT name FROM admin_users
ORDER BY name;


-- Rules of UNION
-- 1. The number of columns and their data types must match in all SELECT statements.
-- 4. UNION removes duplicates by default.
-- 3. UNION ALL keeps duplicates.
