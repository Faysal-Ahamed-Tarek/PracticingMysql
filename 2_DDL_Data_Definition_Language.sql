-- DDL - Data Definition Language (CREATE , DROP, ALTER, TRUNCATE, RENAME)

CREATE DATABASE LibraryDB;
USE LibraryDB;


CREATE TABLE books(
	bookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    ISBN VARCHAR(200) UNIQUE,
    PublicationYear INT CHECK(PublicationYear >= 1440 AND PublicationYear <= 2025),
	BookStatus VARCHAR(50) NOT NULL DEFAULT "Available" CHECK( BookStatus IN("Available","Borrowed"))
);


CREATE TABLE Borrowers (
	BorrowerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100) NOT NULL,
	LastName VARCHAR(100) NOT NULL, 
    DateBorrowed DATETIME DEFAULT CURRENT_TIMESTAMP,
    ReturnDate DATETIME,
    BookID INT,
    FOREIGN KEY (BookID) REFERENCES books(BookID) ON DELETE CASCADE 
);


-- initializing auto increment value
ALTER TABLE books AUTO_INCREMENT = 100;


INSERT INTO books (Title, ISBN, PublicationYear, BookStatus) VALUES 
("Moby Dick", 9780142437247, 1851, "Available"),
("Pride and Prejudice", 9780141439518, 1813, "Available"),
("The Great Gatsby", 9780743273565, 1925, "Available"),
("To Kill a Mockingbird", 9780446310789, 1960, "Available"),
("1984", 9780451524935, 1949, "Available"),
("Dune", 9780441172719, 1965, "Borrowed"),
("The Hitchhiker's Guide to the Galaxy", 9780345391803, 1979, "Available"),
("The Midnight Library", 9780525559474, 2020, "Borrowed"),
("The Seven Husbands of Evelyn Hugo", 9781501161933, 2017, "Borrowed"),
("Where the Crawdads Sing", 9780735219113, 2018, "Available");


-- copying the full table
CREATE TABLE bookBackUp LIKE books;
INSERT INTO bookBackUp 
SELECT * FROM books;


-- chanding table name
RENAME TABLE book TO books;


-- chanding column name
ALTER TABLE book 
RENAME COLUMN bookID TO book_id;



