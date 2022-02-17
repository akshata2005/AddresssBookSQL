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

SELECT * FROM address_Book;

UPDATE address_Book SET phone = 7898765678
WHERE first_name = 'Pranoti' AND last_name= 'Sawant';

DELETE FROM address_Book
WHERE first_name = 'Rutuja' AND last_name='Pati';

INSERT INTO address_Book(first_name,last_name,address,city,state,zip,phone,email)
VALUES ('Ashish','Sawant','Koregaon Park','Pune','Maharashtra',410038,7865456787,'Ashishsawant23@gmail.com'),
('Ayush','Rajput','Kashima Nagar','Aurangabad','Maharashtra',431001,7658768987,'rajputAuysh12@gmail.com'),
('Akash','Girase','Gulmohar Nagar','Pansemal','U.P',4551001,9921366811,'Akash21@gmail.com'),
('Shivani','Joshi','krishna Colony','Ahemdabad','Gujraat',320008,8553109765,'shivanijoshi2604@gmail.com');

SELECT * FROM address_Book
WHERE city = 'Pune'

SELECT * FROM address_Book
WHERE state = 'Gujraat'

SELECT COUNT(*) FROM address_Book
WHERE city = 'Pune'

SELECT COUNT(*) FROM address_Book

SELECT COUNT(state) FROM address_Book

SELECT COUNT(city) FROM address_Book

SELECT first_name FROM address_Book
ORDER BY city;

ALTER TABLE address_Book
ADD TYPE varchar(30);

UPDATE address_Book SET TYPE = 'Friend' WHERE first_name = 'Ashish';
UPDATE address_Book SET TYPE = 'Friend' WHERE first_name = 'Pranoti';
UPDATE address_Book SET TYPE = 'Family' WHERE first_name = 'Rutuja';
UPDATE address_Book SET TYPE = 'Family' WHERE first_name = 'Priyanka';
UPDATE address_Book SET TYPE = 'Profession' WHERE first_name = 'Ayush';
UPDATE address_Book SET TYPE = 'Profession' WHERE first_name = 'Akash';
UPDATE address_Book SET TYPE = 'Family' WHERE first_name = 'shivani';

SELECT COUNT(*) FROM address_Book
WHERE TYPE = 'Friend'

SELECT COUNT(*) FROM address_Book
WHERE TYPE = 'Family'

SELECT COUNT(*) FROM address_Book
WHERE TYPE = 'Profession'

INSERT INTO address_Book(first_name,last_name,address,city,state,zip,phone,email,TYPE)
VALUES ('Prateek','Hajare','Gandhi Park','Pune','Maharashtra',410131,8895352787,'pratikhajare09@gmail.com','Friend'),
('Anand','Chaudhari','Moshi','Pune','Maharashtra',412301,9089765643,'anand04@gmail.com','Family');

/*Retriving data*/
SELECT * FROM address_Book

SELECT * FROM address_Book
WHERE city = 'Ahemdabad'

SELECT first_name FROM address_Book
ORDER BY city

SELECT COUNT(*) FROM address_Book
WHERE TYPE = 'Friend'