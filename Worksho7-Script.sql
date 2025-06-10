DROP DATABASE IF EXISTS GallowayAuto;

CREATE DATABASE GallowayAuto;

USE GallowayAuto;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Dealership;
USE GallowayAuto;

CREATE TABLE Dealership (
DealershipID INT AUTO_INCREMENT PRIMARY KEY,
DealershipName VARCHAR(50),
Address VARCHAR(50),
Phone VARCHAR(12)
);

CREATE TABLE Vehicles(
VIN VARCHAR(17) PRIMARY KEY,
Make VARCHAR(20) NOT NULL,
Model VARCHAR(30) NOT NULL,
Year INT,
SOLD BOOLEAN,
Color VARCHAR(50),
VehicleType VARCHAR(50),
Odometer INT NOT NULL,
Price DOUBLE NOT NULL
);

CREATE TABLE Inventory(
DealershipID INT,
VIN VARCHAR(17),
FOREIGN KEY (DealershipID) REFERENCES Dealership(DealershipID),
FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
);

CREATE TABLE SalesContracts(
ContractID INT AUTO_INCREMENT PRIMARY KEY,
VIN VARCHAR(17),
SaleDate DATE,
Price DECIMAL(10.2),
FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
);

CREATE TABLE LeaseContracts(
ContractID INT AUTO_INCREMENT PRIMARY KEY,
VIN VARCHAR(17),
LeaseStart DATE,
LeaseEnd DATE,
MonthlyPayment DECIMAL(10.2),
FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
);

INSERT INTO Dealership (DealershipID,DealershipName,Address,Phone)
VALUES
(1,"E's Audi","1112 North Leon St, SweetFeet, TX","112-212-3213"),
(2,"LoneStart Ford","12242 West Coyote Blvd, SweetFeet Texas","813-232-1111");

INSERT INTO Vehicles (VIN,Make,Model,Year,SOLD ,Color,VehicleType,Odometer,Price)
VALUES
('1HGCM82633A004352',"Ford","Raptor",2025,FALSE,"Black","Truck",0,120000.00),
('1FAFP404X1F234567',"Porche","911 Turbo S",2024,FALSE,"Forest Green","Car",4,270000.00),
('WBA8E9G50GNU12345',"Cadillac","Escalade V",2025,FALSE,"Diamond Black","SUV",5,180000.00);

INSERT INTO Inventory (DealershipID,VIN)
VALUES
(1,'1HGCM82633A004352'),
(2,'WBA8E9G50GNU12345');

INSERT INTO SalesContracts(ContractID,VIN,SaleDate,Price)
VALUES
(1,'1FAFP404X1F234567','2025-06-02',2400.00);

