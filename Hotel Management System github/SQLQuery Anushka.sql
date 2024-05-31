
CREATE DATABASE TravelClassics;

USE TravelClassics;

CREATE TABLE Hotel (
    hotel_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50),
    city VARCHAR(50),
    street VARCHAR(100),
    logging VARCHAR(50)
);

INSERT INTO Hotel (hotel_id, name, country, city, street, logging)
VALUES
(1, 'Grand Hotel', 'USA', 'New York', '123 Broadway', 'oceanfrontmaldives123'),
(2, 'Mountain View Lodge', 'Switzerland', 'Interlaken', '1 Alpenweg', 'mountainviewlodgech123'), 
(3, 'Rainforest Retreat', 'Costa Rica', 'La Fortuna', '2 Rainforest Ave', 'rainforestretreatcr1'),
(4, 'Golden Sands Resort', 'Thailand', 'Phuket', '3 Paradise Road', 'goldensandsphuket'), 
(5, 'Cityscape Hotel', 'Japan', 'Tokyo', '4 Skyscraper Blvd', 'cityscapehoteltokyo123'),
(6, 'Lakeside Lodge', 'New Zealand', 'Queenstown', '5 Lakeview Terrace', 'lakesidelodgenz1'), 
(7, 'Desert Oasis Resort', 'UAE', 'Abu Dhabi', '6 Oasis Road', 'desertoasisabudhabi1'),
(8, 'Alpine Chalet', 'Austria', 'Innsbruck', '7 Mountainview Strasse', 'alpinechaletat123'),
(9, 'Island Paradise Hotel', 'Philippines', 'Boracay', '8 Palm Beach Road', 'islandparadiseboracay1'),
(10, 'Historic Manor', 'England', 'London', '9 Tudor Lane', 'historicmanoruk123'),
(11, 'Tropical Haven Resort', 'Fiji', 'Nadi', '10 Tropical Way', 'tropicalhavenfiji'), 
(12, 'City Lights Inn', 'USA', 'Las Vegas', '11 Strip Avenue', 'citylightsinnlv123'), 
(13, 'Countryside Cottage', 'Ireland', 'Killarney', '12 Green Fields Road', 'countrysidecottageie1'), 
(14, 'Glacier Retreat', 'Iceland', 'Reykjavik', '13 Iceberg Street', 'glacierretreaticeland123'), 
(15, 'Beachside Bungalow', 'Bahamas', 'Nassau', '14 Seaside Drive', 'beachsidebungalowbs123');



CREATE TABLE Facility (
    facility_id INT PRIMARY KEY,
    name VARCHAR(50)
);


INSERT INTO Facility (facility_id, name)
VALUES
(1, 'Infinity Pool'),
(2, 'Yoga Studio'),
(3, 'Restaurant & Bar'),
(4, 'Spa'),
(5, 'Business Center'),
(6, 'Tennis Courts'),
(7, 'Outdoor Terrace'),
(8, 'Dry Cleaning Service'),
(9, 'High-Speed Internet'),
(10, 'Medical Services'), 
(11, 'Valet Parking'),
(12, 'In-Room Dining'),
(13, 'Luxury Toiletries'),
(14, 'Baggage Handling'),
(15, 'Accessible Rooms');


CREATE TABLE Room (
    room_id INT PRIMARY KEY,
    hotel_id INT,
    option_id INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (hotel_id) 
	REFERENCES Hotel(hotel_id)
);

INSERT INTO Room (room_id, hotel_id, option_id, price)
VALUES
(1, 1, 1,  12000.00),
(2, 1, 2,  18000.00),
(3, 1, 3,  25000.00),
(4, 2, 4,  30000.00),
(5, 2, 5,  15000.00),
(6, 2, 6,  20000.00),
(7, 3, 7,  30000.00),
(8, 3, 8,  35000.00),
(9, 3, 9,  20000.00),
(10, 4, 10,  25000.00),
(11, 4, 11,  18000.00),
(12, 4, 12,  22000.00),
(13, 5, 13,  25000.00),
(14, 5, 14,  30000.00),
(15, 5, 15,  22000.00);



CREATE TABLE Traveler (
    traveler_id INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    email VARCHAR(100), 
    country VARCHAR(50)
);


INSERT INTO Traveler (traveler_id, name, address, email, country)
VALUES
(1, 'Adam Johnson', '111 River Road, City A', 'adam@example.com', 'Country A'), 
(2, 'Sophie Williams', '222 Forest Lane, City B', 'sophie@example.com', 'Country B'),
(3, 'Jack Brown', '333 Mountain View, City C', 'jack@example.com', 'Country C'), 
(4, 'Olivia Garcia', '444 Beachside Ave, City D', 'olivia@example.com', 'Country D'), 
(5, 'Noah Martinez', '555 Sunset Blvd, City E', 'noah@example.com', 'Country E'),
(6, 'Ava Rodriguez', '666 Sunrise Road, City F', 'ava@example.com', 'Country F'), 
(7, 'Ethan Wilson', '777 Lakeside Drive, City G', 'ethan@example.com', 'Country G'),
(8, 'Charlotte Taylor', '888 Meadow Lane, City H', 'charlotte@example.com', 'Country H'), 
(9, 'James Smith', '999 Valley View, City I','james_smith@example.com','Country I'), 
(10, 'Emma Johnson', '1010 Hilltop Avenue, City J','emma_johnson@example.com','Country J'), 
(11, 'Liam Martinez', '1212 Skyline Road, City K', 'liam@example.com', 'Country K'),
(12, 'Olivia Brown', '1313 Park Place, City L', 'olivia_brown@example.com', 'Country L'), 
(13, 'Lucas Wilson', '1414 Ocean View, City M', 'lucas@example.com', 'Country M'), 
(14, 'Ava Taylor', '1515 Riverfront Drive, City N', 'ava_taylor@example.com', 'Country N'), 
(15, 'Sophia Garcia', '1616 Lakeside Avenue, City O', 'sophia_garcia@example.com', 'Country O');



CREATE TABLE Reservation (
    reservation_id INT PRIMARY KEY, 
    traveler_id INT,
    room_id INT,
    start_date DATE,
    end_date DATE,
    no_of_guests INT,
    FOREIGN KEY (traveler_id) REFERENCES Traveler(traveler_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id)
);


INSERT INTO Reservation (reservation_id, traveler_id, room_id, start_date, end_date, no_of_guests)
VALUES
(1, 1, 1, '2024-05-01', '2024-05-05', 1),
(2, 2, 2, '2024-06-01', '2024-06-10', 2),
(3, 3, 3,  '2024-07-01', '2024-07-07', 1),
(4, 4, 4,  '2024-08-01', '2024-08-15', 3),
(5, 5, 5,  '2024-09-01', '2024-09-10', 2),
(6, 6, 6,  '2024-10-01', '2024-10-05', 1),
(7, 7, 7,  '2024-11-01', '2024-11-07', 4),
(8, 8, 8, '2024-12-01', '2024-12-10', 2),
(9, 9, 9, '2025-01-01', '2025-01-05', 2),
(10, 10, 10,  '2025-02-01', '2025-02-05', 1),
(11, 11, 11,  '2025-03-01', '2025-03-07', 2),
(12, 12, 12,  '2025-04-01', '2025-04-10', 4),
(13, 13, 13,  '2025-05-01', '2025-05-05', 1),
(14, 14, 14,  '2025-06-01', '2025-06-05', 3),
(15, 15, 15,  '2025-07-01', '2025-07-07', 2);


CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    reservation_id INT,
    amount DECIMAL(10, 2),
    date DATE,
    time TIME,
    FOREIGN KEY (reservation_id) 
	REFERENCES Reservation(reservation_id)
);


INSERT INTO Transactions (transaction_id, reservation_id, amount, date, time)
VALUES
(1, 1, 10.00, '2024-05-15', '12:00:00'),
(2, 2, 15.00, '2024-06-20', '14:30:00'),
(3, 3, 20.00, '2024-07-01', '10:00:00'),
(4, 4, 25.00, '2024-08-05', '09:45:00'),
(5, 5, 30.00, '2024-09-10', '11:20:00'),
(6, 6, 35.00, '2024-10-15', '16:00:00'),
(7, 7, 40.00, '2024-11-20', '13:30:00'),
(8, 8, 45.00, '2024-12-25', '10:15:00'),
(9, 9, 50.00, '2025-01-30', '08:45:00'),
(10, 10, 55.00, '2025-03-05', '17:00:00'),
(11, 11, 60.00, '2025-04-10', '12:30:00'),
(12, 12, 65.00, '2025-05-15', '14:00:00'),
(13, 13, 70.00, '2025-06-20', '11:45:00'),
(14, 14, 75.00, '2025-07-25', '09:30:00'),
(15, 15, 80.00, '2025-08-30', '15:00:00');



CREATE TABLE Report (
    report_id INT PRIMARY KEY,
    traveler_id INT,
    title VARCHAR(100), 
    description VARCHAR(255), 
    country VARCHAR(50), 
    location VARCHAR(100),
    FOREIGN KEY (traveler_id) REFERENCES Traveler(traveler_id)
);


INSERT INTO Report (report_id, traveler_id, title, description, country, location)
VALUES 
(1, 1, 'Toronto Travels', 'Exploring the vibrant city of Toronto', 'Canada', 'Toronto'),
(2, 2, 'Vienna Vibes', 'Immersing in the cultural richness of Vienna', 'Austria', 'Vienna'),
(3, 3, 'Tokyo Tales', 'Adventures in the bustling streets of Tokyo', 'Japan', 'Tokyo'), 
(4, 4, 'London Calling', 'Discovering the historic charm of London', 'United Kingdom', 'London'),
(5, 5, 'Berlin Bound', 'Exploring the dynamic city of Berlin', 'Germany', 'Berlin'),
(6, 6, 'Seoul Escapade', 'Experiencing the modernity of Seoul', 'South Korea', 'Seoul'),
(7, 7, 'Bangkok Bliss', 'Discovering the vibrant culture of Bangkok', 'Thailand', 'Bangkok'), 
(8, 8, 'Amsterdam Adventures', 'Exploring the picturesque canals of Amsterdam', 'Netherlands', 'Amsterdam'),
(9, 9, 'Havana Hideaway', 'Immersing in the colorful streets of Havana', 'Cuba', 'Havana'),
(10, 10, 'Moscow Memories', 'Exploring the historical landmarks of Moscow', 'Russia', 'Moscow'),
(11, 11, 'Singapore Sojourn', 'Discovering the modern marvels of Singapore', 'Singapore', 'Singapore'), 
(12, 12, 'Dublin Delights', 'Experiencing the lively atmosphere of Dublin', 'Ireland', 'Dublin'),
(13, 13, 'Athens Adventure', 'Exploring the ancient ruins of Athens', 'Greece', 'Athens'),
(14, 14, 'Venice Voyage', 'Cruising along the canals of Venice', 'Italy', 'Venice'),
(15, 15, 'Cape Town Chronicles', 'Discovering the beauty of Cape Town', 'South Africa', 'Cape Town');



SELECT * FROM Report;

SELECT *
FROM Traveler
WHERE address LIKE '%City X%';


SELECT h.name AS hotel_name, SUM(t.amount) AS total_transactions
FROM Hotel h
JOIN Room r ON h.hotel_id = r.hotel_id
JOIN Reservation re ON r.room_id = re.room_id
JOIN Transactions t ON re.reservation_id = t.reservation_id 
WHERE h.name = 'Grand Hotel'
AND re.start_date >= '2024-03-01' AND re.end_date <= '2024-03-05'
GROUP BY h.name;

SELECT h.name AS hotel_name, COUNT(r.room_id) AS room_count 
FROM Hotel h
LEFT JOIN Room r ON h.hotel_id = r.hotel_id 
GROUP BY h.name;

SELECT * FROM Hotel WHERE hotel_id = 1;

UPDATE Hotel
SET name = 'Kingsbury' WHERE hotel_id = 2;

SELECT * FROM Hotel WHERE hotel_id = 2;

DELETE FROM Hotel
WHERE hotel_id = 2;

SELECT * FROM Hotel WHERE country = 'USA';

SELECT SUM(amount) AS total_transactions FROM Transactions t
INNER JOIN Reservation r ON t.reservation_id = r.reservation_id 
INNER JOIN Room ro ON r.room_id = ro.room_id
WHERE ro.hotel_id = 3
AND t.date BETWEEN '2024-03-01' AND '2024-03-31';


