USE codeup_test_db;


SELECT names FROM albums;

SELECT ALBUMS WHERE release_date < 1980;

SELECT ALBUMS WHERE artist = 'Michael Jackson';


UPDATE albums
SET sales = (sales * 10);

UPDATE albums SET release_date = (release_date - 100)
WHERE release_date < 1980;

Update albums
Set artist = 'Michael Jackson', artist = "Peter Jackson"
WHERE arist = 'Michael Jackson';




