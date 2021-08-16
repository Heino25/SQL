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

DELETE FROM users

CREATE FUNCTION delete_inactive(seconds NUMERIC) RETURNS void AS $$
	DELETE FROM users WHERE last_opend > seconds;
$$ LANGUAGE SQL;

SELECT * FROM users

SELECT delete_inactive(50000);

DROP FUNCTION delete_inactive(NUMERIC);

-----------------------------------------------------------------------------------

DROP TABLE users

CREATE TABLE users (id int PRIMARY KEY, name TEXT, email TEXT);
CREATE TABLE emails (id int PRIMARY KEY, name TEXT, content TEXT);
CREATE TABLE email_opens (
	email_id int,
	user_id int,
	opend_time int,
	PRIMARY KEY(email_id, user_id),
	FOREIGN KEY (email_id) REFERENCES emails(id),
	FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO users VALUES (1, 'Bob Smith', 'bobsmith@example.com'),
(2, 'Rolf Smith', 'rolf@gmail.com'),
(3, 'Susan williams', 'Susan@gmail.com'),
(4, 'Anne pun', 'ana@gmail.com');

INSERT INTO emails VALUES (1, 'This is a test email'),
(2, 'Another test email'),
(3, 'we should wright longer emails');

INSERT INTO email_opens VALUES (3, 2, 1572393600),
(2, 2, 1572393600),
(3, 3, 1572393600),
(2, 3, 1572393600),
(1, 4, 1572393600),
(3, 1, 1572393600);

SELECT * FROM email_opens JOIN users on email_opens.user_id = users.id;

CREATE OR REPLACE FUNCTION opened_ago(email_open_row email_opens) RETURNS INT AS $$
	SELECT cast(extract(epoch FROM CURRENT_TIMESTAMP) AS INT) email_open_row.opened_time AS email_opened_ago;
$$ LANGUAGE SQL;

SELECT *, opened_ago(email_opens) FROM users
JOIN email_opens ON users_id = email_opens.user_id
WHERE opened_ago(email_opens) < 17509903;
