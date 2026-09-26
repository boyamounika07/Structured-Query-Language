use cdg_hyd_jfs_058;

SELECT * FROM vehicles;

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, colour, odometer_km, insurance_expiry, vehicle_status)
VALUES ('KA01AB1234', 'Arjun Rao', 'Hyundai', 'Creta', 'CAR', 'DIESEL', 2022, '2022-08-15', 'White', 34000, '2027-08-14', 'ACTIVE');

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, colour, odometer_km, insurance_expiry, vehicle_status)
VALUES ('TS09CD5678', 'Meera Iyer', 'Honda', 'Activa 6G', 'MOTORCYCLE', 'PETROL', 2021, NULL, 'Red', 18500, '2026-12-31', 'ACTIVE'),
('MH12EF9012', 'Rohan Logistics', 'Tata', 'Ultra', 'TRUCK', 'DIESEL', 2020, '2020-03-10', 'Blue', 145000, '2026-10-15', 'IN_SERVICE');

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, colour, odometer_km, insurance_expiry, vehicle_status)
VALUES ('DL03GH3456', 'Nisha Kapoor', 'Mahindra', 'eSupro', 'VAN', 'ELECTRIC', 2024, '2024-02-01', 'Silver', 22000, NULL, 'ACTIVE'),
('TN10JK7890', 'Training Transport', 'Ashok Leyland', 'Viking', 'BUS', 'DIESEL', 2010, NULL, 'Yellow', 480000, NULL, 'SCRAPPED');


INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, colour, odometer_km, insurance_expiry, vehicle_status)
VALUES ('KA01TMP0001', 'Test Owner', 'Hyundai', 'Test Model', 'CAR', 'PETROL', 2025, NULL, 'Black', -100, NULL, 'ACTIVE');


INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, colour, odometer_km, insurance_expiry, vehicle_status)
VALUES ('KA01TMP0002', 'Test Owner', 'Hyundai', 'Test Model', 'SUV', 'PETROL', 2025, NULL, 'Black', 1000, NULL, 'ACTIVE');


INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, colour, odometer_km, insurance_expiry, vehicle_status)
VALUES ('KA01TMP0003', 'Test Owner', 'Hyundai', 'Test Model', 'CAR', 'HYDROGEN', 2025, NULL, 'Black', 1000, NULL, 'ACTIVE');


INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, colour, odometer_km, insurance_expiry, vehicle_status)
VALUES ('KA01AB1234', 'Duplicate Owner', 'Honda', 'City', 'CAR', 'PETROL', 2023, NULL, 'Black', 5000, NULL, 'ACTIVE');

UPDATE vehicles SET odometer_km = odometer_km+750 WHERE registration_number = 'KA01AB1234';

UPDATE vehicles SET insurance_expiry = '2027-02-01' WHERE registration_number = 'DL03GH3456';

UPDATE vehicles SET vehicle_status = 'ACTIVE' WHERE registration_number = 'MH12EF9012';

UPDATE vehicles SET colour = 'Matte Red' WHERE registration_number = 'TS09CD5678';

UPDATE vehicles SET odometer_km = odometer_km+1000 WHERE vehicle_status = 'ACTIVE';

SELECT * FROM vehicles WHERE registration_number = 'TN10JK7890';

DELETE FROM vehicles WHERE registration_number = 'TN10JK7890';

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, colour, odometer_km, insurance_expiry, vehicle_status)
VALUES ('TEST00TMP01', 'Temporary Owner', 'Toyota', 'Test', 'CAR', 'PETROL', 2026, NULL, 'Black', 100, NULL, 'ACTIVE');

SELECT * FROM vehicles WHERE registration_number = 'TEST00TMP01';

DELETE FROM vehicles WHERE registration_number = 'TEST00TMP01';