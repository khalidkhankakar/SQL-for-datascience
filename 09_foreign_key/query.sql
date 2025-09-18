-- Foreign Key
-- A foreign key is a column that creates a link between two tables. It ensures that the value in one table must match a value in another table.
-- This is used to maintain data integrity between related data

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL
);

CREATE TABLE addresses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    pincode VARCHAR(10) NOT NULL,
    CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES employees(id) ON DELETE CASCADE
);


-- Explanation:
-- 1. user_id is a foreign key.
-- 2. It references the id column in the users table.
-- 3. This ensures that every address must be linked to a valid user.

-- Dropping a Foreign Key
-- To drop a foreign key, you need to know its constraint name. MySQL autogenerates it if you don’t specify one, or you can name it yourself:

ALTER TABLE addresses DROP FOREIGN KEY fk_users;

-- Adding a Foreign Key Later (Using ALTER)
-- Suppose the foreign key was not defined during table creation. You can add it
-- later using ALTER TABLE :

ALTER TABLE addresses ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id);

-- Adding ON DELETE Action
-- By default, if you delete a user that has related addresses, MySQL will throw an error. You can control this behavior with ON DELETE.

-- Summary
-- Foreign keys connect tables and enforce valid references.
-- You can create them inline or with ALTER TABLE .
-- You can drop them by name.
-- Use ON DELETE to control what happens when the parent row is deleted.