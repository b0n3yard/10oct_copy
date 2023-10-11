DROP DATABASE IF EXISTS games_db;
CREATE DATABASE games_db;
USE games_db;
CREATE TABLE shops(
    id INT AUTO_INCREMENT PRIMARY KEY,
    shop_name VARCHAR(100) NOT NULL,
    shop_location VARCHAR(250) NOT NULL
);

CREATE TABLE games(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(250) NOT NULL,
    genre VARCHAR(200) NOT NULL,
    release_date DATE NOT NULL,
    platform VARCHAR(200) NOT NULL,
    shop_id INT,
    somting
    FOREIGN KEY(shop_id) REFERENCES shops(id)

);
 INSERT INTO shops(shop_name, shop_location)
 values('gamestop','atlanta');

INSERT INTO games (title, genre,release_date,platform, shop_id)
VALUES ('homeworld', 'rts', '1995-03-07', 'pc',1);
