DROP TABLE IF NOT EXIST imdb

CREATE TABLE IF NOT EXIST imdb

CREATE TABLE IF NOT EXIST film (

	film_id INT NOT NULL,
	title CHAR (15),
	title, description CHAR (15),
	release_year YEAR
);

CREATE TABLE IF NOT EXIST actor(

	actor_id INT NOT NULL, 
	first_name CHAR (15), 
	last_name CHAR (15)
);

CREATE TABLE IF NOT EXIST film_actor(

	actor_id INT NOT NULL, 
	film_id INT NOT NULL
);

ALTER TABLE film ADD CONSTRAINT actor_pk PRIMARY KEY (film_id); 
ALTER TABLE film MODIFY film_id INT NOT NULL AUTO_INCREMENT;

ALTER TABLE actor ADD CONSTRAINT actor_pk PRIMARY KEY (actor_id); 
ALTER TABLE actor MODIFY actor_id INT NOT NULL AUTO_INCREMENT;

ALTER TABLE film ADD COLUMN last_update DATETIME DEFAULT NOW(); 
ALTER TABLE actor ADD COLUMN last_update DATETIME DEFAULT NOW();

ALTER TABLE film_actor ADD CONSTRAINT film_fk FOREIGN KEY (film_id) REFERENCES film (film_id);
ALTER TABLE film_actor ADD CONSTRAINT actor_fk FOREIGN KEY (actor_id) REFERENCES actor (actor_id);

DESCRIBE film;