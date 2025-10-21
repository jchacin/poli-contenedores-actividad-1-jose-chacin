BEGIN;

-- Insertar 15 departamentos
INSERT INTO departments (dept_name, location, budget, phone_number, is_active, created_at) VALUES
('Human Resources', 'Building A - 3rd Floor', 250000.00, '+1-555-0101', TRUE, '2018-01-15 09:00:00'),
('Finance', 'Building B - 2nd Floor', 750000.00, '+1-555-0102', TRUE, '2017-06-01 08:30:00'),
('Engineering', 'Building C - 5th Floor', 2200000.00, '+1-555-0103', TRUE, '2016-09-10 10:15:00'),
('Marketing', 'Building A - 1st Floor', 500000.00, '+1-555-0104', TRUE, '2019-03-12 11:00:00'),
('Sales', 'Building D - 4th Floor', 1200000.00, '+1-555-0105', TRUE, '2015-11-20 09:45:00'),
('Customer Support', 'Building E - Ground', 300000.00, '+1-555-0106', TRUE, '2020-05-05 08:00:00'),
('IT Operations', 'Datacenter 1', 980000.00, '+1-555-0107', TRUE, '2014-07-22 07:30:00'),
('Legal', 'Building B - 6th Floor', 200000.00, '+1-555-0108', TRUE, '2018-10-01 10:00:00'),
('Research & Development', 'Building F - Lab 2', 3500000.00, '+1-555-0109', TRUE, '2013-02-14 09:20:00'),
('Procurement', 'Building D - 2nd Floor', 275000.00, '+1-555-0110', TRUE, '2019-08-30 14:00:00'),
('Logistics', 'Warehouse 3', 450000.00, '+1-555-0111', TRUE, '2016-12-12 13:10:00'),
('Quality Assurance', 'Building C - 6th Floor', 325000.00, '+1-555-0112', TRUE, '2021-01-07 09:50:00'),
('Product Management', 'Building A - 2nd Floor', 600000.00, '+1-555-0113', TRUE, '2017-04-18 15:30:00'),
('Design', 'Building F - Suite 10', 220000.00, '+1-555-0114', TRUE, '2020-09-09 11:25:00'),
('Compliance', 'Building B - 4th Floor', 180000.00, '+1-555-0115', TRUE, '2015-05-21 16:40:00');

-- Insertar 15 empleados
INSERT INTO employees (first_name, last_name, email, hire_date, salary, dept_id) VALUES
('Emma', 'Johnson', 'emma.johnson@example.com', '2018-02-20', 65000.00, 1),
('Liam', 'Smith', 'liam.smith@example.com', '2016-07-11', 90000.00, 3),
('Olivia', 'Brown', 'olivia.brown@example.com', '2019-05-03', 72000.00, 4),
('Noah', 'Jones', 'noah.jones@example.com', '2015-10-30', 110000.00, 3),
('Ava', 'Garcia', 'ava.garcia@example.com', '2020-06-18', 48000.00, 6),
('William', 'Miller', 'william.miller@example.com', '2014-09-01', 98000.00, 7),
('Sophia', 'Davis', 'sophia.davis@example.com', '2017-03-22', 68000.00, 2),
('James', 'Martinez', 'james.martinez@example.com', '2013-12-05', 125000.00, 9),
('Isabella', 'Hernandez', 'isabella.hernandez@example.com', '2019-11-14', 57000.00, 11),
('Benjamin', 'Lopez', 'benjamin.lopez@example.com', '2016-01-25', 83000.00, 13),
('Mia', 'Gonzalez', 'mia.gonzalez@example.com', '2021-07-07', 52000.00, 12),
('Lucas', 'Wilson', 'lucas.wilson@example.com', '2015-04-16', 76000.00, 5),
('Charlotte', 'Anderson', 'charlotte.anderson@example.com', '2018-08-29', 71000.00, 14),
('Henry', 'Thomas', 'henry.thomas@example.com', '2017-02-02', 69000.00, 10),
('Amelia', 'Taylor', 'amelia.taylor@example.com', '2020-10-21', 60000.00, 8);

COMMIT;

