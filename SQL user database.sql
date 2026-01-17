CREATE DATABASE campusx;

use campusx;

CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL
);

INSERT INTO users (user_id,name,email,password)
VALUES (NULL ,"poonam","poonamkhot11@gmail.com","1234");

SELECT * FROM users;

INSERT INTO users
VALUES (NULL,"sahil","sahilkhot@gmail.com","1234");

INSERT INTO users (name,email)
VALUES ("amit","amit@gmail.com");

ALTER TABLE users 
MODIFY password VARCHAR(255) NULL;
















