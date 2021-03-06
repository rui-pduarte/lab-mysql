SET SQL_SAFE_UPDATES = 0;

DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS Cars;
CREATE TABLE `Cars` (
  `car_vin` varchar(17) NOT NULL,
  `manufacturer` varchar(15) NOT NULL,
  `model` varchar(17) NOT NULL,
  `year` int NOT NULL,
  `color` varchar(6),
  PRIMARY KEY (`car_vin`)
);
SHOW TABLES;
DESCRIBE Cars;

DROP TABLE IF EXISTS Customers;
CREATE TABLE `Customers` (
  `cu_ID` varchar(10) NOT NULL,
  `cu_name` varchar(40) NOT NULL,
  `cu_phone` varchar(20),
  `cu_email` varchar(20),
  `address` varchar(60),
  `city` varchar(15),
  `state/province` varchar(15),
  `country` varchar(15),
  `zip` varchar(10),
  PRIMARY KEY (`cu_ID`)
);

SHOW TABLES;
DESCRIBE Customers;

DROP TABLE IF EXISTS Salespersons;
CREATE TABLE `Salespersons` (
  `staff_ID` varchar(10) NOT NULL,
  `staff_name` varchar(40) NOT NULL,
  `staff_store` varchar(40) NOT NULL,
  PRIMARY KEY (`staff_ID`)
);
SHOW TABLES;
DESCRIBE Salespersons;

DROP TABLE IF EXISTS Invoices;
CREATE TABLE `Invoices` (
  `inv_ID` varchar(10) NOT NULL,
  `date` varchar(40) NOT NULL,
  `car_vin` varchar(17) NOT NULL,
  `cu_ID` varchar(10) NOT NULL,
  `staff_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`inv_ID`)
);

SHOW TABLES;
DESCRIBE Invoices;