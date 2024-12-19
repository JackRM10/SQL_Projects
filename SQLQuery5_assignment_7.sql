CREATE DATABASE db_JRM_Favourite_films
GO
USE db_JRM_Favourite_films

CREATE TABLE tbl_directors (
	DGA_id INT PRIMARY KEY NOT NULL IDENTITY (2000,1),
	director_name VARCHAR (50) NOT NULL
);

CREATE TABLE tbl_actors (
	SAG_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	actor_name VARCHAR (50) NOT NULL
);

CREATE TABLE tbl_films (
	film_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	film_title VARCHAR(100) NOT NULL,
	film_director INT NOT NULL CONSTRAINT fk_DGA_id FOREIGN KEY REFERENCES tbl_directors(DGA_id) ON UPDATE CASCADE ON DELETE CASCADE,
	film_actor INT NOT NULL CONSTRAINT fk_SAG_id FOREIGN KEY REFERENCES tbl_actors(SAG_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO tbl_actors
	(actor_name)
	VALUES
	('Joseph Cotten'),
	('Keanu Reeves'),
	('Elijah Wood'),
	('Daniel Radcliffe'),
	('Gene Kelly'),
	('Shuichiro Moriyama')
;

SELECT * FROM tbl_actors

INSERT INTO tbl_directors
	(director_name)
	VALUES
	('Carol Reed'),
	('Lana Wachowski'),
	('Peter Jackson'),
	('Alfonso Cuaron'),
	('Stanley Donen'),
	('Hayao Miyazaki')
;

SELECT * FROM tbl_directors

SELECT 
    a.actor_name, 
    d.director_name, 
    f.film_title
FROM 
    tbl_films f
	JOIN tbl_actors a ON f.film_actor = a.SAG_id
	JOIN tbl_directors d ON f.film_director = d.DGA_id;

INSERT INTO tbl_films
	(film_title, film_director, film_actor)
	VALUES
	('The Third Man', 100, 2000),
	('The Matrix', 101, 2001),
	('Lord of The Rings', 102, 2002),
	('Harry Potter and The Prisoner of Azkaban', 103, 2003),
	('Singing in the Rain', 104, 2004),
	('Porco Rosso', 105, 2005)
;

SELECT * FROM tbl_films