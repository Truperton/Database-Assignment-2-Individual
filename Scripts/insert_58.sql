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
-- @C:\database\scripts\assignment_2\insert_58.sql

INSERT INTO accounts (account_number, sort_code, bank_name, first_name, last_name, contact_number)
VALUES (12345678, '12-34-56', 'NORTHAMPTON BANK', 'JOHN', 'DOE', '+4812345678');
INSERT INTO accounts (account_number, sort_code, bank_name, first_name, last_name, contact_number)
VALUES (54379352, '65-43-21', 'NORTHAMPTON BANK', 'Jane', 'DOE', '012345678');
INSERT INTO accounts (account_number, sort_code, bank_name, first_name, last_name, contact_number)
VALUES (87654321, '65-43-21', 'NORTHAMPTON BANK', 'JANE', 'DOE', '012345678');
INSERT INTO accounts
VALUES (98636231, '65-43-21', 100000.00, 'NORTHAMPTON BANK', 'BOB', 'SMITH', '23 adress street', '', 'Northampton', 'Northamptonshire', 'NN1 34J', 'GB', '012345678', 'bob.smith@email.co.uk');

INSERT INTO account_managers
VALUES (seq_manager_id.NEXTVAL, 'CHRIS', 'JOHNSON');
INSERT INTO account_managers
VALUES (seq_manager_id.NEXTVAL, 'CHRISTOPHER', 'COLUMBUS');

INSERT INTO invoices (invoice_id, account_number, manager_id, invoice_total)
VALUES (seq_invoice_id.NEXTVAL, 12345678, 1000, 1000.12);
INSERT INTO invoices (invoice_id, account_number, manager_id)
VALUES (seq_invoice_id.NEXTVAL, 87654321, 1001);


