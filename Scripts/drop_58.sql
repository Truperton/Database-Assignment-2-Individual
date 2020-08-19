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
-- @C:\database\scripts\assignment_2\drop_58.sql

SELECT TNAME FROM TAB;
SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS
WHERE CONSTRAINT_NAME NOT LIKE 'SYS%';

-- Foreign key drops
-- courses foreign keys
ALTER TABLE courses
DROP CONSTRAINT fk_c_subject_areas;

-- Primary key drops
-- sites primary keys
ALTER TABLE sites
DROP CONSTRAINT pk_sites;

-- Check drops
-- students checks
ALTER TABLE students
DROP CONSTRAINT ck_upper_students_st_fname;
ALTER TABLE students
DROP CONSTRAINT ck_upper_students_st_sname;

-- Table drops
DROP TABLE accounts;
DROP TABLE account_managers;
DROP TABLE invoices;
DROP TABLE invoice_items;
DROP TABLE customer_cards;
DROP TABLE payments;
DROP TABLE products;

-- Sequence drops
DROP SEQUENCE seq_manager_id;
DROP SEQUENCE seq_invoice_id;
DROP SEQUENCE seq_product_id;

PURGE RECYCLEBIN;

SELECT TNAME FROM TAB;
SELECT SEQUENCE_NAME, MIN_VALUE, MAX_VALUE, INCREMENT_BY, LAST_NUMBER FROM user_sequences;
SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS
WHERE CONSTRAINT_NAME NOT LIKE 'SYS%';