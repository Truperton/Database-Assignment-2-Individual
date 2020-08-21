/* 
 * Kacper Krzysztof Grzesiak
 * 19424868
 * Databases 1
 * CSY1026_58
 * 10/FEB/2020
 * Games Programming
 * 1st year
 */
-- CSY1026_58@student/19424868
-- @C:\database\scripts\assignment_2\queries_58.sql

SELECT a.account_number, a.first_name, a.last_name, a.contact_number, a.email
FROM accounts a;

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

SELECT *
FROM accounts;
SELECT *
FROM account_managers;
SELECT *
FROM invoices;
SELECT *
FROM invoice_items;
SELECT *
FROM customer_cards;
SELECT *
FROM payments;
SELECT *
FROM products;

