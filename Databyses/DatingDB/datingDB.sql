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
	
CREATE TABLE Profession (
 prof_id bigserial,
 profession varchar(50),
 CONSTRAINT prof_key PRIMARY KEY (prof_id)
);

CREATE TABLE zip_code (
 zip_code bigserial,
 city varchar(50),
 province varchar(50),
 CONSTRAINT zip_key PRIMARY KEY (zip_code)
);

CREATE TABLE Status (
 status_id bigserial,
 status varchar(50),
 depart_city varchar(50),
 CONSTRAINT stat_key PRIMARY KEY (status_id)
);

CREATE TABLE my_contacts (
 contact_id bigserial,
 last_name varchar(50),
 first_name varchar(50),
 phone int,
 email varchar(50),
 gender varchar(10),
 birthday date
 CONSTRAINT contact_key PRIMARY KEY (contact_id)
);

CREATE TABLE Interests (
 interest_id bigserial,
 interests varchar(50),
 CONSTRAINT intr_key PRIMARY KEY (interest_id)
);

CREATE TABLE Seeking (
 seeking_id bigserial,
 seeking varchar(50),
 CONSTRAINT seek_key PRIMARY KEY (seeking_id)
);

