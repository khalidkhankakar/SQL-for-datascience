-- Constraints in MySQL are rules applied to table columns to ensure the accuracy, validity, and integrity of the data.

-- 1. UNIQUE Constraint
-- Ensures that all values in a column are different.
CREATE TABLE users (
    email VARCHAR(100) UNIQUE
)

-- Add UNIQUE using ALTER TABLE :
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (emial);


-- 2. NOT NULL Constraint
-- Ensures that a column cannot contain NULL values.
CREATE TABLE users (
    name VARCHAR(100) NOT NULL
)

-- Add NOT NULL using ALTER TABLE :
ALTER TABLE users MODIFY COLUMN name VARCHAR(100) NOT NULL;


-- 3. CHECK Constraint
-- Ensures that values in a column satisfy a specific condition.
CREATE TABLE users (
    date_of_birth DATE NOT NULL CHECK(date_of_birth > '2000-01-01')
)

-- Add CHECK using ALTER TABLE :
ALTER TABLE users ADD CONSTRAINT chk_dob CHECK(date_of_birth > '2000-01-01');

-- 4. DEFAULT Constraint
-- Sets a default value for a column if none is provided during insert.
CREATE TABLE users (
    is_active BOOLEAN DEFAULT TRUE
)

-- Add CHECK using ALTER TABLE :
ALTER TABLE users ALTER COLUMN is_active SET DEFAULT TRUE;


-- 5. PRIMARY KEY Constraint
-- Uniquely identifies each row. Must be NOT NULL and UNIQUE.
CREATE TABLE users (
    id INT PRIMARY KEY
)

-- Add CHECK using ALTER TABLE :
ALTER TABLE users ADD PRIMARY KEY (id);


-- 5. AUTO INCREMENT Constraint
-- Used with PRIMARY KEY to automatically assign the next number.
CREATE TABLE users (
    id INT AUTO INCREMENT PRIMARY KEY
)


-- user table

CREATE TABLE my_constraints (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    date_of_birth DATE NOT NULL CHECK(date_of_birth > '2000-01-01') ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

