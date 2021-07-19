-- Database: datingdb

-- DROP DATABASE datingdb;

CREATE DATABASE datingdb
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE profession (
 prof_id bigserial,
 profession varchar(50),
 CONSTRAINT profession_key PRIMARY KEY (prof_id),
 CONSTRAINT profession_unique UNIQUE (profession)
);
SELECT * FROM profession

CREATE TABLE zip_code (
 zip_code bigserial,
 city varchar(25),
 province varchar(25),
 CONSTRAINT check_zip CHECK (zip_code <= 4),
 CONSTRAINT city_unique UNIQUE (city),
 CONSTRAINT zip_key PRIMARY KEY (zip_code)
);

SELECT * FROM zip_code

CREATE TABLE Status (
 status_id bigserial,
 status varchar(25),
 CONSTRAINT stat_key PRIMARY KEY (status_id)
);

SELECT * FROM Status

CREATE TABLE my_contacts (
 contact_id bigserial,
 last_name varchar(50),
 first_name varchar(50),
 phone varchar (10),
 email varchar(50),
 gender varchar(10),
 birthday date,
 prof_id bigserial REFERENCES profession (prof_id),
 zip_code bigserial REFERENCES zip_code (zip_code),
 status_id bigserial REFERENCES status (status_id),
 CONSTRAINT email_unique UNIQUE (email),
 CONSTRAINT contact_key PRIMARY KEY (contact_id)
);

SELECT * FROM my_contacts

CREATE TABLE interests (
 interests_id bigserial,
 intersets varchar(50),
 CONSTRAINT intr_key PRIMARY KEY (interests_id)
);

SELECT * FROM interests

CREATE TABLE contact_interests (
 contact_id bigserial REFERENCES my_contacts (contact_id),
 interests_id bigserial REFERENCES interests (interests_id) 
);

SELECT * FROM contact_interests

CREATE TABLE seeking (
 seeking_id bigserial,
 seeking varchar(50),
 CONSTRAINT seek_key PRIMARY KEY (seeking_id)
);

SELECT * FROM seeking

CREATE TABLE contact_seeking (
 contact_id int REFERENCES my_contacts (contact_id),
 seeking_id int REFERENCES seeking (seeking_id)
);

SELECT * FROM contact_seeking