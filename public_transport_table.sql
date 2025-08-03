

CREATE DATABASE public_transport;
USE public_transport;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    zone VARCHAR(20)
);

-- Routes Table
CREATE TABLE routes (
    route_id INT PRIMARY KEY,
    origin VARCHAR(50),
    destination VARCHAR(50),
    distance_km DECIMAL(5,2)
);

-- Tickets Table
CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    user_id INT,
    route_id INT,
    timestamp DATETIME,
    fare DECIMAL(5,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (route_id) REFERENCES routes(route_id)
);

-- Step 3: Insert Sample Data

-- Users (Commuters)
INSERT INTO users VALUES
(1, 'Amit', 25, 'Male', 'East'),
(2, 'Riya', 32, 'Female', 'North'),
(3, 'Rahul', 41, 'Male', 'West'),
(4, 'Pooja', 29, 'Female', 'South'),
(5, 'Sandeep', 35, 'Male', 'Central'),
(6, 'Kavita', 22, 'Female', 'East'),
(7, 'Arjun', 19, 'Male', 'North'),
(8, 'Neha', 38, 'Female', 'West'),
(9, 'Vikram', 47, 'Male', 'South'),
(10, 'Divya', 27, 'Female', 'Central');

-- Routes
INSERT INTO routes VALUES
(1, 'Connaught Place', 'Noida', 14.5),
(2, 'Rajiv Chowk', 'Dwarka', 22.3),
(3, 'MG Road', 'Saket', 17.2),
(4, 'Hauz Khas', 'Vasant Vihar', 10.5),
(5, 'Kashmere Gate', 'New Delhi', 5.0);

-- Tickets (At least 15 entries)
INSERT INTO tickets VALUES
(1, 1, 1, '2025-08-01 08:30:00', 35.00),
(2, 2, 2, '2025-08-01 09:15:00', 45.00),
(3, 3, 3, '2025-08-01 07:45:00', 40.00),
(4, 4, 1, '2025-08-01 10:00:00', 35.00),
(5, 5, 4, '2025-08-01 08:50:00', 25.00),
(6, 6, 5, '2025-08-01 17:00:00', 15.00),
(7, 7, 2, '2025-08-01 19:30:00', 45.00),
(8, 8, 3, '2025-08-01 20:00:00', 40.00),
(9, 9, 1, '2025-08-01 21:00:00', 35.00),
(10, 10, 4, '2025-08-01 11:15:00', 25.00),
(11, 1, 5, '2025-08-02 08:45:00', 15.00),
(12, 2, 3, '2025-08-02 07:15:00', 40.00),
(13, 3, 1, '2025-08-02 09:45:00', 35.00),
(14, 4, 2, '2025-08-02 17:30:00', 45.00),
(15, 5, 5, '2025-08-02 18:00:00', 15.00);