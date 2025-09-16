-- Method 1
INSERT INTO users VALUES
(151,"Khalid Khan", "khalidkhan12", "khalid@khan.com", "Male", 12112, "Ksf", "Afganistan", "ML Engineer", "Kakar industry", DEFAULT);

-- Method 2
INSERT INTO users (name, username, email, gender, salary, city, country, job_name, company) VALUES
("Khalid Kakar", "kakar", "kakar@cwh.com", "Male", 99999, "Quetta", "Pakistan", "Data Science", "Kakar industry");

-- Method 3
INSERT INTO users (name, username, email, gender, salary, city, country, job_name, company) VALUES
("Khalid Kakar", "kakar1", "kakar1@cwh.com", "Male", 999919, "Quetta", "Pakistan", "Data Science", "Kakar industry"),
("Khalid Kakar", "kakar2", "kakar2@cwh.com", "Male", 999992, "Quetta", "Pakistan", "Data Science", "Kakar industry");