use cdg_hyd_jfs_058;

SELECT * FROM movies;

INSERT INTO movies (movie_code, title, genre, language, release_date, duration, director, certificate, rating, budget, status)
VALUES ('MOV26001', 'River Beyond the Hills', 'Drama', 'Hindi', '2026-01-16', 132, 'Anika Verma', 'PARENTAL_GUIDANCE', 8.2, 35000000.00, 'RELEASED');

INSERT INTO movies (movie_code, title, genre, language, release_date, duration, director, certificate, rating, budget, status)
VALUES ('MOV26002', 'Orbit Seven', 'Science Fiction', 'English', '2026-05-22', 148, 'Daniel Cole', 'PARENTAL_GUIDANCE', 7.6, 120000000.00, 'RELEASED'),
('MOV26003', 'Little Mango Tree', 'Animation', 'Telugu', '2026-07-10', 96, 'Ravi Teja', 'ALL_AGES', 8.5, 18000000.00, 'RELEASED');

INSERT INTO movies (movie_code, title, genre, language, release_date, duration, director, certificate, rating, budget, status)
VALUES ('MOV27001', 'Echoes of Tomorrow', 'Thriller', 'English', NULL, 125, 'Maya Sen', 'UNRATED', NULL, NULL, 'UPCOMING'),
('MOV24005', 'Old Harbour', 'Mystery', 'Bengali', '2024-02-09', 118, 'Sayan Dutta', 'ADULT', 6.9, 22000000.00, 'ARCHIVED');

-- zero duration
INSERT INTO movies (movie_code, title, genre, language, release_date, duration, director, certificate, rating, budget, status)
VALUES ('MOV26004', 'Zero Time', 'Drama', 'Hindi', '2026-03-10', 0, 'Kiran Rao', 'ALL_AGES', 7.0, 10000000.00, 'RELEASED');

-- rating 11
INSERT INTO movies (movie_code, title, genre, language, release_date, duration, director, certificate, rating, budget, status)
VALUES ('MOV26005', 'High Rating', 'Drama', 'English', '2026-04-10', 120, 'Arun Kumar', 'ALL_AGES', 11.0, 15000000.00, 'RELEASED');

-- negative budget
INSERT INTO movies (movie_code, title, genre, language, release_date, duration, director, certificate, rating, budget, status)
VALUES ('MOV26006', 'Negative Budget', 'Drama', 'Telugu', '2026-04-20', 110, 'Ravi Kumar', 'ALL_AGES', 7.5, -5000000.00, 'RELEASED');

-- invalid certificate
INSERT INTO movies (movie_code, title, genre, language, release_date, duration, director, certificate, rating, budget, status)
VALUES ('MOV26007', 'Teen Movie', 'Drama', 'Hindi', '2026-05-15', 115, 'Neha Sharma', 'TEEN', 7.2, 20000000.00, 'RELEASED');

-- duplicate movie code
INSERT INTO movies (movie_code, title, genre, language, release_date, duration, director, certificate, rating, budget, status)
VALUES ('MOV26001', 'Duplicate Movie', 'Drama', 'Hindi', '2026-06-01', 120, 'Anil Verma', 'ALL_AGES', 7.0, 10000000.00, 'RELEASED');

UPDATE movies SET release_date = '2027-03-19', certificate = 'PARENTAL_GUIDANCE' WHERE movie_code = 'MOV27001';

UPDATE movies SET rating = 8.8 WHERE movie_code = 'MOV26003';

UPDATE movies SET budget = ROUND(budget*1.05, 2) WHERE genre = 'Science Fiction' AND budget IS NOT NULL;

UPDATE movies SET status = 'ARCHIVED' WHERE status = 'RELEASED' AND release_date < '2025-01-01';

UPDATE movies SET rating = 12.0 WHERE movie_code = 'MOV26003';

SELECT * FROM movies WHERE movie_code = 'MOV24005';
DELETE FROM movies WHERE movie_code = 'MOV24005';

INSERT INTO movies (movie_code, title, genre, language, release_date, duration, director, certificate, rating, budget, status)
VALUES ('MOV-TEMP-01', 'Temporary Movie', 'Drama', 'English', '2026-09-01', 100, 'Temporary Director', 'ALL_AGES', 7.0, 10000000.00, 'RELEASED');

SELECT * FROM movies WHERE movie_code = 'MOV-TEMP-01';

DELETE FROM movies WHERE movie_code = 'MOV-TEMP-01';