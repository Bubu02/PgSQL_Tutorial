-- creating a new table for customer
CREATE TABLE customer(
	customer_id int8 PRIMARY KEY,
	first_name varchar,
	last_name varchar,
	email varchar,
	address_id int8
);

-- view the created table
SELECT * FROM payments

-- insert the customer.csv file
COPY customer(customer_id, first_name, last_name, email, address_id)
FROM 'E:\customer.csv'
DELIMITER ','
CSV HEADER;

-- creating a new table for payments
CREATE TABLE payments(
	customer_id int8 PRIMARY KEY,
	amount int8,
	mode varchar,
	payment_date DATE
);

-- insert the payments.csv file
COPY payments(customer_id, amount, mode, payment_date)
FROM 'E:\SQL data\payment.csv'
DELIMITER ','
CSV HEADER;