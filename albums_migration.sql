USE codeup_test_db;

DROP TABLE IF EXISTS albums

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    name VARCHAR(100) NOT NULL,
    release_date smallint DEFAULT 'UNKNOWN',
    sales float,
    genre VARCHAR(50) DEFAULT 'NONE',
    PRIMARY KEY (id)
);