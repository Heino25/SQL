-- Database: Migrating

-- DROP DATABASE "Migrating";

CREATE DATABASE "Migrating"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT)

INSERT INTO users VALUES (1, 'Bob Smith');

SELECT * FROM "users" LIMIT 100;