DROP DATABASE IF EXISTS Kumar_Jilek_Logan_Database;
CREATE DATABASE Kumar_Jilek_Logan_Database;
USE Kumar_Jilek_Logan_Database;

CREATE TABLE Airport (
	id				INT AUTO_INCREMENT PRIMARY KEY,
    airport_name    VARCHAR(100) unique,
    city            VARCHAR(100),
    country         VARCHAR(100)
);

-- Create Statements for Airport 
INSERT INTO Airport (airport_name, city, country) VALUES ('Logan International Airport', 'Boston', 'USA');
INSERT INTO Airport (airport_name, city, country) VALUES ('John F. Kennedy International Airport', 'New York', 'USA');
INSERT INTO Airport (airport_name, city, country) VALUES ('Los Angeles International Airport', 'Los Angeles', 'USA');
INSERT INTO Airport (airport_name, city, country) VALUES ('Chicago O\'Hare International Airport', 'Chicago', 'USA');
INSERT INTO Airport (airport_name, city, country) VALUES ('Miami International Airport', 'Miami', 'USA');
INSERT INTO Airport (airport_name, city, country) VALUES ('Dallas/Fort Worth International Airport', 'Dallas', 'USA');
INSERT INTO Airport (airport_name, city, country) VALUES ('Hartsfield–Jackson Atlanta International Airport', 'Atlanta', 'USA');
INSERT INTO Airport (airport_name, city, country) VALUES ('Seattle–Tacoma International Airport', 'Seattle', 'USA');
INSERT INTO Airport (airport_name, city, country) VALUES ('San Francisco International Airport', 'San Francisco', 'USA');
INSERT INTO Airport (airport_name, city, country) VALUES ('Denver International Airport', 'Denver', 'USA');
INSERT INTO Airport (airport_name, city, country) VALUES ('Heathrow Airport', 'London', 'UK');
INSERT INTO Airport (airport_name, city, country) VALUES ('Gatwick Airport', 'London', 'UK');
INSERT INTO Airport (airport_name, city, country) VALUES ('Charles de Gaulle Airport', 'Paris', 'France');
INSERT INTO Airport (airport_name, city, country) VALUES ('Frankfurt Airport', 'Frankfurt', 'Germany');
INSERT INTO Airport (airport_name, city, country) VALUES ('Keflavik International Airport', 'Reykjavik', 'Iceland');
INSERT INTO Airport (airport_name, city, country)VALUES  ('Istanbul Airport', 'Istanbul', 'Turkey');
INSERT INTO Airport (airport_name, city, country) VALUES ('Amsterdam Schiphol Airport', 'Amsterdam', 'Netherlands');
INSERT INTO Airport (airport_name, city, country) VALUES ('Dubai International Airport', 'Dubai', 'UAE');
INSERT INTO Airport (airport_name, city, country) VALUES ('Tokyo Haneda Airport', 'Tokyo', 'Japan');
INSERT INTO Airport (airport_name, city, country) VALUES ('Singapore Changi Airport', 'Singapore', 'Singapore');
INSERT INTO Airport (airport_name, city, country) VALUES ('Toronto Pearson International Airport', 'Toronto', 'Canada');
INSERT INTO Airport (airport_name, city, country) VALUES ('Doha International Airport', 'Doha', 'Qatar');


CREATE TABLE Airline (
	id 				INT AUTO_INCREMENT PRIMARY KEY,
    airline_name    VARCHAR(100) unique,
    country         VARCHAR(100),
    airport_name    VARCHAR(100),
    FOREIGN KEY (airport_name) REFERENCES Airport(airport_name) on delete cascade
);

INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Delta Air Lines', 'USA', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('American Airlines', 'USA', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('United Airlines', 'USA', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('JetBlue Airways', 'USA', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Southwest Airlines', 'USA', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Alaska Airlines', 'USA', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Spirit Airlines', 'USA', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Frontier Airlines', 'USA', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Hawaiian Airlines', 'USA', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Sun Country Airlines', 'USA', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('British Airways', 'UK', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Virgin Atlantic', 'UK', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Air France', 'France', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Lufthansa', 'Germany', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('KLM Royal Dutch Airlines', 'Netherlands', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Qatar Airways', 'Qatar', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Emirates', 'UAE', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Etihad Airways', 'UAE', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Singapore Airlines', 'Singapore', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Cathay Pacific', 'Hong Kong', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Air Canada', 'Canada', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Japan Airlines', 'Japan', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('ANA All Nippon Airways', 'Japan', 'Logan International Airport');
INSERT INTO Airline (airline_name, country, airport_name) VALUES ('Turkish Airlines', 'Turkey', 'Logan International Airport');



CREATE TABLE Terminal (
    id     INT AUTO_INCREMENT PRIMARY KEY,
    terminal_name   VARCHAR(50),
    num_gates       INT,
    airport_name    VARCHAR(100) NOT NULL,
    FOREIGN KEY (airport_name) REFERENCES Airport(airport_name) on delete cascade
);

INSERT INTO Terminal (terminal_name, num_gates, airport_name) VALUES ('Terminal A', 8, 'Logan International Airport');
INSERT INTO Terminal (terminal_name, num_gates, airport_name) VALUES ('Terminal B', 8, 'Logan International Airport');
INSERT INTO Terminal (terminal_name, num_gates, airport_name) VALUES ('Terminal C', 8, 'Logan International Airport');
INSERT INTO Terminal (terminal_name, num_gates, airport_name) VALUES ('Terminal E', 6, 'Logan International Airport');

CREATE TABLE Gate (
    id         INT AUTO_INCREMENT PRIMARY KEY,
    gate_name       VARCHAR(20),
    status          VARCHAR(50),
    terminal_id     INT NOT NULL,
    FOREIGN KEY (terminal_id) REFERENCES Terminal(id) on delete cascade
);

INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (1, 'A1', 'Available', 1);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (2, 'A2', 'Occupied', 1);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (3, 'A3', 'Available', 1);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (4, 'A4', 'Under Maintenance', 1);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (5, 'A5', 'Available', 1);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (6, 'A6', 'Available', 1);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (7, 'A7', 'Occupied', 1);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (8, 'A8', 'Available', 1);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (9,  'B1', 'Available', 2);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (10, 'B2', 'Available', 2);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (11, 'B3', 'Occupied', 2);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (12, 'B4', 'Available', 2);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (13, 'B5', 'Under Maintenance', 2);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (14, 'B6', 'Available', 2);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (15, 'B7', 'Occupied', 2);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (16, 'B8', 'Available', 2);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (17, 'C1', 'Available', 3);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (18, 'C2', 'Available', 3);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (19, 'C3', 'Occupied', 3);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (20, 'C4', 'Available', 3);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (21, 'C5', 'Available', 3);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (22, 'C6', 'Under Maintenance', 3);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (23, 'C7', 'Available', 3);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (24, 'C8', 'Available', 3);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (25, 'E1', 'Available', 4);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (26, 'E2', 'Occupied', 4);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (27, 'E3', 'Available', 4);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (28, 'E4', 'Available', 4);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (29, 'E5', 'Under Maintenance', 4);
INSERT INTO Gate (id, gate_name, status, terminal_id) VALUES (30, 'E6', 'Available', 4);

CREATE TABLE Aircraft (
    id     INT AUTO_INCREMENT PRIMARY KEY,
    model           VARCHAR(100),
    capacity        INT
);
INSERT INTO Aircraft (id, model, capacity) VALUES (1, 'Boeing 737-800', 160);
INSERT INTO Aircraft (id, model, capacity) VALUES (2, 'Airbus A320', 150);
INSERT INTO Aircraft (id, model, capacity) VALUES (3, 'Boeing 777-300ER', 396);
INSERT INTO Aircraft (id, model, capacity) VALUES (4, 'Airbus A350-900', 325);
INSERT INTO Aircraft (id, model, capacity) VALUES (5, 'Boeing 787-9 Dreamliner', 290);
INSERT INTO Aircraft (id, model, capacity) VALUES (6, 'Airbus A321neo', 185);
INSERT INTO Aircraft (id, model, capacity) VALUES (7, 'Boeing 767-300', 216);
INSERT INTO Aircraft (id, model, capacity) VALUES (8, 'Airbus A330-300', 277);
INSERT INTO Aircraft (id, model, capacity) VALUES (9, 'Boeing 757-200', 180);
INSERT INTO Aircraft (id, model, capacity) VALUES (10, 'Airbus A319', 140);



CREATE TABLE Flight (
    id                   INT AUTO_INCREMENT PRIMARY KEY,
    flight_number               VARCHAR(20),
    flight_type                 VARCHAR(50),
    status                      VARCHAR(50),
    departure_time              DATETIME,
    arrival_time                DATETIME,
    aircraft_id                 INT,
    gate_id                     INT,
    airline_name                VARCHAR(100),
    arrival_airport_name        VARCHAR(100) NOT NULL,
    destination_airport_name    VARCHAR(100) NOT NULL,
    FOREIGN KEY (aircraft_id) REFERENCES Aircraft(id) on delete cascade, 
    FOREIGN KEY (gate_id) REFERENCES Gate(id) on delete cascade,
    FOREIGN KEY (airline_name) REFERENCES Airline(airline_name) on delete cascade,
    FOREIGN KEY (arrival_airport_name) REFERENCES Airport(airport_name) on delete cascade,
    FOREIGN KEY (destination_airport_name) REFERENCES Airport(airport_name) on delete cascade
);

INSERT INTO Flight VALUES (1,'DL1182','Domestic','On Time','2025-11-18 06:20','2025-11-18 08:05',1,3,'Delta Air Lines','Logan International Airport','John F. Kennedy International Airport');
INSERT INTO Flight VALUES (2,'AA240','Domestic','Boarding','2025-11-18 07:55','2025-11-18 10:40',2,9,'American Airlines','Logan International Airport','Chicago O\'Hare International Airport');
INSERT INTO Flight VALUES (3,'UA881','Domestic','On Time','2025-11-18 09:10','2025-11-18 12:25',3,11,'United Airlines','Logan International Airport','Denver International Airport');
INSERT INTO Flight VALUES (4,'B6321','Domestic','On Time','2025-11-18 08:45','2025-11-18 11:20',4,8,'JetBlue Airways','Logan International Airport','Miami International Airport');
INSERT INTO Flight VALUES (5,'WN705','Domestic','Delayed','2025-11-18 12:10','2025-11-18 15:55',5,7,'Southwest Airlines','Logan International Airport','Dallas/Fort Worth International Airport');
INSERT INTO Flight VALUES (6,'AS11','Domestic','On Time','2025-11-18 13:20','2025-11-18 17:05',6,18,'Alaska Airlines','Logan International Airport','Seattle–Tacoma International Airport');
INSERT INTO Flight VALUES (7,'NK902','Domestic','On Time','2025-11-18 14:35','2025-11-18 18:00',7,21,'Spirit Airlines','Logan International Airport','San Francisco International Airport');
INSERT INTO Flight VALUES (8,'F9120','Domestic','On Time','2025-11-18 15:10','2025-11-18 17:00',8,12,'Frontier Airlines','Logan International Airport','Hartsfield–Jackson Atlanta International Airport');
INSERT INTO Flight VALUES (9,'HA33','Domestic','Boarding','2025-11-18 16:25','2025-11-18 22:00',9,25,'Hawaiian Airlines','Logan International Airport','Los Angeles International Airport');
INSERT INTO Flight VALUES (10,'SY505','Domestic','On Time','2025-11-18 17:40','2025-11-18 20:35',10,14,'Sun Country Airlines','Logan International Airport','Denver International Airport');
INSERT INTO Flight VALUES (11,'BA212','International','On Time','2025-11-18 18:50','2025-11-19 06:30',3,27,'British Airways','Logan International Airport','Heathrow Airport');
INSERT INTO Flight VALUES (12,'VS10','International','Delayed','2025-11-18 20:15','2025-11-19 08:05',4,28,'Virgin Atlantic','Logan International Airport','Gatwick Airport');
INSERT INTO Flight VALUES (13,'AF333','International','On Time','2025-11-18 21:30','2025-11-19 09:55',5,29,'Air France','Logan International Airport','Charles de Gaulle Airport');
INSERT INTO Flight VALUES (14,'LH421','International','On Time','2025-11-18 22:20','2025-11-19 10:40',6,30,'Lufthansa','Logan International Airport','Frankfurt Airport');
INSERT INTO Flight VALUES (15,'KL644','International','Boarding','2025-11-18 23:05','2025-11-19 11:15',7,19,'KLM Royal Dutch Airlines','Logan International Airport','Amsterdam Schiphol Airport');
INSERT INTO Flight VALUES (16,'QR744','International','On Time','2025-11-18 21:45','2025-11-19 13:20',8,20,'Qatar Airways','Logan International Airport','Doha International Airport');
INSERT INTO Flight VALUES (17,'EK238','International','On Time','2025-11-18 22:55','2025-11-19 16:30',9,26,'Emirates','Logan International Airport','Dubai International Airport');
INSERT INTO Flight VALUES (18,'EY152','International','On Time','2025-11-18 20:40','2025-11-19 14:10',10,5,'Etihad Airways','Logan International Airport','Dubai International Airport');
INSERT INTO Flight VALUES (19,'SQ23','International','On Time','2025-11-18 09:00','2025-11-19 05:40',1,16,'Singapore Airlines','Logan International Airport','Singapore Changi Airport');
INSERT INTO Flight VALUES (20,'CX811','International','On Time','2025-11-18 13:10','2025-11-19 09:20',2,24,'Cathay Pacific','Tokyo Haneda Airport','Logan International Airport');
INSERT INTO Flight VALUES (21,'AC769','International','On Time','2025-11-18 10:25','2025-11-18 13:05',3,23,'Air Canada','Toronto Pearson International Airport','Logan International Airport');
INSERT INTO Flight VALUES (22,'BA203','International','On Time','2025-11-18 01:10','2025-11-18 07:45',4,6,'British Airways','Heathrow Airport','Logan International Airport');
INSERT INTO Flight VALUES (23,'JL808','International','On Time','2025-11-18 02:30','2025-11-18 13:00',5,2,'Japan Airlines','Tokyo Haneda Airport','Logan International Airport');
INSERT INTO Flight VALUES (24,'AK501','International','On Time','2025-11-18 04:15','2025-11-18 11:55',6,10,'ANA All Nippon Airways','Tokyo Haneda Airport','Logan International Airport');
INSERT INTO Flight VALUES (25,'TK82','International','Delayed','2025-11-18 03:25','2025-11-18 12:35',7,22,'Turkish Airlines','Istanbul Airport','Logan International Airport');

CREATE TABLE Seat (
    id         INT AUTO_INCREMENT PRIMARY KEY,
    seat_number     VARCHAR(10),
    class           VARCHAR(20),
    status          VARCHAR(50),
    flight_id       INT NOT NULL,
    FOREIGN KEY (flight_id) REFERENCES Flight(id) on delete cascade
);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (1,'1A','Economy','Available',1);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (2,'1B','Business','Available',1);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (3,'2A','Economy','Available',2);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (4,'2B','Business','Available',2);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (5,'3A','Economy','Available',3);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (6,'3B','Business','Available',3);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (7,'4A','Economy','Available',4);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (8,'4B','Business','Available',4);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (9,'5A','Economy','Available',5);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (10,'5B','Business','Available',5);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (11,'6A','Economy','Available',6);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (12,'6B','Business','Available',6);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (13,'7A','Economy','Available',7);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (14,'7B','Business','Available',7);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (15,'8A','Economy','Available',8);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (16,'8B','Business','Available',8);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (17,'9A','Economy','Available',9);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (18,'9B','Business','Available',9);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (19,'10A','Economy','Available',10);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (20,'10B','Business','Available',10);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (21,'11A','Economy','Available',11);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (22,'11B','Business','Available',11);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (23,'12A','Economy','Available',12);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (24,'12B','Business','Available',12);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (25,'13A','Economy','Available',13);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (26,'13B','Business','Available',13);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (27,'14A','Economy','Available',14);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (28,'14B','Business','Available',14);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (29,'15A','Economy','Available',15);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (30,'15B','Business','Available',15);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (31,'16A','Economy','Available',16);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (32,'16B','Business','Available',16);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (33,'17A','Economy','Available',17);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (34,'17B','Business','Available',17);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (35,'18A','Economy','Available',18);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (36,'18B','Business','Available',18);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (37,'19A','Economy','Available',19);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (38,'19B','Business','Available',19);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (39,'20A','Economy','Available',20);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (40,'20B','Business','Available',20);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (41,'21A','Economy','Available',21);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (42,'21B','Business','Available',21);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (43,'22A','Economy','Available',22);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (44,'22B','Business','Available',22);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (45,'23A','Economy','Available',23);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (46,'23B','Business','Available',23);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (47,'24A','Economy','Available',24);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (48,'24B','Business','Available',24);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (49,'25A','Economy','Available',25);
INSERT INTO Seat (id, seat_number, class, status, flight_id) VALUES (50,'25B','Business','Available',25);


CREATE TABLE Passenger (
    id     INT AUTO_INCREMENT PRIMARY KEY,
    full_name        VARCHAR(200),
    gender           VARCHAR(20),
    date_of_birth    DATE,
    nationality      VARCHAR(100),
    status           VARCHAR(50),
    passport_number  VARCHAR(50)
);

INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Tony Hsu', 'Male', '1998-05-14', 'USA', 'Checked-In', 'P98451231');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Harrison Pham', 'Male', '1999-11-22', 'USA', 'Checked-In', 'P77182944');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Maria Lopez', 'Female', '1992-02-07', 'Mexico', 'Booked', 'P55218039');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('James Carter', 'Male', '1987-07-18', 'USA', 'Available', 'P99844120');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Sophie Nguyen', 'Female', '1995-10-29', 'Vietnam', 'Checked-In', 'P66120947');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Daniel Kim', 'Male', '1996-03-12', 'South Korea', 'Checked-In', 'P72911458');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Emily Rogers', 'Female', '1990-09-03', 'USA', 'Available', 'P39011822');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Michael Patel', 'Male', '1989-12-30', 'India', 'Booked', 'P80019334');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Aisha Malik', 'Female', '1993-08-15', 'Pakistan', 'Booked', 'P44920319');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Robert Chen', 'Male', '1994-04-27', 'China', 'Checked-In', 'P31908462');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Liam Brown', 'Male', '1997-01-10', 'USA', 'Available', 'P63321984');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Isabella Gomez', 'Female', '1998-05-01', 'Colombia', 'Booked', 'P10028477');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('David Singh', 'Male', '1991-09-20', 'India', 'Checked-In', 'P59103348');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Olivia Martinez', 'Female', '1994-11-11', 'USA', 'Booked', 'P88200451');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('William Turner', 'Male', '1988-06-12', 'USA', 'Available', 'P71905512');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Chloe Park', 'Female', '1997-03-03', 'South Korea', 'Booked', 'P55193227');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Ethan Wright', 'Male', '1995-07-19', 'USA', 'Available', 'P20018754');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Grace Thompson', 'Female', '1993-02-14', 'Canada', 'Checked-In', 'P44481721');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Lucas Hernandez', 'Male', '1996-12-08', 'Spain', 'Booked', 'P88122934');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Nina Patel', 'Female', '1999-04-26', 'India', 'Available', 'P33784219');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Jackson Lee', 'Male', '1998-03-17', 'USA', 'Booked', 'P51877210');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Ava Richardson', 'Female', '1997-10-02', 'USA', 'Booked', 'P99011433');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Marcus Silva', 'Male', '1992-05-23', 'Brazil', 'Checked-In', 'P22590441');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Sophia Alvarez', 'Female', '1994-01-29', 'Mexico', 'Available', 'P71120880');
INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) VALUES ('Benjamin Hall', 'Male', '1986-09-14', 'USA', 'Booked', 'P60018832');

CREATE TABLE Passenger_Flight (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    passenger_id   INT NOT NULL,
    flight_id      INT NOT NULL,
    seat_id        INT,
    FOREIGN KEY (passenger_id) REFERENCES Passenger(id) on delete cascade,
    FOREIGN KEY (flight_id) REFERENCES Flight(id) on delete cascade,
    FOREIGN KEY (seat_id) REFERENCES Seat(id) on delete cascade
);

INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (1, 1, 1);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (1, 5, 9);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (2, 2, 3);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (2, 6, 11);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (3, 3, 5);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (4, 4, 7);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (5, 5, 9);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (6, 6, 11);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (7, 7, 13);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (8, 8, 15);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (9, 9, 17);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (10, 10, 19);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (11, 11, 21);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (12, 12, 23);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (13, 13, 25);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (14, 14, 27);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (15, 15, 29);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (16, 16, 31);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (17, 17, 33);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (18, 18, 35);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (19, 19, 37);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (20, 20, 39);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (21, 21, 41);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (22, 22, 43);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (23, 23, 45);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (24, 24, 47);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (25, 25, 49);
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (3, 7, 13);    
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (6, 10, 19);    
INSERT INTO Passenger_Flight (passenger_id, flight_id, seat_id) VALUES (14, 3, 6);     



CREATE TABLE Crew (
    id     INT AUTO_INCREMENT PRIMARY KEY,
    crew_name   VARCHAR(100),
    first_name  VARCHAR(100),
    last_name   VARCHAR(100),
    role        VARCHAR(50),
    city_base   VARCHAR(100)
);

INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (1, 'Captain John Smith', 'John', 'Smith', 'Pilot', 'Boston');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (2, 'First Officer Emily Clark', 'Emily', 'Clark', 'Co-Pilot', 'Boston');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (3, 'FA Olivia Perez', 'Olivia', 'Perez', 'Flight Attendant', 'Boston');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (4, 'FA Daniel Rivera', 'Daniel', 'Rivera', 'Flight Attendant', 'Boston');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (5, 'Captain Sarah Johnson', 'Sarah', 'Johnson', 'Pilot', 'New York');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (6, 'First Officer Kevin Lee', 'Kevin', 'Lee', 'Co-Pilot', 'New York');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (7, 'FA Rachel Kim', 'Rachel', 'Kim', 'Flight Attendant', 'New York');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (8, 'FA Jonathan Price', 'Jonathan', 'Price', 'Flight Attendant', 'New York');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (9, 'Captain Anthony Morris', 'Anthony', 'Morris', 'Pilot', 'New York');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (10, 'Captain Michael Adams', 'Michael', 'Adams', 'Pilot', 'Chicago');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (11, 'First Officer Karen White', 'Karen', 'White', 'Co-Pilot', 'Chicago');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (12, 'FA Jennifer Walsh', 'Jennifer', 'Walsh', 'Flight Attendant', 'Chicago');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (13, 'FA Brian Foster', 'Brian', 'Foster', 'Flight Attendant', 'Chicago');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (14, 'Captain Marcus Brown', 'Marcus', 'Brown', 'Pilot', 'London');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (15, 'First Officer Hannah Lewis', 'Hannah', 'Lewis', 'Co-Pilot', 'London');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (16, 'FA Aiden Scott', 'Aiden', 'Scott', 'Flight Attendant', 'London');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (17, 'FA Charlotte Green', 'Charlotte', 'Green', 'Flight Attendant', 'London');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (18, 'Captain Oliver Hughes', 'Oliver', 'Hughes', 'Pilot', 'London');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (19, 'Captain Yusuf Demir', 'Yusuf', 'Demir', 'Pilot', 'Istanbul');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (20, 'First Officer Leyla Kaya', 'Leyla', 'Kaya', 'Co-Pilot', 'Istanbul');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (21, 'Captain Ahmed Khan', 'Ahmed', 'Khan', 'Pilot', 'Dubai');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (22, 'FA Zara Malik', 'Zara', 'Malik', 'Flight Attendant', 'Dubai');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (23, 'Captain Hiro Tanaka', 'Hiro', 'Tanaka', 'Pilot', 'Tokyo');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (24, 'FA Mei Chen', 'Mei', 'Chen', 'Flight Attendant', 'Tokyo');
INSERT INTO Crew (id, crew_name, first_name, last_name, role, city_base) VALUES (25, 'FA Priya Desai', 'Priya', 'Desai', 'Flight Attendant', 'Toronto');

CREATE TABLE Flight_Crew (
    id      INT AUTO_INCREMENT PRIMARY KEY,
    flight_id  INT NOT NULL,
    crew_id    INT NOT NULL,
    FOREIGN KEY (flight_id) REFERENCES Flight(id) on delete cascade,
    FOREIGN KEY (crew_id) REFERENCES Crew(id) on delete cascade
);

INSERT INTO Flight_Crew VALUES (1, 1, 1);
INSERT INTO Flight_Crew VALUES (2, 1, 5);
INSERT INTO Flight_Crew VALUES (3, 2, 2);
INSERT INTO Flight_Crew VALUES (4, 2, 6);
INSERT INTO Flight_Crew VALUES (5, 3, 3);
INSERT INTO Flight_Crew VALUES (6, 3, 7);
INSERT INTO Flight_Crew VALUES (7, 4, 4);
INSERT INTO Flight_Crew VALUES (8, 4, 8);
INSERT INTO Flight_Crew VALUES (9, 5, 9);
INSERT INTO Flight_Crew VALUES (10, 5, 13);
INSERT INTO Flight_Crew VALUES (11, 6, 10);
INSERT INTO Flight_Crew VALUES (12, 6, 14);
INSERT INTO Flight_Crew VALUES (13, 11, 11);
INSERT INTO Flight_Crew VALUES (14, 11, 15);
INSERT INTO Flight_Crew VALUES (15, 12, 12);
INSERT INTO Flight_Crew VALUES (16, 12, 16);
INSERT INTO Flight_Crew VALUES (17, 17, 17);
INSERT INTO Flight_Crew VALUES (18, 17, 1);
INSERT INTO Flight_Crew VALUES (19, 20, 20);
INSERT INTO Flight_Crew VALUES (20, 20, 4);

CREATE TABLE Meal (
    id     INT AUTO_INCREMENT PRIMARY KEY,
    meal_name   VARCHAR(100),
    cuisine     VARCHAR(50),
    quantity    INT,
    flight_id   INT NOT NULL,
    FOREIGN KEY (flight_id) REFERENCES Flight(id) on delete cascade
);

INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Chicken Alfredo', 'American', 120, 1);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Beef Chili Bowl', 'American', 110, 2);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Grilled Salmon Plate', 'American', 130, 3);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Turkey Club Sandwich', 'American', 140, 4);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('BBQ Chicken Rice Bowl', 'American', 100, 5);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Teriyaki Chicken', 'Japanese', 160, 6);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Spicy Tuna Donburi', 'Japanese', 150, 7);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Curry Udon', 'Japanese', 170, 8);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Hawaiian Pineapple Chicken', 'Hawaiian', 180, 9);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Island Veggie Plate', 'Hawaiian', 150, 10);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('English Breakfast Tray', 'British', 200, 11);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Shepherd’s Pie', 'British', 190, 12);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Coq au Vin', 'French', 210, 13);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Beef Bourguignon', 'French', 205, 14);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Dutch Stroopwafel Dessert', 'Dutch', 220, 15);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Chicken Kabsa', 'Middle Eastern', 230, 16);  
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Lamb Machboos', 'Middle Eastern', 240, 17); 
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Butter Chicken', 'Indian', 225, 18);        
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Hainanese Chicken Rice', 'Singaporean', 250, 19);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Dim Sum Assortment', 'Chinese', 260, 20);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Maple Glazed Chicken', 'Canadian', 130, 21);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Full English Roast', 'British', 210, 22);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Katsu Curry', 'Japanese', 180, 23);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Sushi Bento Box', 'Japanese', 175, 24);
INSERT INTO Meal (meal_name, cuisine, quantity, flight_id) VALUES ('Turkish Doner Plate', 'Turkish', 240, 25);

CREATE TABLE Baggage (
    id        INT AUTO_INCREMENT PRIMARY KEY,
    ticket_num    VARCHAR(50),
    weight        DECIMAL(5,2),
    tag_number    VARCHAR(50),
    destination   VARCHAR(100),
    status        VARCHAR(50),
    passenger_id  INT,
    flight_id     INT,
    FOREIGN KEY (passenger_id) REFERENCES Passenger(id) on delete cascade,
    FOREIGN KEY (flight_id) REFERENCES Flight(id) on delete cascade
);

INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2001', 23.40, 'BG101', 'John F. Kennedy International Airport', 'Loaded', 1, 1);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2002', 18.90, 'BG102', 'John F. Kennedy International Airport', 'Loaded', 1, 1);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2003', 20.10, 'BG103', 'Chicago O\'Hare International Airport', 'Checked-In', 2, 2);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2004', 25.60, 'BG104', 'Chicago O\'Hare International Airport', 'Loaded', 2, 2);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2005', 21.75, 'BG105', 'Denver International Airport', 'Loaded', 3, 3);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2006', 27.40, 'BG106', 'Denver International Airport', 'Loaded', 3, 3);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2007', 17.10, 'BG107', 'Miami International Airport', 'In Transit', 4, 4);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2008', 19.65, 'BG108', 'Dallas/Fort Worth International Airport', 'Loaded', 5, 5);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2009', 24.30, 'BG109', 'Seattle–Tacoma International Airport', 'Loaded', 6, 6);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2010', 28.90, 'BG110', 'Seattle–Tacoma International Airport', 'Loaded', 6, 6);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2011', 23.95, 'BG111', 'San Francisco International Airport', 'Checked-In', 7, 7);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2012', 26.40, 'BG112', 'Hartsfield–Jackson Atlanta International Airport', 'Loaded', 8, 8);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2013', 15.20, 'BG113', 'Hartsfield–Jackson Atlanta International Airport', 'Loaded', 8, 8);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2014', 29.70, 'BG114', 'Los Angeles International Airport', 'In Transit', 9, 9);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2015', 22.40, 'BG115', 'Denver International Airport', 'Delivered', 10, 10);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2016', 17.85, 'BG116', 'Denver International Airport', 'Delivered', 10, 10);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2017', 24.70, 'BG117', 'Heathrow Airport', 'Loaded', 11, 11);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2018', 28.30, 'BG118', 'Gatwick Airport', 'Checked-In', 12, 12);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2019', 23.55, 'BG119', 'Charles de Gaulle Airport', 'Loaded', 13, 13);
INSERT INTO Baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id)
VALUES ('T2020', 26.10, 'BG120', 'Frankfurt Airport', 'Loaded', 14, 14);

/* ============================================================
   A I R P O R T   C R U D
   ============================================================ */

-- CREATE Airport
DROP PROCEDURE IF EXISTS create_Airport;
DELIMITER $$
CREATE PROCEDURE create_Airport(
    IN airport_name_input VARCHAR(100),
    IN city_input         VARCHAR(100),
    IN country_input      VARCHAR(100)
)
BEGIN
    DECLARE airport_count INT DEFAULT 0;

    SELECT COUNT(*) INTO airport_count
    FROM Airport
    WHERE airport_name = airport_name_input;

    IF airport_count > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Airport already exists!';
    ELSE
        INSERT INTO Airport (airport_name, city, country)
        VALUES (airport_name_input, city_input, country_input);
    END IF;
END $$
DELIMITER ;


-- READ – total airports
DROP PROCEDURE IF EXISTS read_Airport;
DELIMITER $$

CREATE PROCEDURE read_Airport(
    IN attr VARCHAR(50),
    IN val  VARCHAR(100)
)
main_block: BEGIN

    IF attr IS NULL AND val IS NULL THEN
        SELECT * FROM Airport;
        LEAVE main_block;
    END IF;

    IF attr IS NULL AND val IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Attribute cannot be NULL when value is provided';
    END IF;

    IF attr NOT IN ('city', 'country') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute. Use ''city'' or ''country''';
    END IF;

    IF attr = 'city' THEN

        IF val IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'City value cannot be NULL';
        END IF;

        IF (SELECT COUNT(*) FROM Airport WHERE city = val) = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'No airports found for this city';
        ELSE
            SELECT * FROM Airport WHERE city = val;
        END IF;

    ELSEIF attr = 'country' THEN

        IF val IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Country value cannot be NULL';
        END IF;

        IF (SELECT COUNT(*) FROM Airport WHERE country = val) = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'No airports found for this country';
        ELSE
            SELECT * FROM Airport WHERE country = val;
        END IF;

    END IF;

END main_block $$

DELIMITER ;



-- FUNCTION – total airports
DROP FUNCTION IF EXISTS total_Airport;
DELIMITER $$

CREATE FUNCTION total_Airport(
    user_attr VARCHAR(50),
    user_val  VARCHAR(100)
)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT DEFAULT 0;

    IF user_attr IS NULL AND user_val IS NULL THEN
        SELECT COUNT(*) INTO total FROM Airport;
        RETURN total;
    END IF;

    IF user_attr NOT IN ('city', 'country', 'airport_id') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute. Allowed: city, country, airport_id';
    END IF;

    IF user_val IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Value cannot be NULL when attribute is provided';
    END IF;

    IF user_attr = 'city' THEN
        SELECT COUNT(*) INTO total FROM Airport WHERE city = user_val;

    ELSEIF user_attr = 'country' THEN
        SELECT COUNT(*) INTO total FROM Airport WHERE country = user_val;

    ELSEIF user_attr = 'airport_id' THEN
        SELECT COUNT(*) INTO total FROM Airport WHERE airport_id = user_val;
    END IF;

    IF total = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No matching airports found';
    END IF;

    RETURN total;
END $$

DELIMITER ;


DROP PROCEDURE IF EXISTS update_Airport;
DELIMITER //

CREATE PROCEDURE update_Airport(
    airport_id INT,
    attribute  VARCHAR(64),
    value      VARCHAR(100)
)
BEGIN
    SET @a = value;
    SET @b = airport_id;

    CASE

        WHEN attribute = 'city' THEN
            PREPARE stmt FROM 
                'UPDATE Airport SET city = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'country' THEN
            PREPARE stmt FROM 
                'UPDATE Airport SET country = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'airport_name' THEN
            PREPARE stmt FROM 
                'UPDATE Airport SET airport_name = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'airport_id' THEN
            PREPARE stmt FROM 
                'UPDATE Airport SET id = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

    END CASE;

END //

DELIMITER ;




DROP PROCEDURE IF EXISTS delete_Airport;
DELIMITER $$

CREATE PROCEDURE delete_Airport(
    IN airport_id INT
)
BEGIN
    IF airport_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Airport ID cannot be NULL';
    END IF;

    IF (SELECT COUNT(*) FROM Airport WHERE id = airport_id) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No matching airport found to delete';
    END IF;

    DELETE FROM Airport
    WHERE id = airport_id;
END $$
DELIMITER ;





/* ============================================================
   A I R L I N E   C R U D
   ============================================================ */

-- CREATE Airline
DROP PROCEDURE IF EXISTS create_Airline;
DELIMITER $$

CREATE PROCEDURE create_Airline(
    IN airline_name_input VARCHAR(100),
    IN country_input      VARCHAR(100),
    IN airport_input      VARCHAR(100)
)
BEGIN
    DECLARE airline_count INT DEFAULT 0;

    SELECT COUNT(*) INTO airline_count
    FROM Airline
    WHERE airline_name = airline_name_input;

    IF airline_count > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Airline already exists!';
    END IF;

    INSERT INTO Airline (airline_name, country, airport_name)
    VALUES (airline_name_input, country_input, airport_input);
END $$

DELIMITER ;

DROP PROCEDURE IF EXISTS read_Airline;
DELIMITER $$

CREATE PROCEDURE read_Airline(
    IN attr VARCHAR(50),
    IN val  VARCHAR(100)
)
main_block: BEGIN

    IF attr IS NULL AND val IS NULL THEN
        SELECT * FROM Airline;
        LEAVE main_block;
    END IF;

    IF attr IS NULL AND val IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Attribute cannot be NULL when value is provided';
    END IF;

    IF attr NOT IN ('airline_name', 'country', 'airport_name', 'airline_id') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute. Allowed: airline_name, country, airport_name, airline_id';
    END IF;

    IF val IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Value cannot be NULL when attribute is provided';
    END IF;
    SET @v = val;
    SET @sql = CONCAT('SELECT * FROM Airline WHERE ', attr, ' = ?');

    PREPARE stmt FROM @sql;
    EXECUTE stmt USING @v;
    DEALLOCATE PREPARE stmt;

END main_block $$
DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS update_Airline //
CREATE PROCEDURE update_Airline(
    airline_id INT,
    attribute  VARCHAR(64),
    value      VARCHAR(64)
)
BEGIN
    SET @a = value;
    SET @b = airline_id;

    CASE
        WHEN attribute = 'airline_name' THEN
            PREPARE stmt FROM 
                'UPDATE Airline SET airline_name = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'country' THEN
            PREPARE stmt FROM 
                'UPDATE Airline SET country = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'airport_name' THEN
            PREPARE stmt FROM 
                'UPDATE Airline SET airport_name = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'airline_id' THEN
            PREPARE stmt FROM 
                'UPDATE Airline SET id = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;
    END CASE;

END //

DELIMITER ;

DROP PROCEDURE IF EXISTS delete_Airline;
DELIMITER $$

CREATE PROCEDURE delete_Airline(
    IN airline_id INT
)
BEGIN
    IF airline_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Airline ID cannot be NULL';
    END IF;

    IF (SELECT COUNT(*) FROM Airline WHERE id = airline_id) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No matching airline found to delete';
    END IF;

    DELETE FROM Airline
    WHERE id = airline_id;
END $$
DELIMITER ;

DROP FUNCTION IF EXISTS total_Airlines;
DELIMITER $$

CREATE FUNCTION total_Airlines()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*) INTO total
    FROM Airline;

    RETURN total;
END$$

DELIMITER ;



/* ============================================================
   T E R M I N A L   C R U D
   ============================================================ */

DROP PROCEDURE IF EXISTS add_Terminal;
DELIMITER $$

CREATE PROCEDURE add_Terminal(
    IN input_terminal_name VARCHAR(50),
    IN input_num_gates INT,
    IN input_airport_name VARCHAR(100)
)
BEGIN
    DECLARE terminal_count INT DEFAULT 0;

    SELECT COUNT(*) INTO terminal_count
    FROM Terminal
    WHERE terminal_name = input_terminal_name
      AND airport_name = input_airport_name;

    IF terminal_count > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Terminal already exists at this airport!';
    END IF;

    INSERT INTO Terminal (terminal_name, num_gates, airport_name)
    VALUES (input_terminal_name, input_num_gates, input_airport_name);
END $$

DELIMITER ;

DROP PROCEDURE IF EXISTS read_Terminal;
DELIMITER $$

CREATE PROCEDURE read_terminal(
    IN attr VARCHAR(50),
    IN val  VARCHAR(100)
)
main_block: BEGIN

    IF attr IS NULL AND val IS NULL THEN
        SELECT * FROM Terminal;
        LEAVE main_block;
    END IF;

    IF attr IS NULL AND val IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Attribute cannot be NULL when value is provided';
    END IF;

    IF attr NOT IN ('terminal_name','airport_name','num_gates','terminal_id') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
    END IF;

    IF val IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Value cannot be NULL';
    END IF;

    SET @v = val;
    SET @sql = CONCAT('SELECT * FROM Terminal WHERE ', attr, ' = ?');

    PREPARE stmt FROM @sql;
    EXECUTE stmt USING @v;
    DEALLOCATE PREPARE stmt;

END main_block $$
DELIMITER ;


DROP PROCEDURE IF EXISTS update_Terminal;
DELIMITER //

CREATE PROCEDURE update_Terminal(
    terminal_id INT,
    attribute   VARCHAR(64),
    value       VARCHAR(100)
)
BEGIN

    SET @a = value;
    SET @b = terminal_id;

    CASE

        WHEN attribute = 'terminal_name' THEN
            PREPARE stmt FROM 
                'UPDATE Terminal SET terminal_name = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'airport_name' THEN
            PREPARE stmt FROM 
                'UPDATE Terminal SET airport_name = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'num_gates' THEN
            PREPARE stmt FROM 
                'UPDATE Terminal SET num_gates = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'terminal_id' THEN
            PREPARE stmt FROM 
                'UPDATE Terminal SET id = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

    END CASE;

END //

DELIMITER ;


DROP PROCEDURE IF EXISTS delete_Terminal;
DELIMITER $$

CREATE PROCEDURE delete_Terminal(
    IN terminal_id INT
)
BEGIN
    IF terminal_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Terminal ID cannot be NULL';
    END IF;

    IF (SELECT COUNT(*) FROM Terminal WHERE id = terminal_id) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No matching terminal found to delete';
    END IF;

    DELETE FROM Terminal
    WHERE id = terminal_id;
END $$
DELIMITER ;


/* ============================================================
   G A T E  C R U D
   ============================================================ */

DROP PROCEDURE IF EXISTS create_Gate;
DELIMITER $$

CREATE PROCEDURE create_Gate(
    IN input_gate_name VARCHAR(20),
    IN input_status VARCHAR(50),
    IN input_terminal_id INT
)
BEGIN
    DECLARE exists_terminal INT DEFAULT 0;
    DECLARE exists_gate INT DEFAULT 0;

    SELECT COUNT(*) INTO exists_terminal
    FROM Terminal
    WHERE terminal_id = input_terminal_id;

    IF exists_terminal = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Terminal does not exist';
    END IF;

    SELECT COUNT(*) INTO exists_gate
    FROM Gate
    WHERE gate_name = input_gate_name
      AND terminal_id = input_terminal_id;

    IF exists_gate > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Gate already exists in this terminal';
    END IF;

    INSERT INTO Gate (gate_name, status, terminal_id)
    VALUES (input_gate_name, input_status, input_terminal_id);
END $$

DELIMITER ;

DROP PROCEDURE IF EXISTS read_Gate;
DELIMITER $$

CREATE PROCEDURE read_Gate(
    IN attr VARCHAR(50),
    IN val  VARCHAR(100)
)
main_block: BEGIN

    IF attr IS NULL AND val IS NULL THEN
        SELECT * FROM Gate;
        LEAVE main_block;
    END IF;

    IF attr IS NULL AND val IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Attribute cannot be NULL when value is provided';
    END IF;

    IF attr NOT IN ('gate_id','gate_name','status','terminal_id') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
    END IF;

    IF val IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Value cannot be NULL';
    END IF;

    SET @v = val;
    SET @sql = CONCAT('SELECT * FROM Gate WHERE ', attr, ' = ?');

    PREPARE stmt FROM @sql;
    EXECUTE stmt USING @v;
    DEALLOCATE PREPARE stmt;

END main_block $$

DELIMITER ;

DROP PROCEDURE IF EXISTS update_Gate;
DELIMITER //

CREATE PROCEDURE update_Gate(
    gate_id   INT,
    attribute VARCHAR(64),
    value     VARCHAR(100)
)
BEGIN

    SET @a = value;
    SET @b = gate_id;

    CASE

        WHEN attribute = 'gate_name' THEN
            PREPARE stmt FROM 
                'UPDATE Gate SET gate_name = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'status' THEN
            PREPARE stmt FROM 
                'UPDATE Gate SET status = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'terminal_id' THEN
            PREPARE stmt FROM 
                'UPDATE Gate SET terminal_id = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'gate_id' THEN
            PREPARE stmt FROM 
                'UPDATE Gate SET id = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

    END CASE;

END //

DELIMITER ;


DROP PROCEDURE IF EXISTS delete_Gate;
DELIMITER $$

CREATE PROCEDURE delete_Gate(
    IN gate_id INT
)
BEGIN
    IF gate_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Gate ID cannot be NULL';
    END IF;

    IF (SELECT COUNT(*) FROM Gate WHERE id = gate_id) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No matching gate found to delete';
    END IF;

    DELETE FROM Gate
    WHERE id = gate_id;
END $$
DELIMITER ;



/* ============================================
                AIRCRAFT CRUD OPERATIONS
   ============================================ */

DROP PROCEDURE IF EXISTS add_Aircraft;
DELIMITER $$

CREATE PROCEDURE add_Aircraft(
    IN input_model VARCHAR(100),
    IN input_capacity INT
)
BEGIN
    IF input_capacity <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Capacity must be greater than zero';
    END IF;

    INSERT INTO Aircraft (model, capacity)
    VALUES (input_model, input_capacity);
END $$

DELIMITER ;

DROP PROCEDURE IF EXISTS read_Aircraft;
DELIMITER $$

CREATE PROCEDURE read_Aircraft(
    IN attr VARCHAR(50),
    IN val  VARCHAR(100)
)
main_block: BEGIN

    IF attr IS NULL AND val IS NULL THEN
        SELECT * FROM Aircraft;
        LEAVE main_block;
    END IF;

    IF attr IS NULL AND val IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Attribute cannot be NULL when value is provided';
    END IF;

    IF attr NOT IN ('aircraft_id','model','capacity') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
    END IF;

    IF val IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Value cannot be NULL';
    END IF;

    SET @v = val;

    SET @sql = CONCAT('SELECT * FROM Aircraft WHERE ', attr, ' = ?');

    PREPARE stmt FROM @sql;
    EXECUTE stmt USING @v;
    DEALLOCATE PREPARE stmt;

END main_block $$
DELIMITER ;

DROP PROCEDURE IF EXISTS update_Aircraft;
DELIMITER //

CREATE PROCEDURE update_Aircraft(
    aircraft_id INT,
    attribute   VARCHAR(64),
    value       VARCHAR(100)
)
BEGIN

    SET @a = value;
    SET @b = aircraft_id;

    CASE

        WHEN attribute = 'model' THEN
            PREPARE stmt FROM 
                'UPDATE Aircraft SET model = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'capacity' THEN
            IF @a <= 0 THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Capacity must be greater than zero';
            END IF;

            PREPARE stmt FROM 
                'UPDATE Aircraft SET capacity = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'aircraft_id' THEN
            PREPARE stmt FROM 
                'UPDATE Aircraft SET id = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

    END CASE;

END //

DELIMITER ;


DROP PROCEDURE IF EXISTS delete_Aircraft;
DELIMITER $$

CREATE PROCEDURE delete_Aircraft(
    IN aircraft_id INT
)
BEGIN
    IF aircraft_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Aircraft ID cannot be NULL';
    END IF;

    IF (SELECT COUNT(*) FROM Aircraft WHERE id = aircraft_id) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No matching aircraft found to delete';
    END IF;

    DELETE FROM Aircraft
    WHERE id = aircraft_id;
END $$
DELIMITER ;

/* ============================================
               FLIGHT CRUD OPERATIONS
============================================ */

DROP PROCEDURE IF EXISTS create_Flight;
DELIMITER $$

CREATE PROCEDURE create_Flight(
    IN p_flight_number VARCHAR(20),
    IN p_flight_type VARCHAR(50),
    IN p_status VARCHAR(50),
    IN p_departure_time DATETIME,
    IN p_arrival_time DATETIME,
    IN p_aircraft_id INT,
    IN p_gate_id INT,
    IN p_airline_name VARCHAR(100),
    IN p_arrival_airport VARCHAR(100),
    IN p_destination_airport VARCHAR(100)
)
main_block: BEGIN

    IF p_aircraft_id IS NULL OR p_gate_id IS NULL OR p_airline_name IS NULL THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Required values missing';
    END IF;

    IF p_arrival_airport = p_destination_airport THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Arrival and destination cannot match';
    END IF;

    IF (SELECT COUNT(*) FROM Aircraft WHERE aircraft_id=p_aircraft_id)=0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Aircraft does not exist';
    END IF;

    IF (SELECT COUNT(*) FROM Gate WHERE gate_id=p_gate_id)=0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Gate does not exist';
    END IF;

    IF (SELECT status FROM Gate WHERE gate_id=p_gate_id) <> 'Available' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Gate not available';
    END IF;

    IF (SELECT COUNT(*) FROM Airline WHERE airline_name=p_airline_name)=0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Airline does not exist';
    END IF;

    IF (SELECT COUNT(*) FROM Airport WHERE airport_name=p_arrival_airport)=0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Arrival airport invalid';
    END IF;

    IF (SELECT COUNT(*) FROM Airport WHERE airport_name=p_destination_airport)=0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Destination airport invalid';
    END IF;

    IF (SELECT COUNT(*) FROM Flight WHERE flight_number=p_flight_number AND airline_name=p_airline_name)>0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate flight number for this airline';
    END IF;

    INSERT INTO Flight (
        flight_number, flight_type, status,
        departure_time, arrival_time,
        aircraft_id, gate_id, airline_name,
        arrival_airport_name, destination_airport_name
    ) VALUES (
        p_flight_number, p_flight_type, p_status,
        p_departure_time, p_arrival_time,
        p_aircraft_id, p_gate_id, p_airline_name,
        p_arrival_airport, p_destination_airport
    );

END main_block $$
DELIMITER ;

DROP FUNCTION IF EXISTS total_Flights;
DELIMITER $$

CREATE FUNCTION total_Flights()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*) INTO total
    FROM Flight;

    RETURN total;
END$$

DELIMITER ;


DROP PROCEDURE IF EXISTS read_Flight;
DELIMITER $$

CREATE PROCEDURE read_Flight(
    IN attr VARCHAR(50),
    IN val VARCHAR(200)
)
main_block: BEGIN

    IF attr IS NULL AND val IS NULL THEN
        SELECT * FROM Flight;
        LEAVE main_block;
    END IF;

    IF attr IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Attribute cannot be NULL';
    END IF;

    IF attr NOT IN (
        'flight_id','flight_number','flight_type','status','departure_time',
        'arrival_time','aircraft_id','gate_id','airline_name',
        'arrival_airport_name','destination_airport_name'
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Invalid attribute';
    END IF;

    IF val IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Value cannot be NULL';
    END IF;

    SET @v = val;
    SET @sql = CONCAT('SELECT * FROM Flight WHERE ', attr, ' = ?');

    PREPARE stmt FROM @sql;
    EXECUTE stmt USING @v;
    DEALLOCATE PREPARE stmt;

END main_block $$
DELIMITER ;

DROP PROCEDURE IF EXISTS update_Flight;
DELIMITER //

CREATE PROCEDURE update_Flight(
    flight_id INT,
    attribute VARCHAR(64),
    value     VARCHAR(200)
)
BEGIN

    SET @a = value;
    SET @b = flight_id;

    CASE

        WHEN attribute = 'flight_number' THEN
            PREPARE stmt FROM
                'UPDATE Flight SET flight_number = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'flight_type' THEN
            PREPARE stmt FROM
                'UPDATE Flight SET flight_type = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'status' THEN
            PREPARE stmt FROM
                'UPDATE Flight SET status = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'departure_time' THEN
            PREPARE stmt FROM
                'UPDATE Flight SET departure_time = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'arrival_time' THEN
            PREPARE stmt FROM
                'UPDATE Flight SET arrival_time = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'aircraft_id' THEN
            PREPARE stmt FROM
                'UPDATE Flight SET aircraft_id = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'gate_id' THEN
            PREPARE stmt FROM
                'UPDATE Flight SET gate_id = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'airline_name' THEN
            PREPARE stmt FROM
                'UPDATE Flight SET airline_name = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'arrival_airport_name' THEN
            PREPARE stmt FROM
                'UPDATE Flight SET arrival_airport_name = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'destination_airport_name' THEN
            PREPARE stmt FROM
                'UPDATE Flight SET destination_airport_name = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'flight_id' THEN
            PREPARE stmt FROM
                'UPDATE Flight SET flight_id = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

    END CASE;

END //

DELIMITER ;


DROP PROCEDURE IF EXISTS delete_Flight;
DELIMITER $$

CREATE PROCEDURE delete_Flight(
    IN flight_id INT
)
BEGIN
    IF flight_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Flight ID cannot be NULL';
    END IF;

    IF (SELECT COUNT(*) FROM Flight WHERE id = flight_id) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No matching flight found to delete';
    END IF;

    DELETE FROM Flight
    WHERE id = flight_id;
END $$
DELIMITER ;

/* ============================================
               SEAT CRUD OPERATIONS
============================================ */

DROP PROCEDURE IF EXISTS create_Seat;
DELIMITER $$

CREATE PROCEDURE create_Seat(
    IN input_seat_number VARCHAR(10),
    IN input_class VARCHAR(20),
    IN input_status VARCHAR(50),
    IN input_flight_id INT
)
BEGIN
    DECLARE exists_flight INT DEFAULT 0;

    SELECT COUNT(*) INTO exists_flight
    FROM Flight
    WHERE flight_id = input_flight_id;

    IF exists_flight = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Flight does not exist';
    END IF;

    INSERT INTO Seat(seat_number, class, status, flight_id)
    VALUES(input_seat_number, input_class, input_status, input_flight_id);
END $$

DELIMITER ;

DROP PROCEDURE IF EXISTS read_Seat;
DELIMITER $$

CREATE PROCEDURE read_Seat(
    IN attr VARCHAR(50),
    IN val  VARCHAR(100)
)
main_block: BEGIN

    IF attr IS NULL AND val IS NULL THEN
        SELECT * FROM Seat;
        LEAVE main_block;
    END IF;

    IF attr IS NULL AND val IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Attribute cannot be NULL when value is provided';
    END IF;

    IF attr NOT IN ('seat_id','seat_number','class','status','flight_id') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid seat attribute';
    END IF;

    IF val IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Value cannot be NULL';
    END IF;

    SET @v = val;
    SET @sql = CONCAT('SELECT * FROM Seat WHERE ', attr, ' = ?');

    PREPARE stmt FROM @sql;
    EXECUTE stmt USING @v;
    DEALLOCATE PREPARE stmt;

END $$

DELIMITER ;

DROP PROCEDURE IF EXISTS update_Seat;
DELIMITER //

CREATE PROCEDURE update_Seat(
    seat_id  INT,
    attribute VARCHAR(64),
    value     VARCHAR(100)
)
BEGIN
    DECLARE exists_flight INT DEFAULT 0;

    SET @a = value;
    SET @b = seat_id;

    IF attribute NOT IN ('seat_number','class','status','flight_id') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid seat update attribute';
    END IF;

    IF (SELECT COUNT(*) FROM Seat WHERE seat_id = seat_id) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Seat does not exist';
    END IF;

    IF attribute = 'flight_id' THEN
        SELECT COUNT(*) INTO exists_flight
        FROM Flight
        WHERE flight_id = @a;

        IF exists_flight = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Flight does not exist';
        END IF;
    END IF;

    CASE
        WHEN attribute = 'seat_number' THEN
            PREPARE stmt FROM
                'UPDATE Seat SET seat_number = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'class' THEN
            PREPARE stmt FROM
                'UPDATE Seat SET class = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'status' THEN
            PREPARE stmt FROM
                'UPDATE Seat SET status = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'flight_id' THEN
            PREPARE stmt FROM
                'UPDATE Seat SET flight_id = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;

        WHEN attribute = 'seat_id' THEN
            PREPARE stmt FROM
                'UPDATE Seat SET seat_id = ? WHERE id = ?';
            EXECUTE stmt USING @a, @b;
    END CASE;

END //

DELIMITER ;

DROP PROCEDURE IF EXISTS delete_Seat;
DELIMITER $$

CREATE PROCEDURE delete_Seat(
    IN seat_id INT
)
BEGIN
    IF seat_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Seat ID cannot be NULL';
    END IF;

    IF (SELECT COUNT(*) FROM Seat WHERE id = seat_id) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No matching seat found to delete';
    END IF;

    DELETE FROM Seat
    WHERE id = seat_id;
END $$
DELIMITER ;

DROP TRIGGER IF EXISTS seat_mark_occupied;
DELIMITER $$

CREATE TRIGGER seat_mark_occupied
AFTER INSERT ON Passenger_Flight
FOR EACH ROW
BEGIN
    IF NEW.seat_id IS NOT NULL THEN
        UPDATE Seat
        SET status = 'Occupied'
        WHERE id = NEW.seat_id;
    END IF;
END$$

DELIMITER ;

SET SQL_SAFE_UPDATES = 0;

-- Passenger operations

DELIMITER //
DROP procedure if exists create_passenger //
CREATE PROCEDURE create_passenger
(
    full_name        VARCHAR(200),
    gender           VARCHAR(20),
    date_of_birth    DATE,
    nationality      VARCHAR(100),
    status           VARCHAR(50),
    passport_number  VARCHAR(50)
)
BEGIN
	INSERT INTO Passenger (full_name, gender, date_of_birth, nationality, status, passport_number) 
		VALUES (full_name, gender, date_of_birth, nationality, status, passport_number);
END //
DELIMITER ;

call create_passenger('John Doe', 'Male', '1998-05-14', 'USA', 'Checked-In', 'P98451232');
select * from passenger;

DELIMITER //
DROP procedure if exists read_passenger //
CREATE PROCEDURE read_passenger
(
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    CASE
		WHEN attribute is NULL THEN
			PREPARE stmt from 'SELECT * FROM passenger';
            EXECUTE stmt;
		WHEN attribute = 'id' THEN 
			PREPARE stmt from 'SELECT * FROM passenger where passenger.id = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'full_name' THEN 
			PREPARE stmt from 'SELECT * FROM passenger where passenger.full_name = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'gender' THEN 
			PREPARE stmt from 'SELECT * FROM passenger where passenger.gender = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'date_of_birth' THEN 
			PREPARE stmt from 'SELECT * FROM passenger where passenger.date_of_birth = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'nationality' THEN 
			PREPARE stmt from 'SELECT * FROM passenger where passenger.nationality = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'status' THEN 
			PREPARE stmt from 'SELECT * FROM passenger where passenger.status = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'passport_number' THEN 
			PREPARE stmt from 'SELECT * FROM passenger where passenger.passport_number = ?';    
			EXECUTE stmt USING @a;
		ELSE SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
	end case;
END //
DELIMITER ;

call read_passenger('gender', 'Male');
call read_passenger(NULL, NULL);

DELIMITER //
DROP procedure if exists update_passenger //
CREATE PROCEDURE update_passenger
(
	id int,
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    SET @b = id;
    CASE
		WHEN attribute = 'id' THEN 
			PREPARE stmt from 'UPDATE passenger set passenger.id = ? where passenger.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'full_name' THEN 
			PREPARE stmt from 'UPDATE passenger set passenger.full_name = ? where passenger.id = ?';
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'gender' THEN 
			PREPARE stmt from 'UPDATE passenger set passenger.gender = ? where passenger.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'date_of_birth' THEN 
			PREPARE stmt from 'UPDATE passenger set passenger.date_of_birth = ? where passenger.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'nationality' THEN 
			PREPARE stmt from 'UPDATE passenger set passenger.nationality = ? where passenger.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'status' THEN 
			PREPARE stmt from 'UPDATE passenger set passenger.status = ? where passenger.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'passport_number' THEN 
			PREPARE stmt from 'UPDATE passenger set passenger.passport_number = ? where passenger.id = ?';    
			EXECUTE stmt USING @a, @b;
		ELSE SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
	end case;
END //
DELIMITER ;

call update_passenger(1, 'full_name', 'John Doe');
select * from passenger;

DELIMITER //
DROP procedure if exists delete_passenger //
CREATE PROCEDURE delete_passenger
(
    id int
)
BEGIN
	DELETE FROM passenger
		where passenger.id = id;
END //
DELIMITER ;

call delete_passenger(26);
select * from passenger;

-- Passenger_flight operations

DELIMITER //
DROP procedure if exists create_passenger_flight //
CREATE PROCEDURE create_passenger_flight
(
    passenger_id   INT,
    flight_id      INT,
    seat_id        INT
)
BEGIN
	INSERT INTO Passenger_Flight (id, passenger_id, flight_id, seat_id) 
		VALUES (id, passenger_id, flight_id, seat_id);
END //
DELIMITER ;


select * from passenger_flight;

DELIMITER //
DROP procedure if exists read_passenger_flight //
CREATE PROCEDURE read_passenger_flight
(
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    CASE
		WHEN attribute = 'passenger_id' THEN 
			PREPARE stmt from 'SELECT * FROM passenger_flight where passenger_flight.passenger_id = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'flight_id' THEN 
			PREPARE stmt from 'SELECT * FROM passenger_flight where passenger_flight.flight_id = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'seat_id' THEN 
			PREPARE stmt from 'SELECT * FROM passenger_flight where passenger_flight.seat_id = ?';    
			EXECUTE stmt USING @a;
	end case;
END //
DELIMITER ;

-- call read_passenger_flight('id', 1);

DELIMITER //
DROP procedure if exists update_passenger_flight //
CREATE PROCEDURE update_passenger_flight
(
	id int,
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    SET @b = id;
    CASE
		WHEN attribute = 'passenger_id' THEN 
			PREPARE stmt from 'UPDATE passenger_flight set passenger_flight.passenger_id = ? where passenger.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'flight_id' THEN 
			PREPARE stmt from 'UPDATE passenger_flight set passenger_flight.flight_id = ? where passenger.id = ?';
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'seat_id' THEN 
			PREPARE stmt from 'UPDATE passenger_flight set passenger_flight.seat_id = ? where passenger.id = ?';    
			EXECUTE stmt USING @a, @b;
		ELSE SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
	end case;
END //
DELIMITER ;

-- call update_passenger_flight();-
select * from passenger_flight;

DELIMITER //
DROP procedure if exists delete_passenger_flight //
CREATE PROCEDURE delete_passenger_flight
(
    id int
)
BEGIN
	DELETE FROM passenger_flight
		where passenger_flight.id = id;
END //
DELIMITER ;

call delete_passenger_flight(1);
select * from passenger_flight;


-- Crew operations


DELIMITER //
DROP procedure if exists create_crew //
CREATE PROCEDURE create_crew
(
    crew_name   VARCHAR(100),
    first_name  VARCHAR(100),
    last_name   VARCHAR(100),
    role        VARCHAR(50),
    city_base   VARCHAR(100)
)
BEGIN
	INSERT INTO crew (crew_name, first_name, last_name, role, city_base) 
		VALUES (crew_name, first_name, last_name, role, city_base);
END //
DELIMITER ;

-- call create_crew();
select * from crew;

DELIMITER //
DROP procedure if exists read_crew //
CREATE PROCEDURE read_crew
(
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    CASE
		WHEN attribute is NULL THEN
			PREPARE stmt from 'SELECT * FROM crew';
            EXECUTE stmt;
		WHEN attribute = 'crew_name' THEN 
			PREPARE stmt from 'SELECT * FROM crew where crew.crew_name = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'first_name' THEN 
			PREPARE stmt from 'SELECT * FROM crew where crew.first_name = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'last_name' THEN 
			PREPARE stmt from 'SELECT * FROM crew where crew.last_name = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'role' THEN 
			PREPARE stmt from 'SELECT * FROM crew where crew.role = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'city_base' THEN 
			PREPARE stmt from 'SELECT * FROM crew where crew.city_base = ?';    
			EXECUTE stmt USING @a;
		ELSE SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
	end case;
END //
DELIMITER ;

 call read_crew(NULL, NULL);

DELIMITER //
DROP procedure if exists update_crew //
CREATE PROCEDURE update_crew
(
	id int,
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    SET @b = id;
    CASE
		WHEN attribute = 'crew_name' THEN 
			PREPARE stmt from 'UPDATE crew set crew.crew_name = ? where crew.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'first_name' THEN 
			PREPARE stmt from 'UPDATE passenger_flight set crew.first_name = ? where crew.id = ?';
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'last_name' THEN 
			PREPARE stmt from 'UPDATE passenger_flight set crew.last_name = ? where crew.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'role' THEN 
			PREPARE stmt from 'UPDATE passenger_flight set crew.role = ? where crew.id = ?';
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'city_base' THEN 
			PREPARE stmt from 'UPDATE passenger_flight set crew.city_base = ? where crew.id = ?';    
			EXECUTE stmt USING @a, @b;
		ELSE SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
	end case;
END //
DELIMITER ;

-- call update_crew();
select * from crew;

DELIMITER //
DROP procedure if exists delete_crew //
CREATE PROCEDURE delete_crew
(
    id int
)
BEGIN
	DELETE FROM crew
		where crew.id = id;
END //
DELIMITER ;

-- call delete_crew(1);
select * from crew;

-- Flight_crew operations


DELIMITER //
DROP procedure if exists create_flight_crew //
CREATE PROCEDURE create_flight_crew
(
    flight_id  INT,
    crew_id    INT
)
BEGIN
	INSERT INTO flight_crew (flight_id, crew_id) 
		VALUES (flight_id, crew_id);
END //
DELIMITER ;

-- call create_flight_crew();
select * from flight_crew;

DELIMITER //
DROP procedure if exists read_flight_crew //
CREATE PROCEDURE read_flight_crew
(
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    CASE
		WHEN attribute = 'flight_id' THEN 
			PREPARE stmt from 'SELECT * FROM flight_crew where flight_crew.flight_id = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'crew_id' THEN 
			PREPARE stmt from 'SELECT * FROM flight_crew where flight_crew.crew_id = ?';    
			EXECUTE stmt USING @a;
		ELSE SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
	end case;
END //
DELIMITER ;

-- call read_flight_crew();

DELIMITER //
DROP procedure if exists update_flight_crew //
CREATE PROCEDURE update_flight_crew
(
	id int,
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    SET @b = id;
    CASE
		WHEN attribute = 'id' THEN 
			PREPARE stmt from 'UPDATE flight_crew set flight_crew.id = ? where flight_crew.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'id' THEN 
			PREPARE stmt from 'UPDATE flight_crew set flight_crew.id = ? where flight_crew.id = ?';
			EXECUTE stmt USING @a, @b;
		ELSE SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
	end case;
END //
DELIMITER ;

-- call update_flight_crew();
select * from flight_crew;

DELIMITER //
DROP procedure if exists delete_flight_crew //
CREATE PROCEDURE delete_flight_crew
(
    id int
)
BEGIN
	DELETE FROM flight_crew
		where flight_crew.id = id;
END //
DELIMITER ;

call delete_flight_crew(1);
select * from flight_crew;

-- Meal operations


DELIMITER //
DROP procedure if exists create_meal //
CREATE PROCEDURE create_meal
(
    meal_name   VARCHAR(100),
    cuisine     VARCHAR(50),
    quantity    INT,
    flight_id   INT
)
BEGIN
	INSERT INTO meal (meal_name, cuisine, quantity, flight_id) 
		VALUES (meal_name, cuisine, quantity, flight_id);
END //
DELIMITER ;

-- call create_meal();
select * from meal;

DELIMITER //
DROP procedure if exists read_meal //
CREATE PROCEDURE read_meal
(
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    CASE
		WHEN attribute is NULL THEN
			PREPARE stmt from 'SELECT * FROM meal';
            EXECUTE stmt;
		WHEN attribute = 'meal_name' THEN 
			PREPARE stmt from 'SELECT * FROM meal where meal.meal_name = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'cuisine' THEN 
			PREPARE stmt from 'SELECT * FROM meal where meal.cuisine = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'quantity' THEN 
			PREPARE stmt from 'SELECT * FROM meal where meal.quantity = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'flight_id' THEN 
			PREPARE stmt from 'SELECT * FROM meal where meal.flight_id = ?';    
			EXECUTE stmt USING @a;
		ELSE SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
	end case;
END //
DELIMITER ;

-- call read_meal();

DELIMITER //
DROP procedure if exists update_meal //
CREATE PROCEDURE update_meal
(
	id int,
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    SET @b = id;
    CASE
		WHEN attribute = 'meal_name' THEN 
			PREPARE stmt from 'UPDATE meal set meal.meal_name = ? where meal.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'cuisine' THEN 
			PREPARE stmt from 'UPDATE meal set meal.cuisine = ? where meal.id = ?';
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'quantity' THEN 
			PREPARE stmt from 'UPDATE meal set meal.quantity = ? where meal.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'flight_id' THEN 
			PREPARE stmt from 'UPDATE meal set meal.flight_id = ? where meal.id = ?';
			EXECUTE stmt USING @a, @b;
		ELSE SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
	end case;
END //
DELIMITER ;

-- call update_meal();
select * from meal;

DELIMITER //
DROP procedure if exists delete_meal //
CREATE PROCEDURE delete_meal
(
    id int
)
BEGIN
	DELETE FROM meal
		where meal.id = id;
END //
DELIMITER ;

call delete_meal(1);
select * from meal;

-- Baggage operations

DELIMITER //
DROP procedure if exists create_baggage //
CREATE PROCEDURE create_baggage
(
    ticket_num    VARCHAR(50),
    weight        DECIMAL(5,2),
    tag_number    VARCHAR(50),
    destination   VARCHAR(100),
    status        VARCHAR(50),
    passenger_id  INT,
    flight_id     INT
)
BEGIN
	INSERT INTO baggage (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id) 
		VALUES (ticket_num, weight, tag_number, destination, status, passenger_id, flight_id);
END //
DELIMITER ;

-- call create_baggage();
select * from baggage;

DELIMITER //
DROP procedure if exists read_baggage //
CREATE PROCEDURE read_baggage
(
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    CASE
		WHEN attribute is NULL THEN
			PREPARE stmt from 'SELECT * FROM baggage';
            EXECUTE stmt;
		WHEN attribute = 'ticket_num' THEN 
			PREPARE stmt from 'SELECT * FROM baggage where baggage.ticket_num = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'weight' THEN 
			PREPARE stmt from 'SELECT * FROM baggage where baggage.weight = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'tag_number' THEN 
			PREPARE stmt from 'SELECT * FROM baggage where baggage.tag_number = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'destination' THEN 
			PREPARE stmt from 'SELECT * FROM baggage where baggage.destination = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'status' THEN 
			PREPARE stmt from 'SELECT * FROM baggage where baggage.status = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'passenger_id' THEN 
			PREPARE stmt from 'SELECT * FROM baggage where baggage.passenger_id = ?';    
			EXECUTE stmt USING @a;
		WHEN attribute = 'flight_id' THEN 
			PREPARE stmt from 'SELECT * FROM baggage where baggage.flight_id = ?';    
			EXECUTE stmt USING @a;
		ELSE SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
	end case;
END //
DELIMITER ;

-- call read_baggage();

DELIMITER //
DROP procedure if exists update_baggage //
CREATE PROCEDURE update_baggage
(
	id int,
    attribute VARCHAR(64),
    value VARCHAR(64)
)
BEGIN
	SET @a = value;
    SET @b = id;
    CASE
		WHEN attribute = 'ticket_num' THEN 
			PREPARE stmt from 'UPDATE baggage set baggage.meal_name = ? where baggage.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'weight' THEN 
			PREPARE stmt from 'UPDATE baggage set baggage.weight = ? where baggage.id = ?';
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'tag_number' THEN 
			PREPARE stmt from 'UPDATE baggage set baggage.tag_number = ? where baggage.id = ?';    
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'destination' THEN 
			PREPARE stmt from 'UPDATE baggage set baggage.destination = ? where baggage.id = ?';
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'status' THEN 
			PREPARE stmt from 'UPDATE baggage set baggage.status = ? where baggage.id = ?';
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'id' THEN 
			PREPARE stmt from 'UPDATE baggage set baggage.id = ? where baggage.id = ?';
			EXECUTE stmt USING @a, @b;
		WHEN attribute = 'id' THEN 
			PREPARE stmt from 'UPDATE baggage set baggage.id = ? where baggage.id = ?';
			EXECUTE stmt USING @a, @b;
		ELSE SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid attribute';
	end case;
END //
DELIMITER ;

-- call update_baggage();
select * from baggage;

DELIMITER //
DROP procedure if exists delete_baggage //
CREATE PROCEDURE delete_baggage
(
    id int
)
BEGIN
	DELETE FROM baggage
		where baggage.id = id;
END //
DELIMITER ;

call delete_baggage(1);
select * from baggage;


