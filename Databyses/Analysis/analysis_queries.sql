-- Database: analysis

-- DROP DATABASE analysis;

CREATE DATABASE analysis
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
	
CREATE TABLE teachers (
	id bigserial,
	first_name varchar(25),
	last_name varchar(50),
	school varchar(50),
	hire_date date,
	salary numeric
);


INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES	('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
		('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
		('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
		('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
		('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
		('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);
		
SELECT first_name, last_name, school, hire_date, salary
FROM teachers
ORDER BY school ASC, hire_date DESC;

SELECT first_name, last_name, school, hire_date
FROM teachers
WHERE first_name = 'Samantha';

SELECT first_name, last_name, school, salary
FROM teachers
WHERE salary BETWEEN 40000 AND 65000;

SELECT first_name
FROM teachers
WHERE first_name LIKE 'S%';

SELECT first_name
FROM teachers
WHERE first_name ILIKE 'sam%';

SELECT *
FROM teachers
WHERE school = 'Myers Middle School'
	AND salary < 40000;
	
SELECT *
FROM teachers
WHERE last_name = 'Cole'
	OR last_name = 'Bush';
	
SELECT *
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
	AND (salary < 38000 OR salary > 40000);


CREATE TABLE char_data_types (
	varchar_column varchar(10),
	char_column char(10),
	text_column text 
);	

INSERT INTO char_data_types
VALUES 
	('abc', 'abc', 'abc'),
	('defghi', 'defghi', 'defghi');
	
SELECT * FROM char_data_types
COPY char_data_types TO 'C:\Users\Heino\Desktop\Programming_shortcuts\SQL\Databyses\Analysis\typetest.txt' WITH (FORMAT CSV, HEADER, DELIMITER '|');

GRANT SELECT ON char_data_types TO PUBLIC

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO heino;

