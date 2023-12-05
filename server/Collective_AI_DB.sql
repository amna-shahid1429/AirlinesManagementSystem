create database airport_system;
use airport_system;

create table admin_table(
	username varchar(30) primary key,
    pwd varchar(15) not null
);
drop table admin_table;
insert into admin_table values('rahim_admin','12345');
insert into admin_table values('aamina_admin','43123');
select * from admin_table;

-- Clients 
CREATE TABLE CLIENTS(
client_id INT PRIMARY KEY AUTO_INCREMENT,
fname VARCHAR(25) NOT NULL,
mname VARCHAR(25),
lname VARCHAR(25)NOT NULL,
phone VARCHAR(14)NOT NULL,
email VARCHAR(40) NOT NULL,
passport VARCHAR(40) NOT NULL
);

INSERT INTO CLIENTS VALUES(1,'John', 'Doe', 'Smith', '+923317534906', 'johndoesmith@gmail.com', '123');
INSERT INTO CLIENTS VALUES(2,'Ahmad', NULL, 'Jones', '+923317534907', 'ahmadjones@hotmail.com', '124');
INSERT INTO CLIENTS VALUES(3,'Michael', 'Henry', 'Morgan', '+923317534908', 'michaelhenrymorgan@yahoo.com', '125');
INSERT INTO CLIENTS VALUES(4,'Walter', NULL, 'Johnson', '+443317534909', 'walterjohnson@gmail.com', '126');
INSERT INTO CLIENTS VALUES(5,'Andrew', NULL, 'Harrison', '+1233317534910', 'andrewharrison@gmail.com', '127');
INSERT INTO CLIENTS VALUES(6,'Dorothy', 'Samantha', 'Wagner', '+443317534911', 'dorothysamanthawagner@outlook.com', '128');
INSERT INTO CLIENTS VALUES(7,'Alexander', 'Kenneth', 'Gray', '+9783317534912', 'alexanderkennethgray@gmail.com', '129');
INSERT INTO CLIENTS VALUES(8,'Matthew', NULL, 'Reed', '+923317534913', 'matthewreed@gmail.com', '130');
INSERT INTO CLIENTS VALUES(9,'Robert', NULL, 'Miller', '+943317534914', 'robertmiller@gmail.com', '131');
INSERT INTO CLIENTS VALUES(10,'David', 'Walter', 'Young', '+923317534915', 'davidwalteryoung@gmail.com', '132');
INSERT INTO CLIENTS VALUES(10,'David', 'Walter', 'Young', '+923317534915', 'davidwalteryoung@gmail.com', '132');
INSERT INTO CLIENTS VALUES(11,'Abdul', 'Rahim', 'Imran', '+92332344915', 'abdulraheem@gmail.com', '132');


create view client_view as select * from clients;
select * from clients;
alter table clients add password varchar(25) NOT NULL;

select c.fname,c.lname,cr.review from customer_review cr inner join clients c on c.client_id=cr.client_id;
-- Airplane
CREATE TABLE AIRPLANE(

airplane_id INT NOT NULL,
max_seats INT NOT NULL,

CONSTRAINT PK_AIRPLANEID PRIMARY KEY(airplane_id)
);

INSERT INTO AIRPLANE VALUES(41,100);
INSERT INTO AIRPLANE VALUES(42,100);
INSERT INTO AIRPLANE VALUES(43,300);
INSERT INTO AIRPLANE VALUES(44,100);
INSERT INTO AIRPLANE VALUES(45,300);
INSERT INTO AIRPLANE VALUES(46,100);
INSERT INTO AIRPLANE VALUES(47,100);
INSERT INTO AIRPLANE VALUES(48,300);
INSERT INTO AIRPLANE VALUES(49,100);
INSERT INTO AIRPLANE VALUES(50,300);
create view airplane_view as select * from airplane;

select * from airplane;

-- Flight Status
create table FlightStatus(
flightStatus_id int primary key,
status_flight varchar(100)
);

insert into FlightStatus values('61','Departed');
insert into FlightStatus values('62','Landed');
insert into FlightStatus values('63','Delayed');
insert into FlightStatus values('64','Boarding');
insert into FlightStatus values('65','On Time');


create view flight_statuses_view as select * from flightstatus;


-- Gates
create table Gates(
	gate_no int primary key
);

insert into Gates values(66);
insert into Gates values(67);
insert into Gates values(68);
insert into Gates values(69);
insert into Gates values(70);
insert into Gates values(71);
insert into Gates values(72);
insert into Gates values(73);
insert into Gates values(74);
insert into Gates values(75);

create view gate_view as select * from gates;

-- Airport
create table Airport(
airport_code varchar(3) primary key,-- format (A-Z)(A-Z)(A-Z)
airport_name varchar(100),
city varchar(85),-- longest city name is 85 characters
gate_no INT,

CONSTRAINT FK_AIRPORTCODE FOREIGN KEY (gate_no) REFERENCES GATES (gate_no)
);

insert into Airport values('LAX','Los Angeles Airport','Los Angeles',66);
insert into Airport values('KHI','Karachi Airport','Karachi',66);
insert into Airport values('LHR','Lahore Airport','Lahore',68);
insert into Airport values('NYU','Newyork Airport','Newyork',69);
insert into Airport values('ATL','Atlanta Airport','Atlanta',70);
insert into Airport values('BOS','Boston Airport','Boston',75);
insert into Airport values('CLT','Charlotte Airport','Charlotte',72);
insert into Airport values('DEN','Denver Airport','Denver',73);
insert into Airport values('EWR','Newark Airport','Newark',74);
insert into Airport values('LAS','Las Vegas Airport','Las Vegas',68);
select * from airport;

create view airports_view as select * from airport;

-- Reviews
CREATE TABLE CUSTOMER_REVIEW(
client_id INT,
review VARCHAR(255),

CONSTRAINT PK_CLIENTID_REVIEW PRIMARY KEY (CLIENT_ID)
);

INSERT INTO CUSTOMER_REVIEW VALUES(1,'Good');
INSERT INTO CUSTOMER_REVIEW VALUES(2,'Bad');
INSERT INTO CUSTOMER_REVIEW VALUES(3,'Satisfactory');
INSERT INTO CUSTOMER_REVIEW VALUES(4,'Good');
INSERT INTO CUSTOMER_REVIEW VALUES(5,'Bad');
INSERT INTO CUSTOMER_REVIEW VALUES(6,'Good');
INSERT INTO CUSTOMER_REVIEW VALUES(7,'Bad');
INSERT INTO CUSTOMER_REVIEW VALUES(8,'Adequate');
INSERT INTO CUSTOMER_REVIEW VALUES(9,'Satisfactory');
INSERT INTO CUSTOMER_REVIEW VALUES(10,'Satisfactory');
select * from customer_review;

create view reviews_view as select * from customer_review;


-- Schedule
CREATE TABLE SCHEDULE_table(

schedule_id INT NOT NULL,
departure_time VARCHAR(30) NOT NULL,
arrival_time VARCHAR(30) NOT NULL,
duration_time FLOAT,

CONSTRAINT PK_SCHEDULEID PRIMARY KEY (schedule_id)
);


INSERT INTO SCHEDULE_table (SCHEDULE_ID,DEPARTURE_TIME,ARRIVAL_TIME) VALUES(52,'3-Sep-2023 4:30:00','4-Sep-2023 4:30:00');
INSERT INTO SCHEDULE_table (SCHEDULE_ID,DEPARTURE_TIME,ARRIVAL_TIME) VALUES(53,'5-Jan-2024 1:50:00','5-Jan-2023 1:30:00');
INSERT INTO SCHEDULE_table (SCHEDULE_ID,DEPARTURE_TIME,ARRIVAL_TIME) VALUES(54,'6-Feb-2023 5:30:00','6-Feb-2023 8:30:00');
INSERT INTO SCHEDULE_table (SCHEDULE_ID,DEPARTURE_TIME,ARRIVAL_TIME) VALUES(55,'18-Jul-2025 2:00:00','18-Jul-2025 2:30:00');
INSERT INTO SCHEDULE_table (SCHEDULE_ID,DEPARTURE_TIME,ARRIVAL_TIME) VALUES(56,'3-Aug-2025 10:30:00','3-Aug-2025 11:30:00');
INSERT INTO SCHEDULE_table (SCHEDULE_ID,DEPARTURE_TIME,ARRIVAL_TIME) VALUES(57,'6-Feb-2023 9:30:00','7-Feb-2023 1:30:00');
INSERT INTO SCHEDULE_table (SCHEDULE_ID,DEPARTURE_TIME,ARRIVAL_TIME) VALUES(58,'2-Jul-2023 6:30:00','2-Jul-2023 9:30:00');
INSERT INTO SCHEDULE_table (SCHEDULE_ID,DEPARTURE_TIME,ARRIVAL_TIME) VALUES(59,'1-Jul-2023 1:30:00','1-Jul-2023 3:30:00');
INSERT INTO SCHEDULE_table (SCHEDULE_ID,DEPARTURE_TIME,ARRIVAL_TIME) VALUES(60,'9-Jul-2023 5:30:00','9-Jul-2023 6:30:00');
INSERT INTO SCHEDULE_table (SCHEDULE_ID,DEPARTURE_TIME,ARRIVAL_TIME) VALUES(61,'07-12-2022 5:30:00','07-12-2022 6:30:00');
INSERT INTO SCHEDULE_table (SCHEDULE_ID,DEPARTURE_TIME,ARRIVAL_TIME) VALUES(62,'2022-12-07 1:30:00','2022-12-07 3:30:00');
select * from schedule_table;

create view schedules_view as select * from schedule_table;

-- Flight
alter table flight add fares int;
select * from FlightStatus;
select f.airplane_id,a.max_seats,s.departure_time, s.arrival_time, fs.status_flight,f.fares 
	from Flight f 	inner join schedule_table s on s.schedule_id=f.schedule_id 
					inner join FlightStatus fs on fs.flightStatus_id=f.flightStatus_id 
                    inner join airplane a on a.airplane_id=f.airplane_id 
	where s.departure_time like '2022-12-07%' and s.arrival_time like '2022-12-07%';
    

CREATE TABLE FLIGHT(
flight_no INT NOT NULL,
schedule_id INT NOT NULL,
flightStatus_id INT NOT NULL,
airplane_id INT NOT NULL,
CONSTRAINT PK_FLIGHTNO PRIMARY KEY (flight_no),
CONSTRAINT FK_SCHEDULEID FOREIGN KEY (schedule_id) REFERENCES SCHEDULE_table(schedule_id),
CONSTRAINT FK_FLIGHTSTATUSID FOREIGN KEY (flightStatus_id) REFERENCES FlightStatus(flightStatus_id),
CONSTRAINT FK_AIRPLANEID FOREIGN KEY (airplane_id) REFERENCES AIRPLANE(airplane_id)
);
INSERT INTO FLIGHT VALUES(31,53,61,41,1000);
INSERT INTO FLIGHT VALUES(32,54,64,45,3000);
INSERT INTO FLIGHT VALUES(42,62,64,45,2000);
INSERT INTO FLIGHT VALUES(21,53,61,41,4533);
INSERT INTO FLIGHT VALUES(52,54,64,45,30020);
INSERT INTO FLIGHT VALUES(47,62,64,45,44322);

create view flights_view as select * from flight;
select * from flights_view;

-- Ticket
create table Ticket(
ticket_id int primary key auto_increment,
seat_no varchar(3),-- format (A-Z)(0-9)(0-9)
departure_time varchar(30),-- year >= sysdate(year)
gate_no int,
airport_code varchar(3));-- format (A-Z)(A-Z)(A-Z)

alter table ticket auto_increment=10;
 
select t.nm,s.departure_time,a.gate_no,a.airport_code 
	from schedule_table s, tempseatgen t,airport a 
    where s.schedule_id=62 and a.airport_name='Atlanta Airport' order by rand() limit 1;


insert into Ticket values(11,'A01','3-Jul-2023 12:30:00',66,'LAX');
insert into Ticket values(12,'D01','1-Jul-2023 1:30:00',67,'KHI');
insert into Ticket values(13,'E21','5-Jan-2024 1:50:00',67,'LHR');
insert into Ticket values(14,'F31','1-Jul-2023 1:30:00',68,'NYU');
insert into Ticket values(15,'G01','18-Jul-2025 2:00:00',66,'ATL');
insert into Ticket values(16,'H01','3-Aug-2025 10:30:00',66,'BOS');
insert into Ticket values(17,'I01','6-Feb-2023 9:30:00',67,'CLT');
insert into Ticket values(18,'J01','2-Jul-2023 6:30:00',68,'DEN');
insert into Ticket values(19,'K01','1-Jul-2023 1:30:00',69,'EWR');
insert into Ticket values(20,'L01','1-Jul-2023 1:30:00',70,'LAX');
select* from ticket;
create view tickets_view as select * from ticket;

select c.fname,c.lname,b.airport_code,b.flight_no,a.gate_no,
t.seat_no,t.departure_time from booking b
inner join clients c on c.client_id=b.client_id
inner join airport a on a.airport_code=b.airport_code
inner join ticket t on t.ticket_id=b.ticket_id
where c.client_id=37;

drop table ticket;
-- Booking
CREATE TABLE BOOKING(
client_id INT,
airport_code VARCHAR(3),
ticket_id int,
flight_no INT,
admin_id VARCHAR(64),
fares FLOAT,
CONSTRAINT FK_CLIENTID FOREIGN KEY (client_id) REFERENCES CLIENTS(client_id),
CONSTRAINT FK_AIRPORTCODE_B FOREIGN KEY (airport_code) REFERENCES Airport(airport_code),
CONSTRAINT FK_TicketID FOREIGN KEY (ticket_id) REFERENCES Ticket(ticket_id),
CONSTRAINT FK_FLIGHTNO FOREIGN KEY (flight_no) REFERENCES FLIGHT(flight_no),
CONSTRAINT FK_ADMINID FOREIGN KEY (admin_id) REFERENCES ADMIN_TABLE(username)
);


update booking set client_id=37,flight_no=41,fares=1000 where client_id is null and flight_no is null and fares is null;
alter table booking drop column admin_id;
select * from booking;
drop table booking;
delete from booking where ticket_id=67;

create view bookings_view as select client_id,airport_code,ticket_id,flight_no,fares from booking;


create table FlightBooking(
	fb_id int primary key auto_increment,
	departure varchar(30) NOT NULL,
    arrival varchar(30) NOT NULL,
    departureDate varchar(30) NOT NULL,
    returnDate varchar(30) NOT NULL,
    class varchar(15) NOT NULL,
    price varchar(20) NOT NULL
);

alter table FlightBooking add flight_no int;
delete from FlightBooking where fb_id=65;
update FlightBooking set flight_no=40 where fb_id=45;
select * from FlightBooking;
delete from FlightBooking where fb_id=47;

create table SeatGenerator(
gen_id int primary key auto_increment,
nm varchar(3)
);

insert into SeatGenerator (nm) values
('A01'),
('D01'),
('E21'),
('F21'),
('G31'),
('H01'),
('I01'),
('J01'),
('K01');

select * from SeatGenerator;

select * from customer_review;

-- triggers
DROP TRIGGER IF EXISTS `airport_system`.`Ticket_AFTER_INSERT`;
DELIMITER $$
USE `airport_system`$$
CREATE DEFINER = CURRENT_USER TRIGGER `airport_system`.`Ticket_AFTER_INSERT` 
AFTER INSERT ON `Ticket` FOR EACH ROW
BEGIN
	update airport_system.ticket 
    set seat_no= (select nm from airport_management.tempseatgen order by rand() limit 1) 
    where seat_no is null;
END$$
DELIMITER ;



delimiter //
create trigger fill_booking 
after INSERT 
on Ticket
for each row 
begin
insert into booking (airport_code,ticket_id) values(new.airport_code,new.ticket_id);
end; //
