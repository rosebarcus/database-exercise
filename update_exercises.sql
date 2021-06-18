USE codeup_test_db;

SELECT 'All of my albums' AS 'first TODO';

SELECT * FROM albums;

SELECT 'All albums released before 1980' AS 'second TODO';

SELECT * FROM albums WHERE release_date < 1980;

SELECT 'ALL albums by Michael Jackson' AS 'third TODO';

SELECT * FROM albums WHERE artist = 'Michael Jackson';

SELECT 'Sales BEFORE' AS 'fourth TODO';
SELECT sales FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT 'Sales AFTER' AS 'fifth TODO';
SELECT sales FROM albums;*/


SELECT 'Subtracting 100 years from albums release before 1980' AS '8th TODO';
UPDATE albums
SET release_date = release_date - 100
WHERE release_date <= 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'Changing Michael Jackson to Peter Jackson' AS '7th TODO';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';












