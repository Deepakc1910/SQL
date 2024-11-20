/*To create a Database*/
create database Airport;

/*To use a databse*/
use Airport;

/*To create table*/
CREATE TABLE Airlines (
    airline_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    airline_id INT,
    flight_number VARCHAR(10),
    origin VARCHAR(50),
    destination VARCHAR(50),
    departure_time DATETIME,
    arrival_time DATETIME,
    FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id)
);

CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    passport_number VARCHAR(15) UNIQUE
);




CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY,
    flight_id INT,
    passenger_id INT,
    seat_number VARCHAR(5),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);

/*To descibe the schema of table*/
desc Airlines;

desc Flights;

desc Passengers;

desc Tickets;

/*Using alter to add column*/
alter table Airlines add plane_name varchar(20);

/*Using Alter to modify the datatype of column*/
alter table Airlines modify plane_name varchar(100);

/*Using alter to rename column*/
alter table Airlines rename column plane_name to p_name;

/*Using alter to drop column*/
alter table Airlines drop column p_name;

/*Inserting records into table*/
INSERT INTO Airlines (airline_id, name, country) VALUES
(1, 'American Airlines', 'USA'),
(2, 'Delta Airlines', 'USA'),
(3, 'United Airlines', 'USA'),
(4, 'Lufthansa', 'Germany'),
(5, 'British Airways', 'UK'),
(6, 'Air France', 'France'),
(7, 'Emirates', 'UAE'),
(8, 'Qatar Airways', 'Qatar'),
(9, 'Singapore Airlines', 'Singapore'),
(10, 'Air Canada', 'Canada'),
(11, 'Qantas', 'Australia'),
(12, 'Turkish Airlines', 'Turkey'),
(13, 'KLM', 'Netherlands'),
(14, 'Swiss Air', 'Switzerland'),
(15, 'Japan Airlines', 'Japan'),
(16, 'China Airlines', 'China'),
(17, 'Korean Air', 'South Korea'),
(18, 'Aeroflot', 'Russia'),
(19, 'Iberia', 'Spain'),
(20, 'Alitalia', 'Italy');

INSERT INTO Flights (flight_id, airline_id, flight_number, origin, destination, departure_time, arrival_time) VALUES
(101, 1, 'AA101', 'New York', 'Los Angeles', '2023-11-01 08:00:00', '2023-11-01 11:00:00'),
(102, 2, 'DL202', 'Los Angeles', 'Chicago', '2023-11-01 09:00:00', '2023-11-01 12:00:00'),
(103, 3, 'UA303', 'Chicago', 'Houston', '2023-11-01 10:00:00', '2023-11-01 13:00:00'),
(104, 4, 'LH404', 'Frankfurt', 'New York', '2023-11-01 11:00:00', '2023-11-01 14:00:00'),
(105, 5, 'BA505', 'London', 'Paris', '2023-11-01 12:00:00', '2023-11-01 13:30:00'),
(106, 6, 'AF606', 'Paris', 'Rome', '2023-11-01 13:00:00', '2023-11-01 14:30:00'),
(107, 7, 'EK707', 'Dubai', 'Sydney', '2023-11-01 14:00:00', '2023-11-01 22:00:00'),
(108, 8, 'QR808', 'Doha', 'Bangkok', '2023-11-01 15:00:00', '2023-11-01 19:00:00'),
(109, 9, 'SQ909', 'Singapore', 'Tokyo', '2023-11-01 16:00:00', '2023-11-01 20:00:00'),
(110, 10, 'AC1010', 'Toronto', 'New York', '2023-11-01 17:00:00', '2023-11-01 19:00:00'),
(111, 11, 'QF111', 'Sydney', 'Los Angeles', '2023-11-01 18:00:00', '2023-11-01 08:00:00'),
(112, 12, 'TK1212', 'Istanbul', 'Berlin', '2023-11-01 19:00:00', '2023-11-01 21:00:00'),
(113, 13, 'KL1313', 'Amsterdam', 'Dubai', '2023-11-01 20:00:00', '2023-11-01 23:00:00'),
(114, 14, 'LX1414', 'Zurich', 'London', '2023-11-01 21:00:00', '2023-11-01 22:00:00'),
(115, 15, 'JL1515', 'Tokyo', 'Beijing', '2023-11-01 22:00:00', '2023-11-01 23:30:00'),
(116, 16, 'CA1616', 'Beijing', 'Seoul', '2023-11-01 23:00:00', '2023-11-02 01:00:00'),
(117, 17, 'KE1717', 'Seoul', 'Shanghai', '2023-11-02 00:00:00', '2023-11-02 02:00:00'),
(118, 18, 'SU1818', 'Moscow', 'Paris', '2023-11-02 01:00:00', '2023-11-02 04:00:00'),
(119, 19, 'IB1919', 'Madrid', 'Lisbon', '2023-11-02 02:00:00', '2023-11-02 03:00:00'),
(120, 20, 'AZ2020', 'Rome', 'Athens', '2023-11-02 03:00:00', '2023-11-02 04:30:00');

INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number) VALUES
(1001, 'John', 'Doe', 'P12345678'),
(1002, 'Jane', 'Smith', 'P23456789'),
(1003, 'Alice', 'Johnson', 'P34567890'),
(1004, 'Bob', 'Brown', 'P45678901'),
(1005, 'Chris', 'Davis', 'P56789012'),
(1006, 'Emily', 'Wilson', 'P67890123'),
(1007, 'Frank', 'Miller', 'P78901234'),
(1008, 'Grace', 'Taylor', 'P89012345'),
(1009, 'Henry', 'Anderson', 'P90123456'),
(1010, 'Ivy', 'Thomas', 'P01234567'),
(1011, 'Jack', 'Moore', 'P12345098'),
(1012, 'Karen', 'Martin', 'P23450987'),
(1013, 'Leo', 'Jackson', 'P34509876'),
(1014, 'Mia', 'White', 'P45608765'),
(1015, 'Nina', 'Harris', 'P56707654'),
(1016, 'Oscar', 'Clark', 'P67806543'),
(1017, 'Paul', 'Lewis', 'P78905432'),
(1018, 'Quinn', 'Walker', 'P89004321'),
(1019, 'Ruby', 'Hall', 'P90103210'),
(1020, 'Sam', 'Allen', 'P01232109');

INSERT INTO Tickets (ticket_id, flight_id, passenger_id, seat_number) VALUES
(1, 101, 1001, '1A'),
(2, 101, 1002, '1B'),
(3, 102, 1003, '2A'),
(4, 102, 1004, '2B'),
(5, 103, 1005, '3A'),
(6, 103, 1006, '3B'),
(7, 104, 1007, '4A'),
(8, 104, 1008, '4B'),
(9, 105, 1009, '5A'),
(10, 105, 1010, '5B'),
(11, 106, 1011, '6A'),
(12, 106, 1012, '6B'),
(13, 107, 1013, '7A'),
(14, 107, 1014, '7B'),
(15, 108, 1015, '8A'),
(16, 108, 1016, '8B'),
(17, 109, 1017, '9A'),
(18, 109, 1018, '9B'),
(19, 110, 1019, '10A'),
(20, 110, 1020, '10B');

/*updating records using set and where clause*/
update Passengers set first_name="Alice" where passenger_id=1001;

/*deleting records using  where clause*/
delete from Tickets where ticket_id=19;

/*selecting records from table*/
select * from flights;

select * from flights where destination="Dubai";

/*use to see all tables in database*/
show tables;

/*use to see all databases*/
show databases;

/*selection using where clause and like function*/
select * from Passengers where First_name like 'J%';

select * from Passengers where Last_name like 'D_e';

/*selection using  limit function*/
select * from Tickets limit 5;

/*group by*/
select passenger_id, concat(First_name,' ',Last_name) as Full_name 
from passengers 
group by passenger_id;


select flight_id, flight_number, origin, destination 
from Flights 
group by flight_id 
having destination="London";

/*order by*/
select * from Flights
order by destination;

select * from Passengers
order by first_name desc;

/*============Functions==================*/
select concat(First_name,' ',Last_name) as Full_name from passengers;

select flight_id,lower(destination) as destination from flights;

select flight_number,upper(origin) as origin from flights;

select replace('WELCOME HOME','HOME','HOUSE') as REPLACED_STRING;

select reverse(first_name) from passengers;

select length(origin) from flights;

select substr(last_name,1,3) as extracted_string from passengers;

/*================================Union=======================================================*/
select airline_id as id,name as identity,country as Nation from Airlines where name="United Airlines" or  country="USA"
union
select flight_number as f_no ,origin as Org,destination as dest from Flights where origin="London" and destination="Paris";

select passenger_id as ID, passport_number as Num from passengers
union
select ticket_id as ID, seat_number from tickets;

/*================================Subqueries=======================================================*/
select * from tickets where flight_id=(select flight_id from tickets where ticket_id=10);

select * from passengers
where passenger_id in(select passenger_id from passengers where first_name="John" or first_name="Alice");

SELECT flight_id, flight_number FROM Flights WHERE (airline_id, destination) 
IN (SELECT airline_id, 'New York' FROM Airlines WHERE country = 'USA');

/*================================joins=======================================================*/
select a.airline_id,name,country,flight_number,origin,destination from Airlines A 
join Flights F 
on a.airline_id=f.airline_id;

select p.passenger_id, concat(first_name,' ',last_name) as Full_name,passport_number 
from Passengers P
left join Tickets T 
on p.passenger_id=t.passenger_id;

select p.passenger_id,First_name,last_name,passport_number 
from Passengers P
right join Tickets T 
on p.passenger_id=t.passenger_id;

select a.airline_id,name,country,flight_number,origin,destination 
from Airlines A 
right join Flights F 
on a.airline_id=f.airline_id
union
select a.airline_id,name,country,flight_number,origin,destination 
from Airlines A 
right join Flights F 
on a.airline_id=f.airline_id;

/*================================views=======================================================*/
create view A_view as
select airline_id,name,country 
from Airlines;

select * from A_view;






















































































































































