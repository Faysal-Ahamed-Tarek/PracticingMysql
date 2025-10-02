-- DML - Data Manipulation Language (INSERT, UPDATE, DELETE)

INSERT INTO books(book_id, Title, ISBN, PublicationYear, BookStatus) 
VALUES(3012, "THE NEW STARS", 9780734518113, 2000, "available"),
	  (3013, "habits of gamers", 9780734348113, 2000, "Borrowed");


-- insert data from one table to another table
INSERT INTO books
SELECT * FROM borrowers;


-- update column values
UPDATE books
SET bookstatus = "Borrowed"
WHERE book_id = 3004;


-- delete rows
DELETE FROM books
WHERE book_id = 3012;