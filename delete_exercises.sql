USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'first query';
DELETE FROM albums WHERE release_date > 1991;


SELECT 'All albums from the genre of Disco' AS 'second query';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'All albums from The Eagles' AS 'third query';
DELETE FROM albums WHERE artist = 'Eagles';

SELECT 'All of Whitney Houston''s albums' AS 'fourth query';
DELETE FROM albums WHERE artist = 'Whitney Houston';


