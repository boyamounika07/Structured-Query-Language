use cdg_hyd_jfs_058;

SELECT * FROM bank_accounts;

INSERT INTO bank_accounts (account_number, holder_name, account_type, balance, currency, branch, opened_date, interest_rate, overdraft_limit, account_status)
VALUES (100000000001, 'Aditi Sharma', 'SAVINGS', 85000.00, 'INR', 'MG Road Branch', '2024-01-15', 3.50, 0.00, 'ACTIVE');

INSERT INTO bank_accounts (account_number, holder_name, account_type, balance, currency, branch, opened_date, interest_rate, overdraft_limit, account_status)
VALUES (100000000002, 'Raj Enterprises', 'CURRENT', 450000.00, 'INR', 'Commercial Street Branch', '2023-07-01', 0.00, 100000.00, 'ACTIVE'),
(100000000003, 'Priya Nair', 'FIXED_DEPOSIT', 300000.00, 'INR', 'Kochi Main Branch', '2025-04-10', 7.25, 0.00, 'ACTIVE');

INSERT INTO bank_accounts (account_number, holder_name, account_type, balance, currency, branch, opened_date, interest_rate, overdraft_limit, account_status)
VALUES (100000000004, 'Omar Khan', 'SAVINGS', 12500.00, 'INR', 'Banjara Hills Branch', '2022-10-05', 3.25, 0.00, 'FROZEN'),
(100000000005, 'Training Closed Account', 'CURRENT', 0.00, 'INR', 'Test Branch', '2020-01-01', 0.00, 0.00, 'CLOSED');


INSERT INTO bank_accounts (account_number, holder_name, account_type, balance, currency, branch, opened_date, interest_rate, overdraft_limit, account_status)
VALUES (100000000006, 'Negative Balance', 'SAVINGS', -5000.00, 'INR', 'Test Branch', '2026-01-01', 3.50, 0.00, 'ACTIVE');


INSERT INTO bank_accounts (account_number, holder_name, account_type, balance, currency, branch, opened_date, interest_rate, overdraft_limit, account_status)
VALUES (100000000007, 'High Interest', 'SAVINGS', 50000.00, 'INR', 'Test Branch', '2026-01-01', 101.00, 0.00, 'ACTIVE');


INSERT INTO bank_accounts (account_number, holder_name, account_type, balance, currency, branch, opened_date, interest_rate, overdraft_limit, account_status)
VALUES (100000000008, 'Salary Account', 'SALARY', 50000.00, 'INR', 'Test Branch', '2026-01-01', 3.50, 0.00, 'ACTIVE');


INSERT INTO bank_accounts (account_number, holder_name, account_type, balance, currency, branch, opened_date, interest_rate, overdraft_limit, account_status)
VALUES (100000000001, 'Duplicate Account', 'SAVINGS', 10000.00, 'INR', 'Test Branch', '2026-01-01', 3.50, 0.00, 'ACTIVE');

UPDATE bank_accounts SET balance = balance+25000.00 WHERE account_number = 100000000001;

UPDATE bank_accounts SET interest_rate = interest_rate+0.25 WHERE account_type = 'SAVINGS' AND interest_rate+0.25 <= 100.00;

UPDATE bank_accounts SET account_status = 'ACTIVE' WHERE account_number = 100000000004;

UPDATE bank_accounts SET balance = balance-2500.00 WHERE account_number = 100000000004 AND account_status = 'ACTIVE' AND balance >= 2500.00;

UPDATE bank_accounts SET branch = 'Central Business Branch' WHERE branch = 'Commercial Street Branch';

-- withdrawal that would create negative balance
UPDATE bank_accounts SET balance = balance-20000.00 WHERE account_number = 100000000004 AND account_status = 'ACTIVE' AND balance >= 20000.00;

SELECT * FROM bank_accounts WHERE account_number = 100000000005;

DELETE FROM bank_accounts WHERE account_number = 100000000005 AND balance = 0.00 AND account_status = 'CLOSED';

INSERT INTO bank_accounts (account_number, holder_name, account_type, balance, currency, branch, opened_date, interest_rate, overdraft_limit, account_status)
VALUES (999999999999, 'Temporary Account', 'SAVINGS', 1000.00, 'INR', 'Test Branch', '2026-01-01', 3.50, 0.00, 'ACTIVE');

SELECT * FROM bank_accounts WHERE account_number = 999999999999;

DELETE FROM bank_accounts WHERE account_number = 999999999999;