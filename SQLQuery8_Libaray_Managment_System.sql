CREATE DATABASE db_Library_Management_System;
USE db_Library_Management_System;


/* Tables created for Libaray Managament System*/

CREATE TABLE LIBRARY_BRANCH (
	BranchID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	BranchName VARCHAR(100),
	[Address] VARCHAR(100)
);

CREATE TABLE BORROWER (
	CardNo INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Name] VARCHAR(50),
	[Address] VARCHAR(100),
	Phone VARCHAR(50),
);

CREATE TABLE BOOK_COPIES (
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	Number_of_Copies INT NOT NULL
);

CREATE TABLE BOOK_LOANS (
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	CardNo INT NOT NULL,
	DataeOut DATE NOT NULL,
	DateDue DATE NOT NULL
);

CREATE TABLE BOOKS (
	BookID INT NOT NULL PRIMARY KEY IDENTITY(200,1),
	Title VARCHAR(100),
	PublisherName VARCHAR(100)
);

DROP TABLE BOOKS;

CREATE TABLE PUBLISHER (
	PublisherName VARCHAR(100) NOT NULL PRIMARY KEY,
	[ADDRESS] VARCHAR(100) NOT NULL,
	PHONE VARCHAR(50) NOT NULL
);

CREATE TABLE BOOK_AUTHORS (
	BookID INT NOT NULL,
	AuthorName VARCHAR(50) NOT NULL
);	
	

/*ALTER Operations to create foreign keys to link tables*/

ALTER TABLE BOOK_COPIES
ADD FOREIGN KEY (BranchID) REFERENCES LIBRARY_BRANCH (BranchID);

ALTER TABLE BOOK_LOANS
ADD FOREIGN KEY (BookID) REFERENCES BOOKS (BookID);

ALTER TABLE BOOK_LOANS
ADD FOREIGN KEY (BranchID) REFERENCES LIBRARY_BRANCH (BranchID);

ALTER TABLE BOOK_LOANS
ADD FOREIGN KEY (CardNo) REFERENCES BORROWER (CardNo);

ALTER TABLE BOOKS
ADD FOREIGN KEY (PublisherName) REFERENCES PUBLISHER (PublisherName);

ALTER TABLE BOOK_AUTHORS
ADD FOREIGN KEY (BookID) REFERENCES BOOKS (BookID);


/*Values inserted into tables*/

INSERT INTO LIBRARY_BRANCH VALUES
	('Sharpstown', '117 Ship Ave, Portland, OR, 97214.'),
	('Sellwood','7860 SE 13th Ave, Portland, OR 97202.'),
	('Holgate', ' 7905 SE Holgate Blvd, Portland, OR 97206.'),
	('Belmont', ' 1038 SE Cesar Estrada Chavez Blvd, Portland, OR 97214.'),
	('Hollywood', '4040 NE Tillamook St, Portland, OR 97212.'),
	('Central', '801 SW 10th Ave, Portland, OR 97205.')
;

INSERT INTO BORROWER VALUES
	('Elisabeth Bennet', '77 Derbyrshire Lane, Portland, OR, 97214.', '510-746-9387'),
	('Kostya Levin', '32 Yasnaya Street, Portland, OR, 97214.', '510-938-4846'),
	('Lyra Belacqua', '84 Oxford Road, Portland, OR 97202.', '510-736-1924'),
	('John Ames', '28 Gilead Ave, Portland, OR 97202.', '510-983-8635'),
	('Renee Michel', '1912 Paris Street, Portland, OR 97206.', '510-846-9946'),
	('Harry Potter', '98 Godric''s Hollow, Portland, OR 97206.', '510-836-8376'),
	('Jane Eyre', '1872 Thornfield Rd, Portland, OR 97212.', '510-937-8265'),
	('Jay Gatsby', '1920 West Egg, Portland, OR 97205.',  '510-983-9874')
;

INSERT INTO PUBLISHER VALUES 
	('Europa Editions', '27 Union Square West, Suite 302, New York, NY, 10003, USA.', '866-400-5351'),
	('Picador', '175 5TH Ave, New York, NY, 10010, USA.', '646-307-5629'),
	('Scholastic', '557 Broadway, New York, NY, 10012, USA.', '201-633-2506'),
	('Farrar, Straus and Giroux', '175 5TH Ave, New York, NY, 10010, USA.', '646-307-5629'),
	('Penguin Classics', '745 Broadway, New York, NY, 10019, USA.', '212-782-9000'), 
	('Simon & Schuster', '1230 6th Ave, New York, NY, 10020, USA', '212-698-7000'),
	('Scribner', '1230 6th Ave, New York, NY, 10020, USA', '212-698-7000'),
	('Laurel Leaf', '745 Broadway, New York, NY, 10019, USA.', '212-782-9000'),
	('Vintage', '745 Broadway, New York, NY, 10019, USA.', '212-782-9000'),
	('Everyman''s Library', '745 Broadway, New York, NY, 10019, USA.', '212-782-9000')
;

INSERT INTO BOOKS VALUES
	('The Elegance of the Hedgehog', ' Europa Editions,'),
	('The Lost Tribe', 'Picador'),
	('Harry Potter and the Philosopher''s Stone', ' Scholastic'),
	('Harry Potter and the Chamber of Secrets', ' Scholastic'),
	('Harry Potter and the Prisoner of Azkaban', ' Scholastic'),
	('Harry Potter and the Goblet of Fire', ' Scholastic'),
	('Harry Potter and the Order of the Phoenix', ' Scholastic'),
	('Harry Potter and the Half-Blood Prince', ' Scholastic'),
	('Harry Potter and the Deathly Hallows', ' Scholastic'),
	('Gilead', 'Farrar, Straus and Giroux'),
	('House Keeping', 'Farrar, Straus and Giroux'),
	('Anna Karenina', 'Penguin Classics'),
	('Pride and Prejudice', 'Penguin Classics'),
	('The Great Gatsby', 'Scribner'),
	('The Golden Compass (His Dark Materials - Book 1)', 'Laurel Leaf'),
	('The Subtle Knife (His Dark Materials - Book 2)', 'Laurel Leaf'),
	('The Amber Spyglass (His Dark Materials - Book 3)', 'Laurel Leaf'),
	('Any Human Heart', 'Vintage'), 
	('Love is Blind', 'Vintage'),
	('First Love and Other Stories', 'Everyman''s Library')
;

INSERT INTO BOOK_AUTHORS VALUES
	(200, 'Muriel Barbery'),
	(201, 'Mark Lee'),
	(202, 'J.K. Rowling'),
	(203, 'J.K. Rowling'),
	(204, 'J.K. Rowling'),
	(205, 'J.K. Rowling'),
	(206, 'J.K. Rowling'),
	(207, 'J.K. Rowling'),
	(208, 'J.K. Rowling'),
	(209, 'Marilynne Robinson'),
	(210, 'Marilynne Robinson'),
	(211, 'Leo Tolstoy'),
	(212, 'Jane Austen'),
	(213, 'F. Scott Fitzgerald'),
	(214, 'Philip Pullman'),
	(215, 'Philip Pullman'),
	(216, 'Philip Pullman'),
	(217, 'William Boyd'),
	(218, 'William Boyd'),
	(219, 'Ivan Turgenev')
;

INSERT INTO BOOK_COPIES VALUES
	(200, 6, 2),
	(201, 1, 2),
	(202, 5, 5),
	(203, 5, 3),
	(204, 5, 4),
	(205, 5, 5),
	(206, 5, 3),
	(207, 5, 4),
	(208, 5, 6),
	(202, 6, 4),
	(203, 6, 4),
	(204, 6, 3),
	(205, 6, 3),
	(206, 6, 4),
	(207, 6, 4),
	(208, 6, 5),
	(209, 2, 2),
	(210, 4, 2),
	(211, 1, 2),
	(211, 6, 2),
	(212, 1, 2),
	(213, 6, 2),
	(214, 1, 2),
	(215, 6, 3),
	(215, 5, 4),
	(216, 5, 3),
	(217, 5, 3),
	(218, 3, 3),
	(218, 6, 2),
	(219, 6, 2)
;

INSERT INTO BOOK_LOANS VALUES
	(200, 6, 1, 10-03-24, 10-17-24),
	(212, 4, 1,10-03-24, 10-24-24),
	(219, 6, 2, 10-07-24, 11-07-24),
	(202, 6, 3, 10-03-24, 10-17-24),
	(201, 1, 4, 10-09-24, 11-09-24),
	(213, 1, 5, 10-09-24, 10-23-24),
	(204, 5, 5, 10-08-24, 10-29-24),
	(217, 3, 6, 10-12-24, 10-26-24),
	(217, 6, 7, 10-06-24, 10-20-24),
	(219, 6, 8, 10-03-24, 10-24-24)
;

/*Queries*/

--Part 2 assignment
SELECT * FROM ((BOOK_LOANS FULL OUTER JOIN BORROWER ON BOOK_LOANS.CardNo = BORROWER.CardNo) FULL OUTER JOIN BOOKS ON BOOK_LOANS.BookID = BOOKS.BookID);

--Part 3 assignment
SELECT * FROM BOOKS
	INNER JOIN BOOK_AUTHORS ON BOOK_AUTHORS.BookID = BOOKS.BooksID; 

/*Part 4 assignment
Create stored procedures that will query for each of the following questions:  

How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?

How many copies of the book titled "The Lost Tribe" are owned by each library branch?

Retrieve the names of all borrowers who do not have any books checked out.*/


