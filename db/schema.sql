DROP DATABASE IF EXISTS games_db;
CREATE DATABASE games_db;
USE games_db;
CREATE TABLE games(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(250) NOT NULL,
    genre VARCHAR(200) NOT NULL,
    release_date DATE NOT NULL,
    platform VARCHAR(200) NOT NULL

);

INSERT INTO games (title, genre,release_date,platform)
VALUES ('homeworld', 'rts', '1995-03-07', 'pc')