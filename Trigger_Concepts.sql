USE advanced_sql_topics;

CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    updated_at TIMESTAMP
);

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    SET NEW.updated_at = CURRENT_TIMESTAMP;
END;

INSERT INTO users (id, name, email) VALUES (1, 'Amit', 'amit@example.com');
INSERT INTO users (id, name, email) VALUES (2, 'Priya', 'priya@example.com');

INSERT INTO users (id, name, email) VALUES (3, 'Rahul', 'rahul@example.com');

INSERT INTO users (id, name, email) VALUES (4, 'Sneha', 'sneha@example.com');

INSERT INTO users (id, name, email) VALUES (5, 'Rohit', 'rohit@example.com');


SELECT * FROM users;

UPDATE users SET email = 'amit_new@example.com' WHERE id = 1;
UPDATE users SET name = 'Soumya' WHERE id = 2;
UPDATE users SET email = 'soumya@example.com' WHERE id = 2;




