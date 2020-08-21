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
-- invoices foreign keys
ALTER TABLE invoices
DROP CONSTRAINT fk_i_accounts;
ALTER TABLE invoices
DROP CONSTRAINT fk_i_account_managers;

-- invoice items foreign keys
ALTER TABLE invoice_items
DROP CONSTRAINT fk_it_invoices;
ALTER TABLE invoice_items
DROP CONSTRAINT fk_it_products;

-- customer cards foreign keys
ALTER TABLE customer_cards
DROP CONSTRAINT fk_cc_accounts;

-- payments foreign keys
ALTER TABLE payments
DROP CONSTRAINT fk_p_invoices;
ALTER TABLE payments
DROP CONSTRAINT fk_p_customer_cards;

-- Primary key drops
-- accounts primary keys
ALTER TABLE accounts
DROP CONSTRAINT pk_accounts;

-- account managers primary keys
ALTER TABLE account_managers
DROP CONSTRAINT pk_account_managers;

-- invoices primary keys
ALTER TABLE invoices
DROP CONSTRAINT pk_invoices;

-- invoice items primary keys
ALTER TABLE invoice_items
DROP CONSTRAINT pk_invoice_items;

-- customer cards primary keys
ALTER TABLE customer_cards
DROP CONSTRAINT pk_customer_cards;

-- payments primary keys
ALTER TABLE payments
DROP CONSTRAINT pk_payments;

-- products primary keys
ALTER TABLE products
DROP CONSTRAINT pk_products;

-- Unique drops
-- accounts unique
ALTER TABLE accounts
DROP CONSTRAINT uk_accounts_email;
-- products unique
ALTER TABLE products
DROP CONSTRAINT uk_products_product_name;

-- Check drops
-- accounts checks
ALTER TABLE accounts
DROP CONSTRAINT ck_upper_accounts_bank_name;
ALTER TABLE accounts
DROP CONSTRAINT ck_upper_accounts_first_name;
ALTER TABLE accounts
DROP CONSTRAINT ck_upper_accounts_last_name;

-- account managers checks
ALTER TABLE account_managers
DROP CONSTRAINT ck_upper_account_m_first_name;
ALTER TABLE account_managers
DROP CONSTRAINT ck_upper_account_m_last_name;

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