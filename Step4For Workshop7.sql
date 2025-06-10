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



