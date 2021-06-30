USE codeup_test_db;


CREATE TABLE authors (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(50),
                         last_name  VARCHAR(100) NOT NULL,
                         PRIMARY KEY (id)
);

INSERT INTO authors(first_name, last_name) VALUES
('Douglas', 'Adams'),
('Mark', 'Twain'),
('Kurt', 'Vonnegut');

DROP TABLE IF EXISTS quotes;

CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        content TEXT NOT NULL,
                        author_id INT UNSIGNED NOT NULL,
                        PRIMARY KEY (id),
                        FOREIGN KEY (author_id) REFERENCES authors (id)
);

# Seeds
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'I love deadlines. I love the whooshing noise they make as they go by.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'Time is an illusion. Lunchtime doubly so.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Mark' and last_name = 'Twain'),
        'Clothes make the man. Naked people have little or no influence on society.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Kurt' and last_name = 'Vonnegut'),
        'The universe is a big place, perhaps the biggest.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'), 'Don''t Panic.');

SELECT * FROM quotes;

SELECT quotes.content AS 'content', CONCAT(authors.first_name, ' ', authors.last_name)
                      AS 'author name' FROM quotes JOIN authors ON authors.id = author_id;


# Queries for Adlister Exercise

CREATE TABLE user (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR (50) NOT NULL,
    password VARCHAR(18) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE ads;
CREATE TABLE IF NOT EXISTS ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    description VARCHAR (150) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id)
);

#JOINS Table

CREATE TABLE ads_category (
    ads_id INT UNSIGNED NOT NULL,
    category_id  INT UNSIGNED NOT NULL,
    FOREIGN KEY (ads_id) REFERENCES ads(id),
    FOREIGN KEY (category_id) REFERENCES category (id)
);

CREATE TABLE category (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(18) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO user (email, password) VALUES
('doglover', 'dogsrgreat'),
('spursfan', 'gospursgo'),
('bigbudjumpsuit', 'fashionforever');

SELECT * FROM user;

INSERT INTO ads (user_id, description) VALUES
(3, 'A pair of headphones in excellent condition with original box'),
(3, 'well-loved shoes'),
(1, 'fedora with leather hatband and peacock feather');

SELECT * FROM ads;

INSERT INTO category (name) VALUES
('Electronics'),
('Apparel');

SELECT * FROM category;

INSERT INTO ads_category (ads_id, category_id) VALUES
(1, 3), (2, 3), (2, 1);

SELECT * FROM ads_category;

#Users and description of ads with categories
SELECT u.email AS 'username', a.description AS 'Description'
FROM user AS u


