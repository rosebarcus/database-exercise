USE codeup_test_db;

SELECT 'Pink Floyd Albums' AS 'Query One';

SELECT name AS 'The name of all albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Query Two';

SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SElECT 'The genre for Nevermind' AS 'Query Three';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Where albums were released in the 1990s' AS 'Query four';

SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 2- million certified sales' AS 'Query Five';

SELECT * FROM albums WHERE sales < 20;

SELECT 'All Rock albums' AS 'Query Six';

SELECT * FROM albums WHERE genre = 'Rock';

