use cdg_hyd_jfs_058;

SELECT * FROM support_tickets;

INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, status, assigned_agent, resolved_time)
VALUES ('TKT-26001', 'Asha Rao', 'asha.rao@example.test', 'Unable to reset password', 'Reset link is not arriving', 'ACCOUNT', 'HIGH', 'OPEN', NULL, NULL);

INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, status, assigned_agent, resolved_time)
VALUES ('TKT-26002', 'Dev Stores', 'dev.stores@example.test', 'Incorrect invoice total', 'The latest invoice contains an extra charge', 'BILLING', 'MEDIUM', 'IN_PROGRESS', 'Neha', NULL),
('TKT-26003', 'Meera Nair', 'meera.nair@example.test', 'Application crashes', 'Application closes while uploading a file', 'TECHNICAL', 'CRITICAL', 'OPEN', 'Vikram', NULL);

INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, status, assigned_agent, resolved_time)
VALUES ('TKT-26004', 'Omar Ali', 'omar.ali@example.test', 'Change registered email', 'Request to replace the account email', 'ACCOUNT', 'LOW', 'OPEN', NULL, NULL),
('TKT-26005', 'Test User', 'test.user@example.test', 'Sample resolved request', 'Temporary ticket used for delete practice', 'GENERAL', 'MEDIUM', 'RESOLVED', 'QA Agent', CURRENT_TIMESTAMP);

-- invalid category
INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, status, assigned_agent, resolved_time)
VALUES ('TKT-26006', 'Test User', 'test6@example.test', 'Shipping issue', 'Test invalid category', 'SHIPPING', 'HIGH', 'OPEN', NULL, NULL);

-- invalid priority
INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, status, assigned_agent, resolved_time)
VALUES ('TKT-26007', 'Test User', 'test7@example.test', 'Urgent issue', 'Test invalid priority', 'TECHNICAL', 'URGENT', 'OPEN', NULL, NULL);




INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, status, assigned_agent, resolved_time)
VALUES ('TKT-26001', 'Duplicate User', 'duplicate@example.test', 'Duplicate ticket', 'Duplicate ticket number test', 'GENERAL', 'LOW', 'OPEN', NULL, NULL);




UPDATE support_tickets SET assigned_agent = 'Kavya', status = 'IN_PROGRESS' WHERE ticket_number = 'TKT-26001';

UPDATE support_tickets SET status = 'RESOLVED', resolved_time = CURRENT_TIMESTAMP WHERE ticket_number = 'TKT-26003';

UPDATE support_tickets SET priority = 'MEDIUM' WHERE category = 'ACCOUNT' AND status = 'OPEN' AND priority = 'LOW';

UPDATE support_tickets SET assigned_agent = 'Rahul' WHERE ticket_number = 'TKT-26002';


UPDATE support_tickets SET resolved_time = '2026-09-24 11:00:00' WHERE ticket_number = 'TKT-26002';

SELECT * FROM support_tickets WHERE ticket_number = 'TKT-26005';
DELETE FROM support_tickets WHERE ticket_number = 'TKT-26005';

INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, status, assigned_agent, resolved_time)
VALUES ('TKT-TEMP-01', 'Temporary User', 'temp@example.test', 'Temporary ticket', 'Temporary ticket for delete practice', 'GENERAL', 'LOW', 'OPEN', NULL, NULL);

SELECT * FROM support_tickets WHERE ticket_number = 'TKT-TEMP-01';

DELETE FROM support_tickets WHERE ticket_number = 'TKT-TEMP-01';