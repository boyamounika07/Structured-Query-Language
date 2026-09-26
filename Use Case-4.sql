use cdg_hyd_jfs_058;

SELECT * FROM books;

INSERT INTO books (isbn, title, author, genre, publisher, publication_year, pages, format, price, copies, language)
VALUES ('9780134685991', 'Effective Java', 'Joshua Bloch', 'Programming', 'Addison-Wesley', 2018, 416, 'HARDCOVER', 4500.00, 6, 'English');

INSERT INTO books (isbn, title, author, genre, publisher, publication_year, pages, format, price, copies, language)
VALUES ('9780132350884', 'Clean Code', 'Robert C. Martin', 'Programming', 'Prentice Hall', 2008, 464, 'PAPERBACK', 3200.00, 12, 'English'),
('9780262046305', 'Introduction to Algorithms', 'Thomas H. Cormen', 'Computer Science', 'MIT Press', 2022, 1312, 'HARDCOVER', 6500.00, 4, 'English');

INSERT INTO books (isbn, title, author, genre, publisher, publication_year, pages, format, price, copies, language)
VALUES ('9780000000001', 'The Monsoon Trail', 'Kavya Sen', 'Fiction', NULL, 2025, 288, 'PAPERBACK', 499.00, 20, 'English'),
('9780000000002', 'Data Stories for Beginners', 'Asha Rao', 'Education', 'Learning House', 2026, 210, 'EBOOK', 299.00, 0, 'English');

INSERT INTO books (isbn, title, author, genre, publisher, publication_year, pages, format, price, copies, language)
VALUES ('9780000000003', 'Old Book', 'Test Author', 'Fiction', 'Test Publisher', 999, 200, 'PAPERBACK', 500.00, 5, 'English');

INSERT INTO books (isbn, title, author, genre, publisher, publication_year, pages, format, price, copies, language)
VALUES ('9780000000004', 'Zero Pages Book', 'Test Author', 'Fiction', 'Test Publisher', 2025, 0, 'PAPERBACK', 500.00, 5, 'English');


INSERT INTO books (isbn, title, author, genre, publisher, publication_year, pages, format, price, copies, language)
VALUES ('9780000000005', 'Negative Price Book', 'Test Author', 'Fiction', 'Test Publisher', 2025, 200, 'PAPERBACK', -500.00, 5, 'English');


INSERT INTO books (isbn, title, author, genre, publisher, publication_year, pages, format, price, copies, language)
VALUES ('9780000000006', 'Audio Book', 'Test Author', 'Fiction', 'Test Publisher', 2025, 200, 'AUDIOBOOK', 500.00, 5, 'English');


INSERT INTO books (isbn, title, author, genre, publisher, publication_year, pages, format, price, copies, language)
VALUES ('9780134685991', 'Duplicate Book', 'Test Author', 'Fiction', 'Test Publisher', 2025, 200, 'PAPERBACK', 500.00, 5, 'English');

UPDATE books SET copies = copies+10 WHERE title = 'Clean Code';

UPDATE books SET price = ROUND(price*0.90, 2) WHERE format = 'EBOOK';

UPDATE books SET publisher = 'Riverleaf Press' WHERE title = 'The Monsoon Trail';

UPDATE books SET copies = 15 WHERE title = 'Data Stories for Beginners';


UPDATE books SET pages = 0 WHERE isbn = '9780134685991';

SELECT * FROM books WHERE isbn = '9780000000001';

DELETE FROM books WHERE isbn = '9780000000001';

INSERT INTO books (isbn, title, author, genre, publisher, publication_year, pages, format, price, copies, language)
VALUES ('9780000000999', 'Temporary Book', 'Temporary Author', 'Fiction', 'Temporary Publisher', 2026, 100, 'PAPERBACK', 199.00, 5, 'English');

SELECT * FROM books WHERE isbn = '9780000000999';

DELETE FROM books WHERE isbn = '9780000000999';