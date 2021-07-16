-- Database: employeedb

-- DROP DATABASE employeedb;

CREATE DATABASE employeedb
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
--Creating tables

CREATE TABLE Department (
 depart_id bigserial,
 depart_name varchar(50),
 depart_city varchar(50),
 CONSTRAINT depart_key PRIMARY KEY (depart_id)
);
-- Inserting data into the table
INSERT INTO Department (depart_name, depart_city)
VALUES ('IT', 'Atlanta'),
		('Accounting', 'Denver'),
		('Retail', 'St Paul'),
		('Hotel', 'Rochester'),
		('Software', 'Watkins');

DELETE FROM Department
CREATE TABLE Roles (
 role_id bigserial,
 role_ varchar(50),
 CONSTRAINT role_key PRIMARY KEY (role_id)
);

-- Inserting data into the table

INSERT INTO Roles (role_)
VALUES ('Manager'),
	('Assistant Manager'),
	('Supervisor'),
	('Worker'),
	('Junior Worker');
	
CREATE TABLE Salaries (
 salary_id bigserial,
 salary_pa money,
 CONSTRAINT salary_key PRIMARY KEY (salary_id)
);

-- Inserting data into the table

INSERT INTO Salaries (salary_pa)
VALUES (65000),
	(50000),
	(40000),
	(35000),
	(25000);

CREATE TABLE Overtime_Hours (
 overtime_id bigserial,
 overtime_hours int,
 CONSTRAINT overtime_key PRIMARY KEY (overtime_id)
);

-- Inserting data into the table

INSERT INTO Overtime_Hours (overtime_hours)
VALUES (450),
	(500),
	(40),
	(350),
	(250);
	
CREATE TABLE Employees (
 emp_id bigserial,
 first_name varchar(50),
 surname varchar(50),
 gender varchar(25),
 address varchar(50),
 email varchar(50),
 depart_id int REFERENCES Department (depart_id) ON DELETE CASCADE,
 role_id int REFERENCES Roles (role_id) ON DELETE CASCADE,
 salary_id int REFERENCES Salaries (salary_id) ON DELETE CASCADE,
 overtime_id int REFERENCES Overtime_Hours (overtime_id) ON DELETE CASCADE,
 CONSTRAINT emp_key PRIMARY KEY (emp_id)
);
SELECT * FROM Department 
SELECT * FROM Roles 
SELECT * FROM Salaries 
SELECT * FROM Overtime_Hours
-- Inserting data into the table

INSERT INTO Employees (first_name, surname, gender, address, email, depart_id, role_id, salary_id, overtime_id)
VALUES ('Chris', 'Smith', 'Male', 'Main st', 'chris@gmail.com', 1, 1, 1, 1),
	('Eric', 'van zyl', 'Male', 'Simple st', 'eric@gmail.com', 1, 2, 2, 2 ),
	('Casey', 'Lee', 'Female', 'First st', 'casey@gmail.com' , 1, 3, 3, 3),
	('Fred', 'Kleyn', 'Male', 'Second st', 'fred@gmail.com' , 1, 4, 4, 4),
	('Derick', 'Benson', 'Male', 'This st', 'derick@gmail.com' , 2, 5, 5, 5),
	('Chrisna', 'landsberg', 'Female', 'That st', 'chrisna@gmail.com' , 3, 1, 1, 1),
	('Dennis', 'Sharp', 'Male', 'Other st', 'Dennis@gmail.com' , 4, 2, 2, 2),
	('Danny', 'Du Pree', 'Male', 'Third st', 'dan@gmail.com' , 5, 1, 1, 1),
	('Josh', 'Sauer', 'Male', 'Farm st', 'josh@gmail.com' , 1, 5, 5, 5),
	('Jason', 'Ben', 'Male', 'Town st', 'jason@gmail.com' , 2, 1, 1, 1),
	('Rob', 'Wessels', 'Male', 'Sub st', 'rob@gmail.com' , 3, 1, 1, 1),
	('Ben', 'Groenewald', 'Male', 'Dumb st', 'ben@gmail.com' , 4, 1, 1, 1);
	
SELECT emp.first_name, emp.surname, emp.gender, emp.address, emp.email,
		dep.depart_name, dep.depart_city,
		rol.role_,
		slry.salary_pa,
		overtime.overtime_hours
FROM Employees emp JOIN Department dep
ON emp.depart_id = dep.depart_id
JOIN Roles rol
ON emp.role_id = rol.role_id
JOIN Salaries slry
ON emp.salary_id = slry.salary_id
JOIN Overtime_Hours overtime
ON emp.overtime_id = overtime.overtime_id;


DROP TABLE Department

SELECT * FROM Employees


