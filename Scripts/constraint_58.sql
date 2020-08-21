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
-- @C:\database\scripts\assignment_2\constraint_58.sql

-- Table alters
ALTER TABLE accounts
MODIFY county VARCHAR2(20);

-- Primary key constraints
-- accounts primary key constraints
ALTER TABLE accounts
ADD CONSTRAINT pk_accounts
PRIMARY KEY (account_number);

-- account managers primary key constraints
ALTER TABLE account_managers
ADD CONSTRAINT pk_account_managers
PRIMARY KEY (manager_id);

-- invoices primary key constraints
ALTER TABLE invoices
ADD CONSTRAINT pk_invoices
PRIMARY KEY (invoice_id);

-- invoice items primary key constraints
ALTER TABLE invoice_items
ADD CONSTRAINT pk_invoice_items
PRIMARY KEY (invoice_id, product_id);

-- customer cards primary key constraints
ALTER TABLE customer_cards
ADD CONSTRAINT pk_customer_cards
PRIMARY KEY (card_number);

-- payments primary key constraints
ALTER TABLE payments
ADD CONSTRAINT pk_payments
PRIMARY KEY (invoice_id, card_number);

-- products primary key constraints
ALTER TABLE products
ADD CONSTRAINT pk_products
PRIMARY KEY (product_id);

-- Foreign key constraints
-- invoices foreign key constraints
ALTER TABLE invoices
ADD CONSTRAINT fk_i_accounts
FOREIGN KEY (account_number)
REFERENCES accounts(account_number);
ALTER TABLE invoices
ADD CONSTRAINT fk_i_account_managers
FOREIGN KEY (manager_id)
REFERENCES account_managers(manager_id);

-- invoice items foreign key constraints
ALTER TABLE invoice_items
ADD CONSTRAINT fk_it_invoices
FOREIGN KEY (invoice_id)
REFERENCES invoices(invoice_id);
ALTER TABLE invoice_items
ADD CONSTRAINT fk_it_products
FOREIGN KEY (product_id)
REFERENCES products(product_id);

-- customer cards forgeign key constraints
ALTER TABLE customer_cards
ADD CONSTRAINT fk_cc_accounts
FOREIGN KEY (account_number)
REFERENCES accounts(account_number);

-- payments foreign key constraints
ALTER TABLE payments
ADD CONSTRAINT fk_p_invoices
FOREIGN KEY (invoice_id)
REFERENCES invoices(invoice_id);
ALTER TABLE payments
ADD CONSTRAINT fk_p_customer_cards
FOREIGN KEY (card_number)
REFERENCES customer_cards(card_number);

-- Unique constraints
ALTER TABLE accounts 
ADD CONSTRAINT uk_accounts_email
UNIQUE (email);

ALTER TABLE products 
ADD CONSTRAINT uk_products_product_name
UNIQUE (product_name);

-- Check constraints
-- accounts upper constraints
ALTER TABLE accounts
ADD CONSTRAINT ck_upper_accounts_bank_name
CHECK (bank_name = UPPER(bank_name));
ALTER TABLE accounts
ADD CONSTRAINT ck_upper_accounts_first_name
CHECK (first_name = UPPER(first_name));
ALTER TABLE accounts
ADD CONSTRAINT ck_upper_accounts_last_name
CHECK (last_name = UPPER(last_name));

-- account managers upper constraints
ALTER TABLE account_managers
ADD CONSTRAINT ck_upper_account_m_first_name
CHECK (first_name = UPPER(first_name));
ALTER TABLE account_managers
ADD CONSTRAINT ck_upper_account_m_last_name
CHECK (last_name = UPPER(last_name));

-- Defaults
ALTER TABLE accounts
MODIFY (balance DEFAULT 0.00);
ALTER TABLE accounts
MODIFY (country DEFAULT 'UK');

ALTER TABLE invoices
MODIFY (invoice_date DEFAULT SYSDATE);

ALTER TABLE invoice_items
MODIFY (quantity DEFAULT 1);
ALTER TABLE invoice_items
MODIFY (total_price DEFAULT 0.00);

DESC accounts;

SELECT TNAME FROM TAB;
SELECT SEQUENCE_NAME, MIN_VALUE, MAX_VALUE, INCREMENT_BY, LAST_NUMBER FROM user_sequences;
SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS
WHERE CONSTRAINT_NAME NOT LIKE 'SYS%';