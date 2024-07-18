CREATE DATABASE HotelsDB;
USE HotelsDB;

CREATE TABLE Cities
(
cityID int primary key not null auto_increment,
cityName varchar(20)
)

INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('1', 'Kyiv');
INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('2', 'Chernihiv');
INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('3', 'Poltava');
INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('4', 'Cherkasy');
INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('5', 'Harkiv');
INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('6', 'Sumy');
INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('7', 'Odesa');
INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('8', 'Lviv');
INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('9', 'IF');
INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('10', 'Lutsk');
INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('11', 'Krop');
INSERT INTO `hotelsdb`.`cities` (`cityID`, `cityName`) VALUES ('12', 'Chernivtsi');

CREATE TABLE Hotels
(
hotelID int primary key not null auto_increment,
hotelName varchar(20),
starsCounts int not null,
creationData date,
cityID int,
foreign key (cityID) references Cities (cityID)
)
ALTER TABLE Hotels CHANGE staesCounts starsCounts int;
INSERT INTO HotelsDB.Hotels(hotelID, hotelName, starsCounts, creationData, cityID) VALUES ('1', 'Kyiv', '5','2000-01-01', '1');
INSERT INTO HotelsDB.Hotels(hotelID, hotelName, starsCounts, creationData, cityID) VALUES ('2', 'Gradetskiy', '3','1990-01-01', '2');
INSERT INTO HotelsDB.Hotels(hotelID, hotelName, starsCounts, creationData, cityID) VALUES ('3', 'Poltava', '3','1991-04-21', '3');
INSERT INTO HotelsDB.Hotels(hotelID, hotelName, starsCounts, creationData, cityID) VALUES ('4', 'Nemo', '5','2010-08-12', '7');
INSERT INTO HotelsDB.Hotels(hotelID, hotelName, starsCounts, creationData, cityID) VALUES ('5', 'Karpaty', '4','2003-10-29', '9');
INSERT INTO HotelsDB.Hotels(hotelID, hotelName, starsCounts, creationData, cityID) VALUES ('6', 'Bukovyna', '3','1983-03-05', '12');

CREATE TABLE Rooms
(
roomID int primary key not null auto_increment,
comfortLevel varchar(20),
hotelID int,
foreign key (hotelID) references Hotels(hotelID)
)
INSERT INTO HotelsDB.Rooms(roomID, comfortLevel, hotelID) VALUES ('1', 'Lux', '1');
INSERT INTO HotelsDB.Rooms(roomID, comfortLevel, hotelID) VALUES ('2', 'Middle', '5');
INSERT INTO HotelsDB.Rooms(roomID, comfortLevel, hotelID) VALUES ('3', 'Cheap', '2');
INSERT INTO HotelsDB.Rooms(roomID, comfortLevel, hotelID) VALUES ('4', 'Lux', '4');
INSERT INTO HotelsDB.Rooms(roomID, comfortLevel, hotelID) VALUES ('5', 'Cheap', '6');
INSERT INTO HotelsDB.Rooms(roomID, comfortLevel, hotelID) VALUES ('6', 'Cheap', '3');


CREATE TABLE Clients
(
clientID int primary key not null auto_increment,
clientName varchar(20),
clientNumber long
)
INSERT INTO HotelsDB.Clients(clientID, clientName, clientNumber) VALUES ('1', 'Viktor Udich', '38954656');
INSERT INTO HotelsDB.Clients(clientID, clientName, clientNumber) VALUES ('2', 'Anna Zarunko', '87654939');
INSERT INTO HotelsDB.Clients(clientID, clientName, clientNumber) VALUES ('3', 'Alevtina QAZXER', '5059595');
INSERT INTO HotelsDB.Clients(clientID, clientName, clientNumber) VALUES ('4', 'Mark Chervinskiy', '5059595995');

CREATE TABLE Orders
(
OrderID int primary key not null auto_increment,
clientID int,
roomID int,
foreign key (clientID) references Clients (clientID),
foreign key(roomID) references Rooms(roomID)
)
INSERT INTO HotelsDB.Orders(OrderID, clientID, roomID) VALUES ('1', '3', '4');
INSERT INTO HotelsDB.Orders(OrderID, clientID, roomID) VALUES ('2', '1', '6');
INSERT INTO HotelsDB.Orders(OrderID, clientID, roomID) VALUES ('3', '4', '5');
INSERT INTO HotelsDB.Orders(OrderID, clientID, roomID) VALUES ('4', '1', '2');
INSERT INTO HotelsDB.Orders(OrderID, clientID, roomID) VALUES ('5', '2', '1');