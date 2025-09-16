-- This changes the name of the user with id = 1 to "Simon Jennifer"
UPDATE users SET name='Simon Jennifer' WHERE id = 1;

-- Update the multiple columns
UPDATE users SET name="Khalid", email="Khalid@khan.com" WHERE id=3;

-- Update without WHERE clause
-- CAUTION: This updates every row in the table. Be very careful when omitting the WHERE
UPDATE users SET gender="male";


-- Quick Quiz: Practice Your UPDATE Skills
-- 1. Update the salary of user with id = 5 to ₹70,000.
UPDATE users SET salary=70000 WHERE id=5;

-- 2. Change the name of the user with email aisha@example.com to Aisha Khan.
UPDATE usere SET name="Aisha Khan" WHERE email = 'aisha@example.com';

-- 3. Increase salary by ₹10,000 for all users whose salary is less than ₹60,000.
UPDATE users SET salary = salary + 10000 WHERE salary < 60000;

-- 4. Set the gender of user Ishaan to Other .
UPDATE users SET gender = "Other" WHERE name='Ishaan';

-- 5. Reset salary of all users to ₹50,000 (Careful - affects all rows).
UPDATE users SET salary=50000;
-- Note: This query will overwrite salary for every user. Use with caution!


