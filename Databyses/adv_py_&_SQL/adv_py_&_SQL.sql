-- Database: Python and advanced postgreSQL with psycopg2

-- DROP DATABASE "Python and advanced postgreSQL with psycopg2";

CREATE DATABASE "Python and advanced postgreSQL with psycopg2"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE users (name TEXT, email TEXT, last_opend INTEGER);

INSERT INTO users VALUES ('Bob Smith', 'bobsmith@example.com', 65615),
('Rolf Smith', 'rolf@gmail.com', 8586854),
('Susan williams', 'Susan@gmail.com', 56),
('Anne pun', 'ana@gmail.com', 2456789);

SELECT * FROM users