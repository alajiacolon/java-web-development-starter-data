/*Warm-Up*/
SELECT title, genres
FROM book 
INNER JOIN genre ON book.genre_id = genre.genre_id
where genre.genres = "mystery";

SELECT title, first_name, last_name, deathday
FROM book INNER JOIN author ON book.author_id = author.author_id
WHERE author.deathday IS NULL; 
/*loan a book out*/
INSERT INTO loan (patron_id, date_out, book_id)
VALUES (1, '2020-02-26', 1);

UPDATE patron 
SET loan_id=1
WHERE patron_id=1; 

UPDATE book 
SET available = 0 
WHERE book_id=1;
 
/*Check a book back in*/
UPDATE book
SET available = 1 
where book_id = 1; 

UPDATE loan
SET date_in = '2020-03-23'
WHERE book_id = 1; 

UPDATE patron 
SET loan_id=null
WHERE patron_id=1; 