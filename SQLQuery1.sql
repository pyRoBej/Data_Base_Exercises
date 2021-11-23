/* ZOO DATABASE ASSIGNMENT 7 */
CREATE DATABASE db_cinema;

USE db_cinema;

/* creacion de dos tablas (actores y directores) */
CREATE TABLE tbl_actores (
	actor_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	actor_name VARCHAR(50) NOT NULL,
	movie_name VARCHAR(50),
	movie_year INT
);


CREATE TABLE tbl_directores (
	direct_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	direct_name VARCHAR(50) NOT NULL,
	movie_name VARCHAR(50), 
	actor_id INT CONSTRAINT fk_actor_id FOREIGN KEY REFERENCES tbl_actores(actor_id) ON UPDATE CASCADE ON DELETE CASCADE
);


SELECT * FROM tbl_actores;
SELECT * FROM tbl_directores;

/* poblando las dos tablas (actores y directores) */
INSERT INTO tbl_actores
	(actor_name, movie_name, movie_year)
	VALUES 
	('Emma Watsson', 'Harry Potter', 2001),
	('Daniel Radcliffe', 'La Dama de Negro', 2012),
	('Rupert Grint', 'Wild Target', 2010),
	('Vin Diesel', 'Rapidos y Furiosos', 2001),
	('Brad Pitt', 'Fury', 2014)
;

SELECT * FROM tbl_actores;

INSERT INTO tbl_directores
	(direct_name, movie_name, actor_id)
	VALUES 
	('Alfonso Cuaron', 'Harry Potter', 1),
	('James Watkins', 'La Dama de Negro', 2),
	('Jonathan Lynn', 'Wild Target', 3),
	('Justin Lin', 'Rapidos y Furiosos', 4),
	('David Ayer', 'Fury', 5)
;

SELECT * FROM tbl_directores;

/* consulta de ambas tablas */
SELECT * FROM tbl_directores
INNER JOIN tbl_actores ON tbl_actores.actor_id = tbl_directores.actor_id;

SELECT * FROM tbl_actores;
SELECT * FROM tbl_directores;

SELECT 
a1.movie_name, a2.direct_name, actor_name, movie_year
FROM tbl_directores a2, tbl_actores a1
WHERE 
a1.actor_id=a2.actor_id and
a1.movie_name = 'Harry Potter'

SELECT 
a1.movie_name, a2.direct_name, actor_name, movie_year
FROM tbl_directores a2
INNER JOIN tbl_actores a1 ON a1.actor_id=a2.actor_id
WHERE a1.movie_name = 'Harry Potter'
