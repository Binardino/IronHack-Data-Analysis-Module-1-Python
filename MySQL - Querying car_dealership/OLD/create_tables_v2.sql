CREATE TABLE Customers(
	customer_id INT(5) NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	phone INT(13) NOT NULL,
	mail VARCHAR(30),
	address VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(30),
	zip INT(10),
    PRIMARY KEY (customer_id)
	)
	;
CREATE TABLE Salepersons(
	staff_id INT(5) NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	store VARCHAR(30)
    PRIMARY KEY (staff_id)
    )
    ;
CREATE TABLE Invoices(
	invoice_id INT(5) NOT NULL AUTO_INCREMENT,
	date date,
	car VARCHAR(15),
	customer VARCHAR(30), 
    PRIMARY KEY (invoice_id)
	)
	;