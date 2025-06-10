USE gallowayauto;

-- Question 1
SELECT * 
FROM dealership;

-- Question 2
SELECT d.dealershipName,v.vin,v.make,v.model,v.year,v.price
FROM Inventory i
JOIN Vehicles v ON i.VIN = v.VIN
JOIN Dealership d ON i.DealershipID = d.DealershipID
WHERE d.DealershipID = 1;

-- Question 3
SELECT v.make,v.model,v.year,v.color,v.price
FROM Vehicles v
WHERE VIN = "1FAFP404X1F234567";

-- Quesion 4
SELECT i.VIN,v.make,v.model,v.year,v.Color,v.price,d.DealershipName
FROM Inventory i
JOIN Vehicles v ON i.VIN = v.VIN
JOIN Dealership d ON i.DealershipID = d.DealershipID
WHERE v.make = "Ferrari";

-- Question 5
SELECT v.make,v.model,v.year,v.Color,v.VehicleType,v.price,d.DealershipName,d.address,d.phone
FROM Inventory i
JOIN Vehicles v ON i.VIN = v.VIN
JOIN Dealership d ON i.DealershipID = d.DealershipID
WHERE v.VehicleType = "Car";

-- Question 6
SELECT s.contractId,s.VIN,v.make,v.model,v.color,d.dealershipname,d.address,d.phone,v.price
FROM Salescontracts s
JOIN Inventory i ON s.VIN = i.VIN
JOIN Dealership d ON i.DealershipID = d.dealershipID
JOIN Vehicles v ON s.VIN = v.VIN
WHERE SaleDate Like "%2025%";





