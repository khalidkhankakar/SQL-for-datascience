--  This fetches every column and every row from the users table
SELECT * FROM users;

-- This only fetches specific columns e.g. the name and email columns from all rows.
SELECT name, email FROM users;


-------------------------------Renaming the table----------------------------------
-- To rename an existing table:
RENAME TABLE users to customers;

-- To rename it back
RENAME TABLE customers to users;


--------------------------------Altering the table---------------------------------
--  You can use ALTER TABLE to modify an existing table 

-- Add column
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

-- Drop column
ALTER TABLE users DROP COLUMN is_active;

-- Modify the column type
ALTER TABLE user MODIFY COLUMN name VARCHAR(200); 


--------------------------------Move a Column position-------------------------------

-- To move a column (e.g. email ) to the after id: 
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) AFTER id;

-- To move a column (e.g. name ) to the first position: 
ALTER TABLE users MODIFY COLUMN name VARCHAR(200) FIRST;
