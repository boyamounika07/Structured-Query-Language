use cdg_hyd_jfs_058;

SELECT * FROM customers;

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, type, credit_limit, active)
VALUES ('CUST26001', 'Ananya', 'Iyer', 'ananya.iyer@example.test', '9876502001', '1995-04-11', 'Bengaluru', 'Karnataka', '560001', 'PREMIUM', 75000.00, TRUE);

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, type, credit_limit, active)
VALUES ('CUST26002', 'Rohan', 'Das', 'rohan.das@example.test', NULL, NULL, 'Kolkata', 'West Bengal', '700001', 'REGULAR', 0.00, TRUE);

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, type, credit_limit, active)
VALUES ('CUST26003', 'Meera', 'Shah', 'meera.shah@example.test', '9876502003', '1992-08-24', 'Mumbai', 'Maharashtra', '400001', 'CORPORATE', 250000.00, TRUE),
('CUST26004', 'Arjun', 'Reddy', 'arjun.reddy@example.test', '9876502004', '1988-01-19', 'Hyderabad', 'Telangana', '500001', 'PREMIUM', 100000.00, TRUE),
('CUST26005', 'Nisha', 'Menon', 'nisha.menon@example.test', NULL, NULL, 'Kochi', 'Kerala', '682001', 'REGULAR', 0.00, FALSE);

-- duplicate email
INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, type, credit_limit, active)
VALUES ('CUST26006', 'Test', 'Customer', 'ananya.iyer@example.test', '9876502006', '1995-05-10', 'Delhi', 'Delhi', '110001', 'REGULAR', 5000.00, TRUE);

-- negative credit limit
INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, type, credit_limit, active)
VALUES ('CUST26007', 'Negative', 'Limit', 'negative@example.test', '9876502007', '1995-05-10', 'Delhi', 'Delhi', '110002', 'REGULAR', -5000.00, TRUE);

-- customer type GOLD
INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, type, credit_limit, active)
VALUES ('CUST26008', 'Gold', 'Customer', 'gold@example.test', '9876502008', '1995-05-10', 'Delhi', 'Delhi', '110003', 'GOLD', 10000.00, TRUE);

UPDATE customers SET credit_limit = credit_limit*1.10 WHERE type = 'PREMIUM' AND active = TRUE;

UPDATE customers SET phone = '9876502002' WHERE customer_code = 'CUST26002';

UPDATE customers SET city = 'Secunderabad', postal_code = '500003' WHERE customer_code = 'CUST26004';

UPDATE customers SET credit_limit = 275000.00 WHERE customer_code = 'CUST26003';

-- duplicate phone
UPDATE customers SET phone = '9876502001' WHERE customer_code = 'CUST26002';

SELECT * FROM customers WHERE active = FALSE;

DELETE FROM customers WHERE active = FALSE;

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, type, credit_limit, active)
VALUES ('CUST-TEMP-01', 'Temporary', 'Customer', 'temporary@example.test', '9876502099', '1995-01-01', 'Hyderabad', 'Telangana', '500001', 'REGULAR', 0.00, TRUE);

SELECT * FROM customers WHERE customer_code = 'CUST-TEMP-01';

DELETE FROM customers WHERE customer_code = 'CUST-TEMP-01';