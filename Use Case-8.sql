use cdg_hyd_jfs_058;

SELECT * FROM hotel_rooms;

INSERT INTO hotel_rooms (room_number, room_type, floor, beds, maximum_occupancy, price_per_night, availability, air_conditioning, smoking_allowed, notes)
VALUES ('101', 'SINGLE', 1, 1, 1, 2500.00, 'AVAILABLE', TRUE, FALSE, NULL);

INSERT INTO hotel_rooms (room_number, room_type, floor, beds, maximum_occupancy, price_per_night, availability, air_conditioning, smoking_allowed, notes)
VALUES ('102', 'DOUBLE', 1, 2, 3, 4200.00, 'OCCUPIED', TRUE, FALSE, 'City view'),
('201', 'DELUXE', 2, 1, 2, 6500.00, 'RESERVED', TRUE, FALSE, 'Balcony');

INSERT INTO hotel_rooms (room_number, room_type, floor, beds, maximum_occupancy, price_per_night, availability, air_conditioning, smoking_allowed, notes)
VALUES ('301', 'SUITE', 3, 2, 4, 12000.00, 'AVAILABLE', TRUE, FALSE, 'Sea view'),
('T99', 'SINGLE', 9, 1, 1, 1000.00, 'MAINTENANCE', FALSE, FALSE, 'Training room');


INSERT INTO hotel_rooms (room_number, room_type, floor, beds, maximum_occupancy, price_per_night, availability, air_conditioning, smoking_allowed, notes)
VALUES ('401', 'SINGLE', 4, 0, 1, 2500.00, 'AVAILABLE', TRUE, FALSE, NULL);


INSERT INTO hotel_rooms (room_number, room_type, floor, beds, maximum_occupancy, price_per_night, availability, air_conditioning, smoking_allowed, notes)
VALUES ('402', 'SINGLE', 4, 1, 0, 2500.00, 'AVAILABLE', TRUE, FALSE, NULL);


INSERT INTO hotel_rooms (room_number, room_type, floor, beds, maximum_occupancy, price_per_night, availability, air_conditioning, smoking_allowed, notes)
VALUES ('403', 'SINGLE', 4, 1, 1, 0.00, 'AVAILABLE', TRUE, FALSE, NULL);


INSERT INTO hotel_rooms (room_number, room_type, floor, beds, maximum_occupancy, price_per_night, availability, air_conditioning, smoking_allowed, notes)
VALUES ('404', 'SINGLE', 4, 1, 1, 2500.00, 'CLEANING', TRUE, FALSE, NULL);


INSERT INTO hotel_rooms (room_number, room_type, floor, beds, maximum_occupancy, price_per_night, availability, air_conditioning, smoking_allowed, notes)
VALUES ('101', 'DOUBLE', 1, 2, 3, 4200.00, 'AVAILABLE', TRUE, FALSE, 'Duplicate room');

UPDATE hotel_rooms SET price_per_night = ROUND(price_per_night*1.10, 2) WHERE room_type = 'SUITE';

UPDATE hotel_rooms SET availability = 'AVAILABLE', notes = 'Cleaning completed' WHERE room_number = '102';

UPDATE hotel_rooms SET maximum_occupancy = 3, price_per_night = 7000.00 WHERE room_number = '201';

UPDATE hotel_rooms SET availability = 'MAINTENANCE', notes = 'Scheduled for removal' WHERE room_number = 'T99';


UPDATE hotel_rooms SET maximum_occupancy = 0 WHERE room_number = '101';

SELECT * FROM hotel_rooms WHERE room_number = 'T99';

DELETE FROM hotel_rooms WHERE room_number = 'T99';

INSERT INTO hotel_rooms (room_number, room_type, floor, beds, maximum_occupancy, price_per_night, availability, air_conditioning, smoking_allowed, notes)
VALUES ('TMP1', 'SINGLE', 1, 1, 1, 1500.00, 'AVAILABLE', TRUE, FALSE, 'Temporary room');

SELECT * FROM hotel_rooms WHERE room_number = 'TMP1';

DELETE FROM hotel_rooms WHERE room_number = 'TMP1';