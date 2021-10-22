# creating a data base 
CREATE DATABASE IF NOT EXISTS Sales;
CREATE SCHEMA IF NOT EXISTS Sales;

# selecting a data base
USE Sales;

# creating a table
CREATE TABLE sales
(
  purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  date_of_purchase DATE NOT NULL,
  customer_id INT,
  item_code VARCHAR(10) NOT NULL
  );
  
CREATE TABLE salesExercise
(
 customer_id INT NOT NULL,
 number_of_complaints INT,
 first_name VARCHAR(255),
 last_name VARCHAR(255),
 email_address VARCHAR(225)
 );
 
 DROP TABLE salesExercise;