--------------UC1-create database---------
CREATE DATABASE Address_Book_Service

USE Address_Book_Service;
------------UC2-Address book table-------
CREATE TABLE address_Book
(
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	address VARCHAR(30) NOT NULL,
	city VARCHAR(30) NOT NULL,
	state VARCHAR(30) NOT NULL,
	zip VARCHAR(30) NOT NULL,
	phone VARCHAR(30)NOT NULL,
	email VARCHAR(30)NOT NULL
);

INSERT INTO address_Book(first_name,last_name,address,city,state,zip,phone,email)
VALUES ('Akshata','Sawant','Dhanori','Pune','Maharashtra',411015,899197290,'akshatasawant20@gmail.com'),
('Rutuja','Pati','Bhosari','Pimpri','Maharashtra',412309,9123654367,'rutujajaid45@gmail.com'),
('Pranoti','Sawant','Bhairav nagar','Nasik','Maharahtra',455110,8821056811,'pranotisawant@gmail.com'),
('Priyanka','Jamadar','Shvaji Nagar','Pune','Maharashtra',461124,7653809765,'priya03@gmail.com');