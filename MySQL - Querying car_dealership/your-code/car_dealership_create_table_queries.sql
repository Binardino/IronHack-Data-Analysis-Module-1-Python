CREATE DATABASE car_dealership;

USE car_dealership;


CREATE TABLE Cars(
	cars_id INT(5) NOT NULL AUTO_INCREMENT,
	VIN INT(17) NOT NULL,
	manufacturer VARCHAR (30),
	model VARCHAR(30),
	year INT(4),
	colour VARCHAR(10),
	PRIMARY KEY (cars_id)
	)
;
CREATE TABLE Customers(
	customer_id INT(5) NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	phone INT(13) NOT NULL,
	email VARCHAR(30),
	address VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(30),
    country VARCHAR(50),
	zip INT(10),
    PRIMARY KEY (customer_id)
	)
	;
CREATE TABLE Salepersons(
	salepersons_id INT(5) NOT NULL AUTO_INCREMENT,
	staff_id INT(5) NOT NULL,
	name VARCHAR(30) NOT NULL,
	store VARCHAR(30),
    PRIMARY KEY (salepersons_id)
    )
    ;
CREATE TABLE Invoices(
	invoices_id INT(5) NOT NULL AUTO_INCREMENT
    invoice_number INT(5) NOT NULL,
	date date,
	car INT(5),
	customer INT(5),
    salepersons_id INT(5),
    PRIMARY KEY (invoices_id)
	)
	;