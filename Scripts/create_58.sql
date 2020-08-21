/* 
 * Kacper Krzysztof Grzesiak
 * 19424868
 * Databases 1
 * CSY1026_58
 * 19/AUG/2020
 * Games Programming
 * 1st year
 */
-- CSY1026_58@student/19424868
-- @C:\database\scripts\assignment_2\create_58.sql

-- Create tables
CREATE TABLE accounts (
account_number      NUMBER(8),
sort_code           CHAR(8) NOT NULL,
balance             NUMBER(10,2),
bank_name           VARCHAR2(20) NOT NULL,
first_name          VARCHAR2(15) NOT NULL,
last_name           VARCHAR2(20) NOT NULL,
address_line_1      VARCHAR2(20),
address_line_2      VARCHAR2(20),
town                VARCHAR2(30),
county              VARCHAR2(15),
postcode            VARCHAR2(8),
country             CHAR(2),
contact_number      VARCHAR2(15) NOT NULL,
email               VARCHAR2(25));

CREATE TABLE account_managers (
manager_id          NUMBER(4),
first_name          VARCHAR2(15) NOT NULL,
last_name           VARCHAR2(20) NOT NULL);

CREATE TABLE invoices (
invoice_id          NUMBER(8),
account_number      NUMBER(8),
manager_id          NUMBER(4),
invoice_date        DATE,
invoice_total       NUMBER(10,2) );

CREATE TABLE invoice_items (
invoice_id          NUMBER(8),
product_id          NUMBER(8),
quantity            NUMBER(3),
total_price         NUMBER(10,2) );

CREATE TABLE customer_cards (
card_number         NUMBER(16),
account_number      NUMBER(8),
security_code       NUMBER(3) NOT NULL);

CREATE TABLE payments (
invoice_id          NUMBER(8),
card_number         NUMBER(16) );

CREATE TABLE products (
product_id          NUMBER(8),
product_name        VARCHAR2(15) NOT NULL,
product_description VARCHAR2(80) );

-- Create sequence
CREATE SEQUENCE seq_manager_id
INCREMENT BY 1
START WITH 1000;

CREATE SEQUENCE seq_invoice_id
INCREMENT BY 1
START WITH 10000000;

CREATE SEQUENCE seq_product_id
INCREMENT BY 1
START WITH 10000000;

-- Queries
SELECT TNAME FROM TAB;
SELECT SEQUENCE_NAME, MIN_VALUE, MAX_VALUE, INCREMENT_BY, LAST_NUMBER FROM user_sequences;
SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS;

DESC accounts;
DESC account_managers;
DESC invoices;
DESC invoice_items;
DESC customer_cards;
DESC payments;
DESC products;
