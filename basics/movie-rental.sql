-- Associative ER diagram

CREATE TABLE customer (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20)
);

CREATE TABLE movie (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20)
);

CREATE TABLE movie_rentals (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    movie_id INT,
    FOREIGN KEY(customer_id) REFERENCES customer(id) ON DELETE SET NULL,
    FOREIGN KEY(movie_id) REFERENCES movie(id) ON DELETE SET NULL
);
