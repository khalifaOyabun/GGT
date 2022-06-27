CREATE DATABASE IF NOT EXISTS projet;
USE projet;
GRANT ALL PRIVILEGES ON projet.* TO 'root' IDENTIFIED BY  '';
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    email VARCHAR(100) NOT NULL,
    pswd VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    photo VARCHAR(255)
);
CREATE TABLE e_carnet (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    email VARCHAR(100) NOT NULL,
    pswd VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL
);

INSERT INTO users (email, pswd, first_name, last_name, photo)
    VALUES ('ababacarkhalifa13@gmail.com', md5('00'), 'Khalifa', 'Oyabun', "profil.jpg");