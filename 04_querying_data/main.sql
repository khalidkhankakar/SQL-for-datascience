-- Filter by Where clause
SELECT * FROM users WHERE gender = 'Male'; 

-- not equal 
SELECT * FROM users WHERE gender != 'Male'; 
SELECT * FROM users WHERE gender <> 'Male'; 

-- greater and less than
SELECT * FROM users WHERE salary >= 929999; 
SELECT * FROM users WHERE id <= 12; 

-- is null and is not null
SELECT * FROM users WHERE city IS NULL;
SELECT * FROM users WHERE city IS NOT NULL;

-- between
SELECT * FROM users WHERE salary BETWEEN 11900 AND 71983;

-- in
SELECT * FROM users WHERE gender IN ('Male', 'Other'); 